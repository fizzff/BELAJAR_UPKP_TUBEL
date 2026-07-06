import Link from "next/link";
import { getUserAttempts } from "@/lib/attempts";

export const dynamic = "force-dynamic";

const KIND_LABEL: Record<string, string> = {
  "tryout-tskwk": "Try Out TSKWK",
  "tryout-tpa": "Try Out TPA",
  "quiz-tskwk": "Quiz TSKWK",
  "quiz-tpa": "Quiz TPA",
  quest: "Quest Harian",
};

function formatDate(iso: string): string {
  return new Intl.DateTimeFormat("id-ID", {
    dateStyle: "medium",
    timeStyle: "short",
    timeZone: "Asia/Jakarta",
  }).format(new Date(iso));
}

export default async function RiwayatPage() {
  const attempts = await getUserAttempts();

  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <h1 className="text-3xl font-bold tracking-tight text-white">Riwayat Pengerjaan</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Semua Try Out, Quiz, dan Quest yang sudah kamu kerjakan. Klik untuk melihat soal dan
            pembahasannya kembali.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        {attempts.length === 0 ? (
          <div className="rounded-xl border border-navy-100 bg-white p-8 text-center shadow-sm">
            <p className="text-navy-600">Belum ada pengerjaan yang tercatat.</p>
            <div className="mt-4 flex justify-center gap-3">
              <Link href="/tryout" className="rounded-lg bg-navy-900 px-4 py-2 text-sm font-medium text-white hover:bg-navy-700">
                Mulai Try Out
              </Link>
              <Link href="/quest" className="rounded-lg border border-navy-200 px-4 py-2 text-sm font-medium text-navy-700 hover:border-navy-400">
                Quest Harian
              </Link>
            </div>
          </div>
        ) : (
          <ul className="space-y-3">
            {attempts.map((a) => {
              const pct = a.total > 0 ? Math.round((a.correct / a.total) * 100) : 0;
              const pass = pct >= 60;
              return (
                <li key={a.id}>
                  <Link
                    href={`/riwayat/${a.id}`}
                    className="flex items-center gap-4 rounded-xl border border-navy-100 bg-white p-4 shadow-sm transition hover:border-navy-300 hover:shadow-md"
                  >
                    <div
                      className={`flex h-14 w-14 shrink-0 flex-col items-center justify-center rounded-lg text-sm font-bold ${
                        pass ? "bg-emerald-50 text-emerald-700" : "bg-rose-50 text-rose-700"
                      }`}
                    >
                      {pct}%
                    </div>
                    <div className="min-w-0 flex-1">
                      <p className="text-[11px] font-semibold uppercase tracking-wide text-navy-400">
                        {KIND_LABEL[a.kind] ?? a.kind}
                      </p>
                      <p className="truncate font-medium text-navy-900">{a.title}</p>
                      <p className="text-xs text-navy-400">{formatDate(a.created_at)}</p>
                    </div>
                    <div className="shrink-0 text-right">
                      <p className="text-sm font-semibold text-navy-900">
                        {a.correct}/{a.total}
                      </p>
                      {a.xp_earned > 0 && (
                        <p className="text-xs font-semibold text-gold-700">+{a.xp_earned} XP</p>
                      )}
                    </div>
                  </Link>
                </li>
              );
            })}
          </ul>
        )}
      </div>
    </div>
  );
}
