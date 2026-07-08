import { createServerSupabase } from "@/lib/supabase/server";
import { seededShuffle, shuffle } from "@/lib/quiz";
import { availableUnseen, getSeenIds } from "@/lib/attempts";
import { QuestMission, dailyQuestSeed } from "@/lib/gamification";
import { Chapter, Content, Module, Question, TPA_MODULE_ID } from "@/lib/types";

export function isTpaModule(module: Pick<Module, "id">) {
  return module.id === TPA_MODULE_ID;
}

export async function getModules(): Promise<Module[]> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("modules")
    .select("*")
    .order("order_index", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

export async function getModuleById(moduleId: string): Promise<Module | null> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("modules")
    .select("*")
    .eq("id", moduleId)
    .maybeSingle();
  if (error) throw error;
  return data;
}

export async function getChaptersByModule(moduleId: string): Promise<Chapter[]> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("chapters")
    .select("*")
    .eq("module_id", moduleId)
    .order("order_index", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

export async function getChapterById(chapterId: string): Promise<Chapter | null> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("chapters")
    .select("*")
    .eq("id", chapterId)
    .maybeSingle();
  if (error) throw error;
  return data;
}

export async function getContentsByChapter(chapterId: string): Promise<Content[]> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("contents")
    .select("*")
    .eq("chapter_id", chapterId)
    .order("order_index", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

export async function getQuestionsByChapter(chapterId: string): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .eq("chapter_id", chapterId)
    .order("order_index", { ascending: true, nullsFirst: false });
  if (error) throw error;
  return data ?? [];
}

export async function getQuestionsByModule(moduleId: string): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("questions")
    .select("*, chapters!inner(module_id)")
    .eq("chapters.module_id", moduleId);
  if (error) throw error;
  return (data ?? []) as Question[];
}

async function getTryoutPool(): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const modules = await getModules();
  const nonTpaModuleIds = modules.filter((m) => !isTpaModule(m)).map((m) => m.id);
  if (nonTpaModuleIds.length === 0) return [];

  const { data: chaptersData, error: chaptersError } = await supabase
    .from("chapters")
    .select("id")
    .in("module_id", nonTpaModuleIds);
  if (chaptersError) throw chaptersError;

  const chapterIds = (chaptersData ?? []).map((c) => c.id as string);
  if (chapterIds.length === 0) return [];

  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .in("chapter_id", chapterIds)
    .order("id", { ascending: true });
  if (error) throw error;

  return data ?? [];
}

export const TRYOUT_PAKET_COUNT = 10;
export const TRYOUT_PAKET_SIZE = 60;
export const TRYOUT_SUBSTANSI_DURATION_MINUTES = 60;

// Susunan paket deterministik per nomor paket, TAPI hanya dari soal yang belum
// pernah muncul di Try Out untuk user ini (anti-pengulangan per jenis tes).
export async function getTryoutPaketQuestions(
  paketNumber: number,
  sampleSize: number = TRYOUT_PAKET_SIZE
): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const pool = await getTryoutPool();
  const avail = await availableUnseen(supabase, "tryout", pool, sampleSize);
  return seededShuffle(avail, paketNumber).slice(0, sampleSize);
}

export type TpaTryoutSubtest = "verbal" | "numerikal" | "figural";

export const TPA_TRYOUT_SUBTESTS: Record<
  TpaTryoutSubtest,
  { label: string; codePrefixes: string[]; duration: number }
> = {
  verbal: { label: "Verbal", codePrefixes: ["A", "C", "D"], duration: 45 },
  numerikal: { label: "Numerikal", codePrefixes: ["E"], duration: 45 },
  figural: { label: "Figural", codePrefixes: ["F"], duration: 30 },
};

export const TPA_TRYOUT_SIZE = 40;
// Durasi umum (Verbal/Numerikal); Figural memakai durasinya sendiri (30 menit)
// lewat TPA_TRYOUT_SUBTESTS.figural.duration.
export const TPA_TRYOUT_DURATION_MINUTES = 45;
export const TPA_TRYOUT_PAKET_COUNT = 10;

// Seed offset per subtes supaya urutan acak paket Verbal dan Numerikal tidak
// pernah kebetulan sama, walau nomor paketnya sama.
const TPA_SUBTEST_SEED_OFFSET: Record<TpaTryoutSubtest, number> = {
  verbal: 0,
  numerikal: 1000,
  figural: 2000,
};

async function getTpaSubtestPool(
  codePrefixes: string[]
): Promise<{ pool: Question[]; order: Map<string, number> }> {
  const supabase = await createServerSupabase();
  const { data: chaptersData, error: chaptersError } = await supabase
    .from("chapters")
    .select("id, code, order_index")
    .eq("module_id", TPA_MODULE_ID);
  if (chaptersError) throw chaptersError;

  const matched = (chaptersData ?? []).filter((c) =>
    codePrefixes.some((prefix) => c.code?.startsWith(prefix))
  );
  // Peta id bab -> order_index dipakai untuk menyusun soal per kategori mengikuti
  // urutan KLC (mis. Sinonim -> ... -> Wacana; E1 -> ... -> E10).
  const order = new Map<string, number>(
    matched.map((c) => [c.id as string, (c.order_index as number | null) ?? 0])
  );
  const chapterIds = matched.map((c) => c.id as string);
  if (chapterIds.length === 0) return { pool: [], order };

  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .in("chapter_id", chapterIds)
    .order("id", { ascending: true });
  if (error) throw error;
  return { pool: data ?? [], order };
}

// ---------- Penyusunan paket Try Out TPA berkomposisi tetap (pola KLC) ----------
// Id bab TPA (tetap) untuk klasifikasi soal ke dalam kelompok komposisi.
const TPA_CH = {
  sinonim: "b0000000-0000-4000-8000-060100000000",
  wacana: "b0000000-0000-4000-8000-060300000000",
  penalaran: "b0000000-0000-4000-8000-060400000000",
  analogi: "b0000000-0000-4000-8000-060500000000",
  logika: "b0000000-0000-4000-8000-060600000000",
  deret: "b0000000-0000-4000-8000-061400000000",
} as const;

// Prefiks berkas gambar Figural -> tipe soal (o=Berbeda, m=Matriks, sisanya "sesuai").
function figuralLetter(q: Question): string {
  return q.question.match(/\/figural\/([a-z])/)?.[1] ?? "";
}
// Banyak " : " pada soal analogi: 2 -> analogi 2-kata, >=4 -> analogi 3-kata.
function analogiColons(q: Question): number {
  return (q.question.match(/ : /g) ?? []).length;
}
// Ambang panjang teks (karakter) soal numerik: singkat vs kalimat panjang.
const NUM_SHORT_MAX = 85;
// Kunci pengelompokan set utuh (1 bacaan / 1 teka-teki): teks pengantar+bacaan
// yang identik untuk semua soal dalam satu set (bagian sebelum "\n\n" terakhir).
function passageKey(q: Question): string {
  const i = q.question.lastIndexOf("\n\n");
  return i > 0 ? q.question.slice(0, i) : q.question;
}

interface TpaGroup {
  count: number;
  match: (q: Question) => boolean;
  sets?: number; // bila diisi: ambil N set utuh; tiap set menyumbang count/N soal
}

// Komposisi & urutan tampil tiap subtes (total 40 soal), meniru struktur KLC.
const TPA_BLUEPRINT: Record<TpaTryoutSubtest, TpaGroup[]> = {
  verbal: [
    { count: 6, match: (q) => q.chapter_id === TPA_CH.analogi && analogiColons(q) < 4 },
    { count: 4, match: (q) => q.chapter_id === TPA_CH.analogi && analogiColons(q) >= 4 },
    { count: 10, match: (q) => q.chapter_id === TPA_CH.sinonim },
    { count: 5, match: (q) => q.chapter_id === TPA_CH.penalaran },
    { count: 5, sets: 1, match: (q) => q.chapter_id === TPA_CH.logika },
    { count: 10, sets: 2, match: (q) => q.chapter_id === TPA_CH.wacana },
  ],
  numerikal: [
    { count: 10, match: (q) => q.chapter_id !== TPA_CH.deret && q.question.length <= NUM_SHORT_MAX },
    { count: 10, match: (q) => q.chapter_id === TPA_CH.deret },
    { count: 20, match: (q) => q.chapter_id !== TPA_CH.deret && q.question.length > NUM_SHORT_MAX },
  ],
  figural: [
    { count: 11, match: (q) => figuralLetter(q) === "o" },
    { count: 18, match: (q) => ["q", "a", "r", "c", "s"].includes(figuralLetter(q)) },
    { count: 11, match: (q) => figuralLetter(q) === "m" },
  ],
};

// Ambil satu kelompok: utamakan soal belum-terlihat; bila stok kurang, boleh
// mengulang. Untuk kelompok "sets" (wacana/logika), pilih set UTUH agar bacaan/
// ketentuan tidak terpotong.
function pickTpaGroup(g: TpaGroup, pool: Question[], seen: Set<string>, seed: number): Question[] {
  const groupPool = pool.filter(g.match);
  if (g.sets && g.sets > 0) {
    const map = new Map<string, Question[]>();
    for (const q of groupPool) {
      const k = passageKey(q);
      const arr = map.get(k);
      if (arr) arr.push(q);
      else map.set(k, [q]);
    }
    const allSets = [...map.values()].map((qs) =>
      qs.slice().sort((a, b) => a.id.localeCompare(b.id))
    );
    const unseenSets = allSets.filter((qs) => qs.every((q) => !seen.has(q.id)));
    const source = unseenSets.length >= g.sets ? unseenSets : allSets;
    return seededShuffle(source, seed).slice(0, g.sets).flat();
  }
  const unseen = groupPool.filter((q) => !seen.has(q.id));
  const source = unseen.length >= g.count ? unseen : groupPool;
  return seededShuffle(source, seed).slice(0, g.count);
}

// Menyusun satu paket Try Out TPA: tiap kelompok diambil sesuai jumlahnya dan
// ditampilkan berurutan mengikuti urutan kelompok (pola KLC). Soal yang sudah
// pernah muncul dihindari selama stok kelompok masih cukup.
export async function getTpaTryoutQuestions(
  subtest: TpaTryoutSubtest,
  paketNumber: number
): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const { codePrefixes } = TPA_TRYOUT_SUBTESTS[subtest];
  const { pool } = await getTpaSubtestPool(codePrefixes);
  const seen = await getSeenIds(supabase, "tryout");
  const baseSeed = paketNumber + TPA_SUBTEST_SEED_OFFSET[subtest];
  const result: Question[] = [];
  const used = new Set<string>();
  const addUnique = (qs: Question[]) => {
    for (const q of qs) {
      if (!used.has(q.id)) {
        used.add(q.id);
        result.push(q);
      }
    }
  };
  TPA_BLUEPRINT[subtest].forEach((g, i) => {
    addUnique(pickTpaGroup(g, pool, seen, baseSeed + i * 101));
  });
  // Pengaman: bila ada kelompok kekurangan stok (mis. bank kategori tertentu
  // belum lengkap di database), tambal dari sisa pool agar paket tetap penuh.
  if (result.length < TPA_TRYOUT_SIZE) {
    const rest = pool.filter((q) => !used.has(q.id));
    const restUnseen = rest.filter((q) => !seen.has(q.id));
    const fillFrom = restUnseen.length >= TPA_TRYOUT_SIZE - result.length ? restUnseen : rest;
    for (const q of seededShuffle(fillFrom, baseSeed + 9973)) {
      if (result.length >= TPA_TRYOUT_SIZE) break;
      addUnique([q]);
    }
  }
  return result;
}

export type MiniQuizKind = "tskwk" | "tpa";

export const MINI_QUIZ_SIZE = 10;
export const MINI_QUIZ_DURATION_MINUTES = 5;

// Mini quiz sengaja acak ulang tiap kali dibuka (bukan deterministik seperti Try
// Out) karena fungsinya latihan cepat, bukan paket yang perlu diulang identik.
export async function getMiniQuizQuestions(kind: MiniQuizKind): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const pool = kind === "tskwk" ? await getTryoutPool() : await getQuestionsByModule(TPA_MODULE_ID);
  const avail = await availableUnseen(supabase, "quiz", pool, MINI_QUIZ_SIZE);
  return shuffle(avail).slice(0, MINI_QUIZ_SIZE);
}

// Quest Harian: tiap misi memakai paket soal deterministik per tanggal
// (seed = YYYYMMDD + offset misi) supaya semua pengguna mendapat soal yang sama
// pada hari yang sama dan paketnya tidak berubah saat halaman di-refresh.
async function getAllQuestions(): Promise<Question[]> {
  const supabase = await createServerSupabase();
  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .order("id", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

function questDayNumber(dateKey: string): number {
  return Math.floor(Date.parse(`${dateKey}T00:00:00Z`) / 86400000);
}

// Bab TPA yang disorot "Misi Fokus" hari ini — dirotasi satu bab per hari
// mengikuti urutan belajar (order_index), melewati bab Figural yang belum
// punya soal.
export async function getQuestFocusChapter(dateKey: string): Promise<Chapter | null> {
  const chapters = (await getChaptersByModule(TPA_MODULE_ID)).filter(
    (c) => c.code !== "F"
  );
  if (chapters.length === 0) return null;
  return chapters[questDayNumber(dateKey) % chapters.length];
}

export interface QuestMissionBundle {
  questions: Question[];
  // Terisi hanya untuk misi fokus: judul bab yang sedang disorot hari ini.
  focusChapterTitle?: string;
}

export async function getQuestMissionQuestions(
  mission: QuestMission,
  dateKey: string
): Promise<QuestMissionBundle> {
  const seed = dailyQuestSeed(dateKey) + mission.seedOffset;
  const supabase = await createServerSupabase();

  if (mission.pool === "tpa-fokus") {
    const chapter = await getQuestFocusChapter(dateKey);
    if (!chapter) return { questions: [] };
    const pool = await getQuestionsByChapter(chapter.id);
    const avail = await availableUnseen(supabase, "quest", pool, mission.size);
    return {
      questions: seededShuffle(avail, seed).slice(0, mission.size),
      focusChapterTitle: chapter.title,
    };
  }

  let pool: Question[];
  switch (mission.pool) {
    case "tpa-verbal":
      pool = (await getTpaSubtestPool(TPA_TRYOUT_SUBTESTS.verbal.codePrefixes)).pool;
      break;
    case "tpa-numerikal":
      pool = (await getTpaSubtestPool(TPA_TRYOUT_SUBTESTS.numerikal.codePrefixes)).pool;
      break;
    case "tpa-figural":
      pool = (await getTpaSubtestPool(TPA_TRYOUT_SUBTESTS.figural.codePrefixes)).pool;
      break;
    case "tskwk":
      pool = await getTryoutPool();
      break;
    default:
      pool = await getAllQuestions();
  }
  const avail = await availableUnseen(supabase, "quest", pool, mission.size);
  return { questions: seededShuffle(avail, seed).slice(0, mission.size) };
}
