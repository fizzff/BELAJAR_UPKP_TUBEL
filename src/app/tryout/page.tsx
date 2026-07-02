import Link from "next/link";
import {
  TPA_TRYOUT_DURATION_MINUTES,
  TPA_TRYOUT_SIZE,
  TRYOUT_PAKET_SIZE,
  TRYOUT_SUBSTANSI_DURATION_MINUTES,
} from "@/lib/data";

export const dynamic = "force-dynamic";

const TRYOUT_OPTIONS = [
  {
    href: "/tryout/tskwk",
    label: "TSKWK",
    description: "Tes Substansi Kemenkeu & Wawasan Kebangsaan",
    meta: `${TRYOUT_PAKET_SIZE} soal · ${TRYOUT_SUBSTANSI_DURATION_MINUTES} menit`,
  },
  {
    href: "/tryout/tpa",
    label: "TPA",
    description: "Tes Potensi Akademik — subtes Verbal & Numerikal",
    meta: `${TPA_TRYOUT_SIZE} soal · ${TPA_TRYOUT_DURATION_MINUTES} menit per subtes`,
  },
];

export default function TryoutIndexPage() {
  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <h1 className="text-3xl font-bold tracking-tight text-white">Try Out</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Pilih jenis Try Out. Setiap paket dibatasi waktu dan komposisi soalnya tetap sama
            setiap kali dibuka ulang.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <div className="grid gap-4 sm:grid-cols-2">
          {TRYOUT_OPTIONS.map((opt) => (
            <Link
              key={opt.href}
              href={opt.href}
              className="rounded-xl border border-navy-100 bg-white p-6 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md"
            >
              <span className="text-2xl font-bold text-navy-900">{opt.label}</span>
              <p className="mt-1 text-sm text-navy-500">{opt.description}</p>
              <p className="mt-2 text-xs text-navy-400">{opt.meta}</p>
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}
