-- Kontrol akses berbayar: admin memberi/mencabut izin akses tiap user.
-- Default: user baru BELUM punya akses (access_granted = false) sampai admin
-- meng-grant. Admin (role='admin') selalu bisa akses tanpa perlu di-grant.

-- 1. Kolom status akses
alter table profiles add column if not exists access_granted boolean not null default false;

-- 2. TUTUP CELAH: cegah user meng-grant/mengubah role dirinya sendiri.
-- Sebelumnya authenticated punya UPDATE penuh atas profiles + policy
-- "ubah sendiri". Batasi agar user biasa hanya boleh mengubah kolom `nama`.
revoke update on profiles from authenticated;
grant update (nama) on profiles to authenticated;

-- 3. Fungsi admin (SECURITY DEFINER) untuk mengubah role & akses. Berjalan
-- dengan hak owner sehingga melewati pembatasan kolom di atas, tetapi tetap
-- memeriksa is_admin() lebih dulu — jadi hanya admin yang bisa memakainya.
create or replace function admin_set_access(target uuid, granted boolean)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  if not is_admin() then
    raise exception 'Akses ditolak: khusus admin.';
  end if;
  update profiles set access_granted = granted where id = target;
end;
$$;

create or replace function admin_set_role(target uuid, new_role text)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  if not is_admin() then
    raise exception 'Akses ditolak: khusus admin.';
  end if;
  if new_role not in ('user', 'admin') then
    raise exception 'Role tidak valid.';
  end if;
  update profiles set role = new_role where id = target;
end;
$$;

grant execute on function admin_set_access(uuid, boolean) to authenticated;
grant execute on function admin_set_role(uuid, text) to authenticated;
