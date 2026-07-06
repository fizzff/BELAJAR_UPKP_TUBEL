"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { HeaderNav } from "@/components/HeaderNav";

const AUTH_PATHS = ["/login", "/daftar", "/lupa-password", "/reset-password", "/menunggu"];

// Header disembunyikan di halaman login/daftar supaya layar auth bersih.
export function SiteHeader({
  role,
  nama,
}: {
  role: "user" | "admin" | null;
  nama: string | null;
}) {
  const pathname = usePathname();
  if (AUTH_PATHS.includes(pathname)) return null;

  return (
    <header className="sticky top-0 z-50 border-b border-navy-100 bg-background/90 backdrop-blur-md">
      <div className="mx-auto flex max-w-4xl items-center justify-between gap-6 px-4 py-3">
        <Link
          href="/"
          className="shrink-0 font-display font-semibold tracking-tight text-navy-900"
        >
          <span className="sm:hidden">Belajar UPKP</span>
          <span className="hidden sm:inline">Belajar UPKP dan Tubel PKN STAN</span>
        </Link>
        <HeaderNav role={role} nama={nama} />
      </div>
    </header>
  );
}
