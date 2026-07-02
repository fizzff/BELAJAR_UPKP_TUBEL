import Link from "next/link";
import { notFound } from "next/navigation";
import { ChapterGrid } from "@/components/ChapterGrid";
import { TpaChapterMenu } from "@/components/TpaChapterMenu";
import { getChaptersByModule, getModuleById, isTpaModule } from "@/lib/data";
import { Chapter } from "@/lib/types";

export const dynamic = "force-dynamic";

// Modul TPA punya 15 bab yang dikelompokkan jadi 3 subtes berdasarkan kode bab:
// A-D -> Verbal, E1-E10 -> Numerikal, F -> Figural.
function groupTpaChapters(chapters: Chapter[]) {
  const groups: { label: string; chapters: Chapter[] }[] = [
    { label: "Verbal", chapters: [] },
    { label: "Numerikal", chapters: [] },
    { label: "Figural", chapters: [] },
  ];
  for (const chapter of chapters) {
    if (chapter.code?.startsWith("E")) groups[1].chapters.push(chapter);
    else if (chapter.code === "F") groups[2].chapters.push(chapter);
    else groups[0].chapters.push(chapter);
  }
  return groups.filter((g) => g.chapters.length > 0);
}

export default async function ModulePage({
  params,
}: {
  params: Promise<{ moduleId: string }>;
}) {
  const { moduleId } = await params;
  const mod = await getModuleById(moduleId);
  if (!mod) notFound();

  const chapters = await getChaptersByModule(moduleId);

  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-10">
          <Link href="/materi" className="text-sm text-navy-200 hover:text-white">
            &larr; Daftar Modul
          </Link>

          <div className="mt-3 flex flex-wrap items-center justify-between gap-3">
            <h1 className="text-2xl font-bold tracking-tight text-white">{mod.title}</h1>
            <Link
              href={`/kuis/${mod.id}`}
              className="rounded-md bg-white px-4 py-2 text-sm font-medium text-navy-900 hover:bg-navy-100"
            >
              Mulai Kuis Modul Ini
            </Link>
          </div>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        {isTpaModule(mod) ? (
          <TpaChapterMenu moduleId={mod.id} groups={groupTpaChapters(chapters)} />
        ) : (
          <ChapterGrid moduleId={mod.id} chapters={chapters} />
        )}

        {chapters.length === 0 && (
          <p className="mt-8 text-sm text-navy-400">Belum ada bab untuk modul ini.</p>
        )}
      </div>
    </div>
  );
}
