-- Ganti total struktur bab modul TPA (M6): dari 3 bab (Verbal/Kuantitatif/Logika)
-- jadi 15 bab yang lebih rinci, mengikuti struktur referensi user:
-- Verbal #1, Verbal #2, Wacana, Kemampuan Penalaran, Numerikal (10 bab), Figural.

-- 1. Bersihkan soal & materi lama yang menempel di 3 bab lama
delete from questions where chapter_id in (
  'b0000000-0000-4000-8000-060100000000',
  'b0000000-0000-4000-8000-060200000000',
  'b0000000-0000-4000-8000-060300000000'
);
delete from contents where chapter_id in (
  'b0000000-0000-4000-8000-060100000000',
  'b0000000-0000-4000-8000-060200000000',
  'b0000000-0000-4000-8000-060300000000'
);

-- 2. Hapus 3 bab lama
delete from chapters where id in (
  'b0000000-0000-4000-8000-060100000000',
  'b0000000-0000-4000-8000-060200000000',
  'b0000000-0000-4000-8000-060300000000'
);

-- 3. Insert 15 bab baru
-- Urutan bab Numerikal (E1-E10) disusun berjenjang sesuai prasyarat belajar:
-- fondasi berhitung -> alat aljabar -> perbandingan -> aplikasi soal cerita ->
-- pola deret -> geometri -> data -> peluang.
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-060100000000', 'a0000000-0000-4000-8000-000000000006', 'A', 'Verbal #1', 1),
('b0000000-0000-4000-8000-060200000000', 'a0000000-0000-4000-8000-000000000006', 'B', 'Verbal #2', 2),
('b0000000-0000-4000-8000-060300000000', 'a0000000-0000-4000-8000-000000000006', 'C', 'Wacana', 3),
('b0000000-0000-4000-8000-060400000000', 'a0000000-0000-4000-8000-000000000006', 'D', 'Kemampuan Penalaran', 4),
('b0000000-0000-4000-8000-060500000000', 'a0000000-0000-4000-8000-000000000006', 'E1', 'Bilangan Bulat dan Pecahan', 5),
('b0000000-0000-4000-8000-061200000000', 'a0000000-0000-4000-8000-000000000006', 'E2', 'Persamaan dan Pertidaksamaan', 6),
('b0000000-0000-4000-8000-060900000000', 'a0000000-0000-4000-8000-000000000006', 'E3', 'Perbandingan', 7),
('b0000000-0000-4000-8000-060700000000', 'a0000000-0000-4000-8000-000000000006', 'E4', 'Aritmatika Sosial dan Barisan', 8),
('b0000000-0000-4000-8000-061000000000', 'a0000000-0000-4000-8000-000000000006', 'E5', 'Jarak, Kecepatan & Waktu', 9),
('b0000000-0000-4000-8000-061400000000', 'a0000000-0000-4000-8000-000000000006', 'E6', 'Baris serta Deret Angka dan Huruf', 10),
('b0000000-0000-4000-8000-060600000000', 'a0000000-0000-4000-8000-000000000006', 'E7', 'Bangun Datar dan Bangun Ruang', 11),
('b0000000-0000-4000-8000-060800000000', 'a0000000-0000-4000-8000-000000000006', 'E8', 'Sudut dan Himpunan', 12),
('b0000000-0000-4000-8000-061300000000', 'a0000000-0000-4000-8000-000000000006', 'E9', 'Statistika', 13),
('b0000000-0000-4000-8000-061100000000', 'a0000000-0000-4000-8000-000000000006', 'E10', 'Peluang', 14),
('b0000000-0000-4000-8000-061500000000', 'a0000000-0000-4000-8000-000000000006', 'F', 'Figural / Logika Gambar (Spasial)', 15);
