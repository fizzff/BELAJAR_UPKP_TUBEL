"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useCallback, useState, useSyncExternalStore } from "react";
import {
  QUEST_MISSIONS,
  dailyQuestDateKey,
  levelProgress,
  missionDoneFlags,
  readXp,
} from "@/lib/gamification";

function noopSubscribe() {
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

// Sembunyikan panel di layar yang butuh fokus penuh mengerjakan soal, supaya
// daftar misi tidak jadi distraksi.
const CHROME_FREE = ["/login", "/daftar", "/lupa-password", "/reset-password", "/menunggu"];

function shouldHide(pathname: string): boolean {
  if (CHROME_FREE.includes(pathname)) return true; // layar auth/aktivasi
  if (pathname.startsWith("/admin")) return true; // panel admin fokus penuh
  if (pathname.startsWith("/quest/")) return true; // sedang mengerjakan sebuah misi
  if (pathname.startsWith("/kuis/") && pathname !== "/kuis/hasil") return true;
  // Halaman pengerjaan Try Out: /tryout/tskwk/[paket], /tryout/tpa/[paket]/[subtest]
  if (/^\/tryout\/tskwk\/[^/]+$/.test(pathname)) return true;
  if (/^\/tryout\/tpa\/[^/]+\/[^/]+$/.test(pathname)) return true;
  return false;
}

export function MissionSidebar() {
  const pathname = usePathname();
  // Panel default menciut jadi tab kecil "Misi"; disorot → mengembang,
  // kursor keluar → menciut lagi. Tidak perlu klik.
  const [expanded, setExpanded] = useState(false);

  const getFlagsSnapshot = useCallback(() => missionDoneFlags(dailyQuestDateKey()), []);
  const flags = useSyncExternalStore(noopSubscribe, getFlagsSnapshot, getServerFlagsSnapshot);
  const xp = useSyncExternalStore(noopSubscribe, getXpSnapshot, getServerXpSnapshot);

  // Di layar pengerjaan soal, panel selalu disembunyikan.
  if (shouldHide(pathname)) return null;

  const progress = levelProgress(xp);
  const pct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);
  const doneCount = [...flags].filter((f) => f === "1").length;
  const allDone = doneCount === QUEST_MISSIONS.length;

  return (
    <div
      className="fixed right-0 top-24 z-40 hidden xl:block"
      onMouseEnter={() => setExpanded(true)}
      onMouseLeave={() => setExpanded(false)}
    >
      {expanded ? (
        <aside className="w-72 pr-4">
          <div className="rounded-2xl border border-white/40 bg-white/70 p-4 shadow-xl ring-1 ring-navy-900/5 backdrop-blur-md">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-xs font-semibold uppercase tracking-wide text-navy-500">
                  Misi Harian
                </p>
                <p className="mt-0.5 text-sm font-semibold text-navy-900">
                  {allDone ? "Semua misi selesai 🎉" : `${doneCount}/${QUEST_MISSIONS.length} selesai`}
                </p>
              </div>
              <span className="text-gold-600">⚔️</span>
            </div>

            <div className="mt-2 flex items-center gap-2">
              <span className="rounded-full bg-gold-50/80 px-2 py-0.5 text-[11px] font-semibold text-gold-700 ring-1 ring-gold-200">
                Lv {progress.level} · {progress.title}
              </span>
            </div>
            <div className="mt-2 h-1.5 w-full rounded-full bg-navy-100/70">
              <div className="h-1.5 rounded-full bg-gold-500 transition-all" style={{ width: `${pct}%` }} />
            </div>

            <ul className="mt-3 space-y-1.5">
              {QUEST_MISSIONS.map((mission, i) => {
                const done = flags[i] === "1";
                return (
                  <li key={mission.id}>
                    <Link
                      href={`/quest/${mission.id}`}
                      className={`flex items-center gap-2.5 rounded-lg px-2 py-1.5 text-sm transition hover:bg-navy-900/5 ${
                        done ? "text-navy-400" : "text-navy-800"
                      }`}
                    >
                      <span
                        className={`flex h-5 w-5 shrink-0 items-center justify-center rounded-full text-[11px] ${
                          done
                            ? "bg-emerald-100 text-emerald-600"
                            : "bg-gold-50 text-gold-600 ring-1 ring-gold-200"
                        }`}
                      >
                        {done ? "✓" : mission.emoji}
                      </span>
                      <span className={`flex-1 truncate ${done ? "line-through" : ""}`}>
                        {mission.label}
                      </span>
                      <span className="shrink-0 text-[11px] font-semibold text-gold-700">
                        {done ? "" : `+${mission.size * mission.xpPerCorrect}`}
                      </span>
                    </Link>
                  </li>
                );
              })}
            </ul>

            <Link
              href="/quest"
              className="mt-3 block rounded-lg bg-navy-900 px-3 py-1.5 text-center text-xs font-medium text-white transition hover:bg-navy-700"
            >
              Buka Papan Misi
            </Link>
          </div>
        </aside>
      ) : (
        <div
          className="flex cursor-default items-center gap-1.5 rounded-l-xl border border-r-0 border-white/40 bg-white/70 py-2 pl-3 pr-2.5 text-xs font-semibold text-navy-700 shadow-lg ring-1 ring-navy-900/5 backdrop-blur-md"
          aria-hidden="true"
        >
          <span className="text-gold-600">⚔️</span> Misi
          {!allDone && (
            <span className="ml-0.5 flex h-4 min-w-4 items-center justify-center rounded-full bg-gold-500 px-1 text-[10px] font-bold text-white">
              {QUEST_MISSIONS.length - doneCount}
            </span>
          )}
        </div>
      )}
    </div>
  );
}
