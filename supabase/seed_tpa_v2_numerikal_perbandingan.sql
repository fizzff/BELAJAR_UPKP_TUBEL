-- Materi + mind map + soal: Bab "Perbandingan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060900000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060900000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060900000000', null, 'Bab ini menguji kemampuan membedakan dua jenis perbandingan: senilai (proporsional, searah) dan berbalik nilai (invers, berlawanan arah), termasuk penerapannya pada skala peta/denah. Kesalahan paling umum adalah tertukar menerapkan rumus senilai pada kasus berbalik nilai, atau sebaliknya.', 1),
('b0000000-0000-4000-8000-060900000000', 'Perbandingan Senilai dan Berbalik Nilai', '**Definisi:** Perbandingan senilai adalah hubungan dua besaran yang berubah searah (naik bersama, turun bersama) dengan rumus $\frac{a_1}{a_2} = \frac{b_1}{b_2}$, sedangkan perbandingan berbalik nilai adalah hubungan dua besaran yang berubah berlawanan arah namun hasil kalinya tetap, dengan rumus $a_1 \times b_1 = a_2 \times b_2$.

**Cara Kerja / Langkah Pengerjaan:**
1. Tanyakan pada diri sendiri: jika salah satu besaran naik, apakah besaran lain logis ikut naik (senilai) atau justru turun (berbalik nilai)?
2. Jika senilai, gunakan rumus $\frac{a_1}{a_2} = \frac{b_1}{b_2}$ (atau $a_1 \times b_2 = a_2 \times b_1$); jika berbalik nilai, gunakan $a_1 \times b_1 = a_2 \times b_2$.
3. Untuk perbandingan berantai/ganda (tiga variabel atau lebih), cari KPK dari nilai variabel yang beririsan pada kedua perbandingan yang diketahui.
4. Kalikan masing-masing perbandingan dengan faktor pengali yang sesuai sehingga nilai variabel yang beririsan menjadi sama, lalu gabungkan menjadi satu perbandingan $A:B:C$.
5. Gunakan total bagian hasil gabungan untuk mencari nilai satu bagian, lalu hitung besaran yang ditanyakan.

**Rumus & Poin Kunci:**
- Perbandingan Senilai (proporsional): rumus $\frac{a_1}{a_2} = \frac{b_1}{b_2}$, atau $a_1 \times b_2 = a_2 \times b_1$. Contoh konteks: banyak barang vs harga, jarak tempuh vs waktu (kecepatan tetap), jumlah bahan vs jumlah produk.
- Perbandingan Berbalik Nilai (invers): rumus $a_1 \times b_1 = a_2 \times b_2$. Contoh konteks: banyak pekerja vs waktu penyelesaian, kecepatan vs waktu tempuh (jarak tetap).
- Tabel pembeda cepat:

| Ciri | Senilai | Berbalik Nilai |
|---|---|---|
| Arah perubahan | searah (naik-naik / turun-turun) | berlawanan (naik-turun) |
| Rumus | $\frac{a_1}{a_2} = \frac{b_1}{b_2}$ | $a_1 \times b_1 = a_2 \times b_2$ |
| Contoh | harga vs jumlah barang | pekerja vs waktu |

- Perbandingan Berantai/Ganda: bentuk dua perbandingan terpisah yang memiliki satu variabel yang sama, misalnya $A:B = 2:3$ dan $B:C = 4:5$, digabung menjadi satu perbandingan $A:B:C$ setelah nilai variabel beririsan disamakan lewat KPK.

**Kesalahan Umum / Jebakan:**
- Tertukar menerapkan rumus senilai pada kasus berbalik nilai, atau sebaliknya, tanpa mengecek dulu arah hubungan kedua besaran.
- Lupa menyamakan nilai variabel yang beririsan (lewat KPK) sebelum menggabungkan perbandingan berantai, sehingga hasil gabungan A:B:C menjadi salah.
- Menyimpulkan arah hubungan hanya dari kata-kata dalam soal tanpa memikirkan logikanya, padahal beberapa konteks (misalnya kecepatan vs waktu tempuh pada jarak tetap) tetap berbalik nilai meski sekilas tampak berbanding biasa.

**Tips cara cepat**: tanyakan pada diri sendiri "kalau salah satu nilai naik, apakah nilai lain logis ikut naik atau malah turun?" — kalau ikut naik pakai senilai, kalau turun pakai berbalik nilai. Untuk perbandingan berantai, jadikan KPK dari nilai variabel yang beririsan sebagai jembatan penyamaan sebelum menggabungkan kedua perbandingan.

**Kesimpulan:** Selalu cek dulu arah hubungan kedua besaran sebelum memilih rumus, dan gunakan KPK sebagai jembatan saat menggabungkan perbandingan berantai/ganda.

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
('b0000000-0000-4000-8000-060900000000', 'Skala pada Peta dan Denah', '**Definisi:** Skala menyatakan perbandingan jarak pada peta/denah terhadap jarak sebenarnya, biasa ditulis 1 : n (artinya 1 satuan di peta = n satuan sebenarnya), dan merupakan penerapan langsung dari perbandingan senilai.

**Cara Kerja / Langkah Pengerjaan:**
1. Samakan dulu satuan jarak sebenarnya ke cm, karena skala peta selalu dalam basis cm.
2. Tentukan rumus yang sesuai dengan apa yang ditanyakan: jarak sebenarnya, jarak pada peta, atau skalanya.
3. Jika soal meminta mengubah peta lama ke skala baru (digambar ulang pada ukuran kertas berbeda), hitung dulu jarak sebenarnya dari peta lama menggunakan skala lama.
4. Gunakan jarak sebenarnya tersebut (yang konstan, tidak berubah walau petanya digambar ulang) sebagai jembatan untuk mencari skala baru atau jarak baru berdasarkan data pada peta baru.
5. Konversi hasil akhir ke satuan yang diminta (misalnya km) jika diperlukan.

**Rumus & Poin Kunci:**
- Rumus dasar skala:
  - $$\text{Jarak sebenarnya} = \text{Jarak pada peta} \times \text{Skala} (n)$$
  - $$\text{Jarak pada peta} = \frac{\text{Jarak sebenarnya}}{\text{Skala} (n)}$$
  - $$\text{Skala} = \frac{\text{Jarak pada peta}}{\text{Jarak sebenarnya}}$$
- Contoh: skala 1 : 1.000.000 berarti 1 cm di peta mewakili 1.000.000 cm (= 10 km) jarak sebenarnya.
- Mengubah Skala Peta ke Skala Lain: jarak sebenarnya di lapangan tetap konstan meski peta digambar ulang pada ukuran kertas berbeda, sehingga bisa dijadikan jembatan penghubung antara skala/jarak lama dan skala/jarak baru.

**Kesalahan Umum / Jebakan:**
- Lupa menyamakan satuan jarak sebenarnya ke cm sebelum dibagi/dikali skala, sehingga hasil salah beberapa digit.
- Mengira skala peta ikut berubah otomatis mengikuti ukuran kertas baru tanpa menghitung ulang lewat jarak sebenarnya sebagai jembatan.
- Tertukar antara jarak pada peta dan jarak sebenarnya saat mensubstitusikan ke rumus, terutama saat soal menyebut dua peta sekaligus (peta lama dan peta baru).

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060900000000', 'Harga 3 kg mangga adalah Rp45.000,00. Dengan perbandingan senilai, harga 8 kg mangga (jenis yang sama) adalah...', 'Rp100.000,00', 'Rp135.000,00', 'Rp160.000,00', 'Rp120.000,00', 'Rp110.000,00', 'D', 'Perbandingan senilai: harga per kg = 45.000 / 3 = Rp15.000,00. Harga 8 kg = 15.000 x 8 = Rp120.000,00.', 'easy', 1),
('b0000000-0000-4000-8000-060900000000', 'Sebuah proyek pembangunan dapat diselesaikan oleh 8 pekerja dalam waktu 15 hari. Setelah proyek berjalan 6 hari dengan 8 pekerja tersebut, pemilik proyek ingin mempercepat penyelesaian sehingga total waktu pengerjaan (dihitung sejak hari pertama) menjadi hanya 12 hari. Dengan asumsi kecepatan kerja tiap pekerja sama, berapa pekerja tambahan yang harus ditambahkan untuk menyelesaikan sisa pekerjaan tepat waktu?', '2 pekerja', '3 pekerja', '4 pekerja', '5 pekerja', '6 pekerja', 'C', 'Total kerja = 8 pekerja x 15 hari = 120 pekerja-hari. Setelah 6 hari dengan 8 pekerja, kerja yang selesai = 8 x 6 = 48 pekerja-hari, sisa kerja = 120 - 48 = 72 pekerja-hari. Sisa waktu yang tersedia = 12 - 6 = 6 hari. Pekerja yang dibutuhkan = 72 / 6 = 12 pekerja, sehingga pekerja tambahan = 12 - 8 = 4 pekerja.', 'hard', 2),
('b0000000-0000-4000-8000-060900000000', 'Mobil A menempuh suatu perjalanan dengan kecepatan tetap 75 km/jam selama 4 jam. Mobil B menempuh jarak yang sama dengan mobil A, namun waktu tempuhnya 1 jam lebih cepat dibanding mobil A. Berapa kecepatan rata-rata mobil B?', '90 km/jam', '95 km/jam', '100 km/jam', '105 km/jam', '110 km/jam', 'C', 'Jarak yang ditempuh mobil A = 75 x 4 = 300 km. Karena jaraknya sama, mobil B menempuh 300 km juga, dengan waktu tempuh = 4 - 1 = 3 jam. Kecepatan dan waktu (jarak tetap) berbalik nilai, sehingga kecepatan mobil B = 300 / 3 = 100 km/jam.', 'hard', 3),
('b0000000-0000-4000-8000-060900000000', 'Sebuah denah berskala 1 : 500 menggambarkan panjang sebuah ruangan sejauh 6 cm. Jika ruangan yang sama akan digambar ulang pada denah baru dengan skala 1 : 200, berapa panjang ruangan pada denah baru tersebut?', '12 cm', '15 cm', '18 cm', '20 cm', '24 cm', 'B', 'Panjang sebenarnya ruangan = jarak pada denah x skala = 6 x 500 = 3.000 cm. Panjang pada denah baru = panjang sebenarnya / skala baru = 3.000 / 200 = 15 cm.', 'hard', 4),
('b0000000-0000-4000-8000-060900000000', 'Pada sebuah peta berskala 1 : 1.500.000, jarak antara kota M dan kota N tergambar sejauh 4 cm. Sebuah travel menempuh jarak sebenarnya tersebut dengan kecepatan 60 km/jam sehingga waktu tempuhnya 1 jam. Agar waktu tempuh dapat dipersingkat menjadi 40 menit, berapa kecepatan rata-rata yang harus ditempuh travel tersebut?', '72 km/jam', '80 km/jam', '90 km/jam', '100 km/jam', '120 km/jam', 'C', 'Jarak sebenarnya M-N = jarak pada peta x skala = 4 x 1.500.000 = 6.000.000 cm = 60 km (sesuai dengan 60 km/jam x 1 jam). Untuk jarak tetap 60 km, kecepatan dan waktu berbalik nilai: v1 x t1 = v2 x t2. Waktu baru 40 menit = 2/3 jam, sehingga 60 x 1 = v2 x (2/3), maka v2 = 60 : (2/3) = 90 km/jam.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060900000000', 'Seorang pedagang buah membeli 30 kg mangga dan 50 kg manggis dari tengkulak kemudian menjualnya di pasar seharga 150% dari harga pembelian. Buah yang terjual sebanyak 28 kg mangga dan 34 kg manggis, sisanya dibuang karena membusuk. Jika pedagang tersebut memperoleh keuntungan 20% dari total harga pembelian, perbandingan harga pembelian mangga dan manggis berturut-turut adalah...', '2:3', '3:4', '3:2', '4:3', '4:5', 'C', 'Misalkan harga beli per kg mangga = a dan manggis = b. Total harga pembelian = 30a + 50b. Pendapatan penjualan = 28(1,5a) + 34(1,5b) = 42a + 51b. Keuntungan = pendapatan - total pembelian = (42a+51b) - (30a+50b) = 12a + b. Keuntungan ini sama dengan 20% dari total pembelian: 12a + b = 0,2(30a+50b) = 6a + 10b, sehingga 6a = 9b, atau a : b = 3 : 2.', 'hard', 6),
('b0000000-0000-4000-8000-060900000000', 'Dalam suatu kelas, 5/7 murid adalah laki-laki dan 2/5 dari murid laki-laki tersebut berambut lurus. Jika 6/14 dari seluruh murid memiliki rambut lurus, berapa bagian murid perempuan yang tidak memiliki rambut lurus?', '5/35', '10/35', '20/35', '23/49', '25/49', 'A', 'Misalkan total murid = 35 orang. Murid laki-laki = 5/7 x 35 = 25 orang, murid perempuan = 10 orang. Murid laki-laki berambut lurus = 2/5 x 25 = 10 orang. Total murid berambut lurus = 6/14 x 35 = 15 orang. Murid perempuan berambut lurus = 15 - 10 = 5 orang. Murid perempuan tidak berambut lurus = 10 - 5 = 5 orang, yaitu 5/35 dari total murid.', 'medium', 7),
('b0000000-0000-4000-8000-060900000000', 'Pada tahun 2017, umur Hari adalah 5/8 umur Ida. Sewindu (8 tahun) yang lalu, umur Ida adalah 2 kali umur Hari. Berapakah perbandingan umur Hari dan Ida pada tahun 2033?', '3/4', '5/8', '1/2', '2/3', '5/12', 'A', 'Misalkan umur Hari dan Ida pada 2017 adalah H dan I, dengan H = (5/8)I. Sewindu lalu: I - 8 = 2(H - 8). Substitusi H = (5/8)I: I - 8 = (10/8)I - 16, sehingga (1/4)I = 8, maka I = 32 dan H = 20. Pada tahun 2033 (16 tahun kemudian), Hari berumur 20+16=36 dan Ida berumur 32+16=48. Perbandingan Hari : Ida = 36 : 48 = 3 : 4.', 'hard', 8),
('b0000000-0000-4000-8000-060900000000', 'Berat badan Rosa 1,5 kali berat badan Sari. Berat badan Tina 5/8 dari berat badan Vera. Berat badan Sari adalah 40% dari berat badan Tina. Berat badan Umi adalah 120% dari berat badan Rosa. Di antara kelima orang tersebut, siapakah yang berat badannya paling ringan?', 'Rosa', 'Sari', 'Tina', 'Umi', 'Vera', 'B', 'Misalkan berat badan Vera = 1. Maka Tina = 5/8 = 0,625; Sari = 0,4 x 0,625 = 0,25; Rosa = 1,5 x 0,25 = 0,375; Umi = 1,2 x 0,375 = 0,45. Urutan dari yang paling ringan: Sari (0,25) < Rosa (0,375) < Umi (0,45) < Tina (0,625) < Vera (1). Jadi, yang paling ringan adalah Sari.', 'medium', 9),
('b0000000-0000-4000-8000-060900000000', 'Jika x dan y adalah bilangan positif dan perbandingan (5x - 2y) terhadap (2x + y) adalah 5/6, maka...', 'x > y', 'x < y', 'x >= y', 'x = y', 'hubungan antara x dan y tidak dapat ditentukan', 'B', '(5x-2y)/(2x+y) = 5/6, sehingga 6(5x-2y) = 5(2x+y). Diperoleh 30x - 12y = 10x + 5y, atau 20x = 17y, sehingga x = 0,85y. Karena y positif, maka x = 0,85y selalu lebih kecil daripada y, sehingga x < y.', 'medium', 10),
('b0000000-0000-4000-8000-060900000000', 'Satu petak padang rumput dapat dihabiskan oleh 15 ekor sapi dalam waktu 4 hari. Berapa ekor tambahan sapi yang diperlukan agar padang rumput tersebut habis dalam waktu 3 hari?', '20', '15', '8', '5', '4', 'D', 'Ini adalah perbandingan berbalik nilai: 15 ekor x 4 hari = 60 (satuan sapi-hari). Untuk menghabiskan dalam 3 hari dibutuhkan 60 : 3 = 20 ekor sapi, sehingga tambahan sapi yang diperlukan = 20 - 15 = 5 ekor.', 'medium', 11),
('b0000000-0000-4000-8000-060900000000', 'Jika diketahui bahwa c + d = 4/5 dan d : 3 = c : 2, maka...', '2c > d', '2c < d', '2c = d', '2c <= d', 'hubungan c dan d tidak dapat ditentukan', 'A', 'Dari d : 3 = c : 2 diperoleh d/3 = c/2, sehingga d = 1,5c. Substitusikan ke c + d = 4/5: c + 1,5c = 0,8, sehingga 2,5c = 0,8, maka c = 0,32 dan d = 0,48. Karena 2c = 0,64 dan d = 0,48, maka 2c > d.', 'medium', 12),
('b0000000-0000-4000-8000-060900000000', 'Delapan orang nelayan akan menyewa kapal dengan harga sewa x rupiah yang akan dibagi rata di antara mereka. Kemudian muncul 4 nelayan tambahan yang ikut menyewa kapal yang sama. Berapa penurunan biaya sewa kapal per orang?', 'x/24', 'x/20', '5x/24', '5x/12', '5x/6', 'A', 'Biaya sewa per orang semula (8 orang) = x/8. Setelah bertambah 4 orang menjadi 12 orang, biaya per orang = x/12. Penurunan biaya per orang = x/8 - x/12 = (3x - 2x)/24 = x/24.', 'medium', 13),
('b0000000-0000-4000-8000-060900000000', 'Komposisi buku di suatu perpustakaan adalah: setiap 1 novel terdapat 2 buku sains, dan setiap 1 buku sains terdapat 7 buku ekonomi. Berapakah perbandingan jumlah buku ekonomi, sains, dan novel secara berturut-turut?', '7:2:1', '7:1:2', '14:7:2', '14:2:1', '14:2:7', 'D', 'Novel : Sains = 1 : 2. Sains : Ekonomi = 1 : 7, disamakan dengan nilai sains = 2 menjadi Sains : Ekonomi = 2 : 14. Karena nilai sains pada kedua perbandingan sudah sama (2), maka Novel : Sains : Ekonomi = 1 : 2 : 14. Jadi, Ekonomi : Sains : Novel = 14 : 2 : 1.', 'medium', 14),
('b0000000-0000-4000-8000-060900000000', 'Sepotong kayu panjangnya 4 meter dipotong menjadi 2 bagian, di mana salah satu bagian panjangnya 2/3 dari bagian lainnya. Berapa panjang bagian yang terpendek?', '0,8 m', '1,33 m', '1,6 m', '2,4 m', '2,66 m', 'C', 'Misalkan bagian yang lebih panjang = L, maka bagian yang lebih pendek = (2/3)L. Karena L + (2/3)L = 4, diperoleh (5/3)L = 4, sehingga L = 2,4 m. Bagian terpendek = (2/3) x 2,4 = 1,6 m.', 'medium', 15),
('b0000000-0000-4000-8000-060900000000', '0,9 : p = 0,81 x 1/3. Berapakah nilai p?', '10/3', '10/6', '3/10', '6/10', '9/10', 'A', '0,81 x 1/3 = 0,27, sehingga 0,9 : p = 0,27. Maka p = 0,9 : 0,27 = (9/10) : (27/100) = (9/10) x (100/27) = 10/3.', 'medium', 16),
('b0000000-0000-4000-8000-060900000000', 'Jika perbandingan jari-jari dua buah lingkaran adalah 3 : 2, berapakah perbandingan luas kedua lingkaran tersebut?', '2:3', '3:4', '4:9', '9:4', '3:2', 'D', 'Luas lingkaran berbanding lurus dengan kuadrat jari-jarinya, sehingga perbandingan luas = 3 kuadrat : 2 kuadrat = 9 : 4.', 'medium', 17),
('b0000000-0000-4000-8000-060900000000', 'Jika seekor ayam rata-rata bertelur 20 butir per bulan, berapa jumlah minimal ayam yang harus dipelihara untuk mendapatkan 110 butir telur setiap bulan?', '5', '5 1/2', '6', '6 1/2', '7', 'C', 'Perbandingan senilai: 1 ekor menghasilkan 20 butir, maka untuk 110 butir dibutuhkan 110/20 = 5,5 ekor ayam. Karena jumlah ayam tidak mungkin berbentuk pecahan, maka jumlah ayam minimal yang dibutuhkan adalah 6 ekor (dibulatkan ke atas).', 'medium', 18),
('b0000000-0000-4000-8000-060900000000', 'Titik C terletak di antara titik A dan titik B pada suatu garis lurus. Jika AC = 2BC, maka berapakah nilai AC/AB?', '1/3', '1/2', '2/2', '2/3', '3/4', 'D', 'Karena AC = 2BC, maka AB = AC + BC = 2BC + BC = 3BC. Sehingga AC/AB = 2BC/3BC = 2/3.', 'medium', 19),
('b0000000-0000-4000-8000-060900000000', 'Sebuah pipa dapat mengisi tangki kosong sampai penuh dalam waktu 15 jam. Pipa kedua dapat mengisi tangki kosong yang sama sampai penuh dalam waktu 9 jam. Jika kedua pipa digunakan bersama-sama, berapa lama waktu yang diperlukan untuk mengisi tangki tersebut sampai 2/3 penuh?', '24/15 jam', '9/4 jam', '15/4 jam', '45/8 jam', '5 jam', 'C', 'Misalkan volume tangki = 1 satuan. Debit gabungan kedua pipa = 1/15 + 1/9 = 3/45 + 5/45 = 8/45 satuan/jam. Waktu untuk mengisi 2/3 tangki = (2/3) : (8/45) = (2/3) x (45/8) = 90/24 = 15/4 jam.', 'hard', 20),
('b0000000-0000-4000-8000-060900000000', 'Jika populasi suatu negara bertambah 1 orang setiap 15 detik, berapa banyak pertambahan populasinya selama 20 menit?', '80', '100', '150', '240', '60', 'A', '20 menit = 20 x 60 = 1.200 detik. Karena populasi bertambah 1 orang setiap 15 detik, maka pertambahan populasi selama 1.200 detik = 1.200 : 15 = 80 orang.', 'easy', 21),
('b0000000-0000-4000-8000-060900000000', 'Dalam suatu maket, ukuran 1,25 milimeter setara dengan 1 meter jarak sesungguhnya. Jika panjang tanah pada maket tersebut adalah 3,5 centimeter, berapa panjang tanah yang sesungguhnya?', '28 meter', '21 meter', '8 meter', '7 meter', '3,5 meter', 'A', 'Samakan satuan: 3,5 cm = 35 mm. Karena skala maket 1,25 mm : 1 m, maka panjang sesungguhnya = (35 : 1,25) x 1 m = 28 m.', 'medium', 22),
('b0000000-0000-4000-8000-060900000000', 'Sebanyak 6.594 botol air dihabiskan oleh 314 serdadu selama 10 jam. Berapa rata-rata konsumsi air oleh seorang serdadu setiap dua jam?', '1,6 botol', '2,1 botol', '4,2 botol', '21 botol', '42 botol', 'C', 'Konsumsi per serdadu selama 10 jam = 6.594 : 314 = 21 botol. Karena 10 jam terdiri dari 5 periode dua jam, maka rata-rata konsumsi per serdadu setiap dua jam = 21 : 5 = 4,2 botol.', 'hard', 23),
('b0000000-0000-4000-8000-060900000000', 'Seseorang memiliki 450 liter pupuk cair yang mengandung 10% urine kuda. Jika setiap hektar lahan memerlukan 0,75 liter urine kuda, berapa hektar lahan yang dapat disirami dengan pupuk cair tersebut?', '60 hektar', '48 hektar', '36 hektar', '25 hektar', '20 hektar', 'A', 'Total urine kuda dalam pupuk cair = 10% x 450 liter = 45 liter. Karena setiap hektar membutuhkan 0,75 liter urine kuda, maka luas lahan yang dapat disirami = 45 : 0,75 = 60 hektar.', 'medium', 24);
