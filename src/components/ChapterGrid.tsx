import Link from "next/link";
import { ChapterProgressGauge } from "@/components/ChapterProgressGauge";
import { Chapter } from "@/lib/types";

function QuizIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-5 w-5">
      <path d="M12 20h9" strokeLinecap="round" />
      <path
        d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4Z"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
    </svg>
  );
}

export function ChapterGrid({ moduleId, chapters }: { moduleId: string; chapters: Chapter[] }) {
  return (
    <div className="grid gap-3 sm:grid-cols-2">
      {chapters.map((chapter) => (
        <div
          key={chapter.id}
          className="flex items-center gap-3 rounded-2xl border border-navy-100 bg-white p-4 shadow-sm transition hover:border-navy-300 hover:shadow-md"
        >
          <Link
            href={`/modul/${moduleId}/${chapter.id}`}
            className="min-w-0 flex-1 text-navy-900 hover:underline"
          >
            {chapter.code && <span className="mr-2 text-navy-300">{chapter.code}.</span>}
            {chapter.title}
          </Link>
          <ChapterProgressGauge chapterId={chapter.id} />
          <Link
            href={`/kuis/${moduleId}/${chapter.id}`}
            title="Latihan soal"
            aria-label="Latihan soal"
            className="shrink-0 rounded-full bg-navy-50 p-2.5 text-navy-700 transition hover:bg-navy-900 hover:text-white"
          >
            <QuizIcon />
          </Link>
        </div>
      ))}
    </div>
  );
}
