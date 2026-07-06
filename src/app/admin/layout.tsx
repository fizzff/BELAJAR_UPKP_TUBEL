import Link from "next/link";
import { redirect } from "next/navigation";
import { getSessionUser } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

const NAV = [
  { href: "/admin", label: "Ringkasan" },
  { href: "/admin/pengumuman", label: "Papan Pengumuman" },
  { href: "/admin/struktur", label: "Kelola Bab & Modul" },
  { href: "/admin/soal", label: "Kelola Soal" },
  { href: "/admin/materi", label: "Kelola Materi" },
  { href: "/admin/users", label: "Kelola User" },
];

export default async function AdminLayout({ children }: { children: React.ReactNode }) {
  const { role } = await getSessionUser();
  if (role !== "admin") redirect("/");

  return (
    <div className="mx-auto max-w-6xl px-4 py-8">
      <div className="mb-6 flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight text-navy-900">Panel Admin</h1>
        <Link href="/" className="text-sm text-navy-500 hover:text-navy-800">
          &larr; Kembali ke aplikasi
        </Link>
      </div>

      <div className="grid gap-6 lg:grid-cols-[200px_1fr]">
        <nav className="flex gap-2 overflow-x-auto lg:flex-col lg:overflow-visible">
          {NAV.map((item) => (
            <Link
              key={item.href}
              href={item.href}
              className="shrink-0 rounded-lg px-3 py-2 text-sm font-medium text-navy-700 transition hover:bg-navy-50"
            >
              {item.label}
            </Link>
          ))}
        </nav>

        <div className="min-w-0">{children}</div>
      </div>
    </div>
  );
}
