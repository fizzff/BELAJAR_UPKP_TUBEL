import Link from "next/link";
import { notFound } from "next/navigation";
import { TryoutPaketCard } from "@/components/TryoutPaketCard";
import {
  TPA_TRYOUT_DURATION_MINUTES,
  TPA_TRYOUT_PAKET_COUNT,
  TPA_TRYOUT_SIZE,
  TPA_TRYOUT_SUBTESTS,
} from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function TryoutTpaPaketPage({
  params,
}: {
  params: Promise<{ paket: string }>;
}) {
  const { paket } = await params;
  const paketNumber = Number(paket);

  if (!Number.isInteger(paketNumber) || paketNumber < 1 || paketNumber > TPA_TRYOUT_PAKET_COUNT) {
    notFound();
  }

  const tpaSubtests = Object.entries(TPA_TRYOUT_SUBTESTS) as [
    keyof typeof TPA_TRYOUT_SUBTESTS,
    (typeof TPA_TRYOUT_SUBTESTS)[keyof typeof TPA_TRYOUT_SUBTESTS],
  ][];

  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <Link href="/tryout/tpa" className="text-sm text-navy-200 hover:text-white">
            &larr; Try Out TPA
          </Link>
          <h1 className="mt-3 text-3xl font-bold tracking-tight text-white">
            Try Out TPA — Paket {paketNumber}
          </h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Pilih subtes. {TPA_TRYOUT_SIZE} soal &middot; {TPA_TRYOUT_DURATION_MINUTES} menit.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <div className="grid gap-4 sm:grid-cols-2">
          {tpaSubtests.map(([key, subtest]) => (
            <TryoutPaketCard
              key={key}
              href={`/tryout/tpa/${paketNumber}/${key}`}
              attemptKey={`tryout-tpa-${paketNumber}-${key}`}
              label={subtest.label}
              meta={`${TPA_TRYOUT_SIZE} soal · ${TPA_TRYOUT_DURATION_MINUTES} menit`}
            />
          ))}
        </div>
      </div>
    </div>
  );
}
