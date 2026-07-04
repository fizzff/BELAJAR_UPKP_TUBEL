-- Susun ulang urutan bab Numerikal TPA (E1-E10) menjadi alur belajar berjenjang,
-- supaya materi prasyarat selalu dipelajari sebelum materi yang memakainya:
--
--   E1 Bilangan Bulat dan Pecahan      (fondasi berhitung: operasi, pecahan, persen)
--   E2 Persamaan dan Pertidaksamaan    (alat aljabar: dipakai hampir semua bab setelahnya)
--   E3 Perbandingan                    (rasio & skala: butuh aljabar dasar)
--   E4 Aritmatika Sosial dan Barisan   (aplikasi persen + pengenalan barisan)
--   E5 Jarak, Kecepatan & Waktu        (aplikasi perbandingan + persamaan)
--   E6 Baris serta Deret Angka & Huruf (lanjutan pola barisan dari E4)
--   E7 Bangun Datar dan Bangun Ruang   (geometri: rumpun terpisah, boleh setelah dasar kuat)
--   E8 Sudut dan Himpunan              (lanjutan geometri + konsep himpunan)
--   E9 Statistika                      (pengolahan data: butuh operasi hitung lancar)
--   E10 Peluang                        (paling abstrak: butuh pecahan + kaidah pencacahan)
--
-- Urutan Verbal (A-D) tidak berubah: kosakata -> analogi -> wacana -> penalaran.
-- Hanya meng-update kolom code dan order_index; id bab, materi, dan soal tidak tersentuh.
-- Aman dijalankan berulang kali.

update chapters set code = 'E1',  order_index = 5  where id = 'b0000000-0000-4000-8000-060500000000'; -- Bilangan Bulat dan Pecahan
update chapters set code = 'E2',  order_index = 6  where id = 'b0000000-0000-4000-8000-061200000000'; -- Persamaan dan Pertidaksamaan
update chapters set code = 'E3',  order_index = 7  where id = 'b0000000-0000-4000-8000-060900000000'; -- Perbandingan
update chapters set code = 'E4',  order_index = 8  where id = 'b0000000-0000-4000-8000-060700000000'; -- Aritmatika Sosial dan Barisan
update chapters set code = 'E5',  order_index = 9  where id = 'b0000000-0000-4000-8000-061000000000'; -- Jarak, Kecepatan & Waktu
update chapters set code = 'E6',  order_index = 10 where id = 'b0000000-0000-4000-8000-061400000000'; -- Baris serta Deret Angka dan Huruf
update chapters set code = 'E7',  order_index = 11 where id = 'b0000000-0000-4000-8000-060600000000'; -- Bangun Datar dan Bangun Ruang
update chapters set code = 'E8',  order_index = 12 where id = 'b0000000-0000-4000-8000-060800000000'; -- Sudut dan Himpunan
update chapters set code = 'E9',  order_index = 13 where id = 'b0000000-0000-4000-8000-061300000000'; -- Statistika
update chapters set code = 'E10', order_index = 14 where id = 'b0000000-0000-4000-8000-061100000000'; -- Peluang
