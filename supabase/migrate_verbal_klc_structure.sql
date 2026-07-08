-- Tata ulang bab TPA Verbal mengikuti struktur kategori standar KLC/TPA:
--   Sinonim, Antonim, Analogi, Silogisme & Penalaran, Pemahaman Wacana.
-- Bab lama di-rename (id dipertahankan agar materi tetap menempel); tambah 1
-- bab baru "Analogi Kata". Kode tetap dalam prefiks verbal (A-D) + "AN"
-- (AN diawali "A" sehingga tetap masuk subtes Verbal pada Try Out).
-- Idempotent.

update chapters set code = 'A',  title = 'Sinonim (Padanan Kata)',        order_index = 1
  where id = 'b0000000-0000-4000-8000-060100000000';
update chapters set code = 'B',  title = 'Antonim (Lawan Kata)',           order_index = 2
  where id = 'b0000000-0000-4000-8000-060200000000';
update chapters set code = 'D',  title = 'Penarikan Kesimpulan',            order_index = 4
  where id = 'b0000000-0000-4000-8000-060400000000';
update chapters set code = 'C',  title = 'Pemahaman Wacana',               order_index = 6
  where id = 'b0000000-0000-4000-8000-060300000000';

insert into chapters (id, module_id, code, title, order_index) values
  ('b0000000-0000-4000-8000-060500000000', 'a0000000-0000-4000-8000-000000000006', 'AN', 'Analogi Kata', 3),
  ('b0000000-0000-4000-8000-060600000000', 'a0000000-0000-4000-8000-000000000006', 'DL', 'Logika Posisi', 5)
on conflict (id) do update
  set code = excluded.code, title = excluded.title, order_index = excluded.order_index;
