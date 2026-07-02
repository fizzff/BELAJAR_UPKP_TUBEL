-- Materi + mind map + soal: Bab "Baris serta Deret Angka dan Huruf" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061400000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061400000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061400000000', null, 'Bab ini menguji kemampuan mengenali pola pada barisan angka, huruf, atau kombinasi keduanya, lalu memprediksi suku berikutnya. Kuncinya adalah memeriksa selisih atau rasio antar suku secara sistematis.', 1),
('b0000000-0000-4000-8000-061400000000', 'Pola Deret Angka', '**Definisi:** Pola deret angka adalah aturan tetap yang menghubungkan satu suku dengan suku berikutnya dalam sebuah barisan bilangan, sehingga suku-suku selanjutnya dapat diprediksi.

**Pengenalan:** Bab ini menguji kemampuan mengenali pola pada barisan angka, lalu memprediksi suku berikutnya. Kuncinya adalah memeriksa selisih atau rasio antar suku secara sistematis, mulai dari pola paling sederhana hingga pola campuran yang lebih rumit.

**Poin yang Harus Diketahui:**
- Jenis pola deret angka yang umum diuji:

| Jenis | Ciri | Contoh |
|---|---|---|
| Aritmatika | Selisih antar suku tetap (beda = $b$) | 2, 5, 8, 11, ... (beda 3) |
| Geometri | Rasio antar suku tetap (rasio = $r$) | 3, 6, 12, 24, ... (rasio 2) |
| Selisih bertingkat | Selisihnya sendiri membentuk pola (naik/turun bertahap) | 2, 6, 12, 20, 30, ... (selisih 4, 6, 8, 10, ...) |
| Fibonacci | Suku berikutnya = jumlah dua suku sebelumnya | 1, 1, 2, 3, 5, 8, ... |

- **Langkah cepat:** hitung selisih suku pertama, jika belum tetap maka hitung selisih dari selisihnya (selisih tingkat dua). Kalau selisih tingkat dua juga belum tetap, coba periksa apakah polanya rasio (dikali/dibagi) alih-alih selisih (ditambah/dikurang).
- **Pola Deret Campuran (Berselang-seling Dua Sub-pola):** level lanjutan sering menyisipkan DUA pola angka berbeda yang berjalan berselang-seling dalam satu deret: suku ganjil (posisi ke-1, ke-3, ke-5, ...) mengikuti pola A, sedangkan suku genap (posisi ke-2, ke-4, ke-6, ...) mengikuti pola B — keduanya murni angka, tanpa unsur huruf. Contoh: 2, 100, 5, 95, 8, 90, ... — suku ganjil (2, 5, 8, ...) naik 3 (aritmatika), suku genap (100, 95, 90, ...) turun 5 (aritmatika juga, tapi dengan pola berbeda).
- **Langkah sistematis mengenali deret campuran:** pisahkan dulu suku-suku pada posisi ganjil dan posisi genap menjadi dua barisan terpisah, cari pola (selisih atau rasio) masing-masing secara independen, baru gabungkan kembali untuk memprediksi suku berikutnya sesuai posisi ganjil/genapnya.
- **Pola Huruf dengan Loncatan Tidak Tetap (Bertingkat):** prinsip selisih bertingkat pada deret angka juga berlaku pada deret huruf: alih-alih loncat huruf yang tetap (misalnya selalu loncat 2 posisi), loncatannya sendiri berubah mengikuti pola, misalnya bergantian loncat 1 huruf lalu loncat 2 huruf, atau loncatan bertambah 1 setiap kali (mirip selisih bertingkat pada angka, tapi diterapkan pada posisi alfabet). Pembahasan lengkap beserta contohnya ada di sub-topik "Pola Deret Huruf dan Kombinasi".

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

**Pengenalan:** Deret huruf biasanya berupa "loncatan" posisi alfabet dengan pola bertambah, misalnya A, D, G, J, ... (loncat 2 huruf setiap kali: A=1, D=4, G=7, J=10, sehingga berikutnya M=13). Deret kombinasi angka-huruf berselang-seling memiliki dua pola berjalan bersamaan, satu untuk posisi huruf dan satu untuk angka, misalnya A1, C3, E5, G7, ... (huruf loncat 2, angka ganjil naik 2, sehingga berikutnya I9).

**Poin yang Harus Diketahui:**
- Tabel posisi alfabet (hafalkan/coret-coret di lembar buram supaya tidak perlu menghitung manual satu-satu saat mengerjakan soal):

| Huruf | Posisi | Huruf | Posisi | Huruf | Posisi |
|---|---|---|---|---|---|
| A=1 | F=6 | K=11 | P=16 | U=21 | Z=26 |
| B=2 | G=7 | L=12 | Q=17 | V=22 | |
| C=3 | H=8 | M=13 | R=18 | W=23 | |
| D=4 | I=9 | N=14 | S=19 | X=24 | |
| E=5 | J=10 | O=15 | T=20 | Y=25 | |

- **Catatan Penting (cara cepat):** pisahkan dulu elemen huruf dan elemen angka menjadi dua barisan terpisah, cari pola masing-masing, baru gabungkan kembali untuk menjawab suku berikutnya. Gunakan tabel posisi alfabet di atas supaya tidak perlu menghitung "A, B, C, D, ..." satu-satu dari awal setiap kali.
- **Pola Huruf dengan Loncatan Tidak Tetap/Bertingkat:** level lanjutan tidak selalu memakai loncatan huruf yang tetap. Kadang loncatannya sendiri berubah mengikuti pola tertentu, misalnya bergantian loncat 1 huruf lalu loncat 2 huruf, atau loncatan bertambah 1 setiap kali (analog dengan selisih bertingkat pada deret angka, tapi diterapkan pada posisi alfabet). Contoh: A, B, D, E, G, H, ... — pola loncatannya bergantian +1, +2, +1, +2, ... (A ke B loncat 1, B ke D loncat 2, D ke E loncat 1, E ke G loncat 2, dan seterusnya), sehingga suku berikutnya setelah H adalah loncat 2 lagi menjadi J.
- **Langkah sistematis:** hitung selisih posisi antar huruf yang berurutan satu per satu (bukan langsung dari suku pertama ke suku terakhir). Kalau selisihnya tidak sama tapi berulang mengikuti pola tetap (misalnya berselang-seling 1, 2, 1, 2, ...), maka itulah pola loncatan bertingkat/tidak tetapnya — tentukan dulu di posisi mana dalam siklus loncatan tersebut suku yang dicari berada.
- **Pola Deret Campuran Angka Berselang-seling (Aplikasi pada Deret Kombinasi):** prinsip deret campuran (dua sub-pola berselang-seling) yang berlaku pada angka murni juga menjadi dasar deret kombinasi angka-huruf: elemen huruf punya polanya sendiri dan elemen angka punya polanya sendiri, keduanya berjalan bersamaan tapi harus dipisah dan dianalisis independen sebelum digabungkan kembali (lihat sub-topik "Pola Deret Angka" untuk contoh murni angkanya).

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret berikut: 2, 6, 12, 20, 30, ... Suku berikutnya adalah...', '36', '38', '40', '42', '44', 'D', 'Selisih antar suku: 4, 6, 8, 10, 12 (selisih bertingkat, bertambah 2). Suku ke-6 = 30 + 12 = 42.', 'medium'),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret geometri berikut: 3, 6, 12, 24, ... Suku berikutnya adalah...', '30', '48', '36', '42', '54', 'B', 'Deret geometri dengan rasio 2 (tiap suku dikali 2). Suku berikutnya = 24 x 2 = 48.', 'easy'),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret huruf berikut: A, D, G, J, ... Huruf berikutnya adalah...', 'K', 'L', 'M', 'N', 'O', 'C', 'Pola loncat 2 huruf: A(1), D(4), G(7), J(10), sehingga berikutnya adalah huruf ke-13, yaitu M.', 'medium'),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret Fibonacci berikut: 1, 1, 2, 3, 5, 8, ... Suku berikutnya adalah...', '10', '11', '13', '12', '14', 'C', 'Pola Fibonacci: setiap suku adalah jumlah dua suku sebelumnya. Suku berikutnya = 5 + 8 = 13.', 'easy'),
('b0000000-0000-4000-8000-061400000000', 'Perhatikan deret kombinasi berikut: A1, C3, E5, G7, ... Suku berikutnya adalah...', 'H8', 'I8', 'H9', 'J9', 'I9', 'E', 'Huruf loncat 2 posisi (A, C, E, G, berikutnya I) dan angka ganjil bertambah 2 (1, 3, 5, 7, berikutnya 9). Suku berikutnya adalah I9.', 'hard');
