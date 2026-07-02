import Link from "next/link";
import { notFound } from "next/navigation";
import { ChapterNotes } from "@/components/ChapterNotes";
import { ChapterSidebar } from "@/components/ChapterSidebar";
import { MindMap } from "@/components/MindMap";
import { SubMateriDisplay, SubMateriNav, SubMateriProvider } from "@/components/SubMateriMenu";
import { getChapterById, getChaptersByModule, getContentsByChapter, getModuleById } from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function ChapterPage({
  params,
}: {
  params: Promise<{ moduleId: string; chapterId: string }>;
}) {
  const { moduleId, chapterId } = await params;

  const [mod, chapter, contents, chapters] = await Promise.all([
    getModuleById(moduleId),
    getChapterById(chapterId),
    getContentsByChapter(chapterId),
    getChaptersByModule(moduleId),
  ]);

  if (!mod || !chapter || chapter.module_id !== mod.id) notFound();

  const index = chapters.findIndex((c) => c.id === chapter.id);
  const prevChapter = index > 0 ? chapters[index - 1] : null;
  const nextChapter = index >= 0 && index < chapters.length - 1 ? chapters[index + 1] : null;

  return (
    <SubMateriProvider contents={contents}>
      <div className="mx-auto max-w-6xl px-4 py-10 md:grid md:grid-cols-[16rem_1fr] md:gap-8">
        <div className="md:space-y-4">
          <ChapterSidebar
            moduleId={mod.id}
            moduleTitle={mod.title}
            chapters={chapters}
            activeChapterId={chapter.id}
          />
          <div className="md:sticky md:top-20">
            <SubMateriNav />
          </div>
        </div>

        <div className="min-w-0 max-w-3xl">
          <Link href={`/modul/${mod.id}`} className="text-sm text-navy-400 hover:text-navy-800">
            &larr; {mod.title}
          </Link>

          <div className="mt-3 flex flex-wrap items-center justify-between gap-3">
            <h1 className="text-2xl font-bold tracking-tight text-navy-900">
              {chapter.code && <span className="text-navy-300">{chapter.code}. </span>}
              {chapter.title}
            </h1>
            <Link
              href={`/kuis/${mod.id}/${chapter.id}`}
              className="shrink-0 rounded-md bg-navy-900 px-4 py-2 text-sm font-medium text-white hover:bg-navy-700"
            >
              Latihan Soal Bab Ini
            </Link>
          </div>

          {chapter.mindmap && (
            <section className="mt-8 rounded-xl border border-navy-100 bg-white p-4 shadow-sm">
              <h2 className="mb-2 text-lg font-semibold text-navy-900">Mind Map</h2>
              <MindMap markdown={chapter.mindmap} title={chapter.title} />
            </section>
          )}

          <div className="mt-8">
            {contents.length > 0 ? (
              <SubMateriDisplay />
            ) : (
              <p className="text-sm text-navy-400">Belum ada materi untuk bab ini.</p>
            )}
          </div>

          <ChapterNotes chapterId={chapter.id} />

          <div className="mt-10 flex items-center justify-between border-t border-navy-100 pt-6 text-sm">
            {prevChapter ? (
              <Link
                href={`/modul/${mod.id}/${prevChapter.id}`}
                className="text-navy-500 hover:text-navy-900 hover:underline"
              >
                &larr; {prevChapter.title}
              </Link>
            ) : (
              <span />
            )}
            {nextChapter ? (
              <Link
                href={`/modul/${mod.id}/${nextChapter.id}`}
                className="text-navy-500 hover:text-navy-900 hover:underline"
              >
                {nextChapter.title} &rarr;
              </Link>
            ) : (
              <span />
            )}
          </div>
        </div>
      </div>
    </SubMateriProvider>
  );
}
