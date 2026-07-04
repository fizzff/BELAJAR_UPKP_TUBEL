"use client";

import Link from "next/link";
import { useCallback, useSyncExternalStore } from "react";
import {
  QUEST_MISSIONS,
  dailyQuestDateKey,
  levelProgress,
  missionDoneFlags,
  readXp,
} from "@/lib/gamification";

function subscribe() {
  return () => {};
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

export interface QuestBoardMission {
  id: string;
  label: string;
  description: string;
  emoji: string;
  size: number;
  maxXp: number;
}

export function QuestBoard({ missions }: { missions: QuestBoardMission[] }) {
  const getFlagsSnapshot = useCallback(() => missionDoneFlags(dailyQuestDateKey()), []);
  const flags = useSyncExternalStore(subscribe, getFlagsSnapshot, getServerFlagsSnapshot);
  const xp = useSyncExternalStore(subscribe, getXpSnapshot, getServerXpSnapshot);

  const progress = levelProgress(xp);
  const pct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);
  const doneCount = [...flags].filter((f) => f === "1").length;

  return (
    <div className="space-y-6">
      <div className="rounded-2xl border border-navy-100 bg-white p-5 shadow-sm">
        <div className="flex flex-wrap items-center justify-between gap-3">
          <p className="text-sm font-semibold text-navy-900">
            Level {progress.level}
            <span className="ml-2 rounded-full bg-gold-50 px-2 py-0.5 text-xs font-semibold text-gold-700 ring-1 ring-gold-200">
              {progress.title}
            </span>
          </p>
          <p className="text-sm text-navy-500">
            <span className="font-semibold text-navy-900">{doneCount}</span>/{missions.length}{" "}
            misi selesai hari ini
          </p>
        </div>
        <div className="mt-3 h-2 w-full rounded-full bg-navy-100">
          <div
            className="h-2 rounded-full bg-gold-500 transition-all"
            style={{ width: `${pct}%` }}
          />
        </div>
        <p className="mt-1 text-xs text-navy-400">
          {progress.isMaxLevel
            ? `Level maksimum · total ${progress.xp} XP`
            : `${progress.xpIntoLevel}/${progress.xpForNextLevel} XP menuju Level ${progress.level + 1} · total ${progress.xp} XP`}
        </p>
      </div>

      <div className="space-y-3">
        {missions.map((mission) => {
          const missionIndex = QUEST_MISSIONS.findIndex((m) => m.id === mission.id);
          const done = flags[missionIndex] === "1";
          return (
            <Link
              key={mission.id}
              href={`/quest/${mission.id}`}
              className={`group flex items-center gap-4 rounded-xl border bg-white p-4 shadow-sm transition hover:-translate-y-0.5 hover:shadow-md ${
                done
                  ? "border-emerald-200 hover:border-emerald-300"
                  : "border-navy-100 hover:border-gold-300"
              }`}
            >
              <span
                className={`flex h-12 w-12 shrink-0 items-center justify-center rounded-full text-xl ring-1 ${
                  done
                    ? "bg-emerald-50 ring-emerald-200"
                    : "bg-gold-50 ring-gold-200"
                }`}
              >
                {mission.emoji}
              </span>
              <div className="min-w-0 flex-1">
                <div className="flex flex-wrap items-center gap-2">
                  <h2 className="font-semibold text-navy-900">{mission.label}</h2>
                  {done ? (
                    <span className="rounded-full bg-emerald-50 px-2 py-0.5 text-[11px] font-semibold text-emerald-700 ring-1 ring-emerald-200">
                      Selesai ✓
                    </span>
                  ) : (
                    <span className="rounded-full bg-gold-50 px-2 py-0.5 text-[11px] font-semibold text-gold-700 ring-1 ring-gold-200">
                      +{mission.maxXp} XP
                    </span>
                  )}
                </div>
                <p className="mt-0.5 truncate text-sm text-navy-500">{mission.description}</p>
              </div>
              <span className="shrink-0 text-sm font-medium text-navy-400 transition group-hover:text-navy-800">
                {done ? "Lihat hasil →" : `${mission.size} soal →`}
              </span>
            </Link>
          );
        })}
      </div>
    </div>
  );
}
