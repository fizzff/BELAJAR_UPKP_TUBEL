-- Materi + mind map + soal: Bab "Bilangan Bulat dan Pecahan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060500000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060500000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060500000000', null, 'Bab ini mengukur kecermatan berhitung dasar: operasi bilangan bulat (positif/negatif), urutan operasi hitung, serta pecahan (biasa, campuran, desimal, persen) beserta konversi dan operasinya. Kunci suksesnya adalah ketelitian pada tanda (+/-) dan urutan pengerjaan operasi, bukan rumus yang rumit.', 1),
('b0000000-0000-4000-8000-060500000000', 'Bilangan Bulat dan Urutan Operasi Hitung', '**Definisi:** Urutan pengerjaan operasi hitung campuran mengikuti kaidah **KABATAKU** (Kali Bagi dulu, baru Tambah Kurang), dengan tanda kurung selalu dikerjakan paling dulu.

**Cara Kerja / Langkah Pengerjaan:**
1. Kerjakan dulu semua operasi di dalam tanda kurung.
2. Kerjakan perpangkatan dan penarikan akar.
3. Kerjakan perkalian dan pembagian secara berurutan dari kiri ke kanan.
4. Kerjakan penjumlahan dan pengurangan secara berurutan dari kiri ke kanan.
5. Terapkan aturan tanda bilangan bulat (positif/negatif) pada setiap langkah perkalian, pembagian, maupun pengurangan dengan bilangan negatif.

**Rumus & Poin Kunci:**
- Urutan prioritas pengerjaan operasi hitung campuran:

| Prioritas | Operasi |
|---|---|
| 1 | Kurung ( ) |
| 2 | Perpangkatan/akar |
| 3 | Kali (x) dan Bagi (:) — dikerjakan berurutan dari kiri |
| 4 | Tambah (+) dan Kurang (-) — dikerjakan berurutan dari kiri |

- Aturan tanda bilangan bulat:
  - $(+) \times (+) = (+)$, $(-) \times (-) = (+)$, $(+) \times (-) = (-)$
  - $(+) : (+) = (+)$, $(-) : (-) = (+)$, $(+) : (-) = (-)$
  - Mengurang dengan bilangan negatif sama dengan menambah: $a - (-b) = a + b$
- Level lanjutan (setara OTO Bappenas) biasanya menggabungkan pangkat dan akar sekaligus dalam satu soal berlapis, bukan cuma tambah-kurang-kali-bagi biasa. Ingat aturan tanda: $(-a)^2 = +a^2$ (pangkat genap dari bilangan negatif menjadi positif), sedangkan $(-a)^3 = -a^3$ (pangkat ganjil tetap negatif). Akar pangkat genap ($\sqrt{\phantom{x}}$) dari bilangan negatif tidak dipakai dalam soal TPA karena tidak terdefinisi di bilangan real.

**Kesalahan Umum / Jebakan:**
- Mengerjakan operasi hitung campuran murni dari kiri ke kanan tanpa mendahulukan kali/bagi, padahal keduanya wajib dikerjakan lebih dulu daripada tambah/kurang.
- Salah tanda saat mengurangi dengan bilangan negatif, lupa bahwa $a - (-b) = a + b$ sehingga hasil akhirnya tertukar tanda.
- Menganggap $(-a)^2$ menghasilkan bilangan negatif, padahal pangkat genap dari bilangan negatif selalu menghasilkan bilangan positif.

**Tips cara cepat**: kerjakan dulu semua perkalian/pembagian dalam soal (tandai di kepala atau coret-coretan), baru jumlahkan/kurangkan sisanya dari kiri ke kanan — jangan asal urut dari kiri jika ada kali/bagi di tengah.

**Kesimpulan:** Kuasai urutan KABATAKU dan aturan tanda perkalian/pembagian bilangan bulat, maka soal operasi hitung campuran — termasuk yang menggabungkan pangkat dan akar — bisa diselesaikan dengan cepat dan akurat.

**Contoh Soal:** Hasil dari $\sqrt{144} + 3^2 \times (-2) - \sqrt{64} : 4$ adalah ...
- A. -32
- B. -14
- C. -4
- D. -8
- E. 28

**Pembahasan:**

**Diketahui:** Bentuk operasi hitung campuran $\sqrt{144} + 3^2 \times (-2) - \sqrt{64} : 4$.

**Ditanya:** Hasil dari operasi hitung campuran tersebut.

**Jawab:** Kerjakan pangkat dan akar lebih dulu karena prioritasnya di atas kali/bagi: $\sqrt{144} = 12$, $3^2 = 9$, dan $\sqrt{64} = 8$. Soal menjadi $12 + 9 \times (-2) - 8 : 4$. Lanjutkan kali/bagi: $9 \times (-2) = -18$ dan $8 : 4 = 2$. Terakhir tambah/kurang dari kiri ke kanan: $12 + (-18) - 2 = 12 - 18 - 2 = -8$. Jadi jawabannya adalah D.', 2),
('b0000000-0000-4000-8000-060500000000', 'Pecahan: Bentuk, Operasi, dan Konversi', '**Definisi:** Pecahan adalah bilangan yang menyatakan bagian dari suatu keseluruhan, dan bisa ditulis dalam beberapa bentuk setara: pecahan biasa ($\frac{3}{4}$), pecahan campuran ($2\frac{1}{2} = \frac{5}{2}$), desimal (0,75), dan persen (75%).

**Cara Kerja / Langkah Pengerjaan:**
1. Jika ada pecahan campuran, ubah dulu ke pecahan biasa dengan rumus $a\frac{b}{c} = \frac{(a \times c + b)}{c}$.
2. Untuk penjumlahan/pengurangan, samakan penyebut dulu (cari KPK penyebut), baru operasikan pembilang.
3. Untuk perkalian, kalikan pembilang dengan pembilang dan penyebut dengan penyebut.
4. Untuk pembagian, kalikan dengan kebalikan (invers) pecahan pembagi.
5. Untuk pecahan bertingkat, sederhanakan pembilang dan penyebut besar secara terpisah menjadi satu pecahan tunggal, baru bagi keduanya seperti pembagian pecahan biasa.

**Rumus & Poin Kunci:**
- Tabel konversi cepat:

| Pecahan | Desimal | Persen |
|---|---|---|
| $\frac{1}{2}$ | 0,5 | 50% |
| $\frac{1}{4}$ | 0,25 | 25% |
| $\frac{1}{5}$ | 0,2 | 20% |
| $\frac{1}{8}$ | 0,125 | 12,5% |
| $\frac{3}{4}$ | 0,75 | 75% |

- Operasi pecahan:
  - **Tambah/kurang**: samakan penyebut dulu (cari KPK penyebut), baru operasikan pembilang. Contoh: $\frac{1}{2} + \frac{1}{3} = \frac{3}{6} + \frac{2}{6} = \frac{5}{6}$.
  - **Kali**: kalikan pembilang dengan pembilang, penyebut dengan penyebut (pecahan campuran diubah ke pecahan biasa dulu).
  - **Bagi**: kalikan dengan kebalikan (invers) pecahan pembagi. Contoh: $\frac{2}{3} : \frac{1}{4} = \frac{2}{3} \times \frac{4}{1} = \frac{8}{3}$.
- Rumus konversi pecahan campuran ke pecahan biasa: $a\frac{b}{c} = \frac{(a \times c + b)}{c}$.

**Kesalahan Umum / Jebakan:**
- Menjumlahkan atau mengurangkan pembilang dan penyebut apa adanya tanpa menyamakan penyebut terlebih dahulu.
- Lupa mengubah pecahan campuran ke pecahan biasa sebelum dikalikan atau dibagi.
- Tertukar antara mengalikan langsung dan membalik pecahan pembagi saat mengerjakan pembagian atau pecahan bertingkat.

**Tips cara cepat**: untuk konversi pecahan ke persen, kalikan pecahan dengan 100%. Untuk pecahan campuran $a\frac{b}{c}$, ubah dulu ke pecahan biasa dengan rumus $\frac{(a \times c + b)}{c}$ sebelum dioperasikan.

**Kesimpulan:** Hafalkan tabel konversi umum dan biasakan menyamakan penyebut sebelum tambah/kurang, serta ubah pecahan campuran ke pecahan biasa sebelum kali/bagi — dengan begitu, soal pecahan sederhana maupun bertingkat bisa diselesaikan secara sistematis.

**Contoh Soal:** Hasil dari $\frac{1\frac{1}{2} + \frac{2}{3}}{2\frac{1}{4} - \frac{5}{6}} \times \frac{1}{2}$ adalah ...
- A. $\frac{221}{144}$
- B. $\frac{26}{17}$
- C. $\frac{13}{17}$
- D. $\frac{17}{26}$
- E. $-\frac{1}{4}$

**Pembahasan:**

**Diketahui:** Bentuk pecahan bertingkat $\frac{1\frac{1}{2} + \frac{2}{3}}{2\frac{1}{4} - \frac{5}{6}} \times \frac{1}{2}$.

**Ditanya:** Hasil penyederhanaan pecahan bertingkat tersebut.

**Jawab:** Sederhanakan pembilang dan penyebut pecahan besar secara terpisah dulu. Pembilang: $1\frac{1}{2} + \frac{2}{3} = \frac{3}{2} + \frac{2}{3} = \frac{9}{6} + \frac{4}{6} = \frac{13}{6}$. Penyebut: $2\frac{1}{4} - \frac{5}{6} = \frac{9}{4} - \frac{5}{6} = \frac{27}{12} - \frac{10}{12} = \frac{17}{12}$. Pecahan bertingkat menjadi $\frac{13/6}{17/12} = \frac{13}{6} \times \frac{12}{17} = \frac{156}{102} = \frac{26}{17}$. Kalikan dengan $\frac{1}{2}$: $\frac{26}{17} \times \frac{1}{2} = \frac{26}{34} = \frac{13}{17}$. Jadi jawabannya adalah C.', 3),
('b0000000-0000-4000-8000-060500000000', 'Cara Cepat: Persen di Luar Kepala', '**Definisi:** Menghitung persen dari suatu bilangan sering lebih cepat dilakukan lewat pecahan sederhana (10%, 5%, 1%, dst) daripada mengalikan langsung dengan bentuk persennya.

**Cara Kerja / Langkah Pengerjaan:**
1. Hitung dulu 10% dari bilangan tersebut (cukup geser koma satu digit ke kiri, atau bagi 10).
2. Turunkan nilai 10% itu ke persentase lain yang dibutuhkan (5% = 10% dibagi 2, 1% = bagi 100, 20% = 10% dikali 2, dst).
3. Untuk persentase yang rumit, pecah dulu menjadi jumlah dari 10%, 5%, dan 1% yang mudah dihitung, lalu jumlahkan hasil masing-masing.
4. Untuk soal kenaikan atau diskon berturut-turut, ubah tiap persen menjadi pengali desimal (naik $a\%$ menjadi kali $(1 + \frac{a}{100})$; diskon $b\%$ menjadi kali $(1 - \frac{b}{100})$) dan kalikan secara bertahap sesuai urutan kejadian pada soal.

**Rumus & Poin Kunci:**
- Tabel cara cepat menghitung persen (contoh dari angka 240):

| Persen | Cara Cepat | Contoh dari 240 |
|---|---|---|
| 10% | bagi 10 (geser koma 1 digit) | 24 |
| 5% | 10% dibagi 2 | 12 |
| 1% | bagi 100 (geser koma 2 digit) | 2,4 |
| 20% | 10% dikali 2 | 48 |
| 25% | bagi 4 | 60 |
| 50% | bagi 2 | 120 |
| 15% | 10% + 5% | 36 |

- Kenaikan harga $a\%$ menjadikan harga baru $= (1 + \frac{a}{100}) \times$ harga awal; diskon $b\%$ menjadikan harga akhir $= (1 - \frac{b}{100}) \times$ harga sebelum diskon.

**Kesalahan Umum / Jebakan:**
- Menjumlahkan langsung persentase kenaikan dan diskon berturut-turut (misalnya naik 20% lalu diskon 25% dianggap sama dengan turun 5%), padahal keduanya harus dikalikan bertahap karena dasar perhitungannya berbeda di tiap tahap.
- Salah menggeser jumlah digit koma saat menghitung 10% atau 1% dari suatu angka.
- Menghitung diskon dari harga awal padahal seharusnya dihitung dari harga setelah kenaikan (atau sebaliknya, tergantung urutan kejadian pada soal).

**Tips cara cepat:** Pecah persen yang rumit menjadi jumlah dari 10%, 5%, dan 1% yang sudah gampang dihitung. Misalnya 35% dari suatu angka = 10% + 10% + 10% + 5% dari angka itu, tinggal jumlahkan hasil masing-masing tanpa perkalian panjang.

**Kesimpulan:** Dengan menjadikan 10% sebagai basis dan menurunkannya ke persentase lain, perhitungan persen di luar kepala jadi jauh lebih cepat dibanding mengalikan langsung.

**Contoh Soal:** Suatu barang mengalami kenaikan harga 20%, kemudian didiskon 25% dari harga setelah kenaikan tersebut. Jika harga akhir barang itu adalah Rp180.000, berapakah harga awal barang tersebut?
- A. Rp120.000
- B. Rp300.000
- C. Rp162.000
- D. Rp200.000
- E. Rp189.474

**Pembahasan:**

**Diketahui:** Harga naik 20%, lalu didiskon 25% dari harga setelah kenaikan, harga akhir Rp180.000.

**Ditanya:** Harga awal barang sebelum kenaikan dan diskon.

**Jawab:** Harga setelah naik 20% menjadi 120% dari harga awal, atau $1,2 \times$ harga awal. Harga itu kemudian didiskon 25%, sehingga yang tersisa adalah 75%, atau $0,75 \times (1,2 \times \text{harga awal}) = 0,9 \times \text{harga awal}$. Karena harga akhir Rp180.000 sama dengan $0,9 \times$ harga awal, maka harga awal $= 180.000 : 0,9 = Rp200.000$. Jadi jawabannya adalah D.', 4);

update chapters set mindmap = '# Bilangan Bulat dan Pecahan

## Urutan Operasi (KABATAKU)
- Kurung dulu, lalu pangkat/akar
- Kali & Bagi (kiri ke kanan)
- Tambah & Kurang (kiri ke kanan)

## Bilangan Bulat
- $(-) \times (-) = (+)$ ; $(+) \times (-) = (-)$
- $a - (-b) = a + b$

## Bentuk Pecahan
- Biasa, campuran, desimal, persen
- Campuran $a\frac{b}{c} \rightarrow \frac{(a \times c) + b}{c}$

## Operasi Pecahan
- Tambah/kurang: samakan penyebut (KPK)
- Kali: pembilang x pembilang, penyebut x penyebut
- Bagi: kali dengan kebalikan (invers)

## Konversi
- Pecahan ke persen: kali 100%
- $\frac{1}{2}=50\%$, $\frac{1}{4}=25\%$, $\frac{1}{8}=12,5\%$' where id = 'b0000000-0000-4000-8000-060500000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 24 - 18 : 3 + 5 x 2 adalah...', '17', '4', '28', '2', '33', 'C', 'Kerjakan kali/bagi dulu: 18 : 3 = 6, dan 5 x 2 = 10. Soal menjadi 24 - 6 + 10 = 28.', 'easy', 1),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari (-3)^2 - 2 x (-15 : 3) + akar(81) adalah...', '-28', '10', '8', '28', '46', 'D', 'Kerjakan kurung, pangkat, dan akar dulu: (-15 : 3) = -5, (-3)^2 = 9, akar(81) = 9. Soal menjadi 9 - 2 x (-5) + 9. Kerjakan kali: 2 x (-5) = -10, sehingga 9 - (-10) + 9 = 9 + 10 + 9 = 28.', 'hard', 2),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari (3/4 - 2/5) jika dinyatakan dalam bentuk persen adalah...', '35%', '55%', '7,20%', '70%', '17,5%', 'A', 'Samakan penyebut dulu (KPK dari 4 dan 5 = 20): 3/4 = 15/20, 2/5 = 8/20. Kurangkan: 15/20 - 8/20 = 7/20. Ubah ke desimal: 7/20 = 0,35, lalu kalikan 100% menjadi 35%.', 'medium', 3),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 1 1/3 x 3/4 + 2 1/2 - 5/6 adalah...', '2 2/3', '2 1/3', '3 1/3', '1 5/6', '2 5/6', 'A', 'Kerjakan perkalian dulu: 1 1/3 = 4/3, sehingga 4/3 x 3/4 = 12/12 = 1. Lanjutkan ke 1 + 2 1/2 - 5/6. Ubah 2 1/2 = 5/2, lalu samakan penyebut ke 6: 1 = 6/6, 5/2 = 15/6, 5/6 = 5/6. Maka 6/6 + 15/6 - 5/6 = 16/6 = 2 2/3.', 'hard', 4),
('b0000000-0000-4000-8000-060500000000', 'Bu Siti memiliki 6 1/4 kg beras yang dibelinya seharga Rp12.000 per kg. Sebelum dibagikan kepada 5 tetangga secara merata, Bu Siti menyisihkan 3/4 kg untuk dimasak sendiri hari itu. Berapa kg bagian beras yang diterima oleh masing-masing tetangga?', '1 1/10 kg', '1 1/4 kg', '1 kg', '1/2 kg', '5/2 kg', 'A', 'Info harga beras per kg tidak diperlukan untuk menghitung pembagian. Sisa beras setelah disisihkan = 6 1/4 - 3/4 kg. Ubah ke pecahan biasa: 6 1/4 = 25/4, sehingga 25/4 - 3/4 = 22/4 = 11/2 kg. Bagi rata ke 5 tetangga: (11/2) : 5 = 11/2 x 1/5 = 11/10 = 1 1/10 kg.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 5,54^2 - 3,54 x 5,54 adalah...', '7,08', '9,62', '11,08', '11,8', '16,62', 'C', 'Faktorkan bentuk tersebut: 5,54^2 - 3,54 x 5,54 = 5,54 x (5,54 - 3,54) = 5,54 x 2 = 11,08.', 'easy', 6),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 72,10 : 0,035 adalah...', '206', '260', '2006', '2060', '2600', 'D', '72,10 : 0,035 sama dengan 72.100 : 35 = 2.060.', 'easy', 7),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari akar(32 x akar(64)) adalah...', '8', '12', '16', '24', '32', 'C', 'akar(64) = 8, sehingga di dalam akar luar menjadi 32 x 8 = 256. Maka akar(256) = 16.', 'easy', 8),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 3 3/4 % dari 4.056 adalah...', '152,1', '171,0', '1521', '1524', '1710', 'A', '3 3/4% = 3,75% = 0,0375. Maka 0,0375 x 4.056 = 152,1.', 'easy', 9),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 3/4 x (4/5 x 50%) x (2,85 - 1,25) adalah...', '4,0', '4,8', '0,47', '0,48', '0,49', 'D', '4/5 x 50% = 0,8 x 0,5 = 0,4. Kemudian 3/4 x 0,4 = 0,3. Lalu 2,85 - 1,25 = 1,6. Sehingga 0,3 x 1,6 = 0,48.', 'medium', 10),
('b0000000-0000-4000-8000-060500000000', 'Jika x = 4/7 dari 87,5% dan y = (6 : 0,75) x 1/12, maka...', 'x < y', 'x > y', 'x = y', 'x >= y', 'Hubungan x dan y tidak dapat ditentukan', 'A', 'x = 4/7 x 0,875 = 0,5. y = (6 : 0,75) x 1/12 = 8 x 1/12 = 0,667. Karena 0,5 < 0,667, maka x < y.', 'medium', 11),
('b0000000-0000-4000-8000-060500000000', 'Ada berapa bilangan dua digit yang habis dibagi oleh 5 dan 6 sekaligus?', 'Tidak ada', '1', '2', '3', 'Lebih dari 3', 'D', 'Bilangan yang habis dibagi 5 dan 6 sekaligus harus habis dibagi KPK(5,6) = 30. Bilangan dua digit kelipatan 30 adalah 30, 60, dan 90, sehingga ada 3 bilangan.', 'easy', 12),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari (56 x 56 - 47 x 47) : (56 x 47 - 47 x 56 + 56 - 47) adalah...', '101', '102', '103', '104', '105', 'C', 'Pembilang = 56^2 - 47^2 = (56-47) x (56+47) = 9 x 103 = 927. Penyebut = 56 x 47 - 47 x 56 + 56 - 47 = 0 + 9 = 9 (karena 56 x 47 = 47 x 56 saling meniadakan). Jadi hasilnya 927 : 9 = 103.', 'medium', 13),
('b0000000-0000-4000-8000-060500000000', 'Jika p = akar(7225), q = (25+20)^2, dan r = 0,5^3 maka p + q + r = ...', '2090,125', '2100,125', '2110,125', '2120,125', '2140,125', 'C', 'p = akar(7225) = 85 (karena 85^2 = 7225). q = 45^2 = 2025. r = 0,5^3 = 0,125. Jadi p + q + r = 85 + 2025 + 0,125 = 2110,125.', 'medium', 14),
('b0000000-0000-4000-8000-060500000000', 'Hasil kali tiga buah bilangan positif adalah 35. Jika selisih bilangan terbesar dan terkecil adalah 6, berapakah hasil penjumlahan 2 bilangan terbesarnya?', '3', '5', '10', '12', '13', 'D', 'Faktor tiga bilangan positif yang perkaliannya 35 dengan selisih terbesar-terkecil = 6 adalah 1, 5, dan 7 (7-1=6, dan 1 x 5 x 7 = 35). Jumlah dua bilangan terbesar = 5 + 7 = 12.', 'medium', 15),
('b0000000-0000-4000-8000-060500000000', 'Sebuah bilangan terdiri dari empat angka berbeda. Jumlah keempat angka adalah 12. Angka pertama ditambah angka ketiga sama dengan angka keempat dikurangi angka kedua. Angka ketiga sama dengan selisih angka pertama dan kedua. Angka keempat dibagi angka kedua sama dengan angka pertama dibagi angka ketiga. Bilangan tersebut adalah...', '1236', '1326', '1632', '2136', '2316', 'E', 'Misalkan digit d1,d2,d3,d4. Dari total 12 dan d1+d3=d4-d2 diperoleh d4=d1+d2+d3=6. Dari d3=d2-d1 dan d1+d2+d3=6 diperoleh 2d2=6, sehingga d2=3 dan d3=3-d1. Dari d4:d2=d1:d3 diperoleh 6/3=2=d1/d3, sehingga d1=2d3, dan karena d3=3-d1=3-2d3 maka d3=1 dan d1=2. Diperoleh d1=2, d2=3, d3=1, d4=6, membentuk bilangan 2316 (cek: jumlah=12; 2+1=3=6-3; 1=3-2; 6:3=2=2:1, semua terpenuhi).', 'hard', 16),
('b0000000-0000-4000-8000-060500000000', 'Berat dari empat buah paket masing-masing 20, 60, 80, dan 140 kg. Manakah dari total berat berikut (dalam kg) yang BUKAN merupakan hasil kombinasi (penjumlahan) dari paket-paket tersebut?', '200', '240', '260', '280', null, 'C', '200 dapat dibentuk dari 140+60. 240 dapat dibentuk dari 140+80+20. 280 dapat dibentuk dari 140+80+60. Pilihan 260 tidak dapat dibentuk dari kombinasi manapun dari keempat berat paket yang ada.', 'medium', 17),
('b0000000-0000-4000-8000-060500000000', 'n = 7^3 + 8^3 + 9^3. Nilai n adalah...', '15.840', '13.824', '1.584', '1.384', null, 'C', 'n = 343 + 512 + 729 = 1.584.', 'easy', 18),
('b0000000-0000-4000-8000-060500000000', 'Berapakah hasil dari 5 1/6 : 3/7?', '12 1/18', '12 7/18', '12 11/18', '12 5/18', null, 'A', '5 1/6 : 3/7 = 31/6 : 3/7 = 31/6 x 7/3 = 217/18 = 12 1/18.', 'medium', 19),
('b0000000-0000-4000-8000-060500000000', 'Di antara berikut, manakah yang bernilai terbesar?', '(2+2+2)^2', '((2+2)^2)^2', '(2 x 2 x 2)^2', '4^3', null, 'B', 'A = 6^2 = 36. B = (4^2)^2 = 16^2 = 256. C = 8^2 = 64. D = 4^3 = 64. Jadi nilai terbesar adalah pilihan B, yaitu 256.', 'medium', 20),
('b0000000-0000-4000-8000-060500000000', 'Jumlah tiga digit angka a, b, dan c adalah 12. Berapakah bilangan terbesar yang dapat dibentuk dengan menggunakan masing-masing angka hanya sekali?', '921', '930', '999', '1920', null, 'B', 'Diketahui a+b+c=12, kemungkinan kombinasi angka yang berbeda: 1+2+9=12; 0+3+9=12; 0+4+8=12. Kombinasi 3 digit terbesar berasal dari angka 9, 3, dan 0, yaitu 930.', 'hard', 21),
('b0000000-0000-4000-8000-060500000000', 'Jika akar(akar(akar(a))) = 3, maka nilai a adalah...', '81', '729', '1458', '6561', '6661', 'D', 'Akar tiga kali berturut-turut sama dengan pangkat 1/8, sehingga a^(1/8) = 3, maka a = 3^8 = 6561.', 'medium', 22),
('b0000000-0000-4000-8000-060500000000', 'Jika p = 14/16 dan q = 0,8 maka...', 'p < q', 'p = q', 'Hubungan p dan q tidak dapat ditentukan', 'p > q', 'pq = 7', 'D', 'p = 14/16 = 0,875. Karena 0,875 > 0,8, maka p > q.', 'easy', 23),
('b0000000-0000-4000-8000-060500000000', 'Jika hari ini adalah hari Selasa, 650.000 hari yang akan datang adalah hari...', 'Senin', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'B', 'Karena siklus hari berulang tiap 7 hari, cari sisa 650.000 dibagi 7. 650.000 = 7 x 92.857 + 1, sehingga sisanya 1. Hari Selasa ditambah 1 hari menjadi Rabu.', 'medium', 24),
('b0000000-0000-4000-8000-060500000000', 'Sebuah pecahan diubah menjadi pecahan baru dengan cara pembilang diturunkan 25% dan penyebut dinaikkan 25%. Besarnya pecahan baru tersebut mengalami perubahan sebesar berapa persen dibanding pecahan lama?', '40%', '45%', '50%', '60%', '75%', 'A', 'Misal pecahan lama = p/q. Pecahan baru = 0,75p / 1,25q = 0,6 x (p/q), yaitu 60% dari pecahan lama. Artinya pecahan baru mengalami penurunan sebesar 1 - 0,6 = 0,4 = 40% dibanding pecahan lama.', 'hard', 25);
