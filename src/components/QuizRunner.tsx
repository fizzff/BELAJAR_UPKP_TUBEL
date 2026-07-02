"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useRouter } from "next/navigation";
import { Question } from "@/lib/types";
import {
  chapterProgressStorageKey,
  QUIZ_RESULT_STORAGE_KEY,
  QuizHistoryKind,
  QuizOptionKey,
  QuizResult,
  questionOptions,
  saveAttemptResult,
  saveQuizHistoryEntry,
  shuffle,
} from "@/lib/quiz";

const LOW_TIME_THRESHOLD_SECONDS = 5 * 60;

function formatDuration(totalSeconds: number) {
  const minutes = Math.floor(totalSeconds / 60);
  const seconds = totalSeconds % 60;
  return `${String(minutes).padStart(2, "0")}:${String(seconds).padStart(2, "0")}`;
}

function FlagIcon({ filled }: { filled: boolean }) {
  return (
    <svg
      viewBox="0 0 24 24"
      fill={filled ? "currentColor" : "none"}
      stroke="currentColor"
      strokeWidth="1.6"
      className="h-4 w-4"
    >
      <path d="M5 3v18" strokeLinecap="round" />
      <path d="M5 4h11l-2.5 3.5L16 11H5V4Z" strokeLinejoin="round" />
    </svg>
  );
}

function ClockIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-7 w-7">
      <circle cx="12" cy="12" r="8.5" />
      <path d="M12 7.5V12l3 2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

export function QuizRunner({
  questions,
  title,
  backHref,
  chapterId,
  durationMinutes,
  historyKind,
  attemptKey,
}: {
  questions: Question[];
  title: string;
  backHref: string;
  /** Kalau diisi, skor akhir kuis ini disimpan sebagai progres belajar bab tsb. */
  chapterId?: string;
  /** Kalau diisi, kuis dibatasi waktu dan otomatis submit saat waktu habis. */
  durationMinutes?: number;
  /** Kalau diisi, skor akhir dicatat ke riwayat statistik Try Out/Quiz. */
  historyKind?: QuizHistoryKind;
  /** Kalau diisi, hasil lengkap (pembahasan) disimpan permanen supaya bisa dicek lagi nanti. */
  attemptKey?: string;
}) {
  const router = useRouter();
  const shuffled = useMemo(() => shuffle(questions), [questions]);
  const [index, setIndex] = useState(0);
  const [answers, setAnswers] = useState<Array<QuizOptionKey | null>>(() =>
    Array(shuffled.length).fill(null)
  );
  const [flagged, setFlagged] = useState<boolean[]>(() => Array(shuffled.length).fill(false));
  const [remainingSeconds, setRemainingSeconds] = useState<number | null>(
    durationMinutes ? durationMinutes * 60 : null
  );
  // Kuis berwaktu menunggu konfirmasi user dulu sebelum hitung mundur berjalan,
  // supaya waktu tidak terpakai sebelum user benar-benar siap.
  const [started, setStarted] = useState(durationMinutes === undefined);

  // Refs kept in sync via effects (never mutated during render) so the timer's
  // auto-submit callback always sees the latest answers without stale closures.
  const answersRef = useRef(answers);
  const submittedRef = useRef(false);

  useEffect(() => {
    answersRef.current = answers;
  }, [answers]);

  const current = shuffled[index];
  const options = questionOptions(current);
  const selected = answers[index];
  const isLast = index === shuffled.length - 1;
  const answeredCount = answers.filter((a) => a !== null).length;

  const finishQuiz = useCallback(
    (finalAnswers: Array<QuizOptionKey | null>) => {
      const items = shuffled.map((q, i) => ({
        question: q.question,
        options: questionOptions(q),
        selected: finalAnswers[i] ?? null,
        correctOption: q.correct_option as QuizOptionKey,
        explanation: q.explanation,
      }));
      const correct = items.filter((item) => item.selected === item.correctOption).length;
      const result: QuizResult = { title, total: shuffled.length, correct, items };
      sessionStorage.setItem(QUIZ_RESULT_STORAGE_KEY, JSON.stringify(result));

      const percentage = Math.round((correct / shuffled.length) * 100);

      if (chapterId) {
        localStorage.setItem(chapterProgressStorageKey(chapterId), String(percentage));
      }

      if (historyKind) {
        saveQuizHistoryEntry({
          kind: historyKind,
          title,
          total: shuffled.length,
          correct,
          percentage,
          timestamp: Date.now(),
        });
      }

      if (attemptKey) {
        saveAttemptResult(attemptKey, result);
      }

      router.push("/kuis/hasil");
    },
    [shuffled, title, chapterId, historyKind, attemptKey, router]
  );

  useEffect(() => {
    if (durationMinutes === undefined || !started) return;
    const interval = setInterval(() => {
      setRemainingSeconds((s) => (s !== null && s > 0 ? s - 1 : 0));
    }, 1000);
    return () => clearInterval(interval);
  }, [durationMinutes, started]);

  useEffect(() => {
    if (remainingSeconds !== 0 || submittedRef.current) return;
    submittedRef.current = true;
    finishQuiz(answersRef.current);
  }, [remainingSeconds, finishQuiz]);

  function selectOption(key: QuizOptionKey) {
    setAnswers((prev) => {
      const next = [...prev];
      next[index] = key;
      return next;
    });
  }

  function toggleFlag() {
    setFlagged((prev) => {
      const next = [...prev];
      next[index] = !next[index];
      return next;
    });
  }

  function handleFinish() {
    submittedRef.current = true;
    finishQuiz(answers);
  }

  const isTimeLow = remainingSeconds !== null && remainingSeconds <= LOW_TIME_THRESHOLD_SECONDS;

  if (!started) {
    return (
      <div className="mx-auto max-w-lg px-4 py-16">
        <div className="rounded-2xl border border-navy-100 bg-white p-8 text-center shadow-sm">
          <span className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-navy-50 text-navy-700">
            <ClockIcon />
          </span>
          <h1 className="mt-4 text-xl font-bold text-navy-900">{title}</h1>

          <div className="mt-5 grid grid-cols-2 gap-3">
            <div className="rounded-lg bg-navy-50 p-3">
              <p className="text-2xl font-bold text-navy-900">{shuffled.length}</p>
              <p className="text-xs text-navy-500">Jumlah Soal</p>
            </div>
            <div className="rounded-lg bg-navy-50 p-3">
              <p className="text-2xl font-bold text-navy-900">{durationMinutes}</p>
              <p className="text-xs text-navy-500">Menit</p>
            </div>
          </div>

          <div className="mt-5 rounded-lg border border-amber-200 bg-amber-50 p-4 text-left text-sm text-amber-800">
            <p className="font-semibold">Sebelum mulai, perhatikan:</p>
            <ul className="mt-1.5 list-disc space-y-1 pl-4">
              <li>Waktu baru mulai berjalan setelah kamu menekan tombol &quot;Mulai Sekarang&quot;.</li>
              <li>Pastikan kamu sudah siap dan tidak akan diganggu selama waktu berjalan.</li>
              <li>Soal otomatis dikumpulkan begitu waktu habis, walau belum semua terjawab.</li>
            </ul>
          </div>

          <div className="mt-6 flex items-center justify-between gap-3">
            <a href={backHref} className="text-sm text-navy-400 hover:text-navy-800">
              Batal
            </a>
            <button
              type="button"
              onClick={() => setStarted(true)}
              className="rounded-md bg-navy-900 px-6 py-2.5 text-sm font-medium text-white hover:bg-navy-700"
            >
              Mulai Sekarang
            </button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="mx-auto max-w-4xl px-4 py-10 md:flex md:items-start md:gap-6">
      <div className="min-w-0 flex-1">
        <div className="flex items-center justify-between text-sm text-navy-400">
          <span>{title}</span>
          <div className="flex items-center gap-3">
            {remainingSeconds !== null && (
              <span
                className={`font-mono text-sm font-semibold ${
                  isTimeLow ? "text-red-600" : "text-navy-700"
                }`}
              >
                {formatDuration(remainingSeconds)}
              </span>
            )}
            <span>
              Soal {index + 1} dari {shuffled.length}
            </span>
          </div>
        </div>

        <div className="mt-4 h-1.5 w-full rounded-full bg-navy-100">
          <div
            className="h-1.5 rounded-full bg-navy-900 transition-all"
            style={{ width: `${(answeredCount / shuffled.length) * 100}%` }}
          />
        </div>
        <p className="mt-1 text-xs text-navy-400">
          {answeredCount} dari {shuffled.length} soal terjawab
        </p>

        <div className="mt-6 flex items-start justify-between gap-3">
          <p className="whitespace-pre-line text-lg font-medium text-navy-900">
            {current.question}
          </p>
          <button
            type="button"
            onClick={toggleFlag}
            title={flagged[index] ? "Batalkan tanda ragu-ragu" : "Tandai soal ini (ragu-ragu)"}
            className={`flex shrink-0 items-center gap-1.5 rounded-full border px-3 py-1.5 text-xs font-medium transition ${
              flagged[index]
                ? "border-amber-400 bg-amber-50 text-amber-700"
                : "border-navy-100 text-navy-400 hover:border-navy-300 hover:text-navy-700"
            }`}
          >
            <FlagIcon filled={flagged[index]} />
            Tandai
          </button>
        </div>

        <div className="mt-4 space-y-2">
          {(Object.keys(options) as QuizOptionKey[]).map((key) => (
            <button
              key={key}
              type="button"
              onClick={() => selectOption(key)}
              className={`flex w-full items-start gap-3 rounded-lg border px-4 py-3 text-left text-sm transition ${
                selected === key
                  ? "border-navy-900 bg-navy-900 text-white"
                  : "border-navy-100 bg-white hover:border-navy-300"
              }`}
            >
              <span className="font-semibold">{key}.</span>
              <span>{options[key]}</span>
            </button>
          ))}
        </div>

        <div className="mt-8 flex items-center justify-between gap-3">
          <a href={backHref} className="text-sm text-navy-400 hover:text-navy-800">
            Batalkan kuis
          </a>
          <div className="flex items-center gap-2">
            <button
              type="button"
              disabled={index === 0}
              onClick={() => setIndex(index - 1)}
              className="rounded-md border border-navy-100 px-4 py-2 text-sm font-medium text-navy-700 transition hover:border-navy-300 disabled:cursor-not-allowed disabled:opacity-40"
            >
              Sebelumnya
            </button>
            {isLast ? (
              <button
                type="button"
                onClick={handleFinish}
                className="rounded-md bg-navy-900 px-5 py-2 text-sm font-medium text-white hover:bg-navy-700"
              >
                Selesai
              </button>
            ) : (
              <button
                type="button"
                onClick={() => setIndex(index + 1)}
                className="rounded-md bg-navy-900 px-5 py-2 text-sm font-medium text-white hover:bg-navy-700"
              >
                Berikutnya
              </button>
            )}
          </div>
        </div>
      </div>

      <div className="mt-8 shrink-0 rounded-xl border border-navy-100 bg-white p-4 shadow-sm md:mt-0 md:w-64 md:sticky md:top-6">
        <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">Nomor Soal</p>
        <div className="mt-3 grid grid-cols-6 gap-1.5 md:grid-cols-5">
          {shuffled.map((_, i) => {
            const isCurrent = i === index;
            const isFlagged = flagged[i];
            const isAnswered = answers[i] !== null;
            let tone = "border-navy-100 bg-white text-navy-500 hover:border-navy-300";
            if (isFlagged) tone = "border-amber-400 bg-amber-100 text-amber-800";
            else if (isAnswered) tone = "border-emerald-400 bg-emerald-100 text-emerald-800";
            return (
              <button
                key={i}
                type="button"
                onClick={() => setIndex(i)}
                className={`relative flex h-8 w-8 items-center justify-center rounded-md border text-xs font-medium transition ${tone} ${
                  isCurrent ? "ring-2 ring-navy-900 ring-offset-1" : ""
                }`}
              >
                {i + 1}
              </button>
            );
          })}
        </div>

        <div className="mt-4 space-y-1.5 text-xs text-navy-500">
          <div className="flex items-center gap-2">
            <span className="h-3 w-3 shrink-0 rounded border border-emerald-400 bg-emerald-100" />
            Sudah dijawab
          </div>
          <div className="flex items-center gap-2">
            <span className="h-3 w-3 shrink-0 rounded border border-amber-400 bg-amber-100" />
            Ditandai (ragu-ragu)
          </div>
          <div className="flex items-center gap-2">
            <span className="h-3 w-3 shrink-0 rounded border border-navy-100 bg-white" />
            Belum dijawab
          </div>
        </div>

        <button
          type="button"
          onClick={handleFinish}
          className="mt-4 w-full rounded-md bg-navy-900 px-4 py-2 text-sm font-medium text-white hover:bg-navy-700"
        >
          Selesai & Kumpulkan
        </button>
      </div>
    </div>
  );
}
