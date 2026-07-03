-- Materi + mind map + soal: Bab "Persamaan dan Pertidaksamaan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061200000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061200000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061200000000', null, 'Bab ini menguji kemampuan memanipulasi persamaan (linear satu/dua variabel, kuadrat) dan pertidaksamaan linear. Prinsip dasarnya adalah menjaga kesetaraan/urutan nilai saat kedua ruas dioperasikan dengan cara yang sama.', 1),
('b0000000-0000-4000-8000-061200000000', 'Persamaan Linear Satu dan Dua Variabel', '**Definisi:** Persamaan linear satu variabel diselesaikan dengan memindahkan suku sejenis ke satu ruas hingga variabel terisolasi; sistem persamaan linear dua variabel (SPLDV) adalah sepasang persamaan dua variabel yang diselesaikan bersamaan dengan eliminasi atau substitusi.

**Cara Kerja / Langkah Pengerjaan:**
1. Untuk persamaan satu variabel, pindahkan suku sejenis ke satu ruas hingga variabel terisolasi, misalnya $3x + 5 = 20 \rightarrow 3x = 15 \rightarrow x = 5$.
2. Untuk SPLDV yang berbentuk soal cerita, terjemahkan dulu kalimatnya menjadi dua persamaan matematis dengan memisalkan variabel (misal harga barang pertama = x, harga barang kedua = y).
3. Pilih metode eliminasi (samakan koefisien salah satu variabel, lalu jumlahkan/kurangkan kedua persamaan untuk menghilangkannya) atau metode substitusi (ganti satu variabel dengan bentuk variabel lain dari persamaan pertama ke persamaan kedua).
4. Selesaikan hingga diperoleh nilai satu variabel, lalu substitusikan kembali ke salah satu persamaan awal untuk mendapatkan nilai variabel lainnya.

**Rumus & Poin Kunci:**
- Persamaan linear satu variabel: pindahkan suku sejenis ke satu ruas hingga variabel terisolasi.
- Metode eliminasi: hilangkan salah satu variabel dengan menjumlah/mengurangkan kedua persamaan (boleh dikalikan dulu agar koefisiennya sama).
- Metode substitusi: ganti satu variabel dengan bentuk variabel lain dari persamaan pertama ke persamaan kedua.
- Soal SPLDV sering disajikan dalam bentuk CERITA, bukan langsung berupa persamaan siap pakai.

**Kesalahan Umum / Jebakan:**
- Pada soal cerita, langsung menebak nilai tanpa memisalkan variabel dan menyusun persamaan terlebih dahulu, sehingga salah menerjemahkan kalimat menjadi persamaan.
- Saat eliminasi, lupa mengalikan SELURUH persamaan (termasuk ruas kanan) dengan bilangan pengali, sehingga persamaan menjadi tidak setara lagi.

**Kesimpulan:** Kuasai dulu langkah memisalkan variabel dari soal cerita, baru terapkan eliminasi atau substitusi untuk menemukan nilai tiap variabel.

**Contoh Soal:** Ani membeli 2 buku dan 3 pensil seharga Rp 26.000. Budi membeli 4 buku dan 1 pensil (jenis sama) seharga Rp 32.000. Berapa harga satu buku dan satu pensil?

- A. Buku Rp 7.500, pensil Rp 2.000
- B. Buku Rp 4.000, pensil Rp 7.000
- C. Buku Rp 7.000, pensil Rp 4.000
- D. Buku Rp 6.500, pensil Rp 4.333
- E. Buku Rp 8.000, pensil Rp 3.000

**Pembahasan:**

**Diketahui:** Ani membeli 2 buku dan 3 pensil seharga Rp 26.000; Budi membeli 4 buku dan 1 pensil (jenis sama) seharga Rp 32.000.

**Ditanya:** Harga satu buku dan satu pensil.

**Jawab:** Misalkan harga buku = x dan harga pensil = y, maka dari soal diperoleh dua persamaan: 2x + 3y = 26.000 (i) dan 4x + y = 32.000 (ii). Kalikan (i) dengan 2: 4x + 6y = 52.000 (iii). Eliminasi (iii) dikurangi (ii): 5y = 20.000 -> y = 4.000. Substitusi ke (ii): 4x + 4.000 = 32.000 -> 4x = 28.000 -> x = 7.000. Jadi harga satu buku Rp 7.000 dan satu pensil Rp 4.000. Jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-061200000000', 'Persamaan Kuadrat', '**Definisi:** Persamaan kuadrat berbentuk umum $ax^2 + bx + c = 0$ diselesaikan dengan faktorisasi (jika akar-akarnya bilangan bulat sederhana) atau rumus abc (berlaku untuk semua kasus).

**Cara Kerja / Langkah Pengerjaan:**
1. Cek dulu apakah bentuknya cocok dengan salah satu pola aljabar istimewa (selisih kuadrat atau kuadrat sempurna); jika cocok, langsung faktorkan tanpa mencari-cari dua bilangan.
2. Jika tidak, coba faktorisasi biasa: cari dua bilangan yang hasil kalinya $= a \times c$ dan jumlahnya $= b$.
3. Jika akar tidak bulat/faktorisasi sulit, gunakan rumus abc: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$.
4. Jika soal hanya menanyakan HUBUNGAN antar-akar (misalnya $x_1 + x_2$, $x_1 \times x_2$, atau $x_1^2 + x_2^2$), langsung gunakan rumus jumlah dan hasil kali akar tanpa mencari nilai $x_1$ dan $x_2$ satu per satu.

**Rumus & Poin Kunci:**
- Tabel pola aljabar istimewa:

| Nama Pola | Bentuk Awal | Hasil Faktor |
|---|---|---|
| Selisih kuadrat | $a^2 - b^2$ | $(a-b)(a+b)$ |
| Kuadrat sempurna (jumlah) | $a^2 + 2ab + b^2$ | $(a+b)^2$ |
| Kuadrat sempurna (selisih) | $a^2 - 2ab + b^2$ | $(a-b)^2$ |

- Rumus abc: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$.
- Untuk persamaan kuadrat $ax^2+bx+c=0$ dengan akar-akar $x_1$ dan $x_2$, berlaku jumlah dan hasil kali akar:

  $$x_1 + x_2 = -\frac{b}{a} \qquad x_1 \times x_2 = \frac{c}{a}$$

- Bentuk gabungan yang sering muncul: $x_1^2+x_2^2 = (x_1+x_2)^2 - 2x_1x_2$.

**Kesalahan Umum / Jebakan:**
- Salah tanda saat menghitung $x_1+x_2 = -b/a$ (lupa tanda negatif di depan b), atau salah menentukan nilai $a, b, c$ ketika persamaan belum dalam bentuk baku $ax^2+bx+c=0$.
- Memaksakan faktorisasi manual padahal akar-akarnya bukan bilangan bulat sederhana, sehingga membuang waktu — seharusnya langsung memakai rumus abc.

**Tips cara cepat**: Sebelum mencoba faktorisasi biasa, cek dulu apakah bentuknya cocok dengan salah satu pola istimewa di atas — misalnya $x^2 - 9$ langsung dikenali sebagai selisih kuadrat ($x^2 - 3^2$) sehingga langsung difaktorkan $(x-3)(x+3)$ tanpa perlu mencari dua bilangan yang hasil kali dan jumlahnya cocok.

**Kesimpulan:** Kenali pola istimewa dan hubungan jumlah/hasil kali akar untuk mempercepat penyelesaian tanpa harus mencari akar satu per satu.

**Contoh Soal:** Jika $x_1$ dan $x_2$ adalah akar-akar persamaan $2x^2 - 7x + 3 = 0$, tentukan nilai $x_1^2 + x_2^2$ tanpa mencari akar satu per satu.

- A. 25/4
- B. 43/4
- C. 61/4
- D. 37/4
- E. 49/4

**Pembahasan:**

**Diketahui:** Persamaan kuadrat $2x^2 - 7x + 3 = 0$ dengan akar-akar $x_1$ dan $x_2$.

**Ditanya:** Nilai $x_1^2 + x_2^2$ tanpa mencari akar satu per satu.

**Jawab:** Dari persamaan diperoleh $a=2$, $b=-7$, $c=3$, sehingga $x_1+x_2 = -b/a = 7/2$ dan $x_1 \times x_2 = c/a = 3/2$. Gunakan identitas $x_1^2+x_2^2 = (x_1+x_2)^2 - 2x_1x_2 = (7/2)^2 - 2(3/2) = 49/4 - 3 = 49/4 - 12/4 = 37/4$. Jadi jawabannya adalah D.', 3),
('b0000000-0000-4000-8000-061200000000', 'Pertidaksamaan Linear', '**Definisi:** Pertidaksamaan linear diselesaikan mirip persamaan biasa, dengan SATU aturan krusial: tanda pertidaksamaan ($< > \leq \geq$) DIBALIK jika kedua ruas dikalikan atau dibagi dengan bilangan NEGATIF.

**Cara Kerja / Langkah Pengerjaan:**
1. Pindahkan suku sejenis ke satu ruas seperti menyelesaikan persamaan biasa.
2. Sederhanakan hingga variabel memiliki koefisien tunggal di satu ruas.
3. Jika harus mengalikan/membagi kedua ruas dengan bilangan negatif untuk mengisolasi variabel, balik tanda pertidaksamaannya.
4. Sebagai alternatif, geser suku bervariabel ke ruas yang membuat koefisiennya tetap positif agar tidak perlu membalik tanda sama sekali.

**Rumus & Poin Kunci:**
- Tanda pertidaksamaan ($< > \leq \geq$) DIBALIK jika kedua ruas dikalikan atau dibagi dengan bilangan NEGATIF.
- Contoh: $-2x + 4 \geq -10 \rightarrow -2x \geq -14 \rightarrow$ (bagi $-2$, tanda dibalik) $\rightarrow x \leq 7$.

**Kesalahan Umum / Jebakan:**
- Lupa membalik tanda pertidaksamaan saat mengalikan/membagi kedua ruas dengan bilangan negatif, sehingga arah himpunan penyelesaian menjadi terbalik.
- Hanya membalik tanda pada satu ruas, atau lupa membalik tanda saat mengalikan silang (cross multiplication) dengan bilangan negatif.

**Tips cara cepat**: Untuk menghindari kesalahan tanda, usahakan menggeser suku bervariabel ke ruas yang membuat koefisiennya tetap positif, sehingga tidak perlu membalik tanda sama sekali.

**Kesimpulan:** Selalu waspadai pembalikan tanda saat mengalikan/membagi dengan bilangan negatif, atau hindari sepenuhnya dengan menggeser suku bervariabel ke ruas yang berkoefisien positif.', 4);

update chapters set mindmap = '# Persamaan dan Pertidaksamaan

## Persamaan Linear 1 Variabel
- Pindahkan suku sejenis ke satu ruas
- Contoh: $3x+5=20 \rightarrow x=5$

## SPLDV (2 Variabel)
- Metode eliminasi (hilangkan 1 variabel)
- Metode substitusi (ganti variabel)

## Persamaan Kuadrat
- Bentuk: $ax^2+bx+c=0$
- Faktorisasi: cari 2 bilangan (hasil kali=a.c, jumlah=b)
- Rumus abc: $x = \frac{-b \pm \sqrt{b^2-4ac}}{2a}$

## Pertidaksamaan Linear
- Tanda DIBALIK jika kali/bagi bilangan negatif
- Contoh: $-2x+4\geq-10 \rightarrow x\leq7$

## Catatan Penting
- Geser suku variabel ke ruas berkoefisien positif agar tak perlu balik tanda' where id = 'b0000000-0000-4000-8000-061200000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061200000000', 'Nilai x yang memenuhi persamaan 3x + 5 = 20 adalah...', '3', '4', '5', '6', '7', 'C', '3x + 5 = 20 -> 3x = 15 -> x = 5.', 'easy', 1),
('b0000000-0000-4000-8000-061200000000', 'Nilai x yang memenuhi persamaan 2(x - 3) + 5 = (x + 7)/2 adalah...', '1', '2', '3', '4', '5', 'C', '2(x-3)+5=(x+7)/2 -> 2x-6+5=(x+7)/2 -> 2x-1=(x+7)/2. Kalikan kedua ruas dengan 2: 4x-2=x+7 -> 4x-x=7+2 -> 3x=9 -> x=3.', 'medium', 2),
('b0000000-0000-4000-8000-061200000000', 'Jika x1 dan x2 adalah akar-akar persamaan x^2 - 4x - 5 = 0, maka nilai x1^2 + x2^2 adalah...', '16', '21', '26', '36', '6', 'C', 'Dari persamaan diperoleh a=1, b=-4, c=-5, sehingga x1+x2 = -b/a = 4 dan x1 x x2 = c/a = -5. Gunakan identitas x1^2+x2^2 = (x1+x2)^2 - 2(x1 x x2) = 4^2 - 2(-5) = 16 + 10 = 26.', 'hard', 3),
('b0000000-0000-4000-8000-061200000000', 'Himpunan penyelesaian dari pertidaksamaan -4x + 9 <= 2x - 15 adalah...', 'x <= 4', 'x >= 4', 'x <= -4', 'x >= -4', 'x <= 24', 'B', '-4x+9<=2x-15 -> pindahkan suku variabel: -4x-2x<=-15-9 -> -6x<=-24 -> bagi kedua ruas dengan -6 (tanda dibalik) -> x>=4.', 'hard', 4),
('b0000000-0000-4000-8000-061200000000', 'Sebuah toko menjual apel seharga Rp x per kg dan jeruk seharga Rp y per kg. Rina membeli 2 kg apel dan 1 kg jeruk seharga Rp 70.000, sedangkan Sinta membeli 1 kg apel dan 3 kg jeruk seharga Rp 90.000. Dedi membawa uang Rp 150.000 dan sudah membeli 3 kg apel. Berapa kilogram jeruk MAKSIMAL (bilangan bulat) yang masih bisa ia beli dengan sisa uangnya?', '2 kg', '3 kg', '4 kg', '5 kg', '3,5 kg', 'B', 'Dari SPLDV 2x+y=70.000 (i) dan x+3y=90.000 (ii): substitusi y=70.000-2x ke (ii) -> x+3(70.000-2x)=90.000 -> -5x=-120.000 -> x=24.000, sehingga y=70.000-2(24.000)=22.000. Harga apel Rp24.000/kg dan jeruk Rp22.000/kg. Dedi membeli 3 kg apel = 3x24.000=Rp72.000, sisa uang = 150.000-72.000=Rp78.000. Banyak jeruk n harus memenuhi pertidaksamaan 22.000n <= 78.000 -> n <= 3,54..., karena jeruk dijual dalam kg bulat, jeruk maksimal yang bisa dibeli adalah 3 kg.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061200000000', 'Jika 2p + 3q = 9/4, maka 28p + 42q = ...', '47,25', '36', '28', '31,5', '22,5', 'D', '28p + 42q = 14 x (2p + 3q) = 14 x (9/4) = 126/4 = 31,5.', 'easy', 6),
('b0000000-0000-4000-8000-061200000000', '10% dari suatu bilangan sama dengan 20% dari bilangan lainnya. Jika jumlah kedua bilangan tersebut sama dengan 45, maka selisih kedua bilangan tersebut adalah...', '3', '5', '6', '15', '10', 'D', 'Misalkan bilangan m dan n dengan 0,1m = 0,2n, sehingga m = 2n. Karena m + n = 45, maka 2n + n = 45 -> n = 15 dan m = 30. Selisih kedua bilangan = 30 - 15 = 15.', 'easy', 7),
('b0000000-0000-4000-8000-061200000000', 'Jika 4,5 adalah 30% dari x dan y = 7,12 x 2,2, maka...', 'x < y', 'x > y', 'x = y', 'x = -y', 'hubungan antara x dan y tidak dapat ditentukan', 'A', '4,5 = 0,3x, sehingga x = 15. Sementara itu y = 7,12 x 2,2 = 15,664. Karena 15 < 15,664, maka x < y.', 'easy', 8),
('b0000000-0000-4000-8000-061200000000', 'Jika x^2 = y^2 + 1, dengan x dan y adalah bilangan asli, maka...', 'x > y', 'x = y', 'x < y', 'x <= y', 'hubungan x dan y tidak dapat ditentukan', 'A', 'Karena x^2 = y^2 + 1, maka x^2 > y^2. Karena x dan y adalah bilangan asli (positif), maka x > y.', 'easy', 9),
('b0000000-0000-4000-8000-061200000000', 'Untuk menjalankan sebuah mobil, setiap km diperlukan biaya g rupiah untuk bensin dan m rupiah untuk biaya lainnya. Berapa rupiah biaya untuk menjalankan mobil sejauh 100 km?', '100g + m', '1/[100(g+m)]', '100g + 100m', 'g + m', null, 'C', 'Biaya per km = (g + m). Biaya untuk 100 km = 100 x (g + m) = 100g + 100m.', 'easy', 10),
('b0000000-0000-4000-8000-061200000000', 'Pilihlah bilangan yang tepat untuk menggantikan p pada persamaan berikut: (6 x 5) - (6 + 5) = (6 x 7) - (6 + p)', '7', '17', '27', '37', null, 'B', '(6 x 5) - (6 + 5) = 30 - 11 = 19. (6 x 7) - (6 + p) = 42 - (6 + p) = 36 - p. Karena kedua ruas harus sama, 19 = 36 - p, sehingga p = 36 - 19 = 17.', 'medium', 11),
('b0000000-0000-4000-8000-061200000000', 'Mutiara Residence menawarkan 48 rumah dalam satu cluster dengan empat tipe, yaitu Tipe 21, 36, 45, dan 56. Jumlah tipe 21 adalah 1/3 dari jumlah tipe 36, sementara jumlah tipe 45 adalah 1/3 dari jumlah tipe 56, dan jumlah tipe 45 sama dengan jumlah tipe 36. Berapa banyak rumah tipe 56 yang ditawarkan?', '9', '12', '18', '24', '27', 'E', 'Misalkan jumlah tipe 36 = b, maka tipe 21 = b/3, tipe 45 = b, dan karena tipe 45 = 1/3 dari tipe 56, maka tipe 56 = 3b. Total rumah: b/3 + b + b + 3b = 48 -> (16/3)b = 48 -> b = 9. Jadi jumlah tipe 56 = 3 x 9 = 27.', 'medium', 12),
('b0000000-0000-4000-8000-061200000000', 'Sebuah kaleng yang terisi penuh beratnya 660 gram. Ketika kaleng tersebut hanya terisi setengah, beratnya 420 gram. Jika kaleng kosong dapat dijual ke pemulung seharga Rp5,00 per gram, berapa harga jual kaleng tersebut?', 'Rp600,00', 'Rp900,00', 'Rp1.200,00', 'Rp1.650,00', 'Rp1.800,00', 'B', 'Misalkan berat kaleng kosong = K dan berat isi penuh = C, sehingga K + C = 660 dan K + C/2 = 420. Selisih kedua persamaan: C/2 = 240, sehingga C = 480 dan K = 660 - 480 = 180 gram. Harga jual kaleng kosong = 180 x 5 = Rp900,00.', 'medium', 13),
('b0000000-0000-4000-8000-061200000000', 'Ani membuat 780 ml sirup dan menuangkannya ke dalam setengah dari jumlah botol miliknya. Jika masing-masing botol berisi 80 ml sirup dan sirup Ani bersisa 60 ml, berapa jumlah seluruh botol milik Ani?', '4', '8', '9', '16', '18', 'E', 'Sirup yang dituang = 780 - 60 = 720 ml, mengisi setengah jumlah botol dengan 80 ml per botol, sehingga jumlah botol yang terisi = 720/80 = 9. Karena itu setengah dari total botol, maka jumlah botol seluruhnya = 9 x 2 = 18.', 'medium', 14),
('b0000000-0000-4000-8000-061200000000', 'Hari ini usia Jeje adalah 1/3 kali usia Kaka. Lima tahun yang lalu, usia Jeje adalah 1/4 kali usia Kaka. Berapa usia Kaka sekarang?', '15', '24', '30', '40', '45', 'E', 'Misalkan usia Kaka sekarang = K, sehingga usia Jeje sekarang = K/3. Lima tahun lalu: K/3 - 5 = (1/4)(K - 5). Kalikan kedua ruas dengan 12: 4K - 60 = 3K - 15, sehingga K = 45. (Cek: usia Jeje = 15, usia Kaka = 45; lima tahun lalu usia Jeje = 10 dan usia Kaka = 40, dan 10 = (1/4) x 40, benar.)', 'medium', 15),
('b0000000-0000-4000-8000-061200000000', 'Selisih uang Badu dan Umai adalah Rp36.000,00. Jika Badu memberikan 1/5 dari uangnya kepada Umai, maka jumlah uang mereka berdua menjadi sama. Berapa jumlah uang mereka mula-mula?', 'Rp124.000,00', 'Rp126.000,00', 'Rp128.000,00', 'Rp130.000,00', 'Rp144.000,00', 'E', 'Misalkan uang Badu = B (lebih banyak) dan uang Umai = U, sehingga B - U = 36.000. Setelah Badu memberikan 1/5 bagiannya: uang Badu menjadi (4/5)B dan uang Umai menjadi U + (1/5)B. Karena keduanya menjadi sama: (4/5)B = U + (1/5)B, sehingga (3/5)B = U. Substitusi ke B - U = 36.000: B - (3/5)B = 36.000 -> (2/5)B = 36.000 -> B = 90.000 dan U = 54.000. Jumlah uang mula-mula = 90.000 + 54.000 = 144.000.', 'medium', 16),
('b0000000-0000-4000-8000-061200000000', 'Jika x + y > 0, maka nilai dari (5x + 5y)/(x + y) adalah...', '(5x + 5y)/(x + y) > 5', '(5x + 5y)/(x + y) < 5', '(5x + 5y)/(x + y) = 5', 'Hubungan antara x dan y tidak dapat ditentukan', null, 'C', '(5x + 5y)/(x + y) = 5(x + y)/(x + y) = 5, berlaku untuk setiap x + y yang tidak sama dengan nol. Karena x + y > 0 (pasti tidak nol), nilainya selalu 5.', 'medium', 17),
('b0000000-0000-4000-8000-061200000000', 'Jika r = p^2 + 2pq + q^2, dengan p = 3 dan q = 2, berapakah nilai pqr?', '150', '60', '75', '50', null, 'A', 'r = p^2 + 2pq + q^2 = (p + q)^2 = (3 + 2)^2 = 25. Maka pqr = 3 x 2 x 25 = 150.', 'medium', 18),
('b0000000-0000-4000-8000-061200000000', 'Seorang pekerja dibayar d rupiah per jam untuk 8 jam pertama. Setiap jam setelah jam kedelapan, ia dibayar c rupiah per jam. Jika pada suatu hari ia bekerja selama 12 jam, berapakah upah rata-rata per jam pada hari itu?', '(2d+c)/3', '8d+4c', '(8d+4c)/12', '(4d+8c)/12', null, 'C', 'Upah untuk 8 jam pertama = 8d rupiah, dan upah untuk 4 jam berikutnya = 4c rupiah, sehingga total upah hari itu = 8d + 4c. Upah rata-rata per jam = (8d + 4c)/12.', 'medium', 19),
('b0000000-0000-4000-8000-061200000000', 'Jika operasi @ didefinisikan dengan @a = a^2 - 2, maka nilai @(@5) adalah...', '23', '527', '529', '621', null, 'B', '@5 = 5^2 - 2 = 23. Maka @(@5) = @23 = 23^2 - 2 = 529 - 2 = 527.', 'medium', 20),
('b0000000-0000-4000-8000-061200000000', 'Diketahui R = m - 2n - (2m + 3n) dan S = 5n + m, maka...', 'R > S', 'R < S', 'R = S', 'R = -S', 'hubungan R dan S tidak dapat ditentukan', 'D', 'R = m - 2n - 2m - 3n = -m - 5n = -(m + 5n). Karena S = m + 5n, maka R = -S.', 'medium', 21),
('b0000000-0000-4000-8000-061200000000', 'Jika diketahui 20x + 4y = 38 dan 2x - 6y = 7, maka...', 'x > y', 'x = y', 'x < y', 'x >= y', 'hubungan x dan y tidak dapat ditentukan', 'A', 'Kalikan persamaan kedua dengan 10: 20x - 60y = 70. Kurangkan dari persamaan pertama: (20x + 4y) - (20x - 60y) = 38 - 70 -> 64y = -32 -> y = -0,5. Substitusi ke 2x - 6y = 7: 2x + 3 = 7 -> x = 2. Karena 2 > -0,5, maka x > y.', 'medium', 22),
('b0000000-0000-4000-8000-061200000000', 'Uang Ahmad Rp20.000,00 lebih banyak daripada uang Bagas ditambah dua kali uang Hasna. Jumlah uang Ahmad, Bagas, dan Hasna adalah Rp100.000,00. Selisih uang Bagas dan Hasna adalah Rp10.000,00. Berapa uang Ahmad?', 'Rp22.000,00', 'Rp33.000,00', 'Rp51.000,00', 'Rp66.000,00', 'Rp67.000,00', 'D', 'Misalkan Bagas > Hasna dengan Bagas - Hasna = 10.000, sehingga Bagas = Hasna + 10.000. Ahmad = Bagas + 2 x Hasna + 20.000 = (Hasna + 10.000) + 2Hasna + 20.000 = 3Hasna + 30.000. Karena Ahmad + Bagas + Hasna = 100.000: (3Hasna + 30.000) + (Hasna + 10.000) + Hasna = 100.000 -> 5Hasna = 60.000 -> Hasna = 12.000. Maka Bagas = 22.000 dan Ahmad = 3 x 12.000 + 30.000 = 66.000. (Cek: 66.000 + 22.000 + 12.000 = 100.000, benar.)', 'hard', 23),
('b0000000-0000-4000-8000-061200000000', 'Jika ab > 0 dan a/b < 1, maka...', 'a > b', 'a = b', 'a < b', 'a >= b', 'hubungan a dan b tidak dapat ditentukan', 'E', 'Jika a dan b sama-sama positif (misalnya a=1, b=2), maka a/b = 0,5 < 1 dan a < b. Namun jika a dan b sama-sama negatif (misalnya a=-1, b=-2), maka ab = 2 > 0 dan a/b = 0,5 < 1 juga terpenuhi, tetapi di sini a=-1 lebih besar dari b=-2 (a > b). Karena kedua kemungkinan (a<b dan a>b) sama-sama memenuhi syarat yang diberikan, hubungan a dan b tidak dapat ditentukan secara pasti.', 'hard', 24),
('b0000000-0000-4000-8000-061200000000', 'Usia B dua kali usia A, sedangkan usia C 10 tahun lebih muda daripada usia B. Jika rata-rata usia A, B, dan C sama dengan usia C, berapakah jumlah usia A dan usia C?', '30', '40', '50', 'Salah semua', null, 'C', '(A + B + C)/3 = C, sehingga A + B = 2C. Karena B = 2A, maka A + 2A = 2C -> 3A = 2C. Karena C = B - 10 = 2A - 10, maka 3A = 2(2A - 10) = 4A - 20 -> A = 20. Maka B = 40 dan C = 2(20) - 10 = 30. Jumlah usia A dan C = 20 + 30 = 50 tahun.', 'hard', 25),
('b0000000-0000-4000-8000-061200000000', 'Dalam sebuah pemilihan presiden, calon presiden (capres) Z mendapatkan suara, dan capres Y mendapat suara 1/4 lebih sedikit daripada capres Z. Jika capres X mendapat suara 1/3 lebih banyak daripada capres Y, dan capres Z mendapatkan 24 juta suara, berapa jumlah suara yang didapatkan capres X?', '18 juta', '24 juta', '26 juta', '32 juta', null, 'B', 'Suara Y = Z - (1/4)Z = (3/4)Z = (3/4) x 24 juta = 18 juta. Suara X = Y + (1/3)Y = (4/3)Y = (4/3) x 18 juta = 24 juta.', 'hard', 26),
('b0000000-0000-4000-8000-061200000000', 'Sepuluh tahun yang lalu, usia Rudi adalah sepertiga dari usianya sekarang. Lima belas tahun yang akan datang, perbandingan antara usia Marlena dan usia Rudi adalah 3:5. Berapa usia Marlena lima tahun yang akan datang?', '8 tahun', '10 tahun', '12 tahun', '15 tahun', null, 'A', 'Misalkan usia Rudi sekarang = A, maka A - 10 = (1/3)A -> (2/3)A = 10 -> A = 15 tahun. Lima belas tahun yang akan datang, usia Rudi = 15 + 15 = 30 tahun. Perbandingan usia Marlena : usia Rudi = 3 : 5, sehingga (B + 15) : 30 = 3 : 5 -> B + 15 = 30 x (3/5) = 18 -> B = 3 tahun. Usia Marlena lima tahun yang akan datang = 3 + 5 = 8 tahun.', 'hard', 27);
