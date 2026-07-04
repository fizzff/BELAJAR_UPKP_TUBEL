import { QuizReviewItem } from "@/lib/quiz";

// Sistem level & XP: XP hanya didapat dari Quest Harian. Semua state tersimpan
// di localStorage (konsisten dengan pola app ini: tanpa login, murni per-browser).

export const LEVEL_MAX = 30;
export const XP_PER_LEVEL = 100;
export const DAILY_QUEST_SIZE = 5;

// Selain Quest Harian, XP juga didapat dari Mini Quiz dan Try Out. Rate-nya
// lebih kecil karena keduanya bisa diulang tanpa batas per hari.
export const QUIZ_XP_PER_CORRECT = 3;
export const TRYOUT_XP_PER_CORRECT = 2;

// Papan misi harian: beberapa misi per hari, masing-masing 1x pengerjaan.
// Pool "tpa-fokus" menyorot SATU bab TPA yang berganti setiap hari (dirotasi
// berdasarkan tanggal), sisanya kelompok topik tetap.
export type QuestMissionPool = "campuran" | "tpa-verbal" | "tpa-numerikal" | "tskwk" | "tpa-fokus";

export interface QuestMission {
  id: string;
  label: string;
  description: string;
  emoji: string;
  pool: QuestMissionPool;
  size: number;
  // Nilai XP per jawaban benar — berbeda tiap misi sesuai bobot tantangannya.
  xpPerCorrect: number;
  // Offset seed supaya tiap misi dapat kombinasi acak berbeda di hari yang sama.
  seedOffset: number;
}

export const QUEST_MISSIONS: QuestMission[] = [
  {
    id: "fokus",
    label: "Misi Fokus",
    description: "Satu bab TPA disorot khusus, berganti setiap hari.",
    emoji: "⭐",
    pool: "tpa-fokus",
    size: 5,
    xpPerCorrect: 15,
    seedOffset: 0,
  },
  {
    id: "campuran",
    label: "Misi Campuran",
    description: "Soal acak dari seluruh bank soal, TSKWK dan TPA.",
    emoji: "🎯",
    pool: "campuran",
    size: 5,
    xpPerCorrect: 8,
    seedOffset: 101,
  },
  {
    id: "verbal",
    label: "Misi Verbal TPA",
    description: "Sinonim, analogi, wacana, dan penalaran logika.",
    emoji: "📖",
    pool: "tpa-verbal",
    size: 5,
    xpPerCorrect: 10,
    seedOffset: 202,
  },
  {
    id: "numerikal",
    label: "Misi Numerikal TPA",
    description: "Aljabar, deret, perbandingan, geometri, dan kawan-kawan.",
    emoji: "🔢",
    pool: "tpa-numerikal",
    size: 5,
    xpPerCorrect: 12,
    seedOffset: 303,
  },
  {
    id: "tskwk",
    label: "Misi TSKWK",
    description: "Substansi Kemenkeu & Wawasan Kebangsaan.",
    emoji: "🏛️",
    pool: "tskwk",
    size: 5,
    xpPerCorrect: 10,
    seedOffset: 404,
  },
];

export function questMissionById(missionId: string): QuestMission | undefined {
  return QUEST_MISSIONS.find((m) => m.id === missionId);
}

export const DAILY_XP_MAX = QUEST_MISSIONS.reduce(
  (sum, m) => sum + m.size * m.xpPerCorrect,
  0
);

// 30 level terbagi 5 tingkatan julukan, tiap kelipatan 6 level.
export const LEVELS_PER_TITLE = 6;
export const LEVEL_TITLES = ["Perintis", "Pejuang", "Cendekia", "Pakar", "Legenda"] as const;

export type LevelTitle = (typeof LEVEL_TITLES)[number];

export function levelFromXp(xp: number): number {
  return Math.min(LEVEL_MAX, Math.floor(Math.max(0, xp) / XP_PER_LEVEL) + 1);
}

export function titleForLevel(level: number): LevelTitle {
  const tier = Math.min(LEVEL_TITLES.length - 1, Math.floor((level - 1) / LEVELS_PER_TITLE));
  return LEVEL_TITLES[Math.max(0, tier)];
}

export interface LevelProgress {
  xp: number;
  level: number;
  title: LevelTitle;
  // XP yang sudah terkumpul di dalam level saat ini dan target untuk naik level.
  xpIntoLevel: number;
  xpForNextLevel: number;
  isMaxLevel: boolean;
}

export function levelProgress(xp: number): LevelProgress {
  const safeXp = Math.max(0, xp);
  const level = levelFromXp(safeXp);
  const isMaxLevel = level >= LEVEL_MAX;
  return {
    xp: safeXp,
    level,
    title: titleForLevel(level),
    xpIntoLevel: isMaxLevel ? XP_PER_LEVEL : safeXp % XP_PER_LEVEL,
    xpForNextLevel: XP_PER_LEVEL,
    isMaxLevel,
  };
}

export const XP_STORAGE_KEY = "userXp";

export function readXp(): number {
  const raw = localStorage.getItem(XP_STORAGE_KEY);
  const parsed = raw === null ? 0 : parseInt(raw, 10);
  return Number.isFinite(parsed) && parsed > 0 ? parsed : 0;
}

export function addXp(amount: number): number {
  const next = readXp() + Math.max(0, amount);
  localStorage.setItem(XP_STORAGE_KEY, String(next));
  return next;
}

// Tanggal quest memakai zona WIB supaya jadwal reset harian konsisten dan sama
// antara server (penentu paket soal) dan browser pengguna.
export const DAILY_QUEST_TIMEZONE = "Asia/Jakarta";

export function dailyQuestDateKey(now: Date = new Date()): string {
  // Locale sv-SE menghasilkan format YYYY-MM-DD.
  return new Intl.DateTimeFormat("sv-SE", { timeZone: DAILY_QUEST_TIMEZONE }).format(now);
}

export function dailyQuestSeed(dateKey: string): number {
  return parseInt(dateKey.replaceAll("-", ""), 10);
}

export interface DailyQuestResult {
  dateKey: string;
  missionId: string;
  total: number;
  correct: number;
  xpEarned: number;
  items: QuizReviewItem[];
}

export function dailyQuestStorageKey(dateKey: string, missionId: string): string {
  return `daily-quest:${dateKey}:${missionId}`;
}

export function saveDailyQuestResult(result: DailyQuestResult) {
  localStorage.setItem(
    dailyQuestStorageKey(result.dateKey, result.missionId),
    JSON.stringify(result)
  );
}

export function readDailyQuestResult(dateKey: string, missionId: string): DailyQuestResult | null {
  const raw = localStorage.getItem(dailyQuestStorageKey(dateKey, missionId));
  if (!raw) return null;
  try {
    return JSON.parse(raw) as DailyQuestResult;
  } catch {
    return null;
  }
}

// String status "10100" per urutan QUEST_MISSIONS — dipakai sebagai snapshot
// useSyncExternalStore karena bentuk primitifnya stabil antar-render.
export function missionDoneFlags(dateKey: string): string {
  return QUEST_MISSIONS.map((m) =>
    localStorage.getItem(dailyQuestStorageKey(dateKey, m.id)) !== null ? "1" : "0"
  ).join("");
}

export function countCompletedMissions(dateKey: string): number {
  return QUEST_MISSIONS.filter(
    (m) => localStorage.getItem(dailyQuestStorageKey(dateKey, m.id)) !== null
  ).length;
}
