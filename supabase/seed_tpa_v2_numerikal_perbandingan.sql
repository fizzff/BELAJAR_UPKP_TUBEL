-- Materi + mind map + soal: Bab "Perbandingan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060900000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060900000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060900000000', null, 'Bab ini menguji kemampuan membedakan dua jenis perbandingan: senilai (proporsional, searah) dan berbalik nilai (invers, berlawanan arah), termasuk penerapannya pada skala peta/denah. Kesalahan paling umum adalah tertukar menerapkan rumus senilai pada kasus berbalik nilai, atau sebaliknya.', 1),
('b0000000-0000-4000-8000-060900000000', 'Perbandingan Senilai dan Berbalik Nilai', '**Definisi:** Perbandingan senilai adalah hubungan dua besaran yang berubah searah (naik bersama, turun bersama) dengan rumus $\frac{a_1}{a_2} = \frac{b_1}{b_2}$; perbandingan berbalik nilai adalah hubungan dua besaran yang berubah berlawanan arah namun hasil kalinya tetap, dengan rumus $$a_1 \times b_1 = a_2 \times b_2$$

**Pengenalan:** Bab ini menguji kemampuan membedakan dua jenis perbandingan tersebut, termasuk bentuk lanjutannya berupa perbandingan berantai/ganda yang melibatkan tiga variabel atau lebih.

**Poin yang Harus Diketahui:**
- Perbandingan Senilai (proporsional): jika nilai satu besaran bertambah, besaran lain ikut bertambah dengan perbandingan tetap (searah). Rumus: $\frac{a_1}{a_2} = \frac{b_1}{b_2}$, atau $a_1 \times b_2 = a_2 \times b_1$. Contoh konteks: banyak barang vs harga, jarak tempuh vs waktu (kecepatan tetap), jumlah bahan vs jumlah produk.
- Perbandingan Berbalik Nilai (invers): jika nilai satu besaran bertambah, besaran lain justru berkurang (berlawanan arah), namun hasil kali keduanya tetap. Rumus: $$a_1 \times b_1 = a_2 \times b_2$$ Contoh konteks: banyak pekerja vs waktu penyelesaian, kecepatan vs waktu tempuh (jarak tetap).
- Tabel pembeda cepat:

| Ciri | Senilai | Berbalik Nilai |
|---|---|---|
| Arah perubahan | searah (naik-naik / turun-turun) | berlawanan (naik-turun) |
| Rumus | $\frac{a_1}{a_2} = \frac{b_1}{b_2}$ | $a_1 \times b_1 = a_2 \times b_2$ |
| Contoh | harga vs jumlah barang | pekerja vs waktu |

- Perbandingan Berantai/Ganda (tiga variabel atau lebih): sering muncul dalam bentuk dua perbandingan terpisah yang memiliki satu variabel yang sama, misalnya $A:B = 2:3$ dan $B:C = 4:5$. Untuk menggabungkan menjadi satu perbandingan $A:B:C$, samakan dulu nilai variabel yang beririsan (B) di kedua perbandingan dengan mencari KPK-nya, lalu kalikan masing-masing perbandingan dengan faktor pengali yang sesuai sehingga nilai B menjadi sama sebelum digabung.

**Tips cara cepat**: tanyakan pada diri sendiri "kalau salah satu nilai naik, apakah nilai lain logis ikut naik atau malah turun?" — kalau ikut naik pakai senilai, kalau turun pakai berbalik nilai. Untuk perbandingan berantai, jadikan KPK dari nilai variabel yang beririsan sebagai jembatan penyamaan sebelum menggabungkan kedua perbandingan.

**Kesimpulan:** Kesalahan paling umum adalah tertukar menerapkan rumus senilai pada kasus berbalik nilai atau sebaliknya, jadi selalu cek dulu arah hubungan kedua besaran sebelum memilih rumus.

**Contoh Soal:** Diketahui $A:B = 2:3$ dan $B:C = 4:5$. Jika $A+B+C = 105$, berapakah nilai $C$?
- A. 35
- B. 40
- C. 42
- D. 45
- E. 48

**Pembahasan:**

**Diketahui:** $A:B = 2:3$, $B:C = 4:5$, dan $A+B+C = 105$.

**Ditanya:** Nilai $C$.

**Jawab:** Nilai B pada perbandingan pertama adalah 3, sedangkan pada perbandingan kedua adalah 4. KPK dari 3 dan 4 adalah 12. Kalikan $A:B=2:3$ dengan faktor $12/3=4$ sehingga menjadi $A:B=8:12$. Kalikan $B:C=4:5$ dengan faktor $12/4=3$ sehingga menjadi $B:C=12:15$. Karena nilai B sudah sama-sama 12, kedua perbandingan bisa digabung menjadi $A:B:C = 8:12:15$. Total bagian $= 8+12+15 = 35$, mewakili $A+B+C=105$, sehingga nilai 1 bagian $= 105/35 = 3$. Maka $C = 15 \times 3 = 45$. Jadi jawabannya adalah D.', 2),
('b0000000-0000-4000-8000-060900000000', 'Skala pada Peta dan Denah', '**Definisi:** Skala menyatakan perbandingan jarak pada peta/denah terhadap jarak sebenarnya, biasa ditulis 1 : n (artinya 1 satuan di peta = n satuan sebenarnya).

**Pengenalan:** Konsep skala adalah penerapan langsung dari perbandingan senilai, dan sering diujikan bersama kasus mengubah peta lama ke skala baru saat digambar ulang pada ukuran kertas berbeda.

**Poin yang Harus Diketahui:**
- Rumus dasar skala:
  - $$\text{Jarak sebenarnya} = \text{Jarak pada peta} \times \text{Skala} (n)$$
  - $$\text{Jarak pada peta} = \frac{\text{Jarak sebenarnya}}{\text{Skala} (n)}$$
  - $$\text{Skala} = \frac{\text{Jarak pada peta}}{\text{Jarak sebenarnya}}$$
- Contoh: skala 1 : 1.000.000 berarti 1 cm di peta mewakili 1.000.000 cm (= 10 km) jarak sebenarnya.
- Mengubah Skala Peta ke Skala Lain: jika sebuah peta akan digambar ulang pada kertas berukuran berbeda (misalnya diperbesar atau diperkecil), jarak sebenarnya di lapangan tetap konstan sehingga bisa dijadikan jembatan penghubung. Langkahnya: (1) hitung dulu jarak sebenarnya dari peta lama menggunakan skala lama, (2) gunakan jarak sebenarnya itu untuk mencari skala baru berdasarkan jarak pada peta baru.

**Tips cara cepat**: samakan dulu satuan jarak sebenarnya ke cm sebelum dibagi/dikali skala (karena skala peta selalu dalam basis cm), baru konversi hasil akhirnya ke km jika diperlukan (1 km = 100.000 cm). Untuk soal ganti skala, ingat jarak sebenarnya di lapangan tidak pernah berubah walau petanya digambar ulang dengan ukuran kertas berbeda — hanya skala dan jarak pada peta yang berubah.

**Kesimpulan:** Selalu samakan satuan ke cm terlebih dahulu, dan ingat jarak sebenarnya adalah kunci penghubung ketika soal meminta mengubah skala peta lama menjadi skala baru.

**Contoh Soal:** Sebuah peta berskala 1 : 500.000 menggambarkan jarak dua kota A dan B sejauh 8 cm. Peta tersebut akan digambar ulang pada kertas baru yang berukuran lebih kecil, sehingga jarak A-B pada peta baru menjadi 4 cm. Berapakah skala peta yang baru?
- A. 1 : 250.000
- B. 1 : 500.000
- C. 1 : 1.000.000
- D. 1 : 2.000.000
- E. 1 : 4.000.000

**Pembahasan:**

**Diketahui:** Skala peta lama 1 : 500.000, jarak A-B pada peta lama 8 cm, jarak A-B pada peta baru 4 cm.

**Ditanya:** Skala peta yang baru.

**Jawab:** Cari dulu jarak sebenarnya dari peta lama: jarak sebenarnya = jarak peta x skala = 8 cm x 500.000 = 4.000.000 cm (= 40 km). Jarak sebenarnya ini tidak berubah meski petanya digambar ulang. Skala peta baru = jarak pada peta baru : jarak sebenarnya = 4 cm : 4.000.000 cm = 1 : 1.000.000. Jadi jawabannya adalah C.', 3);

update chapters set mindmap = '# Perbandingan

## Perbandingan Senilai
- Searah: naik-naik / turun-turun
- Rumus: $\frac{a_1}{a_2} = \frac{b_1}{b_2}$
- Contoh: harga vs jumlah barang

## Perbandingan Berbalik Nilai
- Berlawanan arah: naik-turun
- Rumus: $a_1 \times b_1 = a_2 \times b_2$
- Contoh: pekerja vs waktu, kecepatan vs waktu

## Cara Cepat Bedakan
- Naik ikut naik -> senilai
- Naik malah turun -> berbalik nilai

## Skala Peta/Denah
- $Jarak\ sebenarnya = Jarak\ peta \times Skala$
- $Jarak\ peta = \frac{Jarak\ sebenarnya}{Skala}$
- Skala 1:n -> 1 cm peta = n cm sebenarnya
- 1 km = 100.000 cm (samakan satuan dulu)' where id = 'b0000000-0000-4000-8000-060900000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060900000000', 'Sebuah pekerjaan dapat diselesaikan oleh 5 pekerja dalam waktu 12 hari. Jika pekerjaan tersebut dikerjakan oleh 10 pekerja (kecepatan kerja tiap pekerja sama), waktu yang dibutuhkan adalah...', '24 hari', '10 hari', '20 hari', '3 hari', '6 hari', 'E', 'Banyak pekerja dan waktu adalah perbandingan berbalik nilai: pekerja1 x hari1 = pekerja2 x hari2, sehingga 5 x 12 = 10 x hari2, hari2 = 60/10 = 6 hari.', 'medium'),
('b0000000-0000-4000-8000-060900000000', 'Sebuah peta memiliki skala 1 : 2.500.000. Jika jarak dua kota pada peta adalah 4 cm, jarak sebenarnya kedua kota tersebut adalah...', '25 km', '100 km', '250 km', '10 km', '40 km', 'B', 'Jarak sebenarnya = jarak peta x skala = 4 x 2.500.000 = 10.000.000 cm. Ubah ke km: 10.000.000 cm : 100.000 = 100 km.', 'medium'),
('b0000000-0000-4000-8000-060900000000', 'Harga 3 kg mangga adalah Rp45.000,00. Dengan perbandingan senilai, harga 8 kg mangga (jenis yang sama) adalah...', 'Rp100.000,00', 'Rp135.000,00', 'Rp160.000,00', 'Rp120.000,00', 'Rp110.000,00', 'D', 'Perbandingan senilai: harga per kg = 45.000 / 3 = Rp15.000,00. Harga 8 kg = 15.000 x 8 = Rp120.000,00.', 'easy'),
('b0000000-0000-4000-8000-060900000000', 'Sebuah mobil menempuh jarak tertentu dengan kecepatan 60 km/jam dalam waktu 4 jam. Jika mobil melaju dengan kecepatan 80 km/jam pada jarak yang sama, waktu tempuhnya menjadi...', '3 jam', '5 jam', '2,5 jam', '4,5 jam', '3,5 jam', 'A', 'Kecepatan dan waktu (untuk jarak tetap) adalah perbandingan berbalik nilai: kecepatan1 x waktu1 = kecepatan2 x waktu2, sehingga 60 x 4 = 80 x waktu2, waktu2 = 240/80 = 3 jam.', 'medium'),
('b0000000-0000-4000-8000-060900000000', 'Sebuah ruangan berukuran panjang sebenarnya 8 meter akan digambar pada denah dengan skala 1 : 100. Panjang ruangan pada denah adalah...', '80 cm', '0,8 cm', '8 m', '100 cm', '8 cm', 'C', 'Ubah panjang sebenarnya ke cm: 8 m = 800 cm. Panjang pada denah = panjang sebenarnya / skala = 800 / 100 = 8 cm.', 'easy');
