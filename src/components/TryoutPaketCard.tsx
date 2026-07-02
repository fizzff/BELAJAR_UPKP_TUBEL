"use client";

import Link from "next/link";
import { useCallback, useSyncExternalStore } from "react";
import { attemptResultStorageKey } from "@/lib/quiz";

function subscribe() {
  return () => {};
}

function getServerSnapshot() {
  return false;
}

export function TryoutPaketCard({
  href,
  attemptKey,
  label,
  meta,
}: {
  href: string;
  attemptKey: string;
  label: string;
  meta: string;
}) {
  const getSnapshot = useCallback(() => {
    return localStorage.getItem(attemptResultStorageKey(attemptKey)) !== null;
  }, [attemptKey]);

  const isDone = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);

  return (
    <div className="relative rounded-xl border border-navy-100 bg-white p-5 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md">
      {isDone && (
        <span className="absolute right-3 top-3 rounded-full bg-emerald-100 px-2 py-0.5 text-[10px] font-semibold text-emerald-700">
          Selesai
        </span>
      )}
      <Link href={href} className="block">
        <span className="text-2xl font-bold text-navy-900">{label}</span>
        <p className="mt-1 text-sm text-navy-500">{meta}</p>
      </Link>
      {isDone && (
        <Link
          href={`/tryout/pembahasan/${attemptKey}`}
          className="mt-3 inline-block text-xs font-medium text-navy-500 hover:text-navy-900 hover:underline"
        >
          Cek Pembahasan
        </Link>
      )}
    </div>
  );
}
