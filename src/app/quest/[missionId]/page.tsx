import Link from "next/link";
import { notFound } from "next/navigation";
import { getQuestMissionQuestions } from "@/lib/data";
import { dailyQuestDateKey, questMissionById } from "@/lib/gamification";
import { DailyQuestRunner } from "@/components/DailyQuestRunner";

export const dynamic = "force-dynamic";

export default async function QuestMissionPage({
  params,
}: {
  params: Promise<{ missionId: string }>;
}) {
  const { missionId } = await params;
  const mission = questMissionById(missionId);
  if (!mission) notFound();

  const dateKey = dailyQuestDateKey();
  const { questions, focusChapterTitle } = await getQuestMissionQuestions(mission, dateKey);

  return (
    <div>
      <div className="border-b border-navy-800 bg-navy-950">
        <div className="mx-auto max-w-2xl px-4 py-10">
          <Link href="/quest" className="text-sm text-navy-400 hover:text-navy-200">
            &larr; Daftar Misi
          </Link>
          <h1 className="mt-3 text-3xl font-bold tracking-tight text-white">
            {mission.emoji} {mission.label}
          </h1>
          <p className="mt-2 text-sm text-navy-300">
            {focusChapterTitle ? `Bab hari ini: ${focusChapterTitle} · ` : ""}
            {questions.length} soal &middot; maksimal {questions.length * mission.xpPerCorrect} XP
            {" "}&middot; {mission.xpPerCorrect} XP / jawaban benar
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-2xl px-4 py-8">
        <DailyQuestRunner
          dateKey={dateKey}
          missionId={mission.id}
          xpPerCorrect={mission.xpPerCorrect}
          questions={questions}
        />
      </div>
    </div>
  );
}
