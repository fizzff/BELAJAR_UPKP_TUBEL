import Link from "next/link";
import { QuizRunner } from "@/components/QuizRunner";
import { getMiniQuizQuestions, MINI_QUIZ_DURATION_MINUTES } from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function MiniQuizTpaPage() {
  const questions = await getMiniQuizQuestions("tpa");

  if (questions.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-600">
          Belum ada soal untuk Quiz TPA. Isi dulu bank soal bab-bab TPA.
        </p>
        <Link href="/quiz" className="mt-4 inline-block text-sm text-navy-500 hover:underline">
          &larr; Daftar Quiz
        </Link>
      </div>
    );
  }

  return (
    <QuizRunner
      questions={questions}
      title={`Quiz TPA (${questions.length} Soal)`}
      backHref="/quiz"
      durationMinutes={MINI_QUIZ_DURATION_MINUTES}
      historyKind="quiz-tpa"
    />
  );
}
