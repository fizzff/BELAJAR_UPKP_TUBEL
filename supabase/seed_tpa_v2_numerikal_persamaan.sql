-- Materi + mind map + soal: Bab "Persamaan dan Pertidaksamaan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061200000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061200000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061200000000', null, 'Bab ini menguji kemampuan memanipulasi persamaan (linear satu/dua variabel, kuadrat) dan pertidaksamaan linear. Prinsip dasarnya adalah menjaga kesetaraan/urutan nilai saat kedua ruas dioperasikan dengan cara yang sama.', 1),
('b0000000-0000-4000-8000-061200000000', 'Persamaan Linear Satu dan Dua Variabel', '**Definisi:** Persamaan linear satu variabel diselesaikan dengan memindahkan suku sejenis ke satu ruas, misalnya $3x + 5 = 20 \rightarrow 3x = 15 \rightarrow x = 5$. Persamaan linear dua variabel (SPLDV) adalah sepasang persamaan dengan dua variabel yang diselesaikan secara bersamaan.

**Pengenalan:** SPLDV diselesaikan dengan metode eliminasi (menghilangkan salah satu variabel dengan menjumlah/mengurangkan persamaan) atau substitusi (mengganti satu variabel dengan bentuk variabel lain dari persamaan pertama ke persamaan kedua).

**Poin yang Harus Diketahui:**
- Persamaan linear satu variabel: pindahkan suku sejenis ke satu ruas hingga variabel terisolasi.
- Metode eliminasi: hilangkan salah satu variabel dengan menjumlah/mengurangkan kedua persamaan.
- Metode substitusi: ganti satu variabel dengan bentuk variabel lain dari persamaan pertama ke persamaan kedua.
- Soal SPLDV sering disajikan dalam bentuk CERITA, bukan langsung berupa persamaan siap pakai.
- Langkah pertama yang WAJIB dilakukan pada soal cerita adalah menerjemahkan kalimat menjadi dua persamaan matematis dengan memisalkan variabel (misal harga barang pertama = x, harga barang kedua = y), baru kemudian diselesaikan dengan eliminasi/substitusi seperti biasa.

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
('b0000000-0000-4000-8000-061200000000', 'Persamaan Kuadrat', '**Definisi:** Persamaan kuadrat berbentuk umum $ax^2 + bx + c = 0$, dengan dua cara utama menyelesaikannya:

| Metode | Cara |
|---|---|
| Faktorisasi | Cari dua bilangan yang hasil kalinya $= a \times c$ dan jumlahnya $= b$ |
| Rumus abc | $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$ |

**Pengenalan:** Faktorisasi lebih cepat jika akar-akarnya bilangan bulat sederhana; rumus abc dipakai sebagai cara umum untuk semua kasus. Selain itu, ada pola aljabar istimewa dan trik hubungan antar-akar yang bisa mempercepat pengerjaan.

**Poin yang Harus Diketahui:**
- Tabel pola aljabar istimewa (kenali bentuknya, langsung faktorkan tanpa cari-cari dua bilangan):

| Nama Pola | Bentuk Awal | Hasil Faktor |
|---|---|---|
| Selisih kuadrat | $a^2 - b^2$ | $(a-b)(a+b)$ |
| Kuadrat sempurna (jumlah) | $a^2 + 2ab + b^2$ | $(a+b)^2$ |
| Kuadrat sempurna (selisih) | $a^2 - 2ab + b^2$ | $(a-b)^2$ |

- Selain mencari akar-akarnya secara eksplisit, sering kali soal hanya menanyakan HUBUNGAN antar-akar (misalnya $x_1 + x_2$, $x_1 \times x_2$, atau $x_1^2 + x_2^2$) tanpa perlu tahu nilai $x_1$ dan $x_2$ satu per satu.
- Untuk persamaan kuadrat $ax^2+bx+c=0$ dengan akar-akar $x_1$ dan $x_2$, berlaku jumlah dan hasil kali akar:

  $$x_1 + x_2 = -\frac{b}{a} \qquad x_1 \times x_2 = \frac{c}{a}$$

- Trik ini jauh lebih cepat daripada mencari akar satu-satu lebih dulu, terutama untuk pertanyaan yang meminta bentuk gabungan seperti $x_1^2+x_2^2 = (x_1+x_2)^2 - 2x_1x_2$.

**Tips cara cepat:** Sebelum mencoba faktorisasi biasa, cek dulu apakah bentuknya cocok dengan salah satu pola istimewa di atas — misalnya $x^2 - 9$ langsung dikenali sebagai selisih kuadrat ($x^2 - 3^2$) sehingga langsung difaktorkan $(x-3)(x+3)$ tanpa perlu mencari dua bilangan yang hasil kali dan jumlahnya cocok.

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
('b0000000-0000-4000-8000-061200000000', 'Pertidaksamaan Linear', '**Definisi:** Pertidaksamaan linear diselesaikan mirip persamaan, dengan SATU aturan krusial: **tanda pertidaksamaan ($< > \leq \geq$) DIBALIK jika kedua ruas dikalikan atau dibagi dengan bilangan NEGATIF**.

**Pengenalan:** Prinsip penyelesaiannya sama seperti persamaan biasa (memindahkan suku sejenis, mengalikan/membagi kedua ruas), hanya perlu ekstra hati-hati saat mengalikan atau membagi dengan bilangan negatif.

**Poin yang Harus Diketahui:**
- Tanda pertidaksamaan ($< > \leq \geq$) DIBALIK jika kedua ruas dikalikan atau dibagi dengan bilangan NEGATIF.
- Contoh: $-2x + 4 \geq -10 \rightarrow -2x \geq -14 \rightarrow$ (bagi $-2$, tanda dibalik) $\rightarrow x \leq 7$.

**Catatan Penting (cara cepat):** Untuk menghindari kesalahan tanda, usahakan menggeser suku bervariabel ke ruas yang membuat koefisiennya tetap positif, sehingga tidak perlu membalik tanda sama sekali.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-061200000000', 'Nilai x yang memenuhi persamaan 3x + 5 = 20 adalah...', '3', '4', '5', '6', '7', 'C', '3x + 5 = 20 -> 3x = 15 -> x = 5.', 'easy'),
('b0000000-0000-4000-8000-061200000000', 'Diketahui sistem persamaan 2x + y = 10 dan x - y = 2. Nilai x + y adalah...', '4', '5', '7', '8', '6', 'E', 'Eliminasi: (2x+y)+(x-y)=10+2 -> 3x=12 -> x=4. Substitusi: 4-y=2 -> y=2. Maka x+y = 4+2 = 6.', 'medium'),
('b0000000-0000-4000-8000-061200000000', 'Himpunan penyelesaian dari persamaan kuadrat x^2 - 5x + 6 = 0 adalah...', 'x = 1 atau x = 6', 'x = -2 atau x = -3', 'x = -1 atau x = 6', 'x = 2 atau x = 3', 'x = 2 atau x = -3', 'D', 'Faktorisasi: cari 2 bilangan dengan hasil kali 6 dan jumlah -5, yaitu -2 dan -3. x^2-5x+6=(x-2)(x-3)=0 -> x=2 atau x=3.', 'medium'),
('b0000000-0000-4000-8000-061200000000', 'Penyelesaian dari pertidaksamaan -2x + 4 >= -10 adalah...', 'x <= 7', 'x >= 7', 'x <= -7', 'x >= -7', 'x <= 3', 'A', '-2x+4>=-10 -> -2x>=-14 -> bagi kedua ruas dengan -2 (tanda dibalik) -> x<=7.', 'hard'),
('b0000000-0000-4000-8000-061200000000', 'Jika 4x - 7 = 2x + 9, maka nilai x adalah...', '5', '6', '7', '8', '9', 'D', '4x-7=2x+9 -> 4x-2x=9+7 -> 2x=16 -> x=8.', 'easy');
