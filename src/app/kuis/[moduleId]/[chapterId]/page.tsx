import Link from "next/link";
import { notFound } from "next/navigation";
import { QuizRunner } from "@/components/QuizRunner";
import { getChapterById, getModuleById, getQuestionsByChapter } from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function ChapterQuizPage({
  params,
}: {
  params: Promise<{ moduleId: string; chapterId: string }>;
}) {
  const { moduleId, chapterId } = await params;

  const [mod, chapter] = await Promise.all([
    getModuleById(moduleId),
    getChapterById(chapterId),
  ]);
  if (!mod || !chapter || chapter.module_id !== mod.id) notFound();

  const questions = await getQuestionsByChapter(chapterId);

  if (questions.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-500">Belum ada soal untuk bab {chapter.title}.</p>
        <Link
          href={`/modul/${mod.id}/${chapter.id}`}
          className="mt-4 inline-block text-sm text-navy-400 hover:underline"
        >
          &larr; Kembali ke {chapter.title}
        </Link>
      </div>
    );
  }

  return (
    <QuizRunner
      questions={questions}
      title={`Kuis: ${chapter.title}`}
      backHref={`/modul/${mod.id}/${chapter.id}`}
      chapterId={chapter.id}
    />
  );
}
