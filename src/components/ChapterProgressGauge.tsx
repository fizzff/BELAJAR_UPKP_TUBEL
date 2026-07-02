"use client";

import { useCallback, useRef, useSyncExternalStore } from "react";
import { chapterProgressStorageKey } from "@/lib/quiz";

function subscribe() {
  return () => {};
}

function getServerSnapshot() {
  return 0;
}

const SIZE = 36;
const STROKE = 3.5;
const RADIUS = (SIZE - STROKE) / 2;
const CIRCUMFERENCE = 2 * Math.PI * RADIUS;

export function ChapterProgressGauge({ chapterId }: { chapterId: string }) {
  const cachedRawRef = useRef<string | null>(null);
  const cachedValueRef = useRef(0);

  const getSnapshot = useCallback(() => {
    const raw = localStorage.getItem(chapterProgressStorageKey(chapterId));
    if (raw !== cachedRawRef.current) {
      cachedRawRef.current = raw;
      cachedValueRef.current = raw ? Number(raw) : 0;
    }
    return cachedValueRef.current;
  }, [chapterId]);

  const percentage = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
  const offset = CIRCUMFERENCE - (percentage / 100) * CIRCUMFERENCE;

  return (
    <div
      className="relative h-9 w-9 shrink-0"
      title={percentage > 0 ? `Progres kuis: ${percentage}%` : "Belum ada progres"}
    >
      <svg width={SIZE} height={SIZE} className="-rotate-90">
        <circle
          cx={SIZE / 2}
          cy={SIZE / 2}
          r={RADIUS}
          strokeWidth={STROKE}
          className="fill-none stroke-navy-100"
        />
        {percentage > 0 && (
          <circle
            cx={SIZE / 2}
            cy={SIZE / 2}
            r={RADIUS}
            strokeWidth={STROKE}
            strokeDasharray={CIRCUMFERENCE}
            strokeDashoffset={offset}
            strokeLinecap="round"
            className="fill-none stroke-navy-700 transition-all duration-500"
          />
        )}
      </svg>
      <span className="absolute inset-0 flex items-center justify-center text-[9px] font-semibold text-navy-700">
        {percentage}%
      </span>
    </div>
  );
}
