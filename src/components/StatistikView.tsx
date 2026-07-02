"use client";

import { useCallback, useRef, useSyncExternalStore } from "react";
import {
  QUIZ_HISTORY_LABELS,
  QUIZ_HISTORY_STORAGE_KEY,
  QuizHistoryEntry,
  QuizHistoryKind,
  readQuizHistory,
} from "@/lib/quiz";

function subscribe() {
  return () => {};
}

function getServerSnapshot(): QuizHistoryEntry[] {
  return [];
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

  if (history.length === 0) {
    return (
      <div className="rounded-xl border border-navy-100 bg-white p-8 text-center shadow-sm">
        <p className="text-navy-500">
          Belum ada riwayat. Kerjakan Try Out atau Quiz dulu untuk melihat statistiknya di sini.
        </p>
      </div>
    );
  }

  const overallAverage = average(history);
  const bestScore = Math.max(...history.map((e) => e.percentage));
  const latest = [...history].sort((a, b) => b.timestamp - a.timestamp)[0];
  const recent = [...history].sort((a, b) => b.timestamp - a.timestamp).slice(0, 15);

  return (
    <div className="space-y-8">
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
