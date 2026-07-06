import Link from "next/link";

// Layar untuk paket Try Out yang sudah dikerjakan: tidak bisa diulang, hanya
// bisa dibuka pembahasannya.
export function TryoutLocked({
  reviewHref,
  backHref,
}: {
  reviewHref: string;
  backHref: string;
}) {
  return (
    <div className="mx-auto max-w-lg px-4 py-16 text-center">
      <div className="rounded-2xl border border-navy-100 bg-white p-8 shadow-sm">
        <span className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-navy-50 text-navy-600">
          <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6" className="h-7 w-7">
            <rect x="5" y="11" width="14" height="9" rx="2" />
            <path d="M8 11V8a4 4 0 0 1 8 0v3" strokeLinecap="round" />
          </svg>
        </span>
        <h1 className="mt-4 text-xl font-bold text-navy-900">Paket ini sudah dikerjakan</h1>
        <p className="mt-2 text-sm text-navy-500">
          Setiap paket Try Out hanya bisa dikerjakan sekali agar soal tidak berulang. Kamu tetap
          bisa membuka soal dan pembahasannya kapan saja.
        </p>
        <div className="mt-6 flex items-center justify-center gap-3">
          <Link
            href={reviewHref}
            className="rounded-lg bg-navy-900 px-5 py-2.5 text-sm font-medium text-white hover:bg-navy-700"
          >
            Lihat Soal & Pembahasan
          </Link>
          <Link href={backHref} className="text-sm text-navy-500 hover:text-navy-900 hover:underline">
            Kembali
          </Link>
        </div>
      </div>
    </div>
  );
}
