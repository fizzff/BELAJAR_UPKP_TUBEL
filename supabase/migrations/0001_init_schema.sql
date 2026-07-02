-- Skema awal Belajar UPKP dan Tubel PKN STAN
-- Sumber: rancangan-aplikasi-belajar-upkp.md (bagian 2)

create extension if not exists pgcrypto;

-- Modul / mata pelajaran besar
create table if not exists modules (
  id uuid primary key default gen_random_uuid(),
  title text not null,               -- "Etika PNS"
  description text,
  order_index int,
  created_at timestamptz default now()
);

-- Bab di dalam modul
create table if not exists chapters (
  id uuid primary key default gen_random_uuid(),
  module_id uuid references modules(id) on delete cascade,
  code text,                          -- "A", "B", "C" ...
  title text not null,                -- "Prinsip-Prinsip Moral PNS"
  order_index int,
  created_at timestamptz default now()
);

-- Konten materi per bab (bisa dipecah per sub-bagian biar tidak terlalu panjang satu halaman)
create table if not exists contents (
  id uuid primary key default gen_random_uuid(),
  chapter_id uuid references chapters(id) on delete cascade,
  heading text,                       -- "1. Profesionalisme"
  body text not null,                 -- isi materi (markdown)
  order_index int,
  created_at timestamptz default now()
);

-- Bank soal
create table if not exists questions (
  id uuid primary key default gen_random_uuid(),
  chapter_id uuid references chapters(id) on delete set null,
  question text not null,
  option_a text not null,
  option_b text not null,
  option_c text not null,
  option_d text not null,
  option_e text,                      -- opsional kalau soal 5 pilihan
  correct_option char(1) not null,    -- 'A' | 'B' | 'C' | 'D' | 'E'
  explanation text,                   -- pembahasan jawaban
  difficulty text default 'medium',   -- easy | medium | hard
  created_at timestamptz default now()
);

create index if not exists chapters_module_id_idx on chapters(module_id);
create index if not exists contents_chapter_id_idx on contents(chapter_id);
create index if not exists questions_chapter_id_idx on questions(chapter_id);

-- Aplikasi ini tanpa login: riwayat pengerjaan kuis disimpan di state browser,
-- jadi tidak ada tabel user_answers. Semua tabel di atas dibaca publik (read-only)
-- lewat anon key; penulisan data (insert materi/soal) dilakukan lewat SQL editor /
-- service role, bukan dari client.

alter table modules enable row level security;
alter table chapters enable row level security;
alter table contents enable row level security;
alter table questions enable row level security;

create policy "public read modules" on modules for select using (true);
create policy "public read chapters" on chapters for select using (true);
create policy "public read contents" on contents for select using (true);
create policy "public read questions" on questions for select using (true);

-- Kalau project Supabase dibuat dengan "Automatically expose new tables" dimatikan
-- (rekomendasi Supabase untuk kontrol akses manual), tabel baru tidak otomatis dapat
-- grant ke role API. Beri grant select eksplisit di sini supaya Data API tetap bisa
-- membaca tabel-tabel ini (RLS di atas yang menentukan baris mana yang boleh dibaca).
grant usage on schema public to anon, authenticated;
grant select on modules, chapters, contents, questions to anon, authenticated;
