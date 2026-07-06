import { createServerSupabase } from "@/lib/supabase/server";
import {
  deleteChapter,
  deleteModule,
  saveChapter,
  saveModule,
} from "@/lib/admin-actions";
import { Chapter, Module } from "@/lib/types";

export const dynamic = "force-dynamic";

const inputClass =
  "rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500";
const primaryBtn =
  "rounded-lg bg-navy-900 px-4 py-2 text-sm font-semibold text-white hover:bg-navy-700";

export default async function AdminStruktur() {
  const supabase = await createServerSupabase();
  const [
    { data: modulesData },
    { data: chaptersData },
    { data: contentsData },
    { data: questionsData },
  ] = await Promise.all([
    supabase.from("modules").select("*").order("order_index"),
    supabase.from("chapters").select("*").order("module_id").order("order_index"),
    supabase.from("contents").select("chapter_id"),
    supabase.from("questions").select("chapter_id"),
  ]);

  const modules = (modulesData ?? []) as Module[];
  const chapters = (chaptersData ?? []) as Chapter[];

  // Hitung isi tiap bab supaya tombol hapus hanya muncul kalau bab kosong.
  const contentCount = new Map<string, number>();
  for (const c of (contentsData ?? []) as { chapter_id: string | null }[]) {
    if (c.chapter_id) contentCount.set(c.chapter_id, (contentCount.get(c.chapter_id) ?? 0) + 1);
  }
  const questionCount = new Map<string, number>();
  for (const q of (questionsData ?? []) as { chapter_id: string | null }[]) {
    if (q.chapter_id) questionCount.set(q.chapter_id, (questionCount.get(q.chapter_id) ?? 0) + 1);
  }

  return (
    <div className="space-y-8">
      <div>
        <h2 className="text-lg font-semibold text-navy-900">Kelola Bab &amp; Modul</h2>
        <p className="mt-1 text-sm text-navy-500">
          Atur struktur materi: tambah/ubah/hapus modul dan bab, atur urutan, atau pindahkan
          bab ke modul lain. Isi soal &amp; materi diedit di menu masing-masing.
        </p>
      </div>

      {/* Tambah modul baru */}
      <section className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
        <h3 className="font-semibold text-navy-900">Tambah Modul Baru</h3>
        <form action={saveModule} className="mt-3 grid gap-2 sm:grid-cols-[1fr_120px_auto]">
          <input name="title" placeholder="Nama modul (mis. Etika PNS)" required className={inputClass} />
          <input name="order_index" type="number" placeholder="Urutan" className={inputClass} />
          <button type="submit" className={primaryBtn}>
            Tambah Modul
          </button>
        </form>
      </section>

      {/* Daftar modul + bab di dalamnya */}
      {modules.map((m) => {
        const modChapters = chapters.filter((c) => c.module_id === m.id);
        return (
          <section key={m.id} className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
            {/* Edit / hapus modul */}
            <form action={saveModule} className="grid gap-2 sm:grid-cols-[1fr_100px_auto]">
              <input type="hidden" name="id" value={m.id} />
              <input name="title" defaultValue={m.title} required className={`${inputClass} font-semibold`} />
              <input
                name="order_index"
                type="number"
                defaultValue={m.order_index ?? ""}
                placeholder="Urutan"
                className={inputClass}
              />
              <button type="submit" className="rounded-lg border border-navy-300 px-4 py-2 text-sm font-semibold text-navy-700 hover:bg-navy-50">
                Simpan Modul
              </button>
            </form>
            <div className="mt-2">
              {modChapters.length === 0 ? (
                <form action={deleteModule}>
                  <input type="hidden" name="id" value={m.id} />
                  <button type="submit" className="text-xs font-medium text-rose-600 hover:underline">
                    Hapus modul ini
                  </button>
                </form>
              ) : (
                <p className="text-xs text-navy-400">
                  Berisi {modChapters.length} bab — kosongkan dulu untuk bisa menghapus modul.
                </p>
              )}
            </div>

            {/* Bab-bab dalam modul */}
            <div className="mt-4 space-y-2 border-t border-navy-100 pt-4">
              <p className="text-xs font-semibold uppercase tracking-wide text-navy-400">
                Bab ({modChapters.length})
              </p>
              {modChapters.map((c) => {
                const soal = questionCount.get(c.id) ?? 0;
                const materi = contentCount.get(c.id) ?? 0;
                const empty = soal + materi === 0;
                return (
                  <div key={c.id} className="rounded-lg border border-navy-100 bg-navy-50/40 p-3">
                    <form action={saveChapter} className="grid gap-2 sm:grid-cols-[70px_1fr_80px]">
                      <input type="hidden" name="id" value={c.id} />
                      <input name="code" defaultValue={c.code ?? ""} placeholder="Kode" className={inputClass} />
                      <input name="title" defaultValue={c.title} required placeholder="Judul bab" className={inputClass} />
                      <input
                        name="order_index"
                        type="number"
                        defaultValue={c.order_index ?? ""}
                        placeholder="Urut"
                        className={inputClass}
                      />
                      <div className="flex flex-wrap items-center gap-2 sm:col-span-3">
                        <label className="text-xs text-navy-500">Modul:</label>
                        <select name="module_id" defaultValue={c.module_id} className={`${inputClass} py-1`}>
                          {modules.map((mm) => (
                            <option key={mm.id} value={mm.id}>
                              {mm.title}
                            </option>
                          ))}
                        </select>
                        <button type="submit" className="rounded-lg bg-navy-900 px-3 py-1.5 text-xs font-semibold text-white hover:bg-navy-700">
                          Simpan bab
                        </button>
                        <span className="text-xs text-navy-400">
                          {soal} soal · {materi} materi
                        </span>
                      </div>
                    </form>
                    <div className="mt-2">
                      {empty ? (
                        <form action={deleteChapter}>
                          <input type="hidden" name="id" value={c.id} />
                          <button type="submit" className="text-xs font-medium text-rose-600 hover:underline">
                            Hapus bab
                          </button>
                        </form>
                      ) : (
                        <p className="text-xs text-navy-400">
                          Tidak bisa dihapus: masih ada {soal} soal &amp; {materi} materi. Kosongkan
                          dulu di menu Kelola Soal/Materi.
                        </p>
                      )}
                    </div>
                  </div>
                );
              })}
              {modChapters.length === 0 && (
                <p className="text-sm text-navy-400">Modul ini belum punya bab.</p>
              )}

              {/* Tambah bab ke modul ini */}
              <form action={saveChapter} className="mt-3 grid gap-2 sm:grid-cols-[70px_1fr_80px_auto]">
                <input type="hidden" name="module_id" value={m.id} />
                <input name="code" placeholder="Kode" className={inputClass} />
                <input name="title" placeholder="Judul bab baru" required className={inputClass} />
                <input name="order_index" type="number" placeholder="Urut" className={inputClass} />
                <button type="submit" className="rounded-lg border border-navy-300 px-3 py-2 text-sm font-semibold text-navy-700 hover:bg-navy-50">
                  + Bab
                </button>
              </form>
            </div>
          </section>
        );
      })}

      {modules.length === 0 && (
        <p className="text-sm text-navy-400">Belum ada modul. Tambahkan modul pertama di atas.</p>
      )}
    </div>
  );
}
