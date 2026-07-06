import Link from "next/link";
import { createServerSupabase } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

async function count(table: string): Promise<number> {
  const supabase = await createServerSupabase();
  const { count: c } = await supabase.from(table).select("*", { count: "exact", head: true });
  return c ?? 0;
}

export default async function AdminHome() {
  const [users, questions, contents, announcements] = await Promise.all([
    count("profiles"),
    count("questions"),
    count("contents"),
    count("announcements"),
  ]);

  const cards = [
    { label: "Pengguna", value: users, href: "/admin/users" },
    { label: "Bank Soal", value: questions, href: "/admin/soal" },
    { label: "Materi", value: contents, href: "/admin/materi" },
    { label: "Pengumuman", value: announcements, href: "/admin/pengumuman" },
  ];

  return (
    <div>
      <p className="text-sm text-navy-500">
        Kelola pengguna, soal, materi, dan papan pengumuman dari sini.
      </p>
      <div className="mt-4 grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
        {cards.map((c) => (
          <Link
            key={c.label}
            href={c.href}
            className="rounded-xl border border-navy-100 bg-white p-5 shadow-sm transition hover:-translate-y-0.5 hover:shadow-md"
          >
            <p className="text-3xl font-bold text-navy-900">{c.value}</p>
            <p className="mt-1 text-sm text-navy-500">{c.label}</p>
          </Link>
        ))}
      </div>
    </div>
  );
}
