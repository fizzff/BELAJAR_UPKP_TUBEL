import { getQuestFocusChapter } from "@/lib/data";
import {
  DAILY_QUEST_TIMEZONE,
  DAILY_XP_MAX,
  QUEST_MISSIONS,
  dailyQuestDateKey,
} from "@/lib/gamification";
import { QuestBoard, QuestBoardMission } from "@/components/QuestBoard";

export const dynamic = "force-dynamic";

export default async function QuestPage() {
  const dateKey = dailyQuestDateKey();
  const focusChapter = await getQuestFocusChapter(dateKey);
  const displayDate = new Intl.DateTimeFormat("id-ID", {
    dateStyle: "full",
    timeZone: DAILY_QUEST_TIMEZONE,
  }).format(new Date());

  const missions: QuestBoardMission[] = QUEST_MISSIONS.map((m) => ({
    id: m.id,
    label: m.label,
    description:
      m.pool === "tpa-fokus" && focusChapter
        ? `Hari ini: ${focusChapter.title}`
        : m.description,
    emoji: m.emoji,
    size: m.size,
    maxXp: m.size * m.xpPerCorrect,
  }));

  return (
    <div>
      <div className="border-b border-navy-800 bg-navy-950">
        <div className="mx-auto max-w-2xl px-4 py-12">
          <span className="inline-block rounded-full border border-gold-500/40 bg-gold-500/10 px-3 py-1 text-xs font-medium tracking-wide text-gold-200">
            Quest Harian
          </span>
          <h1 className="mt-4 text-3xl font-bold tracking-tight text-white">Daftar Misi</h1>
          <p className="mt-2 text-sm text-navy-300">
            {displayDate} &middot; {QUEST_MISSIONS.length} misi &middot; maksimal {DAILY_XP_MAX}{" "}
            XP per hari
          </p>
          <p className="mt-1 text-sm text-navy-300">
            Selesaikan misi mana pun sesuai kebutuhan belajarmu — tiap misi hanya bisa
            dikerjakan sekali per hari, dan seluruh misi berganti setiap hari.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-2xl px-4 py-8">
        <QuestBoard missions={missions} />
      </div>
    </div>
  );
}
