"use client";

import Link from "next/link";
import { useCallback, useRef, useState, useSyncExternalStore } from "react";
import {
  DailyQuestResult,
  LevelProgress,
  XP_PER_CORRECT,
  addXp,
  dailyQuestStorageKey,
  levelProgress,
  readDailyQuestResult,
  readXp,
  saveDailyQuestResult,
} from "@/lib/gamification";
import { QuizOptionKey, QuizReviewItem, questionOptions } from "@/lib/quiz";
import { Question } from "@/lib/types";

function subscribe() {
  return () => {};
}

function getServerResultSnapshot(): DailyQuestResult | null {
  return null;
}

function getServerXpSnapshot(): number {
  return 0;
}

function getXpSnapshot(): number {
  return readXp();
}

function CheckIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" className="h-4 w-4 shrink-0">
      <path d="M5 13l4 4L19 7" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function XIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" className="h-4 w-4 shrink-0">
      <path d="M6 6l12 12M18 6L6 18" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function LevelBar({ progress }: { progress: LevelProgress }) {
  const pct = progress.isMaxLevel
    ? 100
    : Math.round((progress.xpIntoLevel / progress.xpForNextLevel) * 100);
  return (
    <div>
      <div className="flex items-baseline justify-between">
        <p className="text-sm font-semibold text-navy-900">
          Level {progress.level}
          <span className="ml-2 rounded-full bg-gold-50 px-2 py-0.5 text-xs font-semibold text-gold-700 ring-1 ring-gold-200">
            {progress.title}
          </span>
        </p>
        <p className="text-xs text-navy-400">
          {progress.isMaxLevel
            ? "Level maksimum"
            : `${progress.xpIntoLevel}/${progress.xpForNextLevel} XP`}
        </p>
      </div>
      <div className="mt-2 h-2 w-full rounded-full bg-navy-100">
        <div
          className="h-2 rounded-full bg-gold-500 transition-all"
          style={{ width: `${pct}%` }}
        />
      </div>
    </div>
  );
}

function QuestReview({ items }: { items: QuizReviewItem[] }) {
  return (
    <div className="mt-6 space-y-3">
      <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">
        Ulasan Jawaban
      </p>
      {items.map((item, i) => {
        const correct = item.selected === item.correctOption;
        return (
          <div
            key={i}
            className={`rounded-xl border p-4 ${
              correct ? "border-emerald-200 bg-emerald-50/50" : "border-rose-200 bg-rose-50/50"
            }`}
          >
            <p className="whitespace-pre-line text-sm font-medium text-navy-900">
              {i + 1}. {item.question}
            </p>
            <p className="mt-2 text-xs text-navy-600">
              Jawabanmu: <span className="font-semibold">{item.selected ?? "-"}</span>
              {!correct && (
                <>
                  {" "}
                  &middot; Jawaban benar:{" "}
                  <span className="font-semibold text-emerald-700">{item.correctOption}</span>
                </>
              )}
            </p>
            {item.explanation && (
              <p className="mt-1 text-xs leading-relaxed text-navy-500">{item.explanation}</p>
            )}
          </div>
        );
      })}
    </div>
  );
}

interface FinishSummary {
  result: DailyQuestResult;
  before: LevelProgress;
  after: LevelProgress;
}

export function DailyQuestRunner({
  dateKey,
  questions,
}: {
  dateKey: string;
  questions: Question[];
}) {
  const [index, setIndex] = useState(0);
  const [picks, setPicks] = useState<(QuizOptionKey | null)[]>(() =>
    Array(questions.length).fill(null)
  );
  const [summary, setSummary] = useState<FinishSummary | null>(null);

  const cachedRawRef = useRef<string | null>(null);
  const cachedResultRef = useRef<DailyQuestResult | null>(null);
  const getStoredSnapshot = useCallback(() => {
    const raw = localStorage.getItem(dailyQuestStorageKey(dateKey));
    if (raw !== cachedRawRef.current) {
      cachedRawRef.current = raw;
      cachedResultRef.current = readDailyQuestResult(dateKey);
    }
    return cachedResultRef.current;
  }, [dateKey]);
  const stored = useSyncExternalStore(subscribe, getStoredSnapshot, getServerResultSnapshot);
  const currentXp = useSyncExternalStore(subscribe, getXpSnapshot, getServerXpSnapshot);

  const finishQuest = useCallback(
    (finalPicks: (QuizOptionKey | null)[]) => {
      const items: QuizReviewItem[] = questions.map((q, i) => ({
        question: q.question,
        options: questionOptions(q),
        selected: finalPicks[i],
        correctOption: q.correct_option,
        explanation: q.explanation,
      }));
      const correct = items.filter((item) => item.selected === item.correctOption).length;
      const xpEarned = correct * XP_PER_CORRECT;
      const result: DailyQuestResult = {
        dateKey,
        total: questions.length,
        correct,
        xpEarned,
        items,
      };
      const xpBefore = readXp();
      const xpAfter = addXp(xpEarned);
      saveDailyQuestResult(result);
      setSummary({ result, before: levelProgress(xpBefore), after: levelProgress(xpAfter) });
    },
    [dateKey, questions]
  );

  // Sudah dikerjakan hari ini (baik baru saja selesai maupun dari kunjungan sebelumnya).
  const doneResult = summary?.result ?? stored;
  if (doneResult) {
    const progress = summary?.after ?? levelProgress(currentXp);
    const leveledUp = summary !== null && summary.after.level > summary.before.level;
    const newTitle = summary !== null && summary.after.title !== summary.before.title;
    return (
      <div className="page-transition rounded-2xl border border-navy-100 bg-white p-6 shadow-sm">
        <div className="text-center">
          <span className="inline-flex h-14 w-14 items-center justify-center rounded-full bg-gold-50 text-2xl ring-1 ring-gold-200">
            {doneResult.correct === doneResult.total ? "🏆" : "✅"}
          </span>
          <h2 className="mt-3 text-xl font-semibold text-navy-900">
            Quest hari ini selesai!
          </h2>
          <p className="mt-1 text-sm text-navy-500">
            Benar {doneResult.correct} dari {doneResult.total} soal
            {" "}&middot;{" "}
            <span className="font-semibold text-gold-700">+{doneResult.xpEarned} XP</span>
          </p>
          {leveledUp && (
            <p className="mx-auto mt-3 inline-block rounded-full bg-gold-50 px-4 py-1.5 text-sm font-semibold text-gold-700 ring-1 ring-gold-300">
              🎉 Naik ke Level {summary.after.level}!
              {newTitle && ` Julukan baru: ${summary.after.title}`}
            </p>
          )}
        </div>

        <div className="mt-6 rounded-xl border border-navy-100 bg-navy-50/50 p-4">
          <LevelBar progress={progress} />
          <p className="mt-2 text-xs text-navy-400">Total {progress.xp} XP terkumpul</p>
        </div>

        <QuestReview items={doneResult.items} />

        <p className="mt-6 text-center text-xs text-navy-400">
          Quest baru tersedia besok. Sambil menunggu, lanjutkan belajar lewat materi atau
          latihan soal.
        </p>
        <div className="mt-3 flex justify-center gap-3">
          <Link
            href="/materi"
            className="rounded-lg bg-navy-900 px-4 py-2 text-sm font-medium text-white hover:bg-navy-700"
          >
            Buka Materi
          </Link>
          <Link
            href="/statistik"
            className="rounded-lg border border-navy-200 px-4 py-2 text-sm font-medium text-navy-700 hover:border-navy-400"
          >
            Lihat Statistik
          </Link>
        </div>
      </div>
    );
  }

  const question = questions[index];
  if (!question) {
    return (
      <div className="rounded-2xl border border-navy-100 bg-white p-6 text-center text-sm text-navy-500 shadow-sm">
        Belum ada soal untuk quest hari ini. Pastikan bank soal sudah terisi di database.
      </div>
    );
  }

  const options = questionOptions(question);
  const picked = picks[index];
  const revealed = picked !== null;
  const isLast = index === questions.length - 1;

  const pickOption = (key: QuizOptionKey) => {
    if (revealed) return;
    setPicks((prev) => {
      const next = [...prev];
      next[index] = key;
      return next;
    });
  };

  return (
    <div className="page-transition rounded-2xl border border-navy-100 bg-white p-6 shadow-sm">
      <div className="flex items-center justify-between">
        <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">
          Soal {index + 1} dari {questions.length}
        </p>
        <p className="rounded-full bg-gold-50 px-2.5 py-1 text-xs font-semibold text-gold-700 ring-1 ring-gold-200">
          +{XP_PER_CORRECT} XP / benar
        </p>
      </div>

      <div className="mt-3 flex gap-1.5">
        {questions.map((_, i) => (
          <div
            key={i}
            className={`h-1.5 flex-1 rounded-full ${
              i < index || (i === index && revealed)
                ? "bg-gold-500"
                : i === index
                  ? "bg-navy-300"
                  : "bg-navy-100"
            }`}
          />
        ))}
      </div>

      <p className="mt-5 whitespace-pre-line text-lg font-medium text-navy-900">
        {question.question}
      </p>

      <div className="mt-4 space-y-2">
        {(Object.keys(options) as QuizOptionKey[]).map((key) => {
          const isCorrectOption = key === question.correct_option;
          const isPicked = key === picked;
          let cls = "border-navy-100 bg-white hover:border-navy-300";
          if (revealed) {
            if (isCorrectOption) cls = "border-emerald-400 bg-emerald-50 text-emerald-900";
            else if (isPicked) cls = "border-rose-400 bg-rose-50 text-rose-900";
            else cls = "border-navy-100 bg-white opacity-50";
          }
          return (
            <button
              key={key}
              type="button"
              disabled={revealed}
              onClick={() => pickOption(key)}
              className={`flex w-full items-start gap-3 rounded-lg border px-4 py-3 text-left text-sm transition ${cls} ${revealed ? "cursor-default" : "cursor-pointer"}`}
            >
              <span className="font-semibold">{key}.</span>
              <span className="flex-1">{options[key]}</span>
              {revealed && isCorrectOption && (
                <span className="text-emerald-600">
                  <CheckIcon />
                </span>
              )}
              {revealed && isPicked && !isCorrectOption && (
                <span className="text-rose-600">
                  <XIcon />
                </span>
              )}
            </button>
          );
        })}
      </div>

      {revealed && (
        <div className="page-transition mt-4">
          <div
            className={`flex items-center gap-2 rounded-lg px-3 py-2 text-sm font-semibold ${
              picked === question.correct_option
                ? "bg-emerald-50 text-emerald-900"
                : "bg-rose-50 text-rose-900"
            }`}
          >
            {picked === question.correct_option ? (
              <>
                <span className="text-emerald-600">
                  <CheckIcon />
                </span>
                Benar! +{XP_PER_CORRECT} XP
              </>
            ) : (
              <>
                <span className="text-rose-600">
                  <XIcon />
                </span>
                Kurang tepat — jawaban benar: {question.correct_option}
              </>
            )}
          </div>
          {question.explanation && (
            <p className="mt-2 rounded-lg bg-navy-50 px-3 py-2 text-sm leading-relaxed text-navy-700">
              {question.explanation}
            </p>
          )}
          <button
            type="button"
            onClick={() => (isLast ? finishQuest(picks) : setIndex(index + 1))}
            className="mt-4 w-full rounded-lg bg-navy-900 px-4 py-2.5 text-sm font-medium text-white hover:bg-navy-700"
          >
            {isLast ? "Selesaikan Quest" : "Soal Berikutnya"}
          </button>
        </div>
      )}
    </div>
  );
}
