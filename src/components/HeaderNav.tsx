"use client";

import Link from "next/link";
import { useCallback, useRef, useState, useSyncExternalStore } from "react";
import { QUIZ_HISTORY_STORAGE_KEY, QuizHistoryEntry, readQuizHistory } from "@/lib/quiz";

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
        className="flex h-9 w-9 items-center justify-center rounded-full border border-navy-100 bg-white text-navy-600 transition hover:border-navy-300 hover:text-navy-900"
      >
        <ProfileIcon />
      </button>

      {open && (
        <div className="absolute right-0 top-full w-64 pt-2">
          <div className="rounded-xl border border-white/50 bg-white/95 p-4 shadow-lg backdrop-blur-md">
            <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">
              Progres Belajar
            </p>
            {history.length > 0 ? (
              <p className="mt-2 text-sm text-navy-700">
                {history.length} percobaan tercatat &middot; rata-rata{" "}
                <span className="font-semibold text-navy-900">{average}%</span>
              </p>
            ) : (
              <p className="mt-2 text-sm text-navy-500">
                Belum ada riwayat Try Out atau Quiz.
              </p>
            )}
            <Link
              href="/statistik"
              className="mt-3 block rounded-md bg-navy-900 px-3 py-2 text-center text-sm font-medium text-white hover:bg-navy-700"
            >
              Lihat Statistik Lengkap
            </Link>
          </div>
        </div>
      )}
    </div>
  );
}
