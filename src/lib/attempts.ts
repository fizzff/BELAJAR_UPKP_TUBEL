import type { SupabaseClient } from "@supabase/supabase-js";
import { createServerSupabase } from "@/lib/supabase/server";
import { QuizReviewItem } from "@/lib/quiz";
import { Question } from "@/lib/types";

// Jenis tes untuk scope anti-pengulangan. Soal yang sudah muncul di satu jenis
// tidak dipakai lagi DI JENIS YANG SAMA sampai bank soal jenis itu habis.
export type TestType = "tryout" | "quiz" | "quest";

export interface Attempt {
  id: string;
  kind: string;
  test_type: TestType;
  ref_key: string | null;
  title: string;
  total: number;
  correct: number;
  xp_earned: number;
  created_at: string;
}

export interface AttemptDetail extends Attempt {
  items: QuizReviewItem[];
}

async function currentUserId(supabase: SupabaseClient): Promise<string | null> {
  const {
    data: { user },
  } = await supabase.auth.getUser();
  return user?.id ?? null;
}

// Kumpulan id soal yang sudah pernah muncul untuk user ini pada satu jenis tes.
async function seenQuestionIds(
  supabase: SupabaseClient,
  userId: string,
  testType: TestType
): Promise<Set<string>> {
  const { data } = await supabase
    .from("seen_questions")
    .select("question_id")
    .eq("user_id", userId)
    .eq("test_type", testType);
  return new Set((data ?? []).map((r) => r.question_id as string));
}

// Mengembalikan bagian pool yang BELUM pernah muncul di jenis tes ini. Kalau sisa
// soal belum-muncul lebih sedikit dari yang dibutуhkan, catatan "seen" jenis itu
// di-reset (dihapus) agar seluruh bank kembali tersedia — lalu pool penuh
// dikembalikan. Dipanggil dari data layer sebelum menyusun paket soal.
export async function availableUnseen(
  supabase: SupabaseClient,
  testType: TestType,
  pool: Question[],
  needed: number
): Promise<Question[]> {
  const userId = await currentUserId(supabase);
  if (!userId) return pool; // tanpa user (mis. build) — jangan menyaring
  const seen = await seenQuestionIds(supabase, userId, testType);
  const unseen = pool.filter((q) => !seen.has(q.id));
  if (unseen.length >= needed) return unseen;
  // Bank soal jenis ini (praktis) habis → reset agar boleh berulang lagi.
  if (seen.size > 0) {
    await supabase.from("seen_questions").delete().eq("user_id", userId).eq("test_type", testType);
  }
  return pool;
}

// --------------------------------------------------------- Baca riwayat/kunci

export async function getUserAttempts(): Promise<Attempt[]> {
  const supabase = await createServerSupabase();
  const { data } = await supabase
    .from("attempts")
    .select("id, kind, test_type, ref_key, title, total, correct, xp_earned, created_at")
    .order("created_at", { ascending: false });
  return (data ?? []) as Attempt[];
}

export async function getAttempt(id: string): Promise<AttemptDetail | null> {
  const supabase = await createServerSupabase();
  const { data } = await supabase.from("attempts").select("*").eq("id", id).maybeSingle();
  return (data as AttemptDetail | null) ?? null;
}

// Peta ref_key → id attempt untuk unit diskret yang sudah dikerjakan (mengunci
// paket TO / misi). `kind` opsional untuk memfilter (mis. 'tryout-tskwk').
export async function getDoneRefKeys(kinds?: string[]): Promise<Map<string, string>> {
  const supabase = await createServerSupabase();
  let query = supabase.from("attempts").select("id, ref_key").not("ref_key", "is", null);
  if (kinds && kinds.length > 0) query = query.in("kind", kinds);
  const { data } = await query;
  const map = new Map<string, string>();
  for (const row of data ?? []) {
    if (row.ref_key) map.set(row.ref_key as string, row.id as string);
  }
  return map;
}
