"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useCallback, useSyncExternalStore } from "react";
import {
  QUEST_MISSIONS,
  dailyQuestDateKey,
  levelProgress,
  missionDoneFlags,
  readXp,
} from "@/lib/gamification";

const PANEL_HIDDEN_KEY = "missionPanelHidden";

// Perubahan preferensi panel disebar via event khusus supaya semua instance
// MissionSidebar (dan tab "Misi") ikut ter-update tanpa reload.
const PANEL_EVENT = "mission-panel-change";

function subscribe(callback: () => void) {
  window.addEventListener(PANEL_EVENT, callback);
  return () => window.removeEventListener(PANEL_EVENT, callback);
}

function noopSubscribe() {
  return () => {};
}

function getHiddenSnapshot(): boolean {
  return localStorage.getItem(PANEL_HIDDEN_KEY) === "1";
}

function getServerHiddenSnapshot(): boolean {
  return false;
}

function setPanelHidden(hidden: boolean) {
  localStorage.setItem(PANEL_HIDDEN_KEY, hidden ? "1" : "0");
  window.dispatchEvent(new Event(PANEL_EVENT));
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
function shouldHide(pathname: string): boolean {
  if (pathname.startsWith("/quest/")) return true; // sedang mengerjakan sebuah misi
  if (pathname.startsWith("/kuis/") && pathname !== "/kuis/hasil") return true;
  // Halaman pengerjaan Try Out: /tryout/tskwk/[paket], /tryout/tpa/[paket]/[subtest]
  if (/^\/tryout\/tskwk\/[^/]+$/.test(pathname)) return true;
  if (/^\/tryout\/tpa\/[^/]+\/[^/]+$/.test(pathname)) return true;
  return false;
}

export function MissionSidebar() {
  const pathname = usePathname();
  // Preferensi tampil/sembunyi manual, disimpan supaya konsisten antar-halaman
  // dan setelah reload.
  const hidden = useSyncExternalStore(subscribe, getHiddenSnapshot, getServerHiddenSnapshot);

  const getFlagsSnapshot = useCallback(() => missionDoneFlags(dailyQuestDateKey()), []);
  const flags = useSyncExternalStore(noopSubscribe, getFlagsSnapshot, getServerFlagsSnapshot);
  const xp = useSyncExternalStore(noopSubscribe, getXpSnapshot, getServerXpSnapshot);

  // Di layar pengerjaan soal, panel selalu disembunyikan tanpa tombol munculkan.
  if (shouldHide(pathname)) return null;

  // Disembunyikan manual: tampilkan tab kecil "Misi" untuk memunculkan lagi.
  if (hidden) {
    return (
      <button
        type="button"
        onClick={() => setPanelHidden(false)}
        className="fixed right-0 top-28 z-40 hidden items-center gap-1.5 rounded-l-xl border border-r-0 border-white/40 bg-white/70 py-2 pl-3 pr-2.5 text-xs font-semibold text-navy-700 shadow-lg ring-1 ring-navy-900/5 backdrop-blur-md transition hover:bg-white xl:flex"
        aria-label="Tampilkan panel misi"
      >
        <span className="text-gold-600">⚔️</span> Misi
      </button>
    );
  }

  const progress = levelProgress(xp);
  const pct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);
  const doneCount = [...flags].filter((f) => f === "1").length;
  const allDone = doneCount === QUEST_MISSIONS.length;

  return (
    <aside className="pointer-events-none fixed right-4 top-24 z-40 hidden w-72 xl:block">
      <div className="pointer-events-auto rounded-2xl border border-white/40 bg-white/55 p-4 shadow-lg ring-1 ring-navy-900/5 backdrop-blur-md">
        <div className="flex items-start justify-between">
          <div>
            <p className="text-xs font-semibold uppercase tracking-wide text-navy-500">
              Misi Harian
            </p>
            <p className="mt-0.5 text-sm font-semibold text-navy-900">
              {allDone ? "Semua misi selesai 🎉" : `${doneCount}/${QUEST_MISSIONS.length} selesai`}
            </p>
          </div>
          <button
            type="button"
            onClick={() => setPanelHidden(true)}
            aria-label="Sembunyikan panel misi"
            className="rounded-full p-1 text-navy-400 transition hover:bg-navy-900/5 hover:text-navy-700"
          >
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" className="h-4 w-4">
              <path d="M6 6l12 12M18 6L6 18" strokeLinecap="round" />
            </svg>
          </button>
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
  );
}
