import { NextResponse, type NextRequest } from "next/server";
import { createServerClient } from "@supabase/ssr";

// Halaman yang boleh diakses tanpa login (dan tanpa cek akses).
const PUBLIC_PATHS = ["/login", "/daftar", "/lupa-password", "/reset-password"];
// Halaman yang hanya redirect balik ke beranda kalau user SUDAH login.
const GUEST_ONLY_PATHS = ["/login", "/daftar"];

// Middleware: menyegarkan sesi, menerapkan gate wajib login, lalu gate akses
// (user harus di-grant admin dulu; kalau belum → diarahkan ke /menunggu).
export async function middleware(request: NextRequest) {
  let response = NextResponse.next({ request });

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value }) => request.cookies.set(name, value));
          response = NextResponse.next({ request });
          cookiesToSet.forEach(({ name, value, options }) =>
            response.cookies.set(name, value, options)
          );
        },
      },
    }
  );

  const {
    data: { user },
  } = await supabase.auth.getUser();

  const path = request.nextUrl.pathname;
  const isPublic = PUBLIC_PATHS.some((p) => path === p || path.startsWith(`${p}/`));

  // Belum login → paksa ke /login (kecuali halaman publik).
  if (!user && !isPublic) {
    const url = request.nextUrl.clone();
    url.pathname = "/login";
    url.searchParams.set("next", path);
    return NextResponse.redirect(url);
  }

  // Sudah login tapi buka halaman tamu (login/daftar) → balik ke beranda.
  if (user && GUEST_ONLY_PATHS.includes(path)) {
    const url = request.nextUrl.clone();
    url.pathname = "/";
    url.search = "";
    return NextResponse.redirect(url);
  }

  // Gate akses: user login (di halaman terproteksi) harus sudah di-grant admin.
  if (user && !isPublic) {
    const { data: profile } = await supabase
      .from("profiles")
      .select("role, access_granted")
      .eq("id", user.id)
      .maybeSingle();
    const allowed = profile?.role === "admin" || profile?.access_granted === true;

    if (!allowed && path !== "/menunggu") {
      const url = request.nextUrl.clone();
      url.pathname = "/menunggu";
      url.search = "";
      return NextResponse.redirect(url);
    }
    if (allowed && path === "/menunggu") {
      const url = request.nextUrl.clone();
      url.pathname = "/";
      url.search = "";
      return NextResponse.redirect(url);
    }
  }

  return response;
}

export const config = {
  // Jalankan di semua rute kecuali aset statis Next & file gambar.
  matcher: ["/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp|ico)$).*)"],
};
