-- Tata ulang bab TPA NUMERIKAL mengikuti struktur kategori KLC (E1-E10).
-- CATATAN PENTING: migrasi verbal (migrate_verbal_klc_structure.sql) memakai ULANG
-- id 060500 (dulu E1 Bilangan) dan 060600 (dulu E7 Bangun) untuk bab Analogi & Logika
-- Posisi. Karena itu E1 dan E7 DIPINDAHKAN ke id baru 061600 & 061700 agar tidak
-- bertabrakan dengan bab verbal. Kode tetap berprefiks "E" sehingga tetap masuk
-- subtes Numerikal pada Try Out. Idempotent (aman dijalankan berulang).

insert into chapters (id, module_id, code, title, order_index) values
  ('b0000000-0000-4000-8000-061600000000', 'a0000000-0000-4000-8000-000000000006', 'E1',  'Bilangan Bulat dan Pecahan',       20),
  ('b0000000-0000-4000-8000-061200000000', 'a0000000-0000-4000-8000-000000000006', 'E2',  'Persamaan dan Pertidaksamaan',     21),
  ('b0000000-0000-4000-8000-060900000000', 'a0000000-0000-4000-8000-000000000006', 'E3',  'Perbandingan',                    22),
  ('b0000000-0000-4000-8000-060700000000', 'a0000000-0000-4000-8000-000000000006', 'E4',  'Aritmetika Sosial dan Barisan',   23),
  ('b0000000-0000-4000-8000-061000000000', 'a0000000-0000-4000-8000-000000000006', 'E5',  'Jarak, Kecepatan, dan Waktu',     24),
  ('b0000000-0000-4000-8000-061400000000', 'a0000000-0000-4000-8000-000000000006', 'E6',  'Deret Angka dan Huruf',           25),
  ('b0000000-0000-4000-8000-061700000000', 'a0000000-0000-4000-8000-000000000006', 'E7',  'Bangun Datar dan Bangun Ruang',   26),
  ('b0000000-0000-4000-8000-060800000000', 'a0000000-0000-4000-8000-000000000006', 'E8',  'Sudut dan Himpunan',              27),
  ('b0000000-0000-4000-8000-061300000000', 'a0000000-0000-4000-8000-000000000006', 'E9',  'Statistika',                      28),
  ('b0000000-0000-4000-8000-061100000000', 'a0000000-0000-4000-8000-000000000006', 'E10', 'Peluang',                         29)
on conflict (id) do update
  set code = excluded.code, title = excluded.title, order_index = excluded.order_index;
