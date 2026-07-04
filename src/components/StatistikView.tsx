"use client";

import Link from "next/link";
import { useCallback, useRef, useSyncExternalStore } from "react";
import {
  QUIZ_HISTORY_LABELS,
  QUIZ_HISTORY_STORAGE_KEY,
  QuizHistoryEntry,
  QuizHistoryKind,
  readQuizHistory,
} from "@/lib/quiz";
import {
  LEVEL_MAX,
  LEVEL_TITLES,
  LEVELS_PER_TITLE,
  levelProgress,
  readXp,
} from "@/lib/gamification";

function subscribe() {
  return () => {};
}

const EMPTY_HISTORY: QuizHistoryEntry[] = [];

function getServerSnapshot(): QuizHistoryEntry[] {
  return EMPTY_HISTORY;
}

function getXpSnapshot(): number {
  return readXp();
}

function getServerXpSnapshot(): number {
  return 0;
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
          <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">
            Level Belajar
          </p>
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
        <div
          className="h-2.5 rounded-full bg-gold-500 transition-all"
          style={{ width: `${pct}%` }}
        />
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

const ALL_KINDS: QuizHistoryKind[] = ["tryout-tskwk", "tryout-tpa", "quiz-tskwk", "quiz-tpa"];

function average(entries: QuizHistoryEntry[]): number {
  if (entries.length === 0) return 0;
  return Math.round(entries.reduce((sum, e) => sum + e.percentage, 0) / entries.length);
}

function formatDate(timestamp: number) {
  return new Date(timestamp).toLocaleString("id-ID", {
    day: "numeric",
    month: "short",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

export function StatistikView() {
  const cachedRawRef = useRef<string | null>(null);
  const cachedHistoryRef = useRef<QuizHistoryEntry[]>([]);

  const getSnapshot = useCallback(() => {
    const raw = localStorage.getItem(QUIZ_HISTORY_STORAGE_KEY);
    if (raw !== cachedRawRef.current) {
      cachedRawRef.current = raw;
      cachedHistoryRef.current = readQuizHistory();
    }
    return cachedHistoryRef.current;
  }, []);

  const history = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
  const xp = useSyncExternalStore(subscribe, getXpSnapshot, getServerXpSnapshot);

  if (history.length === 0) {
    return (
      <div className="space-y-8">
        <LevelCard xp={xp} />
        <div className="rounded-xl border border-navy-100 bg-white p-8 text-center shadow-sm">
          <p className="text-navy-500">
            Belum ada riwayat. Kerjakan Try Out atau Quiz dulu untuk melihat statistiknya di sini.
          </p>
        </div>
      </div>
    );
  }

  const overallAverage = average(history);
  const bestScore = Math.max(...history.map((e) => e.percentage));
  const latest = [...history].sort((a, b) => b.timestamp - a.timestamp)[0];
  const recent = [...history].sort((a, b) => b.timestamp - a.timestamp).slice(0, 15);

  return (
    <div className="space-y-8">
      <LevelCard xp={xp} />

      <div className="grid gap-4 sm:grid-cols-3">
        <div className="rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm">
          <p className="text-3xl font-bold text-navy-900">{history.length}</p>
          <p className="mt-1 text-sm text-navy-500">Total Percobaan</p>
        </div>
        <div className="rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm">
          <p className="text-3xl font-bold text-navy-900">{overallAverage}%</p>
          <p className="mt-1 text-sm text-navy-500">Rata-rata Keseluruhan</p>
        </div>
        <div className="rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm">
          <p className="text-3xl font-bold text-navy-900">{bestScore}%</p>
          <p className="mt-1 text-sm text-navy-500">Skor Tertinggi</p>
        </div>
      </div>

      <div>
        <h2 className="text-lg font-semibold text-navy-900">Rata-rata per Kategori</h2>
        <div className="mt-4 grid gap-4 sm:grid-cols-2">
          {ALL_KINDS.map((kind) => {
            const entries = history.filter((e) => e.kind === kind);
            const avg = average(entries);
            return (
              <div key={kind} className="rounded-xl border border-navy-100 bg-white p-4 shadow-sm">
                <div className="flex items-center justify-between text-sm">
                  <span className="font-medium text-navy-900">{QUIZ_HISTORY_LABELS[kind]}</span>
                  <span className="text-navy-400">{entries.length}x</span>
                </div>
                <div className="mt-2 h-2 w-full rounded-full bg-navy-100">
                  <div
                    className="h-2 rounded-full bg-navy-900 transition-all"
                    style={{ width: `${avg}%` }}
                  />
                </div>
                <p className="mt-1 text-right text-sm text-navy-500">
                  {entries.length > 0 ? `${avg}% rata-rata` : "Belum ada percobaan"}
                </p>
              </div>
            );
          })}
        </div>
      </div>

      <div>
        <h2 className="text-lg font-semibold text-navy-900">Riwayat Terbaru</h2>
        <p className="mt-1 text-sm text-navy-500">
          Percobaan terakhir: {latest.title} &middot; {latest.percentage}%
        </p>
        <div className="mt-4 space-y-2">
          {recent.map((entry, i) => (
            <div
              key={i}
              className="flex items-center justify-between rounded-lg border border-navy-100 bg-white px-4 py-3 text-sm shadow-sm"
            >
              <div className="min-w-0">
                <p className="truncate font-medium text-navy-900">{entry.title}</p>
                <p className="text-xs text-navy-400">{formatDate(entry.timestamp)}</p>
              </div>
              <div className="shrink-0 text-right">
                <p className="font-semibold text-navy-900">
                  {entry.correct}/{entry.total}
                </p>
                <p className="text-xs text-navy-400">{entry.percentage}%</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
