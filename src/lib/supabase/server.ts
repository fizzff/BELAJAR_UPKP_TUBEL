import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";

// Client untuk server components / server actions. Membaca sesi login dari
// cookie request supaya RLS Supabase mengenali user yang sedang masuk.
export async function createServerSupabase() {
  const cookieStore = await cookies();
  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll();
        },
        setAll(cookiesToSet) {
          // Server components tidak boleh menulis cookie; middleware yang
          // menyegarkan sesi. Abaikan error saat dipanggil dari sana.
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            );
          } catch {
            /* dipanggil dari server component — aman diabaikan */
          }
        },
      },
    }
  );
}

import type { User } from "@supabase/supabase-js";

export interface SessionUser {
  user: User | null;
  role: "user" | "admin" | null;
  nama: string | null;
}

// Ambil user + role sekaligus, dipakai untuk gating halaman admin.
export async function getSessionUser(): Promise<SessionUser> {
  const supabase = await createServerSupabase();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { user: null, role: null, nama: null };

  const { data: profile } = await supabase
    .from("profiles")
    .select("role, nama")
    .eq("id", user.id)
    .maybeSingle();

  return {
    user,
    role: (profile?.role ?? "user") as "user" | "admin",
    nama: profile?.nama ?? user.email?.split("@")[0] ?? "Pengguna",
  };
}
