"use client";

import Link from "next/link";
import { useSyncExternalStore } from "react";
import {
  LEVEL_MAX,
  LEVEL_TITLES,
  LEVELS_PER_TITLE,
  levelProgress,
  readXp,
} from "@/lib/gamification";

// Bentuk minimal attempt dari server (Supabase). Tidak mengimpor tipe dari
// lib/attempts (server-only) agar komponen client ini tetap bersih.
export interface StatAttempt {
  id: string;
  kind: string;
  title: string;
  total: number;
  correct: number;
  xp_earned: number;
  created_at: string;
}

const KIND_LABEL: Record<string, string> = {
  "tryout-tskwk": "Try Out TSKWK",
  "tryout-tpa": "Try Out TPA",
  "quiz-tskwk": "Quiz TSKWK",
  "quiz-tpa": "Quiz TPA",
  quest: "Quest Harian",
};

// Kategori berskor untuk analisa kemampuan (quest tidak dinilai skornya).
const SCORE_KINDS = ["tryout-tskwk", "tryout-tpa", "quiz-tskwk", "quiz-tpa"];

function subscribe() {
  return () => {};
}
function getXpSnapshot(): number {
  return readXp();
}
function getServerXpSnapshot(): number {
  return 0;
}

function pctOf(a: StatAttempt): number {
  return a.total > 0 ? Math.round((a.correct / a.total) * 100) : 0;
}
function averagePct(entries: StatAttempt[]): number {
  if (entries.length === 0) return 0;
  return Math.round(entries.reduce((sum, e) => sum + pctOf(e), 0) / entries.length);
}
function formatDate(iso: string) {
  return new Date(iso).toLocaleString("id-ID", {
    day: "numeric",
    month: "short",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

function LevelCard({ xp }: { xp: number }) {
  const progress = levelProgress(xp);
  const pct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);
  return (
    <div className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">Level Belajar</p>
          <p className="mt-1 text-3xl font-bold text-navy-900">
            Level {progress.level}
            <span className="ml-3 align-middle rounded-full bg-gold-50 px-3 py-1 text-sm font-semibold text-gold-700 ring-1 ring-gold-200">
              {progress.title}
            </span>
          </p>
        </div>
        <Link
          href="/quest"
          className="rounded-lg bg-navy-900 px-4 py-2 text-sm font-medium text-white hover:bg-navy-700"
        >
          Kerjakan Quest Harian
        </Link>
      </div>
      <div className="mt-4 h-2.5 w-full rounded-full bg-navy-100">
        <div className="h-2.5 rounded-full bg-gold-500 transition-all" style={{ width: `${pct}%` }} />
      </div>
      <p className="mt-1.5 text-xs text-navy-400">
        {progress.isMaxLevel
          ? `Level maksimum tercapai · total ${progress.xp} XP`
          : `${progress.xpIntoLevel}/${progress.xpForNextLevel} XP menuju Level ${progress.level + 1} · total ${progress.xp} XP`}
      </p>
      <div className="mt-4 grid grid-cols-5 gap-1.5 text-center">
        {LEVEL_TITLES.map((title, i) => {
          const tierStart = i * LEVELS_PER_TITLE + 1;
          const tierEnd = Math.min(LEVEL_MAX, (i + 1) * LEVELS_PER_TITLE);
          const reached = progress.level >= tierStart;
          const active = progress.level >= tierStart && progress.level <= tierEnd;
          return (
            <div
              key={title}
              className={`rounded-lg border px-1 py-1.5 text-[11px] leading-tight ${
                active
                  ? "border-gold-300 bg-gold-50 font-semibold text-gold-700"
                  : reached
                    ? "border-navy-100 bg-navy-50 text-navy-500"
                    : "border-navy-100 text-navy-300"
              }`}
            >
              {title}
              <span className="block text-[10px] font-normal">
                Lv {tierStart}-{tierEnd}
              </span>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// Grafik tren skor (satu seri, single-hue navy) — persentase benar tiap
// pengerjaan berskor, urut kronologis. Menunjukkan perkembangan kemampuan.
function TrendChart({ series }: { series: { label: string; pct: number; when: string }[] }) {
  if (series.length < 2) {
    return (
      <p className="rounded-lg border border-dashed border-navy-200 px-4 py-6 text-center text-sm text-navy-400">
        Selesaikan minimal 2 Try Out / Quiz untuk melihat grafik tren skormu.
      </p>
    );
  }
  const W = 320;
  const H = 150;
  const padL = 26;
  const padR = 8;
  const padT = 10;
  const padB = 24;
  const plotW = W - padL - padR;
  const plotH = H - padT - padB;
  const n = series.length;
  const x = (i: number) => padL + (n === 1 ? plotW / 2 : (i / (n - 1)) * plotW);
  const y = (v: number) => padT + (1 - v / 100) * plotH;
  const linePath = series.map((p, i) => `${i === 0 ? "M" : "L"}${x(i)},${y(p.pct)}`).join(" ");
  const areaPath = `${linePath} L${x(n - 1)},${padT + plotH} L${x(0)},${padT + plotH} Z`;
  const avg = Math.round(series.reduce((s, p) => s + p.pct, 0) / n);

  return (
    <svg viewBox={`0 0 ${W} ${H}`} className="w-full" role="img" aria-label="Grafik tren skor">
      {/* gridlines + label sumbu y (recessive) */}
      {[0, 50, 100].map((g) => (
        <g key={g}>
          <line x1={padL} y1={y(g)} x2={W - padR} y2={y(g)} stroke="#e2ebf3" strokeWidth="1" />
          <text x={padL - 5} y={y(g) + 3} textAnchor="end" fontSize="8" fill="#94b1d1">
            {g}
          </text>
        </g>
      ))}
      {/* garis rata-rata */}
      <line
        x1={padL}
        y1={y(avg)}
        x2={W - padR}
        y2={y(avg)}
        stroke="#c09a3e"
        strokeWidth="1"
        strokeDasharray="3 3"
      />
      <text x={W - padR} y={y(avg) - 3} textAnchor="end" fontSize="8" fill="#a97e22">
        rata2 {avg}%
      </text>
      {/* area + garis tren */}
      <path d={areaPath} fill="#1f4a75" fillOpacity="0.08" />
      <path d={linePath} fill="none" stroke="#1f4a75" strokeWidth="2" strokeLinejoin="round" strokeLinecap="round" />
      {series.map((p, i) => (
        <circle key={i} cx={x(i)} cy={y(p.pct)} r={i === n - 1 ? 4 : 2.5} fill={i === n - 1 ? "#c09a3e" : "#1f4a75"}>
          <title>{`${p.label} — ${p.pct}% (${p.when})`}</title>
        </circle>
      ))}
    </svg>
  );
}

// Analisa kemampuan per kategori (bar horizontal, single-hue). Menyoroti
// kategori terkuat & yang perlu ditingkatkan.
function CategoryBars({ attempts }: { attempts: StatAttempt[] }) {
  const rows = SCORE_KINDS.map((kind) => {
    const entries = attempts.filter((a) => a.kind === kind);
    return { kind, count: entries.length, avg: averagePct(entries) };
  });
  const withData = rows.filter((r) => r.count > 0);
  const strongest = withData.length ? withData.reduce((a, b) => (b.avg > a.avg ? b : a)) : null;
  const weakest = withData.length ? withData.reduce((a, b) => (b.avg < a.avg ? b : a)) : null;

  return (
    <div>
      <div className="space-y-2.5">
        {rows.map((r) => (
          <div key={r.kind} className="flex items-center gap-3">
            <span className="w-28 shrink-0 text-xs font-medium text-navy-700">{KIND_LABEL[r.kind]}</span>
            <div className="h-3 flex-1 rounded-full bg-navy-100">
              <div
                className={`h-3 rounded-full transition-all ${r.count ? "bg-navy-700" : "bg-navy-200"}`}
                style={{ width: `${r.count ? r.avg : 0}%` }}
              />
            </div>
            <span className="w-16 shrink-0 text-right text-xs text-navy-500">
              {r.count ? `${r.avg}%` : "—"}
            </span>
          </div>
        ))}
      </div>
      {strongest && weakest && withData.length >= 2 && strongest.kind !== weakest.kind && (
        <p className="mt-3 text-xs text-navy-500">
          Terkuat: <span className="font-semibold text-emerald-700">{KIND_LABEL[strongest.kind]} ({strongest.avg}%)</span>
          {" · "}Perlu ditingkatkan:{" "}
          <span className="font-semibold text-rose-700">{KIND_LABEL[weakest.kind]} ({weakest.avg}%)</span>
        </p>
      )}
    </div>
  );
}

export function ProfilView({ attempts, nama }: { attempts: StatAttempt[]; nama: string | null }) {
  const xp = useSyncExternalStore(subscribe, getXpSnapshot, getServerXpSnapshot);

  const scored = attempts.filter((a) => SCORE_KINDS.includes(a.kind));
  const overallAverage = averagePct(scored);
  const bestScore = scored.length > 0 ? Math.max(...scored.map(pctOf)) : 0;
  // Kronologis (lama → baru) untuk grafik tren; batasi 20 terakhir.
  const trend = [...scored]
    .reverse()
    .slice(-20)
    .map((a) => ({ label: KIND_LABEL[a.kind] ?? a.kind, pct: pctOf(a), when: formatDate(a.created_at) }));
  const recent = attempts.slice(0, 20);

  return (
    <div className="space-y-8">
      {nama && (
        <div>
          <p className="text-sm text-navy-400">Profil</p>
          <h2 className="text-2xl font-bold text-navy-900">{nama}</h2>
        </div>
      )}

      <LevelCard xp={xp} />

      <div className="grid gap-4 sm:grid-cols-3">
        <div className="rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm">
          <p className="text-3xl font-bold text-navy-900">{scored.length}</p>
          <p className="mt-1 text-sm text-navy-500">Total Percobaan</p>
        </div>
        <div className="rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm">
          <p className="text-3xl font-bold text-navy-900">{overallAverage}%</p>
          <p className="mt-1 text-sm text-navy-500">Rata-rata Skor</p>
        </div>
        <div className="rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm">
          <p className="text-3xl font-bold text-navy-900">{bestScore}%</p>
          <p className="mt-1 text-sm text-navy-500">Skor Tertinggi</p>
        </div>
      </div>

      <div className="grid gap-4 lg:grid-cols-2">
        <div className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
          <h2 className="text-sm font-semibold text-navy-900">Tren Skor</h2>
          <p className="text-xs text-navy-400">Perkembangan persentase benar tiap pengerjaan.</p>
          <div className="mt-3">
            <TrendChart series={trend} />
          </div>
        </div>
        <div className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
          <h2 className="text-sm font-semibold text-navy-900">Analisa Kemampuan per Kategori</h2>
          <p className="text-xs text-navy-400">Rata-rata akurasi di tiap jenis tes.</p>
          <div className="mt-4">
            <CategoryBars attempts={scored} />
          </div>
        </div>
      </div>

      <div>
        <h2 className="text-lg font-semibold text-navy-900">Riwayat Pengerjaan</h2>
        <p className="mt-1 text-sm text-navy-500">
          Semua Try Out, Quiz, dan Quest. Klik untuk melihat soal &amp; pembahasannya lagi.
        </p>
        {recent.length === 0 ? (
          <div className="mt-4 rounded-xl border border-navy-100 bg-white p-8 text-center shadow-sm">
            <p className="text-navy-500">Belum ada pengerjaan. Mulai Try Out atau Quiz dulu.</p>
          </div>
        ) : (
          <div className="mt-4 space-y-2">
            {recent.map((entry) => {
              const p = pctOf(entry);
              return (
                <Link
                  key={entry.id}
                  href={`/riwayat/${entry.id}`}
                  className="flex items-center justify-between rounded-lg border border-navy-100 bg-white px-4 py-3 text-sm shadow-sm transition hover:border-navy-300 hover:shadow-md"
                >
                  <div className="min-w-0">
                    <p className="text-[11px] font-semibold uppercase tracking-wide text-navy-400">
                      {KIND_LABEL[entry.kind] ?? entry.kind}
                    </p>
                    <p className="truncate font-medium text-navy-900">{entry.title}</p>
                    <p className="text-xs text-navy-400">{formatDate(entry.created_at)}</p>
                  </div>
                  <div className="shrink-0 pl-3 text-right">
                    <p className="font-semibold text-navy-900">
                      {entry.correct}/{entry.total}
                    </p>
                    <p className="text-xs text-navy-400">{p}%</p>
                  </div>
                </Link>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
