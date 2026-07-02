import Link from "next/link";
import { Chapter } from "@/lib/types";

function ChapterList({
  moduleId,
  chapters,
  activeChapterId,
}: {
  moduleId: string;
  chapters: Chapter[];
  activeChapterId: string;
}) {
  return (
    <ul className="space-y-1">
      {chapters.map((chapter) => (
        <li key={chapter.id}>
          <Link
            href={`/modul/${moduleId}/${chapter.id}`}
            className={`block rounded-md px-3 py-2 text-sm transition ${
              chapter.id === activeChapterId
                ? "bg-navy-900 text-white"
                : "text-navy-700 hover:bg-navy-50"
            }`}
          >
            {chapter.code && <span className="mr-1 text-xs opacity-70">{chapter.code}.</span>}
            {chapter.title}
          </Link>
        </li>
      ))}
    </ul>
  );
}

export function ChapterSidebar({
  moduleId,
  moduleTitle,
  chapters,
  activeChapterId,
}: {
  moduleId: string;
  moduleTitle: string;
  chapters: Chapter[];
  activeChapterId: string;
}) {
  return (
    <>
      <details className="mb-6 rounded-xl border border-navy-100 bg-white p-4 shadow-sm md:hidden">
        <summary className="cursor-pointer text-sm font-semibold text-navy-900">
          Daftar Bab — {moduleTitle}
        </summary>
        <div className="mt-3">
          <ChapterList moduleId={moduleId} chapters={chapters} activeChapterId={activeChapterId} />
        </div>
      </details>

      <div className="hidden rounded-xl border border-navy-100 bg-white p-4 shadow-sm md:block">
        <p className="mb-3 truncate text-xs font-semibold uppercase tracking-wide text-navy-400">
          {moduleTitle}
        </p>
        <ChapterList moduleId={moduleId} chapters={chapters} activeChapterId={activeChapterId} />
      </div>
    </>
  );
}
