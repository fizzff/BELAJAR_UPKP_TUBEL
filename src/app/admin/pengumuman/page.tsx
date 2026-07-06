import { createServerSupabase } from "@/lib/supabase/server";
import { deleteAnnouncement, saveAnnouncement } from "@/lib/admin-actions";

export const dynamic = "force-dynamic";

interface Announcement {
  id: string;
  title: string;
  body: string;
  pinned: boolean;
  published: boolean;
  created_at: string;
}

export default async function AdminAnnouncements() {
  const supabase = await createServerSupabase();
  const { data } = await supabase
    .from("announcements")
    .select("*")
    .order("pinned", { ascending: false })
    .order("created_at", { ascending: false });
  const items = (data ?? []) as Announcement[];

  return (
    <div className="space-y-8">
      <section className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
        <h2 className="text-lg font-semibold text-navy-900">Buat Pengumuman Baru</h2>
        <form action={saveAnnouncement} className="mt-4 space-y-3">
          <input
            name="title"
            required
            placeholder="Judul pengumuman"
            className="w-full rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
          />
          <textarea
            name="body"
            required
            rows={4}
            placeholder="Isi pengumuman (mendukung Markdown)"
            className="w-full rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
          />
          <div className="flex flex-wrap items-center gap-4 text-sm text-navy-700">
            <label className="flex items-center gap-2">
              <input type="checkbox" name="pinned" /> Sematkan (pinned)
            </label>
            <label className="flex items-center gap-2">
              <input type="checkbox" name="published" defaultChecked /> Terbitkan
            </label>
          </div>
          <button
            type="submit"
            className="rounded-lg bg-navy-900 px-4 py-2 text-sm font-semibold text-white hover:bg-navy-700"
          >
            Simpan
          </button>
        </form>
      </section>

      <section>
        <h2 className="text-lg font-semibold text-navy-900">
          Daftar Pengumuman ({items.length})
        </h2>
        <div className="mt-4 space-y-4">
          {items.length === 0 && (
            <p className="text-sm text-navy-400">Belum ada pengumuman.</p>
          )}
          {items.map((a) => (
            <details
              key={a.id}
              className="rounded-xl border border-navy-100 bg-white p-4 shadow-sm"
            >
              <summary className="flex cursor-pointer items-center justify-between gap-3">
                <span className="flex items-center gap-2">
                  {a.pinned && <span title="Disematkan">📌</span>}
                  <span className="font-medium text-navy-900">{a.title}</span>
                  {!a.published && (
                    <span className="rounded-full bg-navy-100 px-2 py-0.5 text-[11px] text-navy-500">
                      Draf
                    </span>
                  )}
                </span>
                <span className="text-xs text-navy-400">
                  {new Date(a.created_at).toLocaleDateString("id-ID")}
                </span>
              </summary>

              <form action={saveAnnouncement} className="mt-4 space-y-3">
                <input type="hidden" name="id" value={a.id} />
                <input
                  name="title"
                  defaultValue={a.title}
                  required
                  className="w-full rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
                />
                <textarea
                  name="body"
                  defaultValue={a.body}
                  required
                  rows={4}
                  className="w-full rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500"
                />
                <div className="flex flex-wrap items-center gap-4 text-sm text-navy-700">
                  <label className="flex items-center gap-2">
                    <input type="checkbox" name="pinned" defaultChecked={a.pinned} /> Sematkan
                  </label>
                  <label className="flex items-center gap-2">
                    <input type="checkbox" name="published" defaultChecked={a.published} />{" "}
                    Terbitkan
                  </label>
                </div>
                <div className="flex gap-2">
                  <button
                    type="submit"
                    className="rounded-lg bg-navy-900 px-4 py-2 text-sm font-semibold text-white hover:bg-navy-700"
                  >
                    Perbarui
                  </button>
                </div>
              </form>

              <form action={deleteAnnouncement} className="mt-2">
                <input type="hidden" name="id" value={a.id} />
                <button
                  type="submit"
                  className="text-sm font-medium text-rose-600 hover:underline"
                >
                  Hapus pengumuman
                </button>
              </form>
            </details>
          ))}
        </div>
      </section>
    </div>
  );
}
