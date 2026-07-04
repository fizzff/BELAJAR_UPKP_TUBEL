import type { ReactNode } from "react";

// Menata soal wacana: bacaan di kiri (punya scroll sendiri, menempel/sticky saat
// digulir), pertanyaan + jawaban di kanan. Panel bacaan diberi `key` berdasarkan
// isi teksnya, sehingga saat berpindah ke soal yang MASIH mengacu bacaan yang
// sama, node DOM-nya dipertahankan (posisi scroll tidak ikut ter-reset); saat
// bacaannya berganti, panel dibuat ulang dan scroll kembali ke atas.
export function PassageLayout({
  passage,
  children,
}: {
  passage: string | null;
  children: ReactNode;
}) {
  if (!passage) return <>{children}</>;

  return (
    <div className="grid gap-4 lg:grid-cols-2 lg:items-start">
      <div
        key={passage}
        className="rounded-xl border border-navy-100 bg-navy-50/60 p-4 lg:sticky lg:top-24"
      >
        <p className="mb-2 text-xs font-semibold uppercase tracking-wide text-navy-400">
          Bacaan
        </p>
        <div className="scrollbar-thin max-h-[24rem] overflow-y-auto whitespace-pre-line pr-2 text-sm leading-relaxed text-navy-700 lg:max-h-[65vh]">
          {passage}
        </div>
      </div>
      <div>{children}</div>
    </div>
  );
}
