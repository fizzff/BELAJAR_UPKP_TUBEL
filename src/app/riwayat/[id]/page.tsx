import Link from "next/link";
import { notFound } from "next/navigation";
import { getAttempt } from "@/lib/attempts";
import { QuizResultView } from "@/components/QuizResultView";
import { QuizResult } from "@/lib/quiz";

export const dynamic = "force-dynamic";

export default async function RiwayatDetailPage({
  params,
}: {
  params: Promise<{ id: string }>;
}) {
  const { id } = await params;
  const attempt = await getAttempt(id);
  if (!attempt) notFound();

  const result: QuizResult = {
    title: attempt.title,
    total: attempt.total,
    correct: attempt.correct,
    items: attempt.items,
    xpEarned: attempt.xp_earned || undefined,
  };

  return (
    <div className="mx-auto max-w-3xl px-4 py-10">
      <Link href="/riwayat" className="text-sm text-navy-500 hover:text-navy-900 hover:underline">
        &larr; Kembali ke Riwayat
      </Link>
      <div className="mt-4">
        <QuizResultView result={result} />
      </div>
    </div>
  );
}
