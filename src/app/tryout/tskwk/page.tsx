import Link from "next/link";
import { TryoutPaketCard } from "@/components/TryoutPaketCard";
import { TRYOUT_PAKET_COUNT, TRYOUT_PAKET_SIZE, TRYOUT_SUBSTANSI_DURATION_MINUTES } from "@/lib/data";

export const dynamic = "force-dynamic";

export default function TryoutTskwkPage() {
  const paketNumbers = Array.from({ length: TRYOUT_PAKET_COUNT }, (_, i) => i + 1);

  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <Link href="/tryout" className="text-sm text-navy-200 hover:text-white">
            &larr; Try Out
          </Link>
          <h1 className="mt-3 text-3xl font-bold tracking-tight text-white">Try Out TSKWK</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            {TRYOUT_PAKET_SIZE} soal acak gabungan dari kelima modul UPKP &middot;{" "}
            {TRYOUT_SUBSTANSI_DURATION_MINUTES} menit per paket.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <div className="grid gap-4 sm:grid-cols-2 md:grid-cols-3">
          {paketNumbers.map((n) => (
            <TryoutPaketCard
              key={n}
              href={`/tryout/tskwk/${n}`}
              attemptKey={`tryout-tskwk-${n}`}
              label={`Paket ${n}`}
              meta={`${TRYOUT_PAKET_SIZE} soal`}
            />
          ))}
        </div>
      </div>
    </div>
  );
}
