-- Materi + mind map + soal: Bab "Sudut dan Himpunan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060800000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060800000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060800000000', null, 'Bab ini menggabungkan dua topik geometri-logika dasar: jenis dan hubungan sudut (termasuk sudut pada dua garis sejajar dipotong garis transversal), serta konsep himpunan (irisan, gabungan, komplemen, selisih) yang biasa divisualisasikan dengan diagram Venn.', 1),
('b0000000-0000-4000-8000-060800000000', 'Jenis dan Hubungan Sudut', '**Definisi:** Sudut diklasifikasikan berdasarkan besarnya (lancip, siku-siku, tumpul, lurus, refleks); dua sudut disebut berpelurus (suplemen) jika jumlahnya 180 derajat, dan berpenyiku (komplemen) jika jumlahnya 90 derajat.

**Pengenalan:** Sub-topik ini membahas jenis-jenis sudut berdasarkan besarnya, hubungan dua sudut (berpelurus dan berpenyiku), serta hubungan 8 sudut yang terbentuk saat dua garis sejajar dipotong oleh sebuah garis transversal.

**Poin yang Harus Diketahui:**
- Jenis-jenis sudut berdasarkan besarnya:

| Jenis Sudut | Besar Sudut |
|---|---|
| Lancip | 0 derajat sampai < 90 derajat |
| Siku-siku | tepat 90 derajat |
| Tumpul | > 90 derajat sampai < 180 derajat |
| Lurus | tepat 180 derajat |
| Refleks | > 180 derajat sampai < 360 derajat |

- **Berpelurus (suplemen)**: jumlah dua sudut = 180 derajat.
- **Berpenyiku (komplemen)**: jumlah dua sudut = 90 derajat.
- Dua garis sejajar dipotong garis transversal menghasilkan 8 sudut dengan hubungan: **Sehadap** (besarnya SAMA, posisi sama di tiap perpotongan), **Dalam berseberangan** (besarnya SAMA), **Luar berseberangan** (besarnya SAMA), **Dalam sepihak** (jumlahnya 180 derajat, berpelurus), **Luar sepihak** (jumlahnya 180 derajat, berpelurus).
- Level lanjut: besar sudut sering dinyatakan dalam bentuk ALJABAR (mengandung variabel x), lalu hubungan sudut (berpelurus/berpenyiku/sehadap/dst) dipakai untuk menyusun PERSAMAAN dan mencari nilai x terlebih dahulu, baru dihitung besar sudut yang ditanyakan.

**Tips cara cepat**: pada dua garis sejajar dipotong transversal, sudut-sudut hanya punya 2 nilai berbeda yang saling berpelurus — jadi begitu ketemu 1 sudut, semua 8 sudut bisa langsung ditentukan (sama dengannya atau pelurusnya).

**Kesimpulan:** Kenali jenis sudut dan hubungan berpelurus/berpenyiku terlebih dahulu, lalu untuk soal garis sejajar-transversal ingat hanya ada 2 nilai sudut berbeda; jika sudut dinyatakan dalam bentuk aljabar, susun persamaan dari hubungan sudut sebelum menghitung nilai yang ditanya.

**Contoh Soal:** Dua buah sudut saling berpelurus. Sudut pertama besarnya (3x + 10) derajat dan sudut kedua besarnya (2x - 5) derajat. Berapakah besar sudut kedua?

- A. 115 derajat
- B. 65 derajat
- C. 67 derajat
- D. 29 derajat
- E. 70 derajat

**Pembahasan:**

**Diketahui:** Dua sudut saling berpelurus; sudut pertama = (3x + 10) derajat, sudut kedua = (2x - 5) derajat.

**Ditanya:** Besar sudut kedua.

**Jawab:** Karena kedua sudut berpelurus, jumlahnya = 180 derajat, sehingga (3x+10) + (2x-5) = 180. Sederhanakan menjadi 5x + 5 = 180, sehingga 5x = 175, dan x = 35. Sudut kedua = 2x - 5 = 2(35) - 5 = 70 - 5 = 65 derajat. Jadi jawabannya adalah B.

**Contoh Soal:** Dua sudut saling berpenyiku. Sudut pertama besarnya (4x - 10) derajat dan sudut kedua besarnya (x + 20) derajat. Berapakah besar sudut pertama?

- A. 36 derajat
- B. 126 derajat
- C. 54 derajat
- D. 62 derajat
- E. 46 derajat

**Pembahasan:**

**Diketahui:** Dua sudut saling berpenyiku; sudut pertama = (4x - 10) derajat, sudut kedua = (x + 20) derajat.

**Ditanya:** Besar sudut pertama.

**Jawab:** Karena kedua sudut berpenyiku, jumlahnya = 90 derajat, sehingga (4x-10) + (x+20) = 90. Sederhanakan menjadi 5x + 10 = 90, sehingga 5x = 80, dan x = 16. Sudut pertama = 4x - 10 = 4(16) - 10 = 64 - 10 = 54 derajat. Jadi jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-060800000000', 'Konsep Himpunan dan Diagram Venn', '**Definisi:** Himpunan adalah kumpulan objek dengan operasi dasar irisan ($A \cap B$), gabungan ($A \cup B$), komplemen, dan selisih; banyaknya anggota gabungan dua himpunan dihitung dengan $n(A \cup B) = n(A) + n(B) - n(A \cap B)$.

**Pengenalan:** Sub-topik ini membahas operasi dasar himpunan yang biasa divisualisasikan dengan diagram Venn, serta rumus banyaknya anggota gabungan untuk dua maupun tiga himpunan sekaligus.

**Poin yang Harus Diketahui:**
- Operasi dasar himpunan:

| Operasi | Notasi | Arti |
|---|---|---|
| Irisan | $A \cap B$ | anggota yang ada di A DAN di B |
| Gabungan | $A \cup B$ | anggota yang ada di A ATAU di B (tanpa duplikat) |
| Komplemen | $A''$ (atau $A^c$) | anggota semesta (S) yang TIDAK ada di A |
| Selisih | $A - B$ | anggota A yang TIDAK ada di B |
| Himpunan bagian | $A \subset B$ | setiap anggota A pasti ada di B |

- Diagram Venn menggambarkan himpunan sebagai lingkaran-lingkaran di dalam kotak (semesta S); daerah tumpang tindih dua lingkaran menunjukkan irisan ($A \cap B$).
- Rumus banyaknya anggota gabungan dua himpunan: $$n(A \cup B) = n(A) + n(B) - n(A \cap B)$$
- Untuk TIGA himpunan sekaligus, rumusnya bertambah satu suku irisan tripel: $$n(A \cup B \cup C) = n(A) + n(B) + n(C) - n(A \cap B) - n(A \cap C) - n(B \cap C) + n(A \cap B \cap C)$$

**Tips cara cepat**: saat soal menyebut "banyak anggota gabungan" langsung pakai rumus $n(A \cup B) = n(A) + n(B) - n(A \cap B)$ tanpa perlu menulis semua anggota satu-satu.

**Tips cara cepat:** Pola tandanya berselang-seling: jumlahkan semua himpunan tunggal (+), kurangi semua pasangan irisan (-), lalu tambahkan kembali irisan tiga-tiganya (+) karena bagian itu sempat terkurangi tiga kali oleh langkah sebelumnya.

**Kesimpulan:** Kuasai operasi dasar himpunan dan diagram Venn, lalu gunakan rumus gabungan dua atau tiga himpunan sesuai kebutuhan soal — tanda pada rumus tiga himpunan berselang-seling (+, -, +).

**Contoh Soal:** Dari survei terhadap 100 siswa tentang ekstrakurikuler yang diikuti, diperoleh data: 45 siswa ikut Basket, 40 siswa ikut Futsal, 38 siswa ikut Paduan Suara, 18 siswa ikut Basket dan Futsal, 15 siswa ikut Basket dan Paduan Suara, 12 siswa ikut Futsal dan Paduan Suara, 8 siswa ikut ketiga-tiganya, dan sisanya tidak ikut ekstrakurikuler apapun. Berapa banyak siswa yang TIDAK mengikuti ekstrakurikuler apapun?

- A. 22 siswa
- B. 34 siswa
- C. 30 siswa
- D. 8 siswa
- E. 14 siswa

**Pembahasan:**

**Diketahui:** Total 100 siswa disurvei; Basket=45, Futsal=40, Paduan Suara=38, Basket dan Futsal=18, Basket dan Paduan Suara=15, Futsal dan Paduan Suara=12, ketiga-tiganya=8.

**Ditanya:** Banyak siswa yang tidak mengikuti ekstrakurikuler apapun.

**Jawab:** Hitung banyak siswa yang mengikuti minimal satu ekstrakurikuler dengan rumus $n(A \cup B \cup C) = n(A) + n(B) + n(C) - n(A \cap B) - n(A \cap C) - n(B \cap C) + n(A \cap B \cap C)$ = 45 + 40 + 38 - 18 - 15 - 12 + 8. Jumlahkan dulu semua himpunan tunggal: 45 + 40 + 38 = 123. Kurangi semua pasangan irisan: 123 - 18 - 15 - 12 = 78. Tambahkan kembali irisan tiga-tiganya: 78 + 8 = 86 siswa mengikuti minimal satu ekstrakurikuler. Karena total siswa yang disurvei 100 orang, banyak siswa yang tidak ikut ekstrakurikuler apapun = 100 - 86 = 14 siswa. Jadi jawabannya adalah E.', 3);

update chapters set mindmap = '# Sudut dan Himpunan

## Jenis Sudut
- Lancip < 90 derajat
- Siku-siku = 90 derajat
- Tumpul: 90-180 derajat
- Lurus = 180 derajat
- Refleks: 180-360 derajat

## Hubungan Dua Sudut
- Berpelurus (suplemen): jumlah = 180 derajat
- Berpenyiku (komplemen): jumlah = 90 derajat

## Garis Sejajar Dipotong Transversal
- Sehadap: sama besar
- Dalam/Luar berseberangan: sama besar
- Dalam/Luar sepihak: jumlah 180 derajat

## Himpunan - Operasi
- Irisan ($A \cap B$): anggota di A DAN B
- Gabungan ($A \cup B$): anggota di A ATAU B
- Komplemen ($A''$): anggota S bukan di A
- Selisih ($A-B$): anggota A bukan di B

## Rumus Gabungan
- $n(A \cup B) = n(A) + n(B) - n(A \cap B)$' where id = 'b0000000-0000-4000-8000-060800000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060800000000', 'Dua sudut saling berpelurus. Jika salah satu sudut besarnya 65 derajat, maka besar sudut lainnya adalah...', '115 derajat', '25 derajat', '105 derajat', '95 derajat', '135 derajat', 'A', 'Dua sudut berpelurus (suplemen) berjumlah 180 derajat. Sudut lainnya = 180 - 65 = 115 derajat.', 'easy'),
('b0000000-0000-4000-8000-060800000000', 'Dua sudut saling berpenyiku. Jika salah satu sudut besarnya 35 derajat, maka besar sudut lainnya adalah...', '65 derajat', '145 derajat', '45 derajat', '55 derajat', '35 derajat', 'D', 'Dua sudut berpenyiku (komplemen) berjumlah 90 derajat. Sudut lainnya = 90 - 35 = 55 derajat.', 'easy'),
('b0000000-0000-4000-8000-060800000000', 'Diketahui himpunan A = {1, 2, 3, 4, 5, 6} dan B = {2, 4, 6, 8, 10}. Banyaknya anggota A irisan B adalah...', '6', '3', '8', '5', '2', 'B', 'A irisan B berisi anggota yang ada di A DAN di B sekaligus, yaitu {2, 4, 6}. Jadi banyaknya anggota A irisan B = 3.', 'easy'),
('b0000000-0000-4000-8000-060800000000', 'Dua garis sejajar dipotong oleh sebuah garis transversal. Jika salah satu sudut sehadap besarnya 110 derajat, maka besar sudut yang berpelurus dengannya (pada perpotongan yang sama) adalah...', '110 derajat', '55 derajat', '90 derajat', '250 derajat', '70 derajat', 'E', 'Sudut sehadap besarnya sama, yaitu 110 derajat. Sudut yang berpelurus dengan sudut 110 derajat pada perpotongan yang sama = 180 - 110 = 70 derajat.', 'medium'),
('b0000000-0000-4000-8000-060800000000', 'Himpunan semesta S = {1, 2, 3, ..., 10}. Jika A = himpunan kelipatan 2 dalam S dan B = himpunan kelipatan 3 dalam S, maka komplemen dari (A gabungan B) adalah...', '{1, 3, 5, 7, 9}', '{1, 5, 7}', '{2, 4, 6, 8, 9, 10}', '{1, 2, 5, 7}', '{5, 7, 9}', 'B', 'A = {2,4,6,8,10}, B = {3,6,9}. A gabungan B = {2,3,4,6,8,9,10}. Komplemen (anggota S yang tidak ada di A gabungan B) = {1, 5, 7}.', 'hard');
