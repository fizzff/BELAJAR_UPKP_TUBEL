import { QuizReviewItem } from "@/lib/quiz";

// Sistem level & XP: XP hanya didapat dari Quest Harian. Semua state tersimpan
// di localStorage (konsisten dengan pola app ini: tanpa login, murni per-browser).

export const LEVEL_MAX = 30;
export const XP_PER_LEVEL = 100;
export const XP_PER_CORRECT = 20;
export const DAILY_QUEST_SIZE = 5;

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
  total: number;
  correct: number;
  xpEarned: number;
  items: QuizReviewItem[];
}

export function dailyQuestStorageKey(dateKey: string): string {
  return `daily-quest:${dateKey}`;
}

export function saveDailyQuestResult(result: DailyQuestResult) {
  localStorage.setItem(dailyQuestStorageKey(result.dateKey), JSON.stringify(result));
}

export function readDailyQuestResult(dateKey: string): DailyQuestResult | null {
  const raw = localStorage.getItem(dailyQuestStorageKey(dateKey));
  if (!raw) return null;
  try {
    return JSON.parse(raw) as DailyQuestResult;
  } catch {
    return null;
  }
}
