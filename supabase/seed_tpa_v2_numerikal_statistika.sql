-- Materi + mind map + soal: Bab "Statistika" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061300000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061300000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061300000000', null, 'Statistika dasar dalam TPA menguji ukuran pemusatan data (mean, median, modus) dan ukuran penyebaran sederhana (jangkauan/range), serta kemampuan membaca tabel frekuensi atau diagram data.', 1),
('b0000000-0000-4000-8000-061300000000', 'Ukuran Pemusatan Data', '**Definisi:** Ukuran pemusatan data adalah nilai yang mewakili kumpulan data, terdiri dari mean (rata-rata), median (nilai tengah), dan modus (nilai yang paling sering muncul).

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan dulu ukuran pemusatan apa yang diminta soal: mean, median, atau modus.
2. Untuk mean data tunggal, jumlahkan seluruh data lalu bagi dengan banyak data.
3. Untuk median, urutkan data dari kecil ke besar terlebih dahulu, baru tentukan nilai tengahnya (data ke-(n+1)/2 jika n ganjil, atau rata-rata dua data tengah jika n genap).
4. Untuk modus, cari nilai/data dengan frekuensi kemunculan paling tinggi.
5. Jika soal melibatkan gabungan dua kelompok data atau perubahan data (data diganti/ditambah), gunakan pendekatan total (jumlah data) sebelum atau sesudah perubahan, bukan langsung mengoperasikan mean secara langsung.

**Rumus & Poin Kunci:**
- Tabel ringkasan tiga ukuran pemusatan data:

| Ukuran | Definisi | Cara Menghitung |
|---|---|---|
| Mean (rata-rata) | Nilai tengah berdasar total dibagi banyak data | $\frac{\text{jumlah semua data}}{\text{banyak data}}$ |
| Median (nilai tengah) | Nilai tengah data yang SUDAH diurutkan | data ke-$\frac{(n+1)}{2}$ jika n ganjil; rata-rata 2 data tengah jika n genap |
| Modus | Nilai/data yang paling sering muncul | data dengan frekuensi tertinggi |

- **Mean Gabungan Dua Kelompok Data:** jika dua kelompok data (misalnya dua kelas) masing-masing sudah diketahui mean dan banyak datanya, mean gabungan kedua kelompok dapat dihitung TANPA perlu mengetahui data mentahnya satu per satu: $$\text{Mean gabungan} = \frac{n_1 \times \bar{x}_1 + n_2 \times \bar{x}_2}{n_1 + n_2}$$ dengan $n_1, n_2$ = banyak data tiap kelompok dan $\bar{x}_1, \bar{x}_2$ = mean tiap kelompok.
- **Mean yang Berubah karena Data Diganti/Ditambah:** untuk mencari nilai data baru dari perubahan mean (naik/turun setelah satu data diganti atau ditambah), bandingkan total data SEBELUM dan SESUDAH perubahan, bukan membandingkan mean secara langsung. $$\text{data baru} = \text{data lama} + (\text{mean baru} - \text{mean lama}) \times n$$ untuk kasus satu data diganti (n tetap = banyak data awal), sedangkan untuk kasus penambahan satu data baru gunakan selisih total data (n bertambah 1).

**Kesalahan Umum / Jebakan:**
- Lupa mengurutkan data terlebih dahulu sebelum mencari median, sehingga salah mengambil nilai tengah dari urutan data yang belum diurutkan.
- Menjumlahkan dua mean lalu membaginya dengan 2 untuk mencari mean gabungan, padahal cara ini hanya benar jika banyak data kedua kelompok sama ($n_1 = n_2$); jika berbeda, wajib pakai rumus mean gabungan berbasis total.
- Salah menentukan modus saat ada dua nilai atau lebih dengan frekuensi sama tertinggi (data bimodal), atau keliru mengira nilai dengan angka terbesar adalah modus, padahal modus ditentukan dari frekuensi kemunculan, bukan besar nilainya.

**Kesimpulan:** Kuasai rumus dasar mean, median, dan modus, lalu ingat bahwa median wajib memakai data yang sudah terurut. Untuk soal gabungan kelompok atau perubahan data, gunakan pendekatan total (jumlah data), bukan langsung mengoperasikan mean, agar perhitungan tetap akurat.

**Contoh Soal:** Kelas A berisi 20 siswa dengan rata-rata nilai 75, sedangkan Kelas B berisi 30 siswa dengan rata-rata nilai 80. Jika kedua kelas digabung, kemudian ada 1 siswa baru masuk kelas gabungan dengan nilai 95, berapa rata-rata (mean) terbaru setelah siswa baru tersebut masuk?

- A. 78,00
- B. 78,33
- C. 79,90
- D. 83,33
- E. 86,50

**Pembahasan:**

**Diketahui:** Kelas A berisi 20 siswa dengan rata-rata 75, Kelas B berisi 30 siswa dengan rata-rata 80. Setelah digabung, 1 siswa baru dengan nilai 95 masuk ke kelas gabungan.

**Ditanya:** Rata-rata (mean) terbaru setelah siswa baru masuk.

**Jawab:** Langkah 1 (mean gabungan): total nilai kelas A = 20 x 75 = 1500, total nilai kelas B = 30 x 80 = 2400. Total gabungan = 1500 + 2400 = 3900, banyak siswa gabungan = 20 + 30 = 50, sehingga mean gabungan = 3900/50 = 78. Langkah 2 (data ditambah): total nilai setelah siswa baru masuk = 3900 + 95 = 3995, banyak siswa menjadi 51, sehingga mean terbaru = 3995/51 = 78,33 (dibulatkan dua desimal). Jadi jawabannya adalah B.', 2),
('b0000000-0000-4000-8000-061300000000', 'Jangkauan dan Penyajian Data', '**Definisi:** Jangkauan (range) adalah selisih antara data terbesar dan data terkecil dalam suatu kumpulan data, yang menggambarkan seberapa lebar sebaran datanya.

**Cara Kerja / Langkah Pengerjaan:**
1. Kenali dulu bentuk penyajian datanya: data tunggal, tabel frekuensi, atau diagram (batang, garis, lingkaran).
2. Untuk mencari range, tentukan nilai maksimum dan nilai minimum dari data, lalu kurangkan keduanya.
3. Untuk mencari mean dari tabel frekuensi, kalikan setiap nilai dengan frekuensinya terlebih dahulu, jumlahkan seluruh hasil kali tersebut, baru bagi dengan total frekuensi (total banyak data).
4. Jika ada dua kelompok data atau tabel frekuensi yang perlu digabung, jumlahkan total nilai kedua kelompok dan total banyak data kedua kelompok, baru bagi (tidak perlu mengulang dari data mentah).
5. Jika ada satu data yang ternyata salah dicatat dan perlu dikoreksi, sesuaikan totalnya saja (kurangi data salah, tambahkan data benar), lalu hitung ulang mean dengan banyak data yang tetap sama.

**Rumus & Poin Kunci:**
- Rumus jangkauan: $$\text{Range} = \text{nilai maksimum} - \text{nilai minimum}$$
- Data juga sering disajikan dalam tabel frekuensi (mengelompokkan nilai dengan banyaknya kemunculan) atau diagram (batang, garis, lingkaran) yang perlu dibaca teliti sebelum dihitung mean/median/modusnya.
- Saat data disajikan dalam tabel frekuensi, kalikan setiap nilai dengan frekuensinya ($\text{nilai} \times \text{frekuensi}$) sebelum dijumlah untuk mencari mean — jangan hanya menjumlah nilai unik dibagi banyak nilai unik.
- **Mean Gabungan dari Tabel Frekuensi/Kelompok:** $$\text{Mean gabungan} = \frac{\text{total nilai kelompok 1} + \text{total nilai kelompok 2}}{n_1 + n_2}$$
- **Mean Berubah karena Salah Satu Data pada Tabel Diganti:** $$\text{total baru} = \text{total lama} - \text{data salah} + \text{data benar}$$ lalu mean baru = total baru dibagi banyak data (banyak data tidak berubah karena hanya mengganti, bukan menambah/mengurangi data).

**Kesalahan Umum / Jebakan:**
- Lupa mengalikan nilai dengan frekuensinya pada tabel frekuensi, sehingga mean dihitung seolah-olah setiap nilai unik hanya muncul satu kali.
- Tertukar antara jangkauan (range) dengan selisih rata-rata atau ukuran penyebaran lain; range HANYA melibatkan nilai maksimum dan minimum, bukan seluruh data.
- Saat mengoreksi satu data yang salah, keliru mengira banyak data (n) berubah, padahal koreksi hanya mengganti nilai, bukan menambah atau mengurangi jumlah data.

**Kesimpulan:** Range mengukur lebar sebaran data dengan cara paling sederhana, sedangkan untuk data dalam tabel frekuensi selalu kalikan nilai dengan frekuensinya sebelum dijumlah. Untuk kasus gabungan atau koreksi data, gunakan pendekatan total nilai agar tidak perlu mengulang perhitungan dari data mentah.

**Contoh Soal:** Rata-rata nilai 12 siswa yang tercatat adalah 70. Setelah dicek ulang, ternyata nilai salah satu siswa yang tercatat 55 seharusnya 85 (salah input). Berapa rata-rata nilai yang benar?

- A. 67,50
- B. 70,00
- C. 72,50
- D. 77,08
- E. 66,92

**Pembahasan:**

**Diketahui:** Rata-rata 12 siswa yang tercatat = 70. Nilai salah satu siswa tercatat 55, padahal seharusnya 85.

**Ditanya:** Rata-rata nilai yang benar setelah dikoreksi.

**Jawab:** Langkah 1: cari total nilai lama = mean lama x banyak data = 70 x 12 = 840. Langkah 2: koreksi total = total lama - data salah + data benar = 840 - 55 + 85 = 870. Langkah 3: banyak siswa tetap 12 (hanya koreksi, bukan penambahan), sehingga mean benar = 870/12 = 72,5. Jadi jawabannya adalah C.', 3),
('b0000000-0000-4000-8000-061300000000', 'Cara Cepat: Mean Data Berpola Rata (Barisan Aritmatika)', '**Definisi:** Cara cepat mean data berpola rata adalah teknik menghitung mean pada barisan aritmatika (data dengan selisih antar suku tetap) tanpa perlu menjumlahkan seluruh data satu per satu.

**Cara Kerja / Langkah Pengerjaan:**
1. Periksa apakah data membentuk barisan aritmatika, yaitu selisih antar suku yang berurutan selalu tetap.
2. Jika ya, mean dapat langsung dihitung dari (data pertama + data terakhir) dibagi 2, tanpa menjumlah seluruh data.
3. Jika soal meminta mean gabungan dua kelompok data (boleh berpola aritmatika atau tidak), tetap gunakan rumus mean gabungan berbasis total dan banyak data tiap kelompok, bukan cara cepat di atas.
4. Jika soal menanyakan bilangan pengganti suatu suku agar mean berubah ke nilai tertentu, hitung dulu total lama (mean lama x banyak data), lalu total baru (mean baru x banyak data), kemudian selisih total tersebut ditambahkan ke suku yang diganti.

**Rumus & Poin Kunci:**
- Rumus cara cepat: $$Mean = \frac{data\ pertama + data\ terakhir}{2}$$
- Contoh: mean dari data 10, 20, 30, 40, 50 = (10 + 50) / 2 = 30 (tanpa perlu menjumlah kelima angka lalu membagi 5).
- **Mean Gabungan Dua Kelompok Berpola Berbeda:** $$\text{Mean gabungan} = \frac{n_1 \bar{x}_1 + n_2 \bar{x}_2}{n_1 + n_2}$$ — bukan menjumlah dua mean lalu dibagi 2 (itu HANYA benar jika $n_1 = n_2$).

**Kesalahan Umum / Jebakan:**
- Memakai rumus cara cepat (data pertama + data terakhir)/2 pada data yang TIDAK berpola aritmatika/tidak merata selisihnya, sehingga hasilnya keliru.
- Menjumlahkan dua mean kelompok lalu membaginya dengan 2 untuk mencari mean gabungan, padahal banyak data kedua kelompok berbeda ($n_1 \neq n_2$).
- Salah mengira suku yang diganti adalah suku pertama atau terakhir tanpa membaca ulang soal, padahal cara cepat (data pertama + data terakhir)/2 tetap dipakai untuk mean LAMA, bukan untuk mencari suku yang diganti.

**Tips cara cepat:** Rumus ini HANYA berlaku kalau selisih antar data tetap/merata (berpola barisan aritmatika). Kalau datanya tidak berpola rata, tetap gunakan cara biasa (jumlah semua data dibagi banyak data).

**Kesimpulan:** Manfaatkan rumus (data pertama + data terakhir)/2 untuk mempercepat perhitungan mean pada data berpola aritmatika, namun tetap gunakan rumus mean gabungan berbasis total data saat menggabungkan dua kelompok, dan ingat cara cepat ini hanya sah selama datanya benar-benar berpola rata.

**Contoh Soal:** Data 10, 20, 30, 40, 50 (berpola aritmatika, beda 10) memiliki mean 30 (cara cepat: (10+50)/2). Jika angka 30 diganti dengan bilangan lain sehingga mean seluruh data menjadi 34, berapa bilangan pengganti tersebut?

- A. 10
- B. 20
- C. 34
- D. 50
- E. 84

**Pembahasan:**

**Diketahui:** Data 10, 20, 30, 40, 50 (aritmatika beda 10, banyak data n=5, mean lama = 30). Angka 30 diganti dengan bilangan lain sehingga mean seluruh data menjadi 34.

**Ditanya:** Bilangan pengganti angka 30 tersebut.

**Jawab:** Langkah 1: mean lama = 30 (dari cara cepat data berpola rata), banyak data n=5, sehingga total lama = 30 x 5 = 150. Langkah 2: mean baru = 34, maka total baru = 34 x 5 = 170. Langkah 3: selisih total = 170 - 150 = 20, dan karena hanya angka 30 yang diganti, bilangan pengganti = 30 + 20 = 50. Jadi jawabannya adalah D.', 4);

update chapters set mindmap = '# Statistika

## Mean (Rata-rata)
- $\frac{jumlah\ semua\ data}{banyak\ data}$

## Median (Nilai Tengah)
- Data harus diurutkan dulu
- n ganjil: data ke-$\frac{(n+1)}{2}$
- n genap: rata-rata 2 data tengah

## Modus
- Data dengan frekuensi paling banyak muncul

## Jangkauan (Range)
- $Range = nilai\ maksimum - nilai\ minimum$

## Catatan Penting
- Tabel frekuensi: kalikan $nilai \times frekuensi$ dulu sebelum dijumlah untuk mean' where id = 'b0000000-0000-4000-8000-061300000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061300000000', 'Data nilai siswa setelah diurutkan: 4, 6, 7, 7, 8, 9, 10. Median dari data tersebut adalah...', '6', '7', '7,5', '8', '9', 'B', 'Banyak data n=7 (ganjil), median = data ke-(7+1)/2 = data ke-4 = 7.', 'easy', 1),
('b0000000-0000-4000-8000-061300000000', 'Rata-rata nilai ulangan 8 siswa adalah 72. Kemudian ada 2 siswa baru yang mengikuti ulangan susulan dengan nilai 80 dan 90. Rata-rata (mean) nilai seluruh 10 siswa tersebut adalah...', '73,0', '73,4', '74,0', '74,6', '75,0', 'D', 'Total nilai lama = mean lama x banyak siswa = 72 x 8 = 576. Total nilai setelah dua siswa baru masuk = 576 + 80 + 90 = 746. Banyak siswa menjadi 10, sehingga mean baru = 746/10 = 74,6.', 'medium', 2),
('b0000000-0000-4000-8000-061300000000', 'Data jumlah anak dari 9 keluarga di sebuah RT (belum diurutkan) adalah 3, 1, 4, 2, 2, 5, 2, 3, 4. Jika kemudian ada 1 keluarga baru pindah ke RT tersebut dengan jumlah anak 2, maka pernyataan yang benar mengenai mean, median, dan modus data gabungan (10 keluarga) tersebut adalah...', 'Mean = 2,6; Median = 2,5; Modus = 2', 'Mean = 2,8; Median = 2,5; Modus = 2', 'Mean = 2,8; Median = 3; Modus = 2', 'Mean = 2,8; Median = 2,5; Modus = 3', 'Mean = 2,6; Median = 3; Modus = 4', 'B', 'Data awal (9 keluarga) setelah diurutkan: 1, 2, 2, 2, 3, 3, 4, 4, 5 dengan total = 26. Setelah keluarga baru dengan 2 anak bergabung, data terurut (10 keluarga) menjadi 1, 2, 2, 2, 2, 3, 3, 4, 4, 5. Mean = (26+2)/10 = 28/10 = 2,8. Median (n=10, genap) = rata-rata data ke-5 dan ke-6 = (2+3)/2 = 2,5. Modus = nilai dengan frekuensi terbanyak = 2 (muncul 4 kali). Jadi jawabannya adalah B.', 'hard', 3),
('b0000000-0000-4000-8000-061300000000', 'Data curah hujan (mm) selama 6 hari tercatat sebagai berikut: Senin 12, Selasa dua kali lipat Senin, Rabu 9, Kamis 11 lebih banyak dari Rabu, Jumat 20, dan Sabtu 15. Jangkauan (range) data curah hujan selama 6 hari tersebut adalah...', '11', '12', '13', '15', '16', 'D', 'Selasa = 2 x 12 = 24. Kamis = 9 + 11 = 20. Data lengkap: 12, 24, 9, 20, 20, 15. Nilai maksimum = 24 (Selasa), nilai minimum = 9 (Rabu). Range = 24 - 9 = 15. Jadi jawabannya adalah D.', 'hard', 4),
('b0000000-0000-4000-8000-061300000000', 'Sebuah tabel frekuensi menunjukkan nilai 6 diperoleh 2 siswa, nilai 7 diperoleh 3 siswa, dan nilai 9 diperoleh 5 siswa. Setelah dicek ulang, ternyata satu siswa yang tercatat memperoleh nilai 6 seharusnya memperoleh nilai 9 (salah input). Rata-rata (mean) nilai yang benar setelah dikoreksi adalah...', '7,8', '7,9', '8,0', '8,1', '8,3', 'D', 'Total nilai sebelum koreksi = (6x2)+(7x3)+(9x5) = 12+21+45 = 78, dengan banyak siswa = 2+3+5 = 10. Setelah dikoreksi, satu nilai 6 diganti menjadi 9: total baru = 78 - 6 + 9 = 81. Banyak siswa tetap 10 (hanya koreksi, bukan penambahan). Mean yang benar = 81/10 = 8,1. Jadi jawabannya adalah D.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061300000000', 'Bari membeli 5 buah majalah dengan harga rata-rata Rp4.000,00 per buah, kemudian membeli lagi beberapa majalah serupa dengan harga rata-rata Rp6.000,00 per buah. Jika harga rata-rata untuk keseluruhan majalah menjadi Rp5.000,00, berapa banyak majalah tambahan yang dibeli?', '3', '4', '5', '6', '7', 'C', 'Total harga 5 majalah pertama = 5 x Rp4.000,00 = Rp20.000,00. Misalkan n = jumlah majalah tambahan, sehingga total harga tambahan = 6.000n. Persamaan rata-rata gabungan: (20.000 + 6.000n)/(5+n) = 5.000. Maka 20.000+6.000n = 25.000+5.000n, sehingga 1.000n = 5.000 dan n = 5.', 'medium', 6),
('b0000000-0000-4000-8000-061300000000', 'Diketahui x, y > 0. Jika rata-rata dari 18, 28, dan x sama dengan rata-rata dari 21, 23, 27, dan y, maka...', 'x > y', 'x < y', 'x = y', 'x kuadrat = y kuadrat', 'Hubungan x dan y tidak dapat ditentukan', 'E', '(18+28+x)/3 = (21+23+27+y)/4, sehingga (46+x)/3 = (71+y)/4. Kalikan silang: 4(46+x) = 3(71+y), yaitu 184+4x = 213+3y, sehingga x = (29+3y)/4. Nilai x dibandingkan y bergantung pada nilai y itu sendiri, misalnya untuk y=10 diperoleh x=14,75 (x>y), sedangkan untuk y=40 diperoleh x=37,25 (x<y). Karena hasil perbandingan berubah-ubah, hubungan x dan y tidak dapat ditentukan.', 'hard', 7),
('b0000000-0000-4000-8000-061300000000', 'Seorang mahasiswa mendapat nilai 78, 86, 88, dan 91 untuk empat mata kuliah. Berapa nilai yang harus diperoleh untuk mata kuliah kelima agar diperoleh nilai rata-rata 83?', '71', '72', '74', '75', '76', 'B', 'Total nilai yang dibutuhkan untuk rata-rata 83 dari 5 mata kuliah = 83 x 5 = 415. Jumlah nilai yang sudah ada = 78+86+88+91 = 343. Nilai mata kuliah kelima = 415 - 343 = 72.', 'easy', 8),
('b0000000-0000-4000-8000-061300000000', 'Diagram batang berikut menunjukkan hasil produksi padi dan jagung pada suatu areal pertanian dari tahun 2014-2017 (dalam ton). Padi: 2014=52,24; 2015=54,8; 2016=56,25; 2017=60,4. Jagung: 2014=12,5; 2015=11,6; 2016=13,3; 2017=15,86. Rata-rata kenaikan produksi padi dari tahun 2014 sampai 2017 adalah ... ton.', '2,72', '2,62', '2,32', '1,12', '1,11', 'A', 'Kenaikan tiap tahun: 2015-2014 = 54,8-52,24 = 2,56; 2016-2015 = 56,25-54,8 = 1,45; 2017-2016 = 60,4-56,25 = 4,15. Rata-rata kenaikan = (2,56+1,45+4,15)/3 = 8,16/3 = 2,72.', 'medium', 9),
('b0000000-0000-4000-8000-061300000000', 'Berdasarkan data produksi padi dan jagung tahun 2014-2017 berikut (dalam ton). Padi: 2014=52,24; 2015=54,8; 2016=56,25; 2017=60,4. Jagung: 2014=12,5; 2015=11,6; 2016=13,3; 2017=15,86. Selisih terbesar antara produksi padi dan produksi jagung terjadi pada tahun...', '2013', '2014', '2015', '2016', '2017', 'E', 'Selisih tiap tahun: 2014 = 52,24-12,5 = 39,74; 2015 = 54,8-11,6 = 43,2; 2016 = 56,25-13,3 = 42,95; 2017 = 60,4-15,86 = 44,54. Selisih terbesar terjadi pada tahun 2017.', 'medium', 10),
('b0000000-0000-4000-8000-061300000000', 'Berdasarkan data produksi padi dan jagung tahun 2014-2017 berikut (dalam ton). Padi: 2014=52,24; 2015=54,8; 2016=56,25; 2017=60,4. Jagung: 2014=12,5; 2015=11,6; 2016=13,3; 2017=15,86. Rata-rata produksi jagung tahun 2014-2017 adalah ... ton.', '12,315', '12,350', '13,315', '13,350', '14,350', 'C', 'Rata-rata produksi jagung = (12,5+11,6+13,3+15,86)/4 = 53,26/4 = 13,315.', 'easy', 11),
('b0000000-0000-4000-8000-061300000000', 'Banyak pengunjung sebuah rumah sakit selama bulan November tercatat sebagai berikut: 200 pengunjung untuk hari ke-1 sampai hari ke-4, 400 pengunjung untuk hari ke-5 sampai hari ke-6, 500 pengunjung untuk hari ke-7 sampai hari ke-14, 600 pengunjung untuk hari ke-15 sampai hari ke-20, dan 1000 pengunjung untuk hari ke-21 sampai hari ke-30. Rata-rata pengunjung rumah sakit tersebut per hari pada bulan November adalah...', '75 orang', '90 orang', '103 orang', '135 orang', '540 orang', 'B', 'Total pengunjung selama bulan November = 200+400+500+600+1000 = 2.700 orang. November memiliki 30 hari, sehingga rata-rata pengunjung per hari = 2.700 : 30 = 90 orang.', 'medium', 12),
('b0000000-0000-4000-8000-061300000000', 'Berikut ini adalah catatan waktu 10 peserta pada tes lari jarak pendek (dalam detik): A=52, B=51, C=53, D=x, E=55, F=47, G=53, H=45, I=46, J=x+2. Rata-rata catatan waktu seluruh peserta adalah 50 detik. Peserta dinyatakan lulus jika catatan waktunya lebih kecil dari rata-rata. Banyaknya peserta yang dinyatakan lulus adalah ... orang.', '3', '4', '5', '6', '7', 'B', 'Jumlah 8 nilai yang diketahui = 52+51+53+55+47+53+45+46 = 402. Total seluruh 10 data = rata-rata x 10 = 500, sehingga D+J = 2x+2 = 500-402 = 98, diperoleh x=48 (D=48) dan J=50. Data lengkap: 52,51,53,48,55,47,53,45,46,50. Yang catatan waktunya lebih kecil dari 50 adalah D(48), F(47), H(45), dan I(46), yaitu 4 peserta.', 'medium', 13),
('b0000000-0000-4000-8000-061300000000', 'Hasil jajak pendapat terhadap responden laki-laki mengenai persiapan menghadapi ujian anak-anak mereka (dalam persen): A (memasukkan ke bimbingan belajar)=38,2%; B (menemani belajar)=23,6%; C (memanggil guru privat)=13,1%; D (tidak mempersiapkan apa-apa)=7,5%; E (fokus belajar)=7,2%; F (tidak tahu/tidak menjawab)=10,4%. Jika banyak responden yang menjawab tidak tahu/tidak menjawab adalah 52 orang, maka banyaknya responden yang memilih memasukkan putra/putrinya ke bimbingan belajar adalah ... orang.', '36', '65', '94', '118', '191', 'E', 'F=10,4% berjumlah 52 orang, maka total responden = 52/0,104 = 500 orang. Responden yang memilih A (38,2%) = 0,382 x 500 = 191 orang.', 'medium', 14),
('b0000000-0000-4000-8000-061300000000', 'Berdasarkan data jajak pendapat responden laki-laki berikut (dalam persen): A (memasukkan ke bimbingan belajar)=38,2%; B (menemani belajar)=23,6%; C (memanggil guru privat)=13,1%; D (tidak mempersiapkan apa-apa)=7,5%; E (fokus belajar)=7,2%; F (tidak tahu/tidak menjawab)=10,4%, dengan banyak responden yang menjawab tidak tahu/tidak menjawab adalah 52 orang. Banyaknya responden yang memilih jawaban fokus belajar adalah ... orang.', '36', '65', '94', '118', '191', 'A', 'Total responden = 52/0,104 = 500 orang. Responden yang memilih fokus belajar (7,2%) = 0,072 x 500 = 36 orang.', 'medium', 15),
('b0000000-0000-4000-8000-061300000000', 'Berdasarkan data jajak pendapat responden laki-laki berikut (dalam persen): A (memasukkan ke bimbingan belajar)=38,2%; B (menemani belajar)=23,6%; C (memanggil guru privat)=13,1%; D (tidak mempersiapkan apa-apa)=7,5%; E (fokus belajar)=7,2%; F (tidak tahu/tidak menjawab)=10,4%, dengan banyak responden yang menjawab tidak tahu/tidak menjawab adalah 52 orang. Banyaknya responden yang memilih untuk menemani anaknya belajar adalah ... orang.', '36', '65', '94', '118', '191', 'D', 'Total responden = 52/0,104 = 500 orang. Responden yang memilih menemani belajar (23,6%) = 0,236 x 500 = 118 orang.', 'medium', 16),
('b0000000-0000-4000-8000-061300000000', 'Dari suatu kelas yang terdiri dari 40 orang siswa, diperoleh nilai rata-rata kelas 7,00 untuk mata pelajaran matematika. Jika 5 siswa dengan nilai tertinggi (rata-rata 8,50) dan 10 siswa dengan nilai terendah (rata-rata 6,00) dikeluarkan dari perhitungan, berapa nilai rata-rata siswa yang tersisa?', '6,60', '7,10', '7,60', '7,90', '8,00', 'B', 'Total nilai seluruh siswa = 40 x 7,00 = 280. Total nilai 5 siswa tertinggi = 5 x 8,50 = 42,5. Total nilai 10 siswa terendah = 10 x 6,00 = 60. Total nilai siswa yang tersisa = 280-42,5-60 = 177,5, dengan banyak siswa tersisa = 40-5-10 = 25. Rata-rata siswa tersisa = 177,5/25 = 7,1.', 'hard', 17),
('b0000000-0000-4000-8000-061300000000', 'Jika K adalah rata-rata dari 10 dan -14, maka rata-rata dari K dan -8 adalah...', '-24', '-12', '-11', '-5', '0', 'D', 'K = (10+(-14))/2 = -4/2 = -2. Rata-rata dari K dan -8 = (-2+(-8))/2 = -10/2 = -5.', 'medium', 18),
('b0000000-0000-4000-8000-061300000000', 'Rata-rata aritmatika dari 6 buah bilangan adalah 25,5. Jika salah satu bilangan dibuang, rata-rata bilangan yang tersisa (5 bilangan) menjadi 21,6. Bilangan yang dibuang tersebut adalah...', '29,4', '30,0', '37,2', '45,0', '50,0', 'D', 'Jumlah 6 bilangan = 6 x 25,5 = 153. Jumlah 5 bilangan yang tersisa = 5 x 21,6 = 108. Bilangan yang dibuang = 153 - 108 = 45,0.', 'medium', 19),
('b0000000-0000-4000-8000-061300000000', 'Data jam kerja pekerja pada sebuah pabrik selama sepekan sebagai berikut: 20 pekerja bekerja 45-50 jam; 15 pekerja bekerja 40-44 jam; 25 pekerja bekerja 35-39 jam; 16 pekerja bekerja 30-34 jam; 4 pekerja bekerja 0-29 jam. Berapa persen pekerja yang bekerja 40 jam atau lebih?', '25%', '33 1/3%', '43%', '43,75%', '50%', 'D', 'Jumlah pekerja total = 20+15+25+16+4 = 80 orang. Jumlah pekerja yang bekerja 40 jam atau lebih = 20+15 = 35 orang. Persentase = (35/80) x 100% = 43,75%.', 'medium', 20);
