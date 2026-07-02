import Link from "next/link";
import { MINI_QUIZ_DURATION_MINUTES, MINI_QUIZ_SIZE } from "@/lib/data";

export const dynamic = "force-dynamic";

const QUIZ_OPTIONS = [
  {
    href: "/quiz/tskwk",
    label: "TSKWK",
    description: "Tes Substansi Kemenkeu & Wawasan Kebangsaan",
  },
  {
    href: "/quiz/tpa",
    label: "TPA",
    description: "Tes Potensi Akademik (semua subtes)",
  },
];

export default function QuizIndexPage() {
  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <h1 className="text-3xl font-bold tracking-tight text-white">Quiz</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Latihan cepat {MINI_QUIZ_SIZE} soal acak selama {MINI_QUIZ_DURATION_MINUTES} menit.
            Soal berganti setiap kali dibuka, cocok untuk pemanasan singkat.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <div className="grid gap-4 sm:grid-cols-2">
          {QUIZ_OPTIONS.map((opt) => (
            <Link
              key={opt.href}
              href={opt.href}
              className="rounded-xl border border-navy-100 bg-white p-6 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md"
            >
              <span className="text-2xl font-bold text-navy-900">{opt.label}</span>
              <p className="mt-1 text-sm text-navy-500">{opt.description}</p>
              <p className="mt-2 text-xs text-navy-400">
                {MINI_QUIZ_SIZE} soal &middot; {MINI_QUIZ_DURATION_MINUTES} menit
              </p>
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}
