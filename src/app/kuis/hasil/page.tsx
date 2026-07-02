"use client";

import Link from "next/link";
import { useSyncExternalStore } from "react";
import { QuizResultView } from "@/components/QuizResultView";
import { QUIZ_RESULT_STORAGE_KEY, QuizResult } from "@/lib/quiz";

let cachedRaw: string | null = null;
let cachedResult: QuizResult | null = null;

function subscribe() {
  return () => {};
}

function getSnapshot(): QuizResult | null {
  const raw = sessionStorage.getItem(QUIZ_RESULT_STORAGE_KEY);
  if (raw !== cachedRaw) {
    cachedRaw = raw;
    cachedResult = raw ? (JSON.parse(raw) as QuizResult) : null;
  }
  return cachedResult;
}

function getServerSnapshot(): QuizResult | null {
  return null;
}

export default function QuizResultPage() {
  const result = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);

  if (result === null) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-500">Belum ada hasil kuis. Kerjakan kuis dulu, yuk.</p>
        <Link href="/materi" className="mt-4 inline-block text-sm text-navy-400 hover:underline">
          &larr; Daftar Modul
        </Link>
      </div>
    );
  }

  return (
    <div className="mx-auto max-w-2xl px-4 py-10">
      <QuizResultView result={result} />

      <Link
        href="/"
        className="mt-8 inline-block rounded-md bg-navy-900 px-5 py-2 text-sm font-medium text-white hover:bg-navy-700"
      >
        Kembali ke Beranda
      </Link>
    </div>
  );
}
