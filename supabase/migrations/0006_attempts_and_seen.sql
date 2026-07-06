-- Riwayat pengerjaan (attempts) + pelacakan soal yang sudah pernah muncul
-- (seen_questions) per pengguna, untuk:
--   1) Riwayat di profil (klik → soal + pembahasan).
--   2) Mengunci paket Try Out yang sudah dikerjakan.
--   3) Anti-pengulangan soal PER JENIS TES (tryout/quiz/quest): soal yang sudah
--      muncul di suatu jenis tidak muncul lagi di jenis yang sama sampai bank
--      soal jenis itu habis, lalu di-reset.

-- =====================================================================
-- 1. TABEL attempts — satu baris per pengerjaan selesai
-- =====================================================================
create table if not exists attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  -- 'tryout-tskwk' | 'tryout-tpa' | 'quiz-tskwk' | 'quiz-tpa' | 'quest'
  kind text not null,
  -- 'tryout' | 'quiz' | 'quest' — scope anti-pengulangan
  test_type text not null,
  -- kunci unik untuk unit diskret (paket TO, misi quest per hari); null untuk quiz
  ref_key text,
  title text not null,
  total int not null,
  correct int not null,
  xp_earned int not null default 0,
  -- array QuizReviewItem: { question, options, selected, correctOption, explanation }
  items jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now()
);

create index if not exists attempts_user_created_idx on attempts (user_id, created_at desc);
-- Satu unit diskret hanya boleh punya satu attempt per user (mengunci paket TO &
-- misi quest harian). ref_key null (quiz) tidak kena batasan ini.
create unique index if not exists attempts_user_refkey_uidx
  on attempts (user_id, ref_key)
  where ref_key is not null;

alter table attempts enable row level security;

create policy "attempts: baca milik sendiri" on attempts
  for select using (auth.uid() = user_id);
create policy "attempts: buat milik sendiri" on attempts
  for insert with check (auth.uid() = user_id);
create policy "attempts: hapus milik sendiri" on attempts
  for delete using (auth.uid() = user_id);

grant select, insert, delete on attempts to authenticated;

-- =====================================================================
-- 2. TABEL seen_questions — soal yang sudah pernah muncul, per jenis tes
-- =====================================================================
create table if not exists seen_questions (
  user_id uuid not null references auth.users(id) on delete cascade,
  question_id uuid not null references questions(id) on delete cascade,
  test_type text not null,                 -- 'tryout' | 'quiz' | 'quest'
  seen_at timestamptz not null default now(),
  primary key (user_id, test_type, question_id)
);

alter table seen_questions enable row level security;

create policy "seen: baca milik sendiri" on seen_questions
  for select using (auth.uid() = user_id);
create policy "seen: buat milik sendiri" on seen_questions
  for insert with check (auth.uid() = user_id);
create policy "seen: hapus milik sendiri" on seen_questions
  for delete using (auth.uid() = user_id);

grant select, insert, delete on seen_questions to authenticated;
