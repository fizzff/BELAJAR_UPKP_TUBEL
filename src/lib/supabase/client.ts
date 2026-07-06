import { createBrowserClient } from "@supabase/ssr";

// Client untuk komponen client (form login, aksi interaktif). Sesi disimpan di
// cookie sehingga otomatis terbaca oleh server components & middleware.
export function createBrowserSupabase() {
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
  );
}
