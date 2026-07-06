import { createServerSupabase } from "@/lib/supabase/server";
import { deleteQuestion, saveQuestion } from "@/lib/admin-actions";
import { Chapter, Module, Question } from "@/lib/types";
import { groupChapters } from "@/lib/chapter-groups";
import { ChapterPicker } from "@/components/admin/ChapterPicker";
import { MathTextarea } from "@/components/admin/MathTextarea";
import { AdminForm } from "@/components/admin/AdminForm";
import { ConfirmSubmit } from "@/components/admin/ConfirmSubmit";

export const dynamic = "force-dynamic";

const OPTION_KEYS = ["a", "b", "c", "d", "e"] as const;

function QuestionFields({ q }: { q?: Question }) {
  return (
    <>
      <MathTextarea name="question" defaultValue={q?.question} rows={3} required placeholder="Teks soal" />
      <div className="grid gap-2 sm:grid-cols-2">
        {OPTION_KEYS.map((k) => (
          <input
            key={k}
            name={`option_${k}`}
            defaultValue={(q?.[`option_${k}` as keyof Question] as string) ?? ""}
            required={k !== "e"}
            placeholder={`Opsi ${k.toUpperCase()}${k === "e" ? " (opsional)" : ""}`}
            className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
          />
        ))}
      </div>
      <div className="grid gap-2 sm:grid-cols-3">
        <select
          name="correct_option"
          defaultValue={q?.correct_option ?? "A"}
          className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
        >
          {["A", "B", "C", "D", "E"].map((o) => (
            <option key={o} value={o}>
              Jawaban: {o}
            </option>
          ))}
        </select>
        <select
          name="difficulty"
          defaultValue={q?.difficulty ?? "medium"}
          className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
        >
          {["easy", "medium", "hard"].map((d) => (
            <option key={d} value={d}>
              {d}
            </option>
          ))}
        </select>
        <input
          name="order_index"
          type="number"
          defaultValue={q?.order_index ?? ""}
          placeholder="Urutan"
          className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
        />
      </div>
      <MathTextarea
        name="explanation"
        defaultValue={q?.explanation ?? ""}
        rows={2}
        placeholder="Pembahasan (opsional)"
      />
    </>
  );
}

export default async function AdminSoal({
  searchParams,
}: {
  searchParams: Promise<{ chapter?: string }>;
}) {
  const { chapter: chapterId } = await searchParams;
  const supabase = await createServerSupabase();
  const [{ data: chaptersData }, { data: modulesData }] = await Promise.all([
    supabase.from("chapters").select("*").order("module_id").order("order_index"),
    supabase.from("modules").select("*").order("order_index"),
  ]);
  const chapters = (chaptersData ?? []) as Chapter[];
  const groups = groupChapters((modulesData ?? []) as Module[], chapters);

  let questions: Question[] = [];
  if (chapterId) {
    const { data } = await supabase
      .from("questions")
      .select("*")
      .eq("chapter_id", chapterId)
      .order("order_index", { ascending: true, nullsFirst: false });
    questions = (data ?? []) as Question[];
  }

  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-lg font-semibold text-navy-900">Kelola Soal</h2>
        <p className="mt-1 text-sm text-navy-500">Pilih bab untuk melihat dan mengedit soalnya.</p>
        <div className="mt-3">
          <ChapterPicker groups={groups} selected={chapterId} basePath="/admin/soal" />
        </div>
      </div>

      {chapterId && (
        <>
          <section className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
            <h3 className="font-semibold text-navy-900">Tambah Soal Baru</h3>
            <AdminForm action={saveQuestion} submitLabel="Simpan Soal" className="mt-3 space-y-3">
              <input type="hidden" name="chapter_id" value={chapterId} />
              <QuestionFields />
            </AdminForm>
          </section>

          <section>
            <h3 className="font-semibold text-navy-900">Daftar Soal ({questions.length})</h3>
            <div className="mt-3 space-y-3">
              {questions.map((q, i) => (
                <details
                  key={q.id}
                  className="rounded-xl border border-navy-100 bg-white p-4 shadow-sm"
                >
                  <summary className="cursor-pointer">
                    <span className="text-xs font-semibold text-navy-400">#{q.order_index ?? i + 1}</span>{" "}
                    <span className="font-medium text-navy-900">
                      {q.question.slice(0, 90)}
                      {q.question.length > 90 ? "…" : ""}
                    </span>
                    <span className="ml-2 rounded-full bg-navy-100 px-2 py-0.5 text-[11px] text-navy-500">
                      {q.difficulty} · kunci {q.correct_option}
                    </span>
                  </summary>
                  <AdminForm action={saveQuestion} submitLabel="Perbarui" className="mt-4 space-y-3">
                    <input type="hidden" name="id" value={q.id} />
                    <input type="hidden" name="chapter_id" value={chapterId} />
                    <QuestionFields q={q} />
                  </AdminForm>
                  <form action={deleteQuestion} className="mt-2">
                    <input type="hidden" name="id" value={q.id} />
                    <ConfirmSubmit
                      message="Hapus soal ini? Tindakan ini tidak bisa dibatalkan."
                      className="text-sm font-medium text-rose-600 hover:underline"
                    >
                      Hapus soal
                    </ConfirmSubmit>
                  </form>
                </details>
              ))}
              {questions.length === 0 && (
                <p className="text-sm text-navy-400">Bab ini belum punya soal.</p>
              )}
            </div>
          </section>
        </>
      )}
    </div>
  );
}
