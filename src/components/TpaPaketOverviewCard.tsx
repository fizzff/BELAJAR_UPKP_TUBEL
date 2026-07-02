"use client";

import Link from "next/link";
import { useCallback, useSyncExternalStore } from "react";
import { attemptResultStorageKey } from "@/lib/quiz";

function subscribe() {
  return () => {};
}

function getServerSnapshot() {
  return 0;
}

export function TpaPaketOverviewCard({ paketNumber }: { paketNumber: number }) {
  const getSnapshot = useCallback(() => {
    const verbalDone = localStorage.getItem(attemptResultStorageKey(`tryout-tpa-${paketNumber}-verbal`)) !== null;
    const numerikalDone =
      localStorage.getItem(attemptResultStorageKey(`tryout-tpa-${paketNumber}-numerikal`)) !== null;
    return (verbalDone ? 1 : 0) + (numerikalDone ? 1 : 0);
  }, [paketNumber]);

  const doneCount = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);

  return (
    <Link
      href={`/tryout/tpa/${paketNumber}`}
      className="relative rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md"
    >
      {doneCount > 0 && (
        <span
          className={`absolute right-3 top-3 rounded-full px-2 py-0.5 text-[10px] font-semibold ${
            doneCount === 2 ? "bg-emerald-100 text-emerald-700" : "bg-amber-100 text-amber-700"
          }`}
        >
          {doneCount}/2 selesai
        </span>
      )}
      <span className="text-2xl font-bold text-navy-900">Paket {paketNumber}</span>
      <p className="mt-1 text-sm text-navy-500">Verbal &amp; Numerikal</p>
    </Link>
  );
}
