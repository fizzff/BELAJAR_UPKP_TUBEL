import { Question } from "@/lib/types";

export type QuizOptionKey = "A" | "B" | "C" | "D" | "E";

export interface QuizReviewItem {
  question: string;
  options: Partial<Record<QuizOptionKey, string>>;
  selected: QuizOptionKey | null;
  correctOption: QuizOptionKey;
  explanation: string | null;
}

export interface QuizResult {
  title: string;
  total: number;
  correct: number;
  items: QuizReviewItem[];
  // XP yang didapat dari pengerjaan ini (hanya Try Out/Quiz, tidak untuk kuis bab).
  xpEarned?: number;
}

export const QUIZ_RESULT_STORAGE_KEY = "quizResult";

// Skor terakhir kuis per bab disimpan di localStorage browser masing-masing
// pengguna (bukan di Supabase) untuk gauge progres belajar di halaman daftar bab.
export function chapterProgressStorageKey(chapterId: string): string {
  return `chapter-progress:${chapterId}`;
}

export type QuizHistoryKind = "tryout-tskwk" | "tryout-tpa" | "quiz-tskwk" | "quiz-tpa";

export const QUIZ_HISTORY_LABELS: Record<QuizHistoryKind, string> = {
  "tryout-tskwk": "Try Out TSKWK",
  "tryout-tpa": "Try Out TPA",
  "quiz-tskwk": "Quiz TSKWK",
  "quiz-tpa": "Quiz TPA",
};

export interface QuizHistoryEntry {
  kind: QuizHistoryKind;
  title: string;
  total: number;
  correct: number;
  percentage: number;
  timestamp: number;
}

export const QUIZ_HISTORY_STORAGE_KEY = "quizHistory";
const QUIZ_HISTORY_MAX_ENTRIES = 200;

// Riwayat skor Try Out & Quiz disimpan di localStorage (bukan Supabase) supaya
// tetap konsisten dengan pola penyimpanan progres lain di app ini — data murni
// lokal per-browser, tanpa perlu akun/login.
export function saveQuizHistoryEntry(entry: QuizHistoryEntry) {
  const existing = readQuizHistory();
  const next = [...existing, entry].slice(-QUIZ_HISTORY_MAX_ENTRIES);
  localStorage.setItem(QUIZ_HISTORY_STORAGE_KEY, JSON.stringify(next));
}

export function readQuizHistory(): QuizHistoryEntry[] {
  const raw = localStorage.getItem(QUIZ_HISTORY_STORAGE_KEY);
  if (!raw) return [];
  try {
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? (parsed as QuizHistoryEntry[]) : [];
  } catch {
    return [];
  }
}

// Hasil lengkap (dengan pembahasan per soal) untuk paket Try Out TERTENTU
// disimpan permanen di localStorage per attemptKey, supaya user bisa buka lagi
// "Cek Pembahasan" paket yang sudah dikerjakan kapan saja — beda dari
// QUIZ_RESULT_STORAGE_KEY (sessionStorage) yang cuma menyimpan hasil TERAKHIR.
export function attemptResultStorageKey(attemptKey: string): string {
  return `quiz-attempt:${attemptKey}`;
}

export function saveAttemptResult(attemptKey: string, result: QuizResult) {
  localStorage.setItem(attemptResultStorageKey(attemptKey), JSON.stringify(result));
}

export function readAttemptResult(attemptKey: string): QuizResult | null {
  const raw = localStorage.getItem(attemptResultStorageKey(attemptKey));
  if (!raw) return null;
  try {
    return JSON.parse(raw) as QuizResult;
  } catch {
    return null;
  }
}

export interface PassageSplit {
  // Teks bacaan (bisa beberapa paragraf); null kalau soal bukan tipe wacana.
  passage: string | null;
  // Pertanyaan yang benar-benar ditanyakan (tanpa teks bacaan).
  stem: string;
}

// Memisahkan teks bacaan dari pertanyaan pada soal wacana. Formatnya konsisten:
//   "Bacalah paragraf berikut.\n\n\"...bacaan...\"\n\n<pertanyaan sebenarnya>"
// sehingga blok pertama = pengantar, blok terakhir = pertanyaan, dan blok di
// tengah = bacaannya.
export function splitPassage(question: string): PassageSplit {
  const trimmed = question.trim();
  if (!/^bacalah\b/i.test(trimmed)) return { passage: null, stem: question };
  const blocks = trimmed.split(/\n\s*\n/);
  if (blocks.length < 3) return { passage: null, stem: question };
  const stem = blocks[blocks.length - 1].trim();
  const passage = blocks.slice(1, -1).join("\n\n").trim();
  if (!passage) return { passage: null, stem: question };
  return { passage, stem };
}

export function questionOptions(question: Question): Partial<Record<QuizOptionKey, string>> {
  const options: Partial<Record<QuizOptionKey, string>> = {
    A: question.option_a,
    B: question.option_b,
    C: question.option_c,
    D: question.option_d,
  };
  if (question.option_e) options.E = question.option_e;
  return options;
}

export function shuffle<T>(items: T[]): T[] {
  const arr = [...items];
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
  return arr;
}

// Deterministic PRNG (mulberry32) so a given seed always produces the same
// shuffle order — used to keep each try out "paket" stable across visits.
function mulberry32(seed: number) {
  let a = seed;
  return function () {
    a |= 0;
    a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

export function seededShuffle<T>(items: T[], seed: number): T[] {
  const random = mulberry32(seed);
  const arr = [...items];
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(random() * (i + 1));
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
  return arr;
}
