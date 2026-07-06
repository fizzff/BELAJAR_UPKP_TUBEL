import { Markdown } from "@/components/Markdown";

export interface AnnouncementItem {
  id: string;
  title: string;
  body: string;
  pinned: boolean;
  created_at: string;
}

// Papan pengumuman yang dibuat admin, tampil untuk semua user yang login.
export function AnnouncementsBoard({ items }: { items: AnnouncementItem[] }) {
  if (items.length === 0) return null;

  return (
    <section className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
      <div className="flex items-center gap-2">
        <span className="text-lg">📣</span>
        <h2 className="text-lg font-semibold text-navy-900">Papan Pengumuman</h2>
      </div>
      <div className="mt-4 space-y-4">
        {items.map((a) => (
          <article
            key={a.id}
            className={`rounded-lg border p-4 ${
              a.pinned ? "border-gold-200 bg-gold-50/50" : "border-navy-100 bg-navy-50/40"
            }`}
          >
            <div className="flex items-center justify-between gap-3">
              <h3 className="flex items-center gap-1.5 font-semibold text-navy-900">
                {a.pinned && <span title="Disematkan">📌</span>}
                {a.title}
              </h3>
              <span className="shrink-0 text-xs text-navy-400">
                {new Date(a.created_at).toLocaleDateString("id-ID", {
                  day: "numeric",
                  month: "short",
                  year: "numeric",
                })}
              </span>
            </div>
            <div className="mt-2 text-sm">
              <Markdown>{a.body}</Markdown>
            </div>
          </article>
        ))}
      </div>
    </section>
  );
}
