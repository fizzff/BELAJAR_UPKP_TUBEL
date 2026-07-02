-- Materi + mind map + soal: Bab "Statistika" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061300000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061300000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061300000000', null, 'Statistika dasar dalam TPA menguji ukuran pemusatan data (mean, median, modus) dan ukuran penyebaran sederhana (jangkauan/range), serta kemampuan membaca tabel frekuensi atau diagram data.', 1),
('b0000000-0000-4000-8000-061300000000', 'Ukuran Pemusatan Data', '**Definisi:** Ukuran pemusatan data adalah nilai yang mewakili kumpulan data, terdiri dari mean (rata-rata), median (nilai tengah), dan modus (nilai yang paling sering muncul).

**Pengenalan:** Tiga ukuran pemusatan data yang paling sering diuji dalam TPA adalah mean, median, dan modus. Ketiganya meringkas sekumpulan data menjadi satu nilai representatif, namun dengan cara hitung dan tujuan yang berbeda-beda.

**Poin yang Harus Diketahui:**
- Tabel ringkasan tiga ukuran pemusatan data:

| Ukuran | Definisi | Cara Menghitung |
|---|---|---|
| Mean (rata-rata) | Nilai tengah berdasar total dibagi banyak data | $\frac{\text{jumlah semua data}}{\text{banyak data}}$ |
| Median (nilai tengah) | Nilai tengah data yang SUDAH diurutkan | data ke-$\frac{(n+1)}{2}$ jika n ganjil; rata-rata 2 data tengah jika n genap |
| Modus | Nilai/data yang paling sering muncul | data dengan frekuensi tertinggi |

- Data harus diurutkan terlebih dahulu (dari kecil ke besar) sebelum mencari median.
- **Mean Gabungan Dua Kelompok Data:** jika dua kelompok data (misalnya dua kelas) masing-masing sudah diketahui mean dan banyak datanya, mean gabungan kedua kelompok dapat dihitung TANPA perlu mengetahui data mentahnya satu per satu: $$\text{Mean gabungan} = \frac{n_1 \times \bar{x}_1 + n_2 \times \bar{x}_2}{n_1 + n_2}$$ dengan $n_1, n_2$ = banyak data tiap kelompok dan $\bar{x}_1, \bar{x}_2$ = mean tiap kelompok.
- **Mean yang Berubah karena Data Diganti/Ditambah:** jenis soal lain menguji ke arah sebaliknya: dari perubahan mean (naik/turun setelah satu data diganti atau ditambah), dicari nilai data baru tersebut. Kuncinya: bandingkan total data SEBELUM dan SESUDAH perubahan, bukan membandingkan mean secara langsung. $$\text{data baru} = \text{data lama} + (\text{mean baru} - \text{mean lama}) \times n$$ untuk kasus satu data diganti (n tetap = banyak data awal), sedangkan untuk kasus penambahan satu data baru gunakan selisih total data (n bertambah 1).

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

**Pengenalan:** Selain ukuran pemusatan, soal statistika TPA juga menguji ukuran penyebaran sederhana (jangkauan/range) serta kemampuan membaca data yang disajikan dalam bentuk tabel frekuensi atau diagram (batang, garis, lingkaran) sebelum data tersebut diolah lebih lanjut.

**Poin yang Harus Diketahui:**
- Rumus jangkauan: $$\text{Range} = \text{nilai maksimum} - \text{nilai minimum}$$
- Data juga sering disajikan dalam tabel frekuensi (mengelompokkan nilai dengan banyaknya kemunculan) atau diagram (batang, garis, lingkaran) yang perlu dibaca teliti sebelum dihitung mean/median/modusnya.
- **Catatan Penting (cara cepat):** saat data disajikan dalam tabel frekuensi, kalikan setiap nilai dengan frekuensinya ($\text{nilai} \times \text{frekuensi}$) sebelum dijumlah untuk mencari mean — jangan hanya menjumlah nilai unik dibagi banyak nilai unik.
- **Mean Gabungan dari Tabel Frekuensi/Kelompok:** saat dua kelompok data (misalnya dua tabel frekuensi terpisah, atau data sebelum-sesudah revisi) perlu digabung, tidak perlu mengulang dari data mentah — cukup pakai total (jumlah nilai x frekuensi) dan total banyak data tiap kelompok: $$\text{Mean gabungan} = \frac{\text{total nilai kelompok 1} + \text{total nilai kelompok 2}}{n_1 + n_2}$$
- **Mean Berubah karena Salah Satu Data pada Tabel Diganti:** jika satu data dalam kumpulan data (termasuk yang tersaji dalam tabel frekuensi) ternyata salah dicatat dan harus diganti, cukup sesuaikan totalnya: $$\text{total baru} = \text{total lama} - \text{data salah} + \text{data benar}$$ lalu mean baru = total baru dibagi banyak data (banyak data tidak berubah karena hanya mengganti, bukan menambah/mengurangi data).

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

**Pengenalan:** Kalau data berupa deret angka dengan selisih tetap (barisan aritmatika, misalnya nilai ujian berurutan atau kelipatan tertentu), mean dapat dicari lebih cepat hanya dengan memakai data pertama dan data terakhir.

**Poin yang Harus Diketahui:**
- Rumus cara cepat: $$Mean = \frac{data\ pertama + data\ terakhir}{2}$$
- Contoh: mean dari data 10, 20, 30, 40, 50 = (10 + 50) / 2 = 30 (tanpa perlu menjumlah kelima angka lalu membagi 5).
- **Mean Gabungan Dua Kelompok Berpola Berbeda:** trik cara cepat di atas hanya berlaku untuk satu kelompok data berpola aritmatika. Jika ada DUA kelompok data (masing-masing boleh berpola aritmatika atau tidak) yang akan digabung, tetap pakai rumus mean gabungan berbasis total dan banyak data tiap kelompok — bukan menjumlah dua mean lalu dibagi 2 (itu HANYA benar jika $n_1 = n_2$): $$\text{Mean gabungan} = \frac{n_1 \bar{x}_1 + n_2 \bar{x}_2}{n_1 + n_2}$$
- **Cara Cepat Mencari Data yang Diganti agar Mean Berubah Sesuai Target:** untuk data berpola aritmatika, sering muncul soal: satu suku diganti sehingga mean seluruh data berubah sebesar nilai tertentu. Gunakan cara cepat (data pertama + data terakhir)/2 untuk mendapatkan mean lama, lalu cari selisih total memakai $\Delta\text{mean} \times n$.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-061300000000', 'Nilai ujian 5 siswa adalah 5, 7, 8, 6, 9. Rata-rata (mean) nilai tersebut adalah...', '6', '6,5', '7', '7,5', '8', 'C', 'Mean = (5+7+8+6+9)/5 = 35/5 = 7.', 'easy'),
('b0000000-0000-4000-8000-061300000000', 'Data nilai siswa setelah diurutkan: 4, 6, 7, 7, 8, 9, 10. Median dari data tersebut adalah...', '6', '7', '7,5', '8', '9', 'B', 'Banyak data n=7 (ganjil), median = data ke-(7+1)/2 = data ke-4 = 7.', 'easy'),
('b0000000-0000-4000-8000-061300000000', 'Data berikut menunjukkan nilai ulangan: 2, 3, 3, 4, 5, 5, 5, 6. Modus dari data tersebut adalah...', '3', '5', '4', '6', 'Tidak ada modus', 'B', 'Modus adalah nilai yang paling sering muncul. Nilai 5 muncul 3 kali, lebih banyak dari nilai lain, sehingga modus = 5.', 'medium'),
('b0000000-0000-4000-8000-061300000000', 'Data suhu (dalam derajat Celsius) selama 5 hari adalah 12, 15, 9, 20, 17. Jangkauan (range) data tersebut adalah...', '8', '9', '10', '11', '12', 'D', 'Range = nilai maksimum - nilai minimum = 20 - 9 = 11.', 'medium'),
('b0000000-0000-4000-8000-061300000000', 'Sebuah tabel frekuensi menunjukkan nilai 6 diperoleh 2 siswa, nilai 7 diperoleh 3 siswa, dan nilai 9 diperoleh 5 siswa. Rata-rata (mean) nilai seluruh siswa tersebut adalah...', '7,4', '7,6', '8,0', '7,8', '8,2', 'D', 'Total nilai = (6x2)+(7x3)+(9x5) = 12+21+45 = 78. Total siswa = 2+3+5 = 10. Mean = 78/10 = 7,8.', 'hard');
