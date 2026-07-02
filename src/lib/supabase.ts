import { createClient } from "@supabase/supabase-js";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error(
    "NEXT_PUBLIC_SUPABASE_URL dan NEXT_PUBLIC_SUPABASE_ANON_KEY belum diset. Salin .env.local.example ke .env.local lalu isi dengan kredensial project Supabase kamu."
  );
}

// Tidak ada login di aplikasi ini, jadi satu client dengan anon key sudah cukup
// untuk dipakai baik di server components maupun client components.
export const supabase = createClient(supabaseUrl, supabaseAnonKey);
