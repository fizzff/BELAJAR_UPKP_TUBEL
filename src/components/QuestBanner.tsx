"use client";

import Link from "next/link";
import { useSyncExternalStore } from "react";
import {
  DAILY_XP_MAX,
  QUEST_MISSIONS,
  dailyQuestDateKey,
  levelProgress,
  missionDoneFlags,
  readXp,
} from "@/lib/gamification";

function subscribe() {
  return () => {};
}

function getFlagsSnapshot(): string {
  return missionDoneFlags(dailyQuestDateKey());
}

function getServerFlagsSnapshot(): string {
  return "0".repeat(QUEST_MISSIONS.length);
}

function getXpSnapshot(): number {
  return readXp();
}

function getServerXpSnapshot(): number {
  return 0;
}

function SwordIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-6 w-6">
      <path
        d="M14.5 4 20 4l0 5.5L9.5 20 4 20l0-5.5L14.5 4Z"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path d="m6.5 14 3.5 3.5M16 6.5 17.5 8" strokeLinecap="round" />
    </svg>
  );
}

export function QuestBanner() {
  const flags = useSyncExternalStore(subscribe, getFlagsSnapshot, getServerFlagsSnapshot);
  const xp = useSyncExternalStore(subscribe, getXpSnapshot, getServerXpSnapshot);
  const doneCount = [...flags].filter((f) => f === "1").length;
  const allDone = doneCount === QUEST_MISSIONS.length;
  const progress = levelProgress(xp);
  const pct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);

  return (
    <Link
      href="/quest"
      className="group flex flex-col gap-4 rounded-xl border border-gold-200 bg-white p-5 shadow-sm transition hover:-translate-y-0.5 hover:border-gold-300 hover:shadow-md sm:flex-row sm:items-center"
    >
      <span className="inline-flex h-12 w-12 shrink-0 items-center justify-center rounded-full bg-gold-50 text-gold-600 ring-1 ring-gold-200 transition group-hover:bg-gold-500 group-hover:text-white">
        <SwordIcon />
      </span>
      <div className="min-w-0 flex-1">
        <div className="flex flex-wrap items-center gap-2">
          <h2 className="text-lg font-semibold text-navy-900">Quest Harian</h2>
          {allDone ? (
            <span className="rounded-full bg-emerald-50 px-2.5 py-0.5 text-xs font-semibold text-emerald-700 ring-1 ring-emerald-200">
              Semua misi selesai ✓
            </span>
          ) : (
            <span className="rounded-full bg-gold-50 px-2.5 py-0.5 text-xs font-semibold text-gold-700 ring-1 ring-gold-200">
              {doneCount}/{QUEST_MISSIONS.length} misi selesai
            </span>
          )}
        </div>
        <p className="mt-1 text-sm text-navy-500">
          {QUEST_MISSIONS.length} misi baru setiap hari &middot; kumpulkan hingga{" "}
          {DAILY_XP_MAX} XP untuk menaikkan level belajarmu.
        </p>
      </div>
      <div className="w-full shrink-0 sm:w-44">
        <div className="flex items-baseline justify-between text-xs">
          <span className="font-semibold text-navy-900">Level {progress.level}</span>
          <span className="font-medium text-gold-700">{progress.title}</span>
        </div>
        <div className="mt-1.5 h-2 w-full rounded-full bg-navy-100">
          <div
            className="h-2 rounded-full bg-gold-500 transition-all"
            style={{ width: `${pct}%` }}
          />
        </div>
        <p className="mt-1 text-right text-[11px] text-navy-400">
          {progress.isMaxLevel
            ? "Level maksimum"
            : `${progress.xpIntoLevel}/${progress.xpForNextLevel} XP`}
        </p>
      </div>
    </Link>
  );
}
