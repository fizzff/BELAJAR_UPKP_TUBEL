export interface Module {
  id: string;
  title: string;
  description: string | null;
  order_index: number | null;
  created_at: string;
}

export interface Chapter {
  id: string;
  module_id: string;
  code: string | null;
  title: string;
  order_index: number | null;
  mindmap: string | null;
  created_at: string;
}

export interface Content {
  id: string;
  chapter_id: string;
  heading: string | null;
  body: string;
  order_index: number | null;
  created_at: string;
}

export type Difficulty = "easy" | "medium" | "hard";

export interface Question {
  id: string;
  chapter_id: string | null;
  question: string;
  option_a: string;
  option_b: string;
  option_c: string;
  option_d: string;
  option_e: string | null;
  correct_option: "A" | "B" | "C" | "D" | "E";
  explanation: string | null;
  difficulty: Difficulty;
  order_index: number | null;
  created_at: string;
}

// UUID tetap dari supabase/seed.sql — dipakai untuk deteksi modul TPA
// supaya kategorisasi tidak bergantung pada judul (yang bisa berubah kapan saja).
export const TPA_MODULE_ID = "a0000000-0000-4000-8000-000000000006";
