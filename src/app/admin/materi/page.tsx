import { createServerSupabase } from "@/lib/supabase/server";
import { deleteContent, saveChapterMindmap, saveContent } from "@/lib/admin-actions";
import { Chapter, Content, Module } from "@/lib/types";
import { groupChapters } from "@/lib/chapter-groups";
import { ChapterPicker } from "@/components/admin/ChapterPicker";
import { MathTextarea } from "@/components/admin/MathTextarea";
import { AdminForm } from "@/components/admin/AdminForm";
import { ConfirmSubmit } from "@/components/admin/ConfirmSubmit";

export const dynamic = "force-dynamic";

export default async function AdminMateri({
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
  const chapter = chapters.find((c) => c.id === chapterId);

  let contents: Content[] = [];
  if (chapterId) {
    const { data } = await supabase
      .from("contents")
      .select("*")
      .eq("chapter_id", chapterId)
      .order("order_index", { ascending: true });
    contents = (data ?? []) as Content[];
  }

  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-lg font-semibold text-navy-900">Kelola Materi</h2>
        <p className="mt-1 text-sm text-navy-500">
          Pilih bab untuk mengedit sub-materi dan mind map-nya.
        </p>
        <div className="mt-3">
          <ChapterPicker groups={groups} selected={chapterId} basePath="/admin/materi" />
        </div>
      </div>

      {chapterId && chapter && (
        <>
          <section className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
            <h3 className="font-semibold text-navy-900">Mind Map Bab</h3>
            <AdminForm action={saveChapterMindmap} submitLabel="Simpan Mind Map" className="mt-3 space-y-3">
              <input type="hidden" name="chapter_id" value={chapterId} />
              <textarea
                name="mindmap"
                defaultValue={chapter.mindmap ?? ""}
                rows={6}
                placeholder="Outline mind map (Markdown berjenjang: # judul, ## cabang, - poin)"
                className="w-full rounded-lg border border-navy-200 px-3 py-2 font-mono text-xs outline-none focus:border-navy-500"
              />
            </AdminForm>
          </section>

          <section className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
            <h3 className="font-semibold text-navy-900">Tambah Sub-Materi</h3>
            <AdminForm action={saveContent} submitLabel="Simpan Sub-Materi" className="mt-3 space-y-3">
              <input type="hidden" name="chapter_id" value={chapterId} />
              <div className="grid gap-2 sm:grid-cols-[1fr_120px]">
                <input
                  name="heading"
                  placeholder="Judul sub-materi"
                  className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
                />
                <input
                  name="order_index"
                  type="number"
                  placeholder="Urutan"
                  className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
                />
              </div>
              <MathTextarea name="body" rows={5} required placeholder="Isi materi (Markdown)" />
            </AdminForm>
          </section>

          <section>
            <h3 className="font-semibold text-navy-900">Daftar Sub-Materi ({contents.length})</h3>
            <div className="mt-3 space-y-3">
              {contents.map((c) => (
                <details
                  key={c.id}
                  className="rounded-xl border border-navy-100 bg-white p-4 shadow-sm"
                >
                  <summary className="cursor-pointer">
                    <span className="text-xs font-semibold text-navy-400">#{c.order_index ?? "-"}</span>{" "}
                    <span className="font-medium text-navy-900">{c.heading ?? "(tanpa judul)"}</span>
                  </summary>
                  <AdminForm action={saveContent} submitLabel="Perbarui" className="mt-4 space-y-3">
                    <input type="hidden" name="id" value={c.id} />
                    <input type="hidden" name="chapter_id" value={chapterId} />
                    <div className="grid gap-2 sm:grid-cols-[1fr_120px]">
                      <input
                        name="heading"
                        defaultValue={c.heading ?? ""}
                        placeholder="Judul sub-materi"
                        className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
                      />
                      <input
                        name="order_index"
                        type="number"
                        defaultValue={c.order_index ?? ""}
                        placeholder="Urutan"
                        className="rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
                      />
                    </div>
                    <MathTextarea name="body" defaultValue={c.body} rows={6} required />
                  </AdminForm>
                  <form action={deleteContent} className="mt-2">
                    <input type="hidden" name="id" value={c.id} />
                    <ConfirmSubmit
                      message="Hapus sub-materi ini? Tindakan ini tidak bisa dibatalkan."
                      className="text-sm font-medium text-rose-600 hover:underline"
                    >
                      Hapus sub-materi
                    </ConfirmSubmit>
                  </form>
                </details>
              ))}
              {contents.length === 0 && (
                <p className="text-sm text-navy-400">Bab ini belum punya sub-materi.</p>
              )}
            </div>
          </section>
        </>
      )}
    </div>
  );
}
