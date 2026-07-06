import Link from "next/link";
import { notFound } from "next/navigation";
import { QuizRunner } from "@/components/QuizRunner";
import {
  getTpaTryoutQuestions,
  TPA_TRYOUT_PAKET_COUNT,
  TPA_TRYOUT_SUBTESTS,
  TpaTryoutSubtest,
} from "@/lib/data";
import { getDoneRefKeys } from "@/lib/attempts";
import { TryoutLocked } from "@/components/TryoutLocked";

export const dynamic = "force-dynamic";

function isTpaTryoutSubtest(value: string): value is TpaTryoutSubtest {
  return value in TPA_TRYOUT_SUBTESTS;
}

export default async function TpaTryoutPaketSubtestPage({
  params,
}: {
  params: Promise<{ paket: string; subtest: string }>;
}) {
  const { paket, subtest } = await params;

  const paketNumber = Number(paket);
  if (!Number.isInteger(paketNumber) || paketNumber < 1 || paketNumber > TPA_TRYOUT_PAKET_COUNT) {
    notFound();
  }
  if (!isTpaTryoutSubtest(subtest)) notFound();

  const backHref = `/tryout/tpa/${paketNumber}`;

  // Subtes yang sudah dikerjakan dikunci — arahkan ke pembahasannya.
  const done = await getDoneRefKeys(["tryout-tpa"]);
  const attemptId = done.get(`tryout-tpa-${paketNumber}-${subtest}`);
  if (attemptId) {
    return <TryoutLocked reviewHref={`/riwayat/${attemptId}`} backHref={backHref} />;
  }

  const { label, duration } = TPA_TRYOUT_SUBTESTS[subtest];
  const questions = await getTpaTryoutQuestions(subtest, paketNumber);

  if (questions.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-600">
          Belum ada soal untuk Try Out TPA subtes {label}. Isi dulu bank soal bab-bab terkait.
        </p>
        <Link href={backHref} className="mt-4 inline-block text-sm text-navy-500 hover:underline">
          &larr; Kembali
        </Link>
      </div>
    );
  }

  return (
    <QuizRunner
      questions={questions}
      title={`Try Out TPA Paket ${paketNumber} — ${label} (${questions.length} Soal)`}
      backHref={backHref}
      durationMinutes={duration}
      historyKind="tryout-tpa"
      attemptKey={`tryout-tpa-${paketNumber}-${subtest}`}
    />
  );
}
