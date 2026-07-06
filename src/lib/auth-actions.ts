"use server";

import { redirect } from "next/navigation";
import { headers } from "next/headers";
import { createServerSupabase } from "@/lib/supabase/server";

export interface AuthState {
  error?: string;
}

function normalizeEmail(value: FormDataEntryValue | null): string {
  return String(value ?? "").trim().toLowerCase();
}

export async function loginAction(
  _prev: AuthState,
  formData: FormData
): Promise<AuthState> {
  const email = normalizeEmail(formData.get("email"));
  const password = String(formData.get("password") ?? "");
  if (!email || !password) return { error: "Email dan password wajib diisi." };

  const supabase = await createServerSupabase();
  const { error } = await supabase.auth.signInWithPassword({ email, password });
  if (error) {
    const msg = `${error.code ?? ""} ${error.message}`.toLowerCase();
    if (msg.includes("not confirmed") || msg.includes("email_not_confirmed")) {
      return {
        error:
          "Email belum dikonfirmasi. Matikan 'Confirm email' di dashboard Supabase, atau konfirmasi akun ini lewat Authentication → Users.",
      };
    }
    return { error: "Email atau password salah." };
  }

  const next = String(formData.get("next") ?? "/");
  redirect(next.startsWith("/") ? next : "/");
}

export async function registerAction(
  _prev: AuthState,
  formData: FormData
): Promise<AuthState> {
  const nama = String(formData.get("nama") ?? "").trim();
  const email = normalizeEmail(formData.get("email"));
  const password = String(formData.get("password") ?? "");

  if (!nama || !email || !password) return { error: "Semua kolom wajib diisi." };
  if (password.length < 6) return { error: "Password minimal 6 karakter." };

  const supabase = await createServerSupabase();
  const { data, error } = await supabase.auth.signUp({
    email,
    password,
    options: { data: { nama } },
  });
  if (error) {
    if (error.message.toLowerCase().includes("registered")) {
      return { error: "Email ini sudah terdaftar. Silakan masuk." };
    }
    return { error: "Gagal mendaftar. Coba lagi." };
  }

  // Kalau "Confirm email" aktif, signUp tidak membuat sesi (akun harus
  // dikonfirmasi dulu). Arahkan ke login dengan pesan alih-alih bounce bingung.
  if (!data.session) {
    redirect("/login?pesan=konfirmasi");
  }
  redirect("/");
}

export async function logoutAction() {
  const supabase = await createServerSupabase();
  await supabase.auth.signOut();
  redirect("/login");
}

export async function forgotPasswordAction(
  _prev: AuthState & { sent?: boolean },
  formData: FormData
): Promise<AuthState & { sent?: boolean }> {
  const email = normalizeEmail(formData.get("email"));
  if (!email) return { error: "Email wajib diisi." };

  const h = await headers();
  const origin = h.get("origin") ?? (h.get("host") ? `https://${h.get("host")}` : "");
  const supabase = await createServerSupabase();
  await supabase.auth.resetPasswordForEmail(email, {
    redirectTo: `${origin}/reset-password`,
  });
  // Selalu tampilkan sukses (tidak membocorkan apakah email terdaftar).
  return { sent: true };
}
