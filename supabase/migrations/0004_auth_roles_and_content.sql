-- Multi-role auth: menambah profil pengguna + role, papan pengumuman, dan
-- penyimpanan progres belajar per-user. Semua terhubung ke auth.users bawaan
-- Supabase (login email + password).
--
-- Model akses:
--   - Konten (modules/chapters/contents/questions): dibaca semua user yang LOGIN;
--     tulis/edit/hapus hanya ADMIN (lewat aplikasi, bukan lagi SQL editor).
--   - Pengumuman: dibaca semua user login; dikelola admin.
--   - Progres (XP, riwayat quest/quiz): tiap user hanya bisa akses barisnya sendiri.

-- =====================================================================
-- 1. PROFIL + ROLE
-- =====================================================================
create table if not exists profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text,
  nama text,
  role text not null default 'user' check (role in ('user', 'admin')),
  created_at timestamptz default now()
);

alter table profiles enable row level security;

-- Helper: cek apakah user yang sedang login adalah admin. SECURITY DEFINER agar
-- policy pada tabel lain bisa memanggilnya tanpa terkena RLS profiles sendiri
-- (menghindari rekursi policy).
create or replace function is_admin()
returns boolean
language sql
security definer
set search_path = public
as $$
  select exists (
    select 1 from profiles where id = auth.uid() and role = 'admin'
  );
$$;

-- Setiap user boleh membaca & mengubah profilnya sendiri; admin boleh semua.
create policy "profil: baca sendiri atau admin" on profiles
  for select using (id = auth.uid() or is_admin());
create policy "profil: ubah sendiri" on profiles
  for update using (id = auth.uid());
create policy "profil: admin kelola" on profiles
  for all using (is_admin());

-- Trigger: buat baris profil otomatis saat user baru mendaftar.
create or replace function handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, email, nama)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data->>'nama', split_part(new.email, '@', 1))
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function handle_new_user();

-- =====================================================================
-- 2. PAPAN PENGUMUMAN
-- =====================================================================
create table if not exists announcements (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  body text not null,
  pinned boolean not null default false,
  published boolean not null default true,
  author_id uuid references auth.users(id) on delete set null,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

alter table announcements enable row level security;

create policy "pengumuman: user login baca yang terbit" on announcements
  for select using (auth.uid() is not null and (published or is_admin()));
create policy "pengumuman: admin kelola" on announcements
  for all using (is_admin());

create index if not exists announcements_created_idx on announcements(created_at desc);

-- =====================================================================
-- 3. PROGRES BELAJAR PER-USER (pengganti localStorage)
-- =====================================================================
-- XP & level user (satu baris per user).
create table if not exists user_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  xp int not null default 0,
  updated_at timestamptz default now()
);

alter table user_progress enable row level security;
create policy "progres: milik sendiri" on user_progress
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

-- Riwayat pengerjaan Try Out / Quiz.
create table if not exists quiz_history (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  kind text not null,
  title text not null,
  total int not null,
  correct int not null,
  percentage int not null,
  created_at timestamptz default now()
);

alter table quiz_history enable row level security;
create policy "riwayat: milik sendiri" on quiz_history
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

create index if not exists quiz_history_user_idx on quiz_history(user_id, created_at desc);

-- Penyelesaian misi Quest Harian (mencegah dobel klaim XP di hari yang sama).
create table if not exists daily_quest_progress (
  user_id uuid not null references auth.users(id) on delete cascade,
  date_key text not null,
  mission_id text not null,
  correct int not null,
  total int not null,
  xp_earned int not null,
  created_at timestamptz default now(),
  primary key (user_id, date_key, mission_id)
);

alter table daily_quest_progress enable row level security;
create policy "quest: milik sendiri" on daily_quest_progress
  for all using (user_id = auth.uid()) with check (user_id = auth.uid());

-- =====================================================================
-- 4. UBAH RLS KONTEN: baca untuk user login, tulis untuk admin
-- =====================================================================
-- Ganti policy "public read" lama (using true) menjadi "hanya user login".
drop policy if exists "public read modules" on modules;
drop policy if exists "public read chapters" on chapters;
drop policy if exists "public read contents" on contents;
drop policy if exists "public read questions" on questions;

create policy "modules: baca user login" on modules
  for select using (auth.uid() is not null);
create policy "chapters: baca user login" on chapters
  for select using (auth.uid() is not null);
create policy "contents: baca user login" on contents
  for select using (auth.uid() is not null);
create policy "questions: baca user login" on questions
  for select using (auth.uid() is not null);

create policy "modules: admin kelola" on modules for all using (is_admin());
create policy "chapters: admin kelola" on chapters for all using (is_admin());
create policy "contents: admin kelola" on contents for all using (is_admin());
create policy "questions: admin kelola" on questions for all using (is_admin());

-- Beri grant tulis ke role authenticated (RLS di atas yang menyaring admin-only).
grant insert, update, delete on modules, chapters, contents, questions, announcements
  to authenticated;
grant select, insert, update, delete
  on profiles, announcements, user_progress, quiz_history, daily_quest_progress
  to authenticated;
