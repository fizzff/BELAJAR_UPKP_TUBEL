"use server";

import { revalidatePath } from "next/cache";
import { createServerSupabase } from "@/lib/supabase/server";
import { QuizReviewItem } from "@/lib/quiz";
import { TestType } from "@/lib/attempts";

export interface RecordAttemptInput {
  kind: string; // 'tryout-tskwk' | 'tryout-tpa' | 'quiz-tskwk' | 'quiz-tpa' | 'quest'
  testType: TestType; // scope anti-pengulangan
  refKey: string | null; // kunci unit diskret (paket TO / misi); null untuk quiz
  title: string;
  total: number;
  correct: number;
  xpEarned: number;
  items: QuizReviewItem[];
  questionIds: string[]; // id semua soal yang tampil (untuk catatan "seen")
}

// Dipanggil dari runner (client) saat sebuah pengerjaan selesai. Menyimpan
// riwayat + mencatat soal yang sudah muncul agar tidak berulang di jenis yang
// sama. Aman dipanggil ganda: unit diskret dilindungi unique index, seen pakai
// ignoreDuplicates.
export async function recordAttempt(input: RecordAttemptInput) {
  const supabase = await createServerSupabase();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return; // tidak login — abaikan diam-diam

  // Untuk unit diskret (paket TO, misi harian): jangan buat duplikat kalau sudah
  // pernah dikerjakan — attempt pertama yang dipertahankan.
  if (input.refKey) {
    const { data: existing } = await supabase
      .from("attempts")
      .select("id")
      .eq("user_id", user.id)
      .eq("ref_key", input.refKey)
      .maybeSingle();
    if (existing) {
      await recordSeen(supabase, user.id, input.testType, input.questionIds);
      return;
    }
  }

  const { error } = await supabase.from("attempts").insert({
    user_id: user.id,
    kind: input.kind,
    test_type: input.testType,
    ref_key: input.refKey,
    title: input.title,
    total: input.total,
    correct: input.correct,
    xp_earned: input.xpEarned,
    items: input.items,
  });
  if (error) throw error;

  await recordSeen(supabase, user.id, input.testType, input.questionIds);

  revalidatePath("/riwayat");
  if (input.testType === "tryout") {
    revalidatePath("/tryout/tskwk");
    revalidatePath("/tryout/tpa", "layout");
  }
}

async function recordSeen(
  supabase: Awaited<ReturnType<typeof createServerSupabase>>,
  userId: string,
  testType: TestType,
  questionIds: string[]
) {
  if (questionIds.length === 0) return;
  const rows = questionIds.map((id) => ({
    user_id: userId,
    question_id: id,
    test_type: testType,
  }));
  await supabase.from("seen_questions").upsert(rows, {
    onConflict: "user_id,test_type,question_id",
    ignoreDuplicates: true,
  });
}
