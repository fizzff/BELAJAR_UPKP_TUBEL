import { supabase } from "@/lib/supabase";
import { seededShuffle, shuffle } from "@/lib/quiz";
import { Chapter, Content, Module, Question, TPA_MODULE_ID } from "@/lib/types";

export function isTpaModule(module: Pick<Module, "id">) {
  return module.id === TPA_MODULE_ID;
}

export async function getModules(): Promise<Module[]> {
  const { data, error } = await supabase
    .from("modules")
    .select("*")
    .order("order_index", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

export async function getModuleById(moduleId: string): Promise<Module | null> {
  const { data, error } = await supabase
    .from("modules")
    .select("*")
    .eq("id", moduleId)
    .maybeSingle();
  if (error) throw error;
  return data;
}

export async function getChaptersByModule(moduleId: string): Promise<Chapter[]> {
  const { data, error } = await supabase
    .from("chapters")
    .select("*")
    .eq("module_id", moduleId)
    .order("order_index", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

export async function getChapterById(chapterId: string): Promise<Chapter | null> {
  const { data, error } = await supabase
    .from("chapters")
    .select("*")
    .eq("id", chapterId)
    .maybeSingle();
  if (error) throw error;
  return data;
}

export async function getContentsByChapter(chapterId: string): Promise<Content[]> {
  const { data, error } = await supabase
    .from("contents")
    .select("*")
    .eq("chapter_id", chapterId)
    .order("order_index", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

export async function getQuestionsByChapter(chapterId: string): Promise<Question[]> {
  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .eq("chapter_id", chapterId);
  if (error) throw error;
  return data ?? [];
}

export async function getQuestionsByModule(moduleId: string): Promise<Question[]> {
  const { data, error } = await supabase
    .from("questions")
    .select("*, chapters!inner(module_id)")
    .eq("chapters.module_id", moduleId);
  if (error) throw error;
  return (data ?? []) as Question[];
}

async function getTryoutPool(): Promise<Question[]> {
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

// Setiap nomor paket selalu menghasilkan komposisi soal yang sama (deterministik),
// supaya user bisa mengulang paket yang sama untuk latihan/tracking progres.
export async function getTryoutPaketQuestions(
  paketNumber: number,
  sampleSize: number = TRYOUT_PAKET_SIZE
): Promise<Question[]> {
  const pool = await getTryoutPool();
  return seededShuffle(pool, paketNumber).slice(0, sampleSize);
}

export type TpaTryoutSubtest = "verbal" | "numerikal";

export const TPA_TRYOUT_SUBTESTS: Record<
  TpaTryoutSubtest,
  { label: string; codePrefixes: string[] }
> = {
  verbal: { label: "Verbal", codePrefixes: ["A", "B", "C", "D"] },
  numerikal: { label: "Numerikal", codePrefixes: ["E"] },
};

export const TPA_TRYOUT_SIZE = 40;
export const TPA_TRYOUT_DURATION_MINUTES = 45;
export const TPA_TRYOUT_PAKET_COUNT = 10;

// Seed offset per subtes supaya urutan acak paket Verbal dan Numerikal tidak
// pernah kebetulan sama, walau nomor paketnya sama.
const TPA_SUBTEST_SEED_OFFSET: Record<TpaTryoutSubtest, number> = {
  verbal: 0,
  numerikal: 1000,
};

async function getTpaSubtestPool(codePrefixes: string[]): Promise<Question[]> {
  const { data: chaptersData, error: chaptersError } = await supabase
    .from("chapters")
    .select("id, code")
    .eq("module_id", TPA_MODULE_ID);
  if (chaptersError) throw chaptersError;

  const chapterIds = (chaptersData ?? [])
    .filter((c) => codePrefixes.some((prefix) => c.code?.startsWith(prefix)))
    .map((c) => c.id as string);
  if (chapterIds.length === 0) return [];

  const { data, error } = await supabase
    .from("questions")
    .select("*")
    .in("chapter_id", chapterIds)
    .order("id", { ascending: true });
  if (error) throw error;
  return data ?? [];
}

// Setiap nomor paket selalu menghasilkan komposisi soal yang sama (deterministik),
// sama seperti Try Out Substansi. Karena bank soal per subtes masih terbatas,
// antar-paket bisa banyak beririsan soalnya — urutan & kombinasinya tetap beda-beda.
export async function getTpaTryoutQuestions(
  subtest: TpaTryoutSubtest,
  paketNumber: number
): Promise<Question[]> {
  const { codePrefixes } = TPA_TRYOUT_SUBTESTS[subtest];
  const pool = await getTpaSubtestPool(codePrefixes);
  const seed = paketNumber + TPA_SUBTEST_SEED_OFFSET[subtest];
  return seededShuffle(pool, seed).slice(0, TPA_TRYOUT_SIZE);
}

export type MiniQuizKind = "tskwk" | "tpa";

export const MINI_QUIZ_SIZE = 10;
export const MINI_QUIZ_DURATION_MINUTES = 5;

// Mini quiz sengaja acak ulang tiap kali dibuka (bukan deterministik seperti Try
// Out) karena fungsinya latihan cepat, bukan paket yang perlu diulang identik.
export async function getMiniQuizQuestions(kind: MiniQuizKind): Promise<Question[]> {
  const pool = kind === "tskwk" ? await getTryoutPool() : await getQuestionsByModule(TPA_MODULE_ID);
  return shuffle(pool).slice(0, MINI_QUIZ_SIZE);
}
