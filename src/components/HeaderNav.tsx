"use client";

import Link from "next/link";
import { useCallback, useRef, useState, useSyncExternalStore } from "react";
import { QUIZ_HISTORY_STORAGE_KEY, QuizHistoryEntry, readQuizHistory } from "@/lib/quiz";
import {
  QUEST_MISSIONS,
  countCompletedMissions,
  dailyQuestDateKey,
  levelProgress,
  readXp,
} from "@/lib/gamification";

function ProfileIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6" className="h-5 w-5">
      <circle cx="12" cy="8" r="3.5" />
      <path d="M4.5 20c1.2-3.5 4.2-5.5 7.5-5.5s6.3 2 7.5 5.5" strokeLinecap="round" />
    </svg>
  );
}

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

function getQuestDoneCountSnapshot(): number {
  return countCompletedMissions(dailyQuestDateKey());
}

function getServerQuestDoneCountSnapshot(): number {
  return 0;
}

export function HeaderNav() {
  const [open, setOpen] = useState(false);
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
  const questDoneCount = useSyncExternalStore(
    subscribe,
    getQuestDoneCountSnapshot,
    getServerQuestDoneCountSnapshot
  );

  const progress = levelProgress(xp);
  const levelPct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);
  const average =
    history.length > 0
      ? Math.round(history.reduce((sum, e) => sum + e.percentage, 0) / history.length)
      : null;

  return (
    <div className="relative" onMouseEnter={() => setOpen(true)} onMouseLeave={() => setOpen(false)}>
      <button
        type="button"
        onClick={() => setOpen((v) => !v)}
        aria-label="Progres Belajar"
        className="flex items-center gap-2 rounded-full border border-navy-100 bg-white py-1 pl-1 pr-3 text-navy-600 transition hover:border-navy-300 hover:text-navy-900"
      >
        <span className="flex h-7 w-7 items-center justify-center rounded-full bg-navy-50">
          <ProfileIcon />
        </span>
        <span className="text-xs font-semibold">Lv {progress.level}</span>
      </button>

      {open && (
        <div className="absolute right-0 top-full w-72 pt-2">
          <div className="rounded-xl border border-navy-100 bg-white/95 p-4 shadow-lg backdrop-blur-md">
            <div className="flex items-baseline justify-between">
              <p className="text-sm font-semibold text-navy-900">Level {progress.level}</p>
              <span className="rounded-full bg-gold-50 px-2 py-0.5 text-xs font-semibold text-gold-700 ring-1 ring-gold-200">
                {progress.title}
              </span>
            </div>
            <div className="mt-2 h-1.5 w-full rounded-full bg-navy-100">
              <div
                className="h-1.5 rounded-full bg-gold-500 transition-all"
                style={{ width: `${levelPct}%` }}
              />
            </div>
            <p className="mt-1 text-xs text-navy-400">
              {progress.isMaxLevel
                ? `Level maksimum · total ${progress.xp} XP`
                : `${progress.xpIntoLevel}/${progress.xpForNextLevel} XP menuju Level ${progress.level + 1}`}
            </p>

            <Link
              href="/quest"
              className="mt-3 flex items-center justify-between rounded-lg border border-navy-100 px-3 py-2 text-sm font-medium text-navy-800 transition hover:border-gold-300 hover:bg-gold-50"
            >
              <span>Quest Harian</span>
              {questDoneCount === QUEST_MISSIONS.length ? (
                <span className="text-xs font-semibold text-emerald-600">
                  Semua misi selesai ✓
                </span>
              ) : (
                <span className="flex items-center gap-1.5 text-xs font-semibold text-gold-700">
                  <span className="h-1.5 w-1.5 rounded-full bg-gold-500" />
                  {questDoneCount}/{QUEST_MISSIONS.length} misi
                </span>
              )}
            </Link>

            <div className="mt-3 border-t border-navy-100 pt-3">
              <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">
                Progres Belajar
              </p>
              {history.length > 0 ? (
                <p className="mt-1.5 text-sm text-navy-700">
                  {history.length} percobaan tercatat &middot; rata-rata{" "}
                  <span className="font-semibold text-navy-900">{average}%</span>
                </p>
              ) : (
                <p className="mt-1.5 text-sm text-navy-500">
                  Belum ada riwayat Try Out atau Quiz.
                </p>
              )}
              <Link
                href="/statistik"
                className="mt-2.5 block rounded-md bg-navy-900 px-3 py-2 text-center text-sm font-medium text-white hover:bg-navy-700"
              >
                Lihat Statistik Lengkap
              </Link>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
