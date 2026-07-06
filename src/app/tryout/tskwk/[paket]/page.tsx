import Link from "next/link";
import { notFound } from "next/navigation";
import { QuizRunner } from "@/components/QuizRunner";
import {
  getTryoutPaketQuestions,
  TRYOUT_PAKET_COUNT,
  TRYOUT_SUBSTANSI_DURATION_MINUTES,
} from "@/lib/data";
import { getDoneRefKeys } from "@/lib/attempts";
import { TryoutLocked } from "@/components/TryoutLocked";

export const dynamic = "force-dynamic";

export default async function TryoutTskwkPaketPage({
  params,
}: {
  params: Promise<{ paket: string }>;
}) {
  const { paket } = await params;
  const paketNumber = Number(paket);

  if (!Number.isInteger(paketNumber) || paketNumber < 1 || paketNumber > TRYOUT_PAKET_COUNT) {
    notFound();
  }

  // Paket yang sudah dikerjakan dikunci — arahkan ke pembahasannya.
  const done = await getDoneRefKeys(["tryout-tskwk"]);
  const attemptId = done.get(`tryout-tskwk-${paketNumber}`);
  if (attemptId) {
    return <TryoutLocked reviewHref={`/riwayat/${attemptId}`} backHref="/tryout/tskwk" />;
  }

  const questions = await getTryoutPaketQuestions(paketNumber);

  if (questions.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-600">
          Belum ada soal untuk Try Out. Isi dulu bank soal modul-modul UPKP.
        </p>
        <Link
          href="/tryout/tskwk"
          className="mt-4 inline-block text-sm text-navy-500 hover:underline"
        >
          &larr; Daftar Paket
        </Link>
      </div>
    );
  }

  return (
    <QuizRunner
      questions={questions}
      title={`Try Out TSKWK Paket ${paketNumber} (${questions.length} Soal)`}
      backHref="/tryout/tskwk"
      durationMinutes={TRYOUT_SUBSTANSI_DURATION_MINUTES}
      historyKind="tryout-tskwk"
      attemptKey={`tryout-tskwk-${paketNumber}`}
    />
  );
}
