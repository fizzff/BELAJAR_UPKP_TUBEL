-- Tata ulang bab TPA Verbal mengikuti struktur kategori KLC:
--   Sinonim, Analogi, Penalaran Analitis, Logika Posisi, Pemahaman Wacana.
-- CATATAN: bab ANTONIM DIHAPUS dari struktur (soal & babnya dibuang) sesuai
-- komposisi Try Out yang tidak memuat antonim. Idempotent.

update chapters set code = 'A',  title = 'Sinonim (Padanan Kata)',        order_index = 1
  where id = 'b0000000-0000-4000-8000-060100000000';
update chapters set code = 'D',  title = 'Penalaran Analitis',             order_index = 4
  where id = 'b0000000-0000-4000-8000-060400000000';
update chapters set code = 'C',  title = 'Pemahaman Wacana',               order_index = 6
  where id = 'b0000000-0000-4000-8000-060300000000';

insert into chapters (id, module_id, code, title, order_index) values
  ('b0000000-0000-4000-8000-060500000000', 'a0000000-0000-4000-8000-000000000006', 'AN', 'Analogi Kata', 3),
  ('b0000000-0000-4000-8000-060600000000', 'a0000000-0000-4000-8000-000000000006', 'DL', 'Logika Posisi', 5)
on conflict (id) do update
  set code = excluded.code, title = excluded.title, order_index = excluded.order_index;

-- Hapus bab Antonim beserta soalnya (soal dulu agar tidak jadi yatim karena
-- foreign key ON DELETE SET NULL).
delete from questions where chapter_id = 'b0000000-0000-4000-8000-060200000000';
delete from chapters  where id         = 'b0000000-0000-4000-8000-060200000000';
