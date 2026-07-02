import Link from "next/link";
import { notFound } from "next/navigation";
import { QuizRunner } from "@/components/QuizRunner";
import { getModuleById, getQuestionsByModule } from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function ModuleQuizPage({
  params,
}: {
  params: Promise<{ moduleId: string }>;
}) {
  const { moduleId } = await params;
  const mod = await getModuleById(moduleId);
  if (!mod) notFound();

  const questions = await getQuestionsByModule(moduleId);

  if (questions.length === 0) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10 text-center">
        <p className="text-navy-500">Belum ada soal untuk modul {mod.title}.</p>
        <Link href={`/modul/${mod.id}`} className="mt-4 inline-block text-sm text-navy-400 hover:underline">
          &larr; Kembali ke {mod.title}
        </Link>
      </div>
    );
  }

  return (
    <QuizRunner
      questions={questions}
      title={`Kuis: ${mod.title}`}
      backHref={`/modul/${mod.id}`}
    />
  );
}
