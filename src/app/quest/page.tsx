import { getDailyQuestQuestions } from "@/lib/data";
import {
  DAILY_QUEST_SIZE,
  DAILY_QUEST_TIMEZONE,
  XP_PER_CORRECT,
  dailyQuestDateKey,
  dailyQuestSeed,
} from "@/lib/gamification";
import { DailyQuestRunner } from "@/components/DailyQuestRunner";

export const dynamic = "force-dynamic";

export default async function QuestPage() {
  const dateKey = dailyQuestDateKey();
  const questions = await getDailyQuestQuestions(dailyQuestSeed(dateKey), DAILY_QUEST_SIZE);
  const displayDate = new Intl.DateTimeFormat("id-ID", {
    dateStyle: "full",
    timeZone: DAILY_QUEST_TIMEZONE,
  }).format(new Date());

  return (
    <div>
      <div className="border-b border-navy-800 bg-navy-950">
        <div className="mx-auto max-w-2xl px-4 py-12">
          <span className="inline-block rounded-full border border-gold-500/40 bg-gold-500/10 px-3 py-1 text-xs font-medium tracking-wide text-gold-200">
            Quest Harian
          </span>
          <h1 className="mt-4 text-3xl font-bold tracking-tight text-white">
            Tantangan Hari Ini
          </h1>
          <p className="mt-2 text-sm text-navy-300">
            {displayDate} &middot; {questions.length} soal &middot; maksimal{" "}
            {questions.length * XP_PER_CORRECT} XP
          </p>
          <p className="mt-1 text-sm text-navy-300">
            Jawab dengan benar untuk mengumpulkan XP dan menaikkan level belajarmu. Quest
            berganti setiap hari.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-2xl px-4 py-8">
        <DailyQuestRunner dateKey={dateKey} questions={questions} />
      </div>
    </div>
  );
}
