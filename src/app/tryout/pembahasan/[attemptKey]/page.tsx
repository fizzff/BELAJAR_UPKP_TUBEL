"use client";

import { use, useCallback, useRef, useSyncExternalStore } from "react";
import Link from "next/link";
import { QuizResultView } from "@/components/QuizResultView";
import { attemptResultStorageKey, QuizResult, readAttemptResult } from "@/lib/quiz";

function subscribe() {
  return () => {};
}

function getServerSnapshot(): QuizResult | null {
  return null;
}

export default function TryoutPembahasanPage({
  params,
}: {
  params: Promise<{ attemptKey: string }>;
}) {
  const { attemptKey } = use(params);
  const cachedRawRef = useRef<string | null>(null);
  const cachedResultRef = useRef<QuizResult | null>(null);

  const getSnapshot = useCallback(() => {
    const raw = localStorage.getItem(attemptResultStorageKey(attemptKey));
    if (raw !== cachedRawRef.current) {
      cachedRawRef.current = raw;
      cachedResultRef.current = readAttemptResult(attemptKey);
    }
    return cachedResultRef.current;
  }, [attemptKey]);

  const result = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);

  if (result === null) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-500">Belum ada pembahasan tersimpan untuk paket ini.</p>
        <Link href="/tryout" className="mt-4 inline-block text-sm text-navy-400 hover:underline">
          &larr; Try Out
        </Link>
      </div>
    );
  }

  return (
    <div className="mx-auto max-w-2xl px-4 py-10">
      <QuizResultView result={result} />

      <Link
        href="/tryout"
        className="mt-8 inline-block rounded-md bg-navy-900 px-5 py-2 text-sm font-medium text-white hover:bg-navy-700"
      >
        Kembali ke Try Out
      </Link>
    </div>
  );
}
