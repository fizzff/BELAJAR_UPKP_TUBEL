-- Materi + mind map + soal: Bab "Baris serta Deret Angka dan Huruf" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061400000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061400000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061400000000', null, 'Bab ini menguji kemampuan mengenali pola pada barisan angka, huruf, atau kombinasi keduanya, lalu memprediksi suku berikutnya. Kuncinya adalah memeriksa selisih atau rasio antar suku secara sistematis.', 1),
('b0000000-0000-4000-8000-061400000000', 'Pola Deret Angka', '**Definisi:** Pola deret angka adalah aturan tetap yang menghubungkan satu suku dengan suku berikutnya dalam sebuah barisan bilangan, sehingga suku-suku selanjutnya dapat diprediksi.

**Cara Kerja / Langkah Pengerjaan:**
1. Hitung selisih antar suku yang berurutan satu per satu (bukan langsung dari suku pertama ke suku terakhir).
2. Jika selisihnya sudah tetap, deret tersebut adalah barisan aritmatika; jika rasionya (hasil bagi) yang tetap, deret tersebut adalah barisan geometri.
3. Jika selisih tingkat pertama belum tetap, hitung selisih dari selisihnya (selisih tingkat dua) untuk memeriksa pola selisih bertingkat.
4. Jika suatu suku tampak sama dengan jumlah dua suku sebelumnya, periksa kemungkinan pola Fibonacci.
5. Jika deret tampak tidak beraturan, curigai deret campuran: pisahkan suku-suku pada posisi ganjil dan posisi genap menjadi dua barisan terpisah, cari pola (selisih atau rasio) masing-masing secara independen, baru gabungkan kembali untuk memprediksi suku berikutnya sesuai posisinya.

**Rumus & Poin Kunci:**
- Jenis pola deret angka yang umum diuji:

| Jenis | Ciri | Contoh |
|---|---|---|
| Aritmatika | Selisih antar suku tetap (beda = $b$) | 2, 5, 8, 11, ... (beda 3) |
| Geometri | Rasio antar suku tetap (rasio = $r$) | 3, 6, 12, 24, ... (rasio 2) |
| Selisih bertingkat | Selisihnya sendiri membentuk pola (naik/turun bertahap) | 2, 6, 12, 20, 30, ... (selisih 4, 6, 8, 10, ...) |
| Fibonacci | Suku berikutnya = jumlah dua suku sebelumnya | 1, 1, 2, 3, 5, 8, ... |

- **Pola Deret Campuran (Berselang-seling Dua Sub-pola):** level lanjutan sering menyisipkan DUA pola angka berbeda yang berjalan berselang-seling dalam satu deret: suku ganjil (posisi ke-1, ke-3, ke-5, ...) mengikuti pola A, sedangkan suku genap (posisi ke-2, ke-4, ke-6, ...) mengikuti pola B — keduanya murni angka, tanpa unsur huruf. Contoh: 2, 100, 5, 95, 8, 90, ... — suku ganjil (2, 5, 8, ...) naik 3 (aritmatika), suku genap (100, 95, 90, ...) turun 5 (aritmatika juga, tapi dengan pola berbeda).
- **Pola Huruf dengan Loncatan Tidak Tetap (Bertingkat):** prinsip selisih bertingkat pada deret angka juga berlaku pada deret huruf, dengan loncatan antar huruf yang berubah mengikuti pola (bukan loncatan tetap). Pembahasan lengkap beserta contohnya ada di sub-topik "Pola Deret Huruf dan Kombinasi".

**Kesalahan Umum / Jebakan:**
- Menyimpulkan pola hanya dari dua suku pertama, tanpa memeriksa seluruh selisih antar suku berurutan, sehingga salah membaca deret campuran sebagai deret tunggal.
- Tidak menyadari bahwa selisihnya sendiri berpola (selisih bertingkat), sehingga terus mencoba mencari selisih tetap yang sebenarnya tidak ada.
- Keliru antara pola selisih (ditambah/dikurang) dan pola rasio (dikali/dibagi), misalnya menganggap deret geometri sebagai deret aritmatika atau sebaliknya.

**Kesimpulan:** Kenali dulu jenis pola dasarnya (aritmatika, geometri, selisih bertingkat, atau Fibonacci), lalu waspadai deret campuran yang menggabungkan dua sub-pola berselang-seling — selalu pisahkan posisi ganjil dan genap sebelum mencari polanya masing-masing.

**Contoh Soal:** Perhatikan deret berikut: 3, 50, 7, 45, 11, 40, ... Dua suku berikutnya adalah...

- A. 14 dan 35
- B. 15 dan 30
- C. 19 dan 35
- D. 15 dan 35
- E. 15 dan 45

**Pembahasan:**

**Diketahui:** Deret 3, 50, 7, 45, 11, 40, ...

**Ditanya:** Dua suku berikutnya dalam deret tersebut.

**Jawab:** Langkah 1: pisahkan berdasarkan posisi. Suku ganjil (posisi 1, 3, 5, ...) = 3, 7, 11, ... (bertambah 4 setiap kali, aritmatika beda 4). Suku genap (posisi 2, 4, 6, ...) = 50, 45, 40, ... (berkurang 5 setiap kali, aritmatika beda -5). Langkah 2: terapkan pola masing-masing untuk mencari suku berikutnya. Suku ganjil berikutnya (posisi 7) = 11 + 4 = 15. Suku genap berikutnya (posisi 8) = 40 - 5 = 35. Jadi jawabannya adalah D (15 dan 35, deret lengkap: 3, 50, 7, 45, 11, 40, 15, 35, ...).', 2),
('b0000000-0000-4000-8000-061400000000', 'Pola Deret Huruf dan Kombinasi', '**Definisi:** Pola deret huruf adalah aturan "loncatan" pada posisi alfabet (A=1 sampai Z=26) yang menghubungkan satu huruf dengan huruf berikutnya, sedangkan deret kombinasi angka-huruf memiliki dua pola yang berjalan bersamaan.

**Cara Kerja / Langkah Pengerjaan:**
1. Ubah setiap huruf menjadi posisi alfabetnya (A=1 sampai Z=26) menggunakan tabel posisi alfabet.
2. Hitung selisih posisi antar huruf yang berurutan satu per satu, jangan langsung membandingkan huruf pertama dengan huruf terakhir.
3. Jika selisihnya sama semua, itu loncatan tetap; jika berselang-seling mengikuti pola tertentu (misalnya +1, +2, +1, +2, ...), berarti loncatannya bertingkat/tidak tetap — tentukan dulu posisi suku yang dicari berada di siklus loncatan yang mana.
4. Untuk deret kombinasi angka-huruf, pisahkan dulu elemen huruf dan elemen angka menjadi dua barisan terpisah, cari pola masing-masing secara independen, baru gabungkan kembali untuk menjawab suku berikutnya.

**Rumus & Poin Kunci:**
- Tabel posisi alfabet (hafalkan/coret-coret di lembar buram supaya tidak perlu menghitung manual satu-satu saat mengerjakan soal):

| Huruf | Posisi | Huruf | Posisi | Huruf | Posisi |
|---|---|---|---|---|---|
| A=1 | F=6 | K=11 | P=16 | U=21 | Z=26 |
| B=2 | G=7 | L=12 | Q=17 | V=22 | |
| C=3 | H=8 | M=13 | R=18 | W=23 | |
| D=4 | I=9 | N=14 | S=19 | X=24 | |
| E=5 | J=10 | O=15 | T=20 | Y=25 | |

- Pisahkan dulu elemen huruf dan elemen angka menjadi dua barisan terpisah pada deret kombinasi, cari pola masing-masing, baru gabungkan kembali untuk menjawab suku berikutnya.
- **Pola Huruf dengan Loncatan Tidak Tetap/Bertingkat:** level lanjutan tidak selalu memakai loncatan huruf yang tetap. Kadang loncatannya sendiri berubah mengikuti pola tertentu, misalnya bergantian loncat 1 huruf lalu loncat 2 huruf, atau loncatan bertambah 1 setiap kali (analog dengan selisih bertingkat pada deret angka, tapi diterapkan pada posisi alfabet). Contoh: A, B, D, E, G, H, ... — pola loncatannya bergantian +1, +2, +1, +2, ... (A ke B loncat 1, B ke D loncat 2, D ke E loncat 1, E ke G loncat 2, dan seterusnya), sehingga suku berikutnya setelah H adalah loncat 2 lagi menjadi J.
- **Pola Deret Campuran Angka Berselang-seling (Aplikasi pada Deret Kombinasi):** prinsip deret campuran (dua sub-pola berselang-seling) yang berlaku pada angka murni juga menjadi dasar deret kombinasi angka-huruf: elemen huruf punya polanya sendiri dan elemen angka punya polanya sendiri, keduanya berjalan bersamaan tapi harus dipisah dan dianalisis independen sebelum digabungkan kembali (lihat sub-topik "Pola Deret Angka" untuk contoh murni angkanya).

**Kesalahan Umum / Jebakan:**
- Menghitung posisi huruf secara manual dari "A, B, C, D, ..." satu per satu tanpa memakai tabel posisi, sehingga rawan salah hitung terutama untuk huruf-huruf di akhir alfabet.
- Mengasumsikan loncatan huruf selalu tetap, padahal beberapa soal memakai loncatan bertingkat/berselang-seling yang perlu diperiksa selisih demi selisih.
- Pada deret kombinasi angka-huruf, mencari pola huruf dan angka secara bersamaan tanpa memisahkannya terlebih dahulu, sehingga polanya tercampur dan sulit dikenali.

**Kesimpulan:** Hafalkan tabel posisi alfabet agar perhitungan lebih cepat, selalu pisahkan elemen huruf dan angka pada deret kombinasi, dan waspadai loncatan huruf yang tidak tetap/bertingkat sebelum menyimpulkan pola akhir.

**Contoh Soal:** Perhatikan deret huruf berikut: B, C, E, F, H, I, ... Tiga huruf berikutnya adalah...

- A. K, M, O
- B. J, L, M
- C. K, L, M
- D. K, L, N
- E. J, L, N

**Pembahasan:**

**Diketahui:** Deret huruf B, C, E, F, H, I, ...

**Ditanya:** Tiga huruf berikutnya dalam deret tersebut.

**Jawab:** Langkah 1: ubah ke posisi alfabet menggunakan tabel di atas: B=2, C=3, E=5, F=6, H=8, I=9. Langkah 2: hitung selisih posisi berurutan: 2 ke 3 (+1), 3 ke 5 (+2), 5 ke 6 (+1), 6 ke 8 (+2), 8 ke 9 (+1) — polanya berselang-seling +1, +2, +1, +2, +1, .... Langkah 3: karena selisih terakhir (dari H ke I) adalah +1, maka mengikuti siklus, selisih berikutnya harus +2, lalu +1, lalu +2 lagi. Posisi berikutnya = 9 + 2 = 11 (huruf K), lalu 11 + 1 = 12 (huruf L), lalu 12 + 2 = 14 (huruf N). Jadi jawabannya adalah D (K, L, N, deret lengkap: B, C, E, F, H, I, K, L, N, ...).', 3);

update chapters set mindmap = '# Baris serta Deret Angka dan Huruf

## Deret Aritmatika
- Selisih antar suku tetap (beda b)
- Contoh: 2,5,8,11,...

## Deret Geometri
- Rasio antar suku tetap (rasio r)
- Contoh: 3,6,12,24,...

## Selisih Bertingkat
- Selisihnya sendiri membentuk pola
- Contoh: 2,6,12,20,30,... (selisih 4,6,8,10)

## Deret Fibonacci
- Suku berikutnya = jumlah 2 suku sebelumnya
- Contoh: 1,1,2,3,5,8,...

## Deret Huruf & Kombinasi
- Huruf: loncatan posisi alfabet (A,D,G,J,... loncat 2)
- Kombinasi angka-huruf: pola berjalan bersamaan, pisahkan dulu baru gabungkan' where id = 'b0000000-0000-4000-8000-061400000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061400000000', 'Suku ke-2 dan suku ke-5 sebuah deret geometri berturut-turut adalah 6 dan 48. Suku ke-7 deret tersebut adalah...', '96', '144', '168', '192', '384', 'D', 'Rasio dapat dicari dari suku ke-5 dibagi suku ke-2 = r^3, yaitu 48/6 = 8 = r^3, sehingga r = 2. Suku pertama = suku ke-2 / r = 6/2 = 3. Suku ke-7 = a x r^6 = 3 x 2^6 = 3 x 64 = 192. Jadi jawabannya adalah D.', 'medium', 1),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 2, 100, 4, 95, 8, 90, 14, 85, ... Dua suku berikutnya adalah...', '20 dan 80', '22 dan 80', '22 dan 75', '24 dan 80', '22 dan 82', 'B', 'Pisahkan berdasarkan posisi ganjil dan genap. Suku ganjil (posisi 1,3,5,7,...) = 2, 4, 8, 14, ... memiliki selisih 2, 4, 6 (selisih bertingkat: selisihnya sendiri bertambah 2 setiap kali), sehingga selisih berikutnya = 8 dan suku ganjil berikutnya (posisi 9) = 14 + 8 = 22. Suku genap (posisi 2,4,6,8,...) = 100, 95, 90, 85, ... memiliki selisih tetap -5 (aritmatika biasa), sehingga suku genap berikutnya (posisi 10) = 85 - 5 = 80. Jadi jawabannya adalah B (22 dan 80).', 'hard', 2),
('b0000000-0000-4000-8000-061400000000', 'Diketahui deret berpola Fibonacci dengan dua suku pertama 2 dan 5, sehingga deretnya adalah 2, 5, 7, 12, 19, ... Jumlah suku ke-7 dan suku ke-8 deret tersebut adalah...', '111', '119', '125', '131', '143', 'D', 'Pola Fibonacci: setiap suku = jumlah dua suku sebelumnya. Suku ke-6 = suku ke-4 + suku ke-5 = 12+19 = 31. Suku ke-7 = suku ke-5 + suku ke-6 = 19+31 = 50. Suku ke-8 = suku ke-6 + suku ke-7 = 31+50 = 81. Jumlah suku ke-7 dan suku ke-8 = 50+81 = 131. Jadi jawabannya adalah D.', 'medium', 3),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: A, D, G, J, ... Huruf berikutnya adalah...', 'K', 'L', 'M', 'N', 'O', 'C', 'Pola loncat 2 huruf: A(1), D(4), G(7), J(10), sehingga berikutnya adalah huruf ke-13, yaitu M.', 'medium', 4),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret kombinasi berikut: B2, D5, F8, H11, ... Suku ke-6 deret tersebut adalah...', 'J14', 'K16', 'L17', 'L14', 'K17', 'C', 'Pisahkan huruf dan angka. Huruf: B(2), D(4), F(6), H(8), ... loncat 2 posisi setiap kali, sehingga suku ke-5 = J(10) dan suku ke-6 = L(12). Angka: 2, 5, 8, 11, ... bertambah 3 setiap kali, sehingga suku ke-5 = 14 dan suku ke-6 = 17. Jadi suku ke-6 = L17, jawabannya adalah C.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 21, 29, 39, 51, 65, ... Suku berikutnya adalah...', '80', '81', '82', '83', '84', 'B', 'Selisih antar suku: 8, 10, 12, 14 (selisihnya bertambah 2 setiap kali). Selisih berikutnya = 16, sehingga suku berikutnya = 65 + 16 = 81.', 'easy', 6),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 4, 6, 9, 14, 21, 32, ... Dua suku berikutnya adalah...', '45 dan 60', '45 dan 62', '45 dan 64', '48 dan 62', '48 dan 60', 'B', 'Selisih antar suku: 2, 3, 5, 7, 11 (barisan bilangan prima). Selisih berikutnya adalah 13, sehingga suku berikutnya = 32+13 = 45. Selisih setelahnya adalah 17, sehingga suku berikutnya = 45+17 = 62.', 'medium', 7),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 1/9, 1/3, 1, 3, 9, 27, ... Dua suku berikutnya adalah...', '9 dan 1', '21 dan 35', '27 dan 80', '81 dan 243', '90 dan 210', 'D', 'Deret ini merupakan barisan geometri dengan rasio 3 (setiap suku merupakan hasil kali suku sebelumnya dengan 3). Setelah 27, suku berikutnya adalah 27x3=81, kemudian 81x3=243.', 'easy', 8),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 147, 146, 142, 133, 117, 92, ... Suku berikutnya adalah...', '52', '56', '62', '74', '82', 'B', 'Selisih antar suku: -1, -4, -9, -16, -25, yaitu negatif dari kuadrat bilangan asli (1 kuadrat, 2 kuadrat, 3 kuadrat, 4 kuadrat, 5 kuadrat). Selisih berikutnya adalah -6 kuadrat = -36, sehingga suku berikutnya = 92-36 = 56.', 'hard', 9),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 100, 52, 28, 16, 10, ... Dua suku berikutnya adalah...', '7 dan 5,5', '7,2 dan 9,2', '7,5 dan 5', '8 dan 4', '12 dan 6', 'A', 'Selisih antar suku: -48, -24, -12, -6, masing-masing merupakan setengah dari selisih sebelumnya (rasio selisih 1/2). Selisih berikutnya adalah -3, sehingga suku berikutnya = 10-3 = 7. Selisih setelahnya adalah -1,5, sehingga suku berikutnya = 7-1,5 = 5,5.', 'hard', 10),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 0, 2, 6, 12, 20, ... Suku berikutnya adalah...', '30', '32', '34', '36', '38', 'A', 'Selisih antar suku bertambah 2 setiap kali: +2, +4, +6, +8, +10. Maka suku berikutnya = 20+10 = 30.', 'easy', 11),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 64, 63, 65, 64, ..., 65, 67, 66. Bilangan yang tepat untuk mengisi titik-titik tersebut adalah...', '64', '65', '66', '68', '70', 'C', 'Pola selisih berselang-seling adalah -1, +2, -1, +2, .... Dari 64 (suku ke-4), selisih berikutnya adalah +2, sehingga suku yang dicari = 64+2 = 66 (dan pola berlanjut konsisten: 65-66=-1, 67-65=+2, 66-67=-1).', 'medium', 12),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 50, 40, 100, 90, ..., 140, 200, 190. Bilangan yang tepat untuk mengisi titik-titik tersebut adalah...', '120', '130', '140', '150', '160', 'D', 'Pola selisih berselang-seling adalah -10, +60, -10, +60, .... Dari 90 (suku ke-4), selisih berikutnya adalah +60, sehingga suku yang dicari = 90+60 = 150 (pola berlanjut konsisten: 140-150=-10, 200-140=+60, 190-200=-10).', 'medium', 13),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 28, 34, 22, 46, -2, ... Suku berikutnya adalah...', '64', '74', '84', '94', '104', 'D', 'Selisih antar suku: +6, -12, +24, -48 (setiap selisih merupakan hasil kali selisih sebelumnya dengan -2). Selisih berikutnya = -48 x (-2) = 96, sehingga suku berikutnya = -2+96 = 94.', 'hard', 14),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 4, 11, 14, 21, 24, ... Suku berikutnya adalah...', '27', '29', '31', '34', '37', 'C', 'Pola selisih berselang-seling adalah +7, +3, +7, +3, .... Selisih setelah 24 adalah +7, sehingga suku berikutnya = 24+7 = 31.', 'easy', 15),
('b0000000-0000-4000-8000-061400000000', 'Jika a+3, a-3, dan a-11 membentuk barisan geometri, maka rasio barisan tersebut adalah...', '2', '5/3', '4/3', '3/4', '2/3', 'C', 'Untuk barisan geometri berlaku (a-3)/(a+3) = (a-11)/(a-3). Dengan mengalikan silang: (a-3) kuadrat = (a+3)(a-11), yaitu a kuadrat -6a+9 = a kuadrat -8a-33, sehingga 2a=-42 dan a=-21. Suku-sukunya menjadi: a+3=-18, a-3=-24, a-11=-32. Rasio = -24/-18 = 4/3 (dapat diperiksa: -32/-24 = 4/3, konsisten).', 'medium', 16),
('b0000000-0000-4000-8000-061400000000', 'Diketahui suku ke-4 suatu deret aritmatika adalah 130 dan suku tengahnya adalah 190. Jika suku terakhir deret tersebut adalah 340, maka banyak suku deret tersebut adalah...', '10', '11', '12', '13', '14', 'B', 'Suku tengah = (suku pertama + suku terakhir)/2, sehingga (a+340)/2=190, diperoleh a=40. Suku ke-4: a+3b=130, sehingga 40+3b=130 dan b=30. Suku terakhir: a+(n-1)b=340, sehingga 40+(n-1)(30)=340, diperoleh (n-1)=10 dan n=11.', 'medium', 17),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: V, E, T, G, R, I, ... Huruf berikutnya adalah...', 'K', 'L', 'O', 'P', 'Q', 'D', 'Deret terdiri dari dua pola huruf berselang-seling. Posisi ganjil (V, T, R) memiliki nilai alfabet 22, 20, 18 (menurun 2 tiap suku), sehingga huruf berikutnya (posisi ke-7) = 18-2 = 16 = P. Posisi genap (E, G, I) memiliki nilai alfabet 5, 7, 9 (naik 2 tiap suku), namun bukan posisi yang ditanyakan.', 'medium', 18),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: A, C, F, H, K, M, P, ... Huruf berikutnya adalah...', 'R', 'S', 'T', 'U', 'V', 'A', 'Nilai alfabet tiap huruf: 1, 3, 6, 8, 11, 13, 16, dengan pola loncatan berselang-seling +2, +3, +2, +3, +2, +3. Karena loncatan terakhir (dari M ke P) adalah +3, maka loncatan berikutnya adalah +2, sehingga huruf berikutnya = 16+2 = 18 = R.', 'medium', 19),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: H, W, L, V, P, U, ... Huruf berikutnya adalah...', 'M', 'N', 'O', 'T', 'U', 'D', 'Deret terdiri dari dua pola huruf berselang-seling. Posisi ganjil (H, L, P) memiliki nilai alfabet 8, 12, 16 (naik 4 tiap suku), sehingga huruf berikutnya (posisi ke-7) = 16+4 = 20 = T. Posisi genap (W, V, U) memiliki nilai alfabet 23, 22, 21 (turun 1 tiap suku), yang juga akan mencapai nilai 20 = T pada suku berikutnya, sehingga kedua pola konsisten menuju huruf T.', 'medium', 20),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 6, E, F, 10, I, J, 15, N, O, 21, ... Suku berikutnya adalah...', 'S', 'T', 'U', 'V', 'W', 'B', 'Angka-angka pada deret (6, 10, 15, 21) adalah bilangan segitiga dengan selisih yang naik (4, 5, 6). Setiap angka diikuti oleh dua huruf, yaitu huruf pada posisi alfabet (angka-1) dan posisi alfabet (angka), misalnya setelah 6 muncul E (posisi 5) dan F (posisi 6). Setelah 21, huruf berikutnya adalah pada posisi 20, yaitu T.', 'hard', 21),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: G, H, I, J, L, L, P, N, ... Dua huruf berikutnya adalah...', 'M dan U', 'O dan P', 'O dan N', 'U dan P', 'U dan N', 'D', 'Deret terdiri dari dua pola huruf berselang-seling. Posisi ganjil (G, I, L, P) memiliki nilai alfabet 7, 9, 12, 16 dengan selisih yang naik (2, 3, 4), sehingga huruf berikutnya = 16+5 = 21 = U. Posisi genap (H, J, L, N) memiliki nilai alfabet 8, 10, 12, 14 dengan selisih tetap +2, sehingga huruf berikutnya = 14+2 = 16 = P. Dua huruf berikutnya adalah U dan P.', 'hard', 22),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: C, B, A, E, F, G, M, L, K, ... Tiga huruf berikutnya adalah...', 'Q, R, S', 'S, R, Q', 'S, T, U', 'U, T, S', 'T, U, V', 'C', 'Deret terbagi dalam kelompok tiga huruf yang berselang naik-turun: (C,B,A)=(3,2,1) menurun; (E,F,G)=(5,6,7) menaik; (M,L,K)=(13,12,11) menurun. Loncatan nilai awal antar kelompok adalah dari 1 ke 5 (+4), dari 7 ke 13 (+6), sehingga loncatan berikutnya adalah +8, yaitu dari 11 ke 19 (huruf S). Karena kelompok sebelumnya menurun, kelompok berikutnya menaik: S, T, U.', 'hard', 23),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 5, 6, 4, 7, 8, 6, 9, 10, 8, ... Dua suku berikutnya adalah...', '10 dan 10', '10 dan 11', '11 dan 11', '11 dan 12', '12 dan 12', 'D', 'Deret berpola kelompok tiga angka: (5,6,4), (7,8,6), (9,10,8), dengan setiap kelompok naik 2 dari kelompok sebelumnya pada posisi yang sama. Kelompok berikutnya dimulai dari 9+2=11 dan 10+2=12, sehingga dua suku berikutnya adalah 11 dan 12.', 'medium', 24),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 50, 2, 40, 4, 30, 16, ... Dua suku berikutnya adalah...', '20 dan 256', '20 dan 255', '10 dan 250', '10 dan 256', '10 dan 257', 'A', 'Deret terdiri dari dua pola berselang-seling. Suku pada posisi ganjil (50, 40, 30) turun 10 setiap suku, sehingga suku berikutnya = 30-10 = 20. Suku pada posisi genap (2, 4, 16) mengikuti pola kuadrat (2 kuadrat=4, 4 kuadrat=16), sehingga suku berikutnya = 16 kuadrat = 256.', 'medium', 25);
