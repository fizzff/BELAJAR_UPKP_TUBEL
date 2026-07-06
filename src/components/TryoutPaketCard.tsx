import Link from "next/link";

// Kartu paket Try Out. Status "sudah dikerjakan" datang dari server (Supabase):
// paket yang sudah dikerjakan DIKUNCI — tidak bisa dikerjakan ulang, hanya bisa
// dibuka pembahasannya lewat Riwayat.
export function TryoutPaketCard({
  href,
  done,
  reviewHref,
  label,
  meta,
}: {
  href: string;
  done: boolean;
  reviewHref?: string;
  label: string;
  meta: string;
}) {
  if (done) {
    return (
      <div className="relative rounded-xl border border-navy-100 bg-navy-50/60 p-5 text-center shadow-sm">
        <span className="absolute right-3 top-3 flex items-center gap-1 rounded-full bg-emerald-100 px-2 py-0.5 text-[10px] font-semibold text-emerald-700">
          <LockIcon /> Selesai
        </span>
        <span className="text-2xl font-bold text-navy-400">{label}</span>
        <p className="mt-1 text-sm text-navy-400">{meta}</p>
        {reviewHref && (
          <Link
            href={reviewHref}
            className="mt-3 inline-block rounded-lg border border-navy-200 px-3 py-1.5 text-xs font-medium text-navy-700 transition hover:border-navy-400 hover:bg-white"
          >
            Cek Pembahasan
          </Link>
        )}
      </div>
    );
  }

  return (
    <Link
      href={href}
      className="block rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md"
    >
      <span className="text-2xl font-bold text-navy-900">{label}</span>
      <p className="mt-1 text-sm text-navy-500">{meta}</p>
    </Link>
  );
}

function LockIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" className="h-3 w-3">
      <rect x="5" y="11" width="14" height="9" rx="2" />
      <path d="M8 11V8a4 4 0 0 1 8 0v3" strokeLinecap="round" />
    </svg>
  );
}
