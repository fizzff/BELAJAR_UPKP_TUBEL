import Link from "next/link";

export const dynamic = "force-dynamic";

function BookIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-7 w-7">
      <path d="M4 5.5C4 4.67 4.67 4 5.5 4H11V20H5.5C4.67 20 4 19.33 4 18.5V5.5Z" />
      <path d="M20 5.5C20 4.67 19.33 4 18.5 4H13V20H18.5C19.33 20 20 19.33 20 18.5V5.5Z" />
    </svg>
  );
}

function ClockIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-7 w-7">
      <circle cx="12" cy="12" r="8.5" />
      <path d="M12 7.5V12l3 2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function BoltIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-7 w-7">
      <path d="M13 3 5 13.5h5.5L11 21l8-10.5h-5.5L13 3Z" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

const MENU_ITEMS = [
  {
    href: "/materi",
    title: "Bahan Materi",
    description: "Ringkasan, mind map, dan latihan soal per bab untuk tiap modul.",
    icon: BookIcon,
  },
  {
    href: "/tryout",
    title: "Try Out",
    description: "Simulasi ujian penuh: Try Out TSKWK dan Try Out TPA, dibatasi waktu.",
    icon: ClockIcon,
  },
  {
    href: "/quiz",
    title: "Quiz",
    description: "Latihan cepat 10 soal, 5 menit, untuk pemanasan singkat TSKWK atau TPA.",
    icon: BoltIcon,
  },
];

export default function HomePage() {
  return (
    <div>
      <div className="relative overflow-hidden bg-linear-to-br from-navy-950 via-navy-900 to-navy-700">
        <div className="pointer-events-none absolute -top-20 -right-20 h-72 w-72 rounded-full bg-navy-500/30 blur-3xl" />
        <div className="pointer-events-none absolute -bottom-28 -left-16 h-72 w-72 rounded-full bg-navy-400/20 blur-3xl" />
        <div className="relative mx-auto max-w-4xl px-4 py-16">
          <span className="inline-block rounded-full border border-white/20 bg-white/10 px-3 py-1 text-xs font-medium text-navy-100 backdrop-blur-sm">
            E-Learning Persiapan UPKP
          </span>
          <h1 className="mt-4 text-3xl font-bold tracking-tight text-white sm:text-4xl">
            Belajar UPKP dan Tubel PKN STAN
          </h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Belajar materi dan latihan soal persiapan Tes Substansi Kemenkeu & Wawasan
            Kebangsaan UPKP, tanpa perlu login.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <div className="grid gap-4 sm:grid-cols-3">
          {MENU_ITEMS.map(({ href, title, description, icon: Icon }) => (
            <Link
              key={href}
              href={href}
              className="group flex flex-col items-center gap-3 rounded-xl border border-navy-100 bg-white px-5 py-8 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md"
            >
              <span className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-navy-50 text-navy-700 transition group-hover:bg-navy-900 group-hover:text-white">
                <Icon />
              </span>
              <h2 className="text-lg font-semibold text-navy-900">{title}</h2>
              <p className="text-sm text-navy-500">{description}</p>
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}
