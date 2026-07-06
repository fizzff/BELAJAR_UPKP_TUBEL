import Link from "next/link";
import { TpaPaketOverviewCard } from "@/components/TpaPaketOverviewCard";
import { TPA_TRYOUT_PAKET_COUNT, TPA_TRYOUT_SIZE } from "@/lib/data";

export const dynamic = "force-dynamic";

export default function TryoutTpaPage() {
  const paketNumbers = Array.from({ length: TPA_TRYOUT_PAKET_COUNT }, (_, i) => i + 1);

  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <Link href="/tryout" className="text-sm text-navy-200 hover:text-white">
            &larr; Try Out
          </Link>
          <h1 className="mt-3 text-3xl font-bold tracking-tight text-white">Try Out TPA</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Pilih paket, lalu pilih subtes Verbal, Numerikal, atau Figural. {TPA_TRYOUT_SIZE} soal
            per subtes.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <div className="grid gap-4 sm:grid-cols-2 md:grid-cols-3">
          {paketNumbers.map((n) => (
            <TpaPaketOverviewCard key={n} paketNumber={n} />
          ))}
        </div>
      </div>
    </div>
  );
}
