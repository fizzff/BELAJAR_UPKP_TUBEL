-- Materi + mind map + soal: Bab "Sudut dan Himpunan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060800000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060800000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060800000000', null, 'Bab ini menggabungkan dua topik geometri-logika dasar: jenis dan hubungan sudut (termasuk sudut pada dua garis sejajar dipotong garis transversal), serta konsep himpunan (irisan, gabungan, komplemen, selisih) yang biasa divisualisasikan dengan diagram Venn.', 1),
('b0000000-0000-4000-8000-060800000000', 'Jenis dan Hubungan Sudut', '**Definisi:** Sudut diklasifikasikan berdasarkan besarnya (lancip, siku-siku, tumpul, lurus, refleks); dua sudut disebut berpelurus (suplemen) jika jumlahnya 180 derajat, dan berpenyiku (komplemen) jika jumlahnya 90 derajat.

**Cara Kerja / Langkah Pengerjaan:**
1. Kenali dulu jenis sudut berdasarkan besarnya (lancip/siku-siku/tumpul/lurus/refleks), atau hubungan dua sudut yang disebut soal (berpelurus/berpenyiku).
2. Jika soal tentang dua garis sejajar dipotong transversal, tentukan hubungan pasangan sudut yang ditanya (sehadap, dalam/luar berseberangan, atau dalam/luar sepihak).
3. Ingat aturan nilainya: sehadap dan berseberangan → besarnya SAMA; sepihak → berpelurus (jumlah 180 derajat).
4. Jika besar sudut dinyatakan dalam bentuk ALJABAR (mengandung variabel x), susun PERSAMAAN dari hubungan sudut tersebut (jumlah = 180 derajat untuk berpelurus/sepihak, jumlah = 90 derajat untuk berpenyiku, atau sama besar untuk sehadap/berseberangan) lalu selesaikan nilai x terlebih dahulu.
5. Setelah nilai x ditemukan, substitusikan kembali ke ekspresi sudut yang ditanyakan untuk mendapatkan besar sudut akhirnya.

**Rumus & Poin Kunci:**
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

**Tips cara cepat**: pada dua garis sejajar dipotong transversal, sudut-sudut hanya punya 2 nilai berbeda yang saling berpelurus — jadi begitu ketemu 1 sudut, semua 8 sudut bisa langsung ditentukan (sama dengannya atau pelurusnya).

**Kesalahan Umum / Jebakan:**
- Menyamakan semua pasangan sudut sebagai "sama besar", padahal sudut sepihak (dalam/luar sepihak) itu BERPELURUS (jumlah 180 derajat), bukan sama besar.
- Saat sudut dalam bentuk aljabar, langsung menghitung nilai x sebagai jawaban akhir, padahal yang ditanya adalah besar sudutnya (harus disubstitusikan kembali).
- Tertukar antara berpelurus (jumlah 180 derajat) dan berpenyiku (jumlah 90 derajat) saat menyusun persamaan.

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

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan dulu operasi himpunan apa yang ditanyakan (irisan, gabungan, komplemen, selisih, atau himpunan bagian) dari kata kunci soal.
2. Untuk soal dengan diagram Venn atau angka jumlah anggota, identifikasi apakah soal melibatkan DUA atau TIGA himpunan sekaligus.
3. Untuk dua himpunan, pakai rumus $n(A \cup B) = n(A) + n(B) - n(A \cap B)$; untuk tiga himpunan, pakai rumus tripel yang menambah suku irisan tripel.
4. Hitung berurutan sesuai pola tanda: jumlahkan semua himpunan tunggal (+), kurangi semua pasangan irisan (-), lalu tambahkan kembali irisan tiga-tiganya (+).
5. Jika yang ditanya adalah bagian yang TIDAK termasuk himpunan manapun (di luar semua lingkaran), kurangkan hasil langkah 4 dari total semesta (S).

**Rumus & Poin Kunci:**
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

**Kesalahan Umum / Jebakan:**
- Lupa menambahkan kembali suku irisan tripel $n(A \cap B \cap C)$ pada rumus tiga himpunan, sehingga hasil gabungan jadi lebih kecil dari yang seharusnya.
- Tertukar antara "banyak yang ikut minimal satu kegiatan" (hasil rumus gabungan) dengan "banyak yang TIDAK ikut kegiatan apapun" (harus dikurangkan lagi dari total semesta).
- Salah menempatkan angka irisan pasangan (mengira suatu angka adalah irisan A dan B, padahal itu irisan A dan C, dst) saat membaca soal cerita.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060800000000', 'Dua sudut saling berpenyiku. Sudut pertama besarnya (3x + 5) derajat dan sudut kedua besarnya (2x + 15) derajat. Berapakah besar sudut pertama?', '47 derajat', '43 derajat', '14 derajat', '53 derajat', '37 derajat', 'A', 'Karena kedua sudut berpenyiku, jumlahnya 90 derajat: (3x+5) + (2x+15) = 90, sehingga 5x + 20 = 90, 5x = 70, x = 14. Sudut pertama = 3x + 5 = 3(14) + 5 = 42 + 5 = 47 derajat.', 'medium', 1),
('b0000000-0000-4000-8000-060800000000', 'Dua garis sejajar dipotong oleh sebuah garis transversal. Salah satu sudut sehadap besarnya (4x + 10) derajat, sedangkan sudut yang berpelurus dengannya pada perpotongan yang sama besarnya (2x + 20) derajat. Berapa besar sudut sehadap tersebut?', '110 derajat', '70 derajat', '90 derajat', '130 derajat', '100 derajat', 'A', 'Sudut sehadap dan sudut yang berpelurus dengannya pada perpotongan yang sama berjumlah 180 derajat: (4x+10) + (2x+20) = 180, sehingga 6x + 30 = 180, 6x = 150, x = 25. Sudut sehadap = 4x + 10 = 4(25) + 10 = 100 + 10 = 110 derajat.', 'hard', 2),
('b0000000-0000-4000-8000-060800000000', 'Diketahui himpunan A = {1, 2, 3, 4, 5, 6} dan B = {2, 4, 6, 8, 10}. Banyaknya anggota A irisan B adalah...', '6', '3', '8', '5', '2', 'B', 'A irisan B berisi anggota yang ada di A DAN di B sekaligus, yaitu {2, 4, 6}. Jadi banyaknya anggota A irisan B = 3.', 'easy', 3),
('b0000000-0000-4000-8000-060800000000', 'Himpunan semesta S = {1, 2, 3, ..., 20}. Jika A = himpunan kelipatan 3 dalam S dan B = himpunan kelipatan 4 dalam S, tentukan banyaknya anggota dari (A gabungan B)'' (komplemen dari A gabungan B).', '10', '8', '12', '9', '11', 'A', 'A = kelipatan 3 dalam S = {3,6,9,12,15,18}, sehingga n(A) = 6. B = kelipatan 4 dalam S = {4,8,12,16,20}, sehingga n(B) = 5. A irisan B = kelipatan 12 dalam S = {12}, sehingga n(A irisan B) = 1. n(A gabungan B) = n(A) + n(B) - n(A irisan B) = 6 + 5 - 1 = 10. Karena n(S) = 20, banyaknya anggota (A gabungan B)'' = n(S) - n(A gabungan B) = 20 - 10 = 10.', 'hard', 4),
('b0000000-0000-4000-8000-060800000000', 'Dua buah sudut saling berpelurus, sudut pertama besarnya (2x) derajat dan sudut kedua besarnya (x + 30) derajat. Nilai x yang diperoleh menyatakan banyaknya siswa yang mengikuti ekskul Basket di sebuah sekolah. Jika di sekolah tersebut terdapat 40 siswa yang mengikuti ekskul Futsal, dan 15 siswa yang mengikuti KEDUA ekskul (Basket dan Futsal), berapa banyak siswa yang mengikuti Basket ATAU Futsal (gabungan keduanya)?', '75 siswa', '90 siswa', '65 siswa', '105 siswa', '55 siswa', 'A', 'Karena kedua sudut berpelurus, jumlahnya 180 derajat: 2x + (x+30) = 180, sehingga 3x + 30 = 180, 3x = 150, x = 50. Artinya banyak siswa yang mengikuti Basket = 50 siswa. Banyak siswa yang mengikuti Basket ATAU Futsal = n(Basket) + n(Futsal) - n(Basket irisan Futsal) = 50 + 40 - 15 = 75 siswa.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060800000000', 'Pada sebuah universitas yang menyediakan mata kuliah tambahan bahasa Inggris dan bahasa Mandarin, dari 780 orang mahasiswa terdapat 220 orang memilih bahasa Mandarin, 90 orang memilih keduanya, dan 24 orang tidak memilih satu pun. Jika satu kelas memuat maksimal 40 mahasiswa, berapa kelas yang harus disediakan untuk mata kuliah tambahan bahasa Inggris?', '5', '8', '10', '11', '16', 'E', 'Yang memilih minimal satu bahasa = 780 - 24 = 756 orang. Dengan rumus gabungan dua himpunan, n(Inggris gabungan Mandarin) = n(Inggris) + n(Mandarin) - n(keduanya), sehingga 756 = n(Inggris) + 220 - 90, maka n(Inggris) = 756 - 130 = 626 orang. Karena satu kelas memuat maksimal 40 mahasiswa, banyak kelas yang dibutuhkan = 626 / 40 = 15,65, dibulatkan ke atas menjadi 16 kelas (15 kelas menampung 600 orang, sisa 26 orang tetap membutuhkan 1 kelas tambahan).', 'hard', 6),
('b0000000-0000-4000-8000-060800000000', 'Penduduk di sebuah kampung diketahui ada 182 jiwa berusia kurang dari 45 tahun, 128 jiwa berusia lebih dari 25 tahun, sedangkan 85 jiwa berusia antara 25 dan 45 tahun. Banyak penduduk di kampung tersebut adalah ... jiwa.', '395', '200', '225', '185', '171', 'C', 'Misalkan A = penduduk berusia kurang dari 45 tahun (182 jiwa) dan B = penduduk berusia lebih dari 25 tahun (128 jiwa), sehingga irisan A dan B (berusia antara 25 dan 45 tahun) = 85 jiwa. Total penduduk = n(A) + n(B) - n(A irisan B) = 182 + 128 - 85 = 225 jiwa.', 'medium', 7),
('b0000000-0000-4000-8000-060800000000', 'Dari 200 pasien yang berkunjung ke sebuah klinik, tercatat banyaknya pasien yang sakit batuk sebanyak 90 orang, demam 80 orang, dan pasien yang hanya sakit pilek (tidak batuk maupun demam) sebanyak 90 orang. Banyaknya pasien yang sakit demam DAN batuk sekaligus adalah ....', '30', '40', '50', '60', '70', 'D', 'Pasien yang hanya sakit pilek (tidak batuk maupun demam) = 90 orang, sehingga sisanya = 200 - 90 = 110 orang tergolong sakit batuk dan/atau demam. Dengan rumus gabungan, n(batuk) + n(demam) - n(batuk dan demam) = 110, sehingga 90 + 80 - n(batuk dan demam) = 110, maka n(batuk dan demam) = 170 - 110 = 60 orang.', 'medium', 8),
('b0000000-0000-4000-8000-060800000000', 'Dari survei di suatu kota, diketahui bahwa 65% masyarakatnya suka menonton berita di TV, 40% suka membaca surat kabar, dan 25% suka membaca surat kabar dan menonton berita di TV sekaligus. Berapa persen dari masyarakat kota tersebut yang tidak suka baik menonton berita di TV maupun membaca surat kabar?', '5%', '10%', '15%', '20%', null, 'D', 'Yang hanya suka menonton TV (tidak baca koran) = 65% - 25% = 40%. Yang hanya suka membaca surat kabar (tidak nonton TV) = 40% - 25% = 15%. Yang suka keduanya = 25%. Yang tidak suka keduanya = 100% - (40% + 15% + 25%) = 100% - 80% = 20%.', 'medium', 9),
('b0000000-0000-4000-8000-060800000000', 'Murid di sebuah TK berjumlah G anak. Dari jumlah tersebut, sejumlah M anak suka melukis, sejumlah L anak suka menari, dan sejumlah B anak suka melukis dan menari sekaligus. Berapa porsi (dalam bentuk pecahan terhadap G) jumlah anak yang tidak menyukai melukis maupun menari?', '(G-L-M)/G', '(B+L+M)/G', '(G-B-L-M)/G', '(G+B-L-M)/G', null, 'D', 'Banyak anak yang menyukai melukis atau menari (gabungan) = n(melukis) + n(menari) - n(melukis dan menari) = M + L - B. Banyak anak yang tidak menyukai keduanya = G - (M + L - B) = G - M - L + B, atau ditulis dalam bentuk pecahan (G + B - L - M)/G.', 'hard', 10),
('b0000000-0000-4000-8000-060800000000', 'Jika rasio (perbandingan) antara sudut-sudut sebuah segitiga adalah 2:3:4, maka sudut terbesar dari ketiga sudut tersebut adalah ...', '50 derajat', '60 derajat', '70 derajat', '80 derajat', null, 'D', 'Jumlah perbandingan = 2+3+4 = 9. Karena jumlah sudut dalam segitiga selalu 180 derajat, sudut terbesar = (4/9) x 180 derajat = 80 derajat.', 'medium', 11),
('b0000000-0000-4000-8000-060800000000', 'Dari 30 pelamar kerja, 14 orang memiliki pengalaman kerja minimal 4 tahun, 18 orang bergelar sarjana, dan 3 orang tidak bergelar sarjana dengan pengalaman kerja kurang dari 4 tahun. Berapakah jumlah pelamar kerja yang bergelar sarjana DAN memiliki pengalaman kerja minimal 4 tahun?', '13', '9', '7', '5', null, 'D', 'Misalkan X = banyak pelamar bergelar sarjana dengan pengalaman minimal 4 tahun. Karena setiap pelamar pasti termasuk salah satu dari 4 kelompok yang saling lepas (pengalaman >= 4 tahun tanpa sarjana, sarjana dengan pengalaman < 4 tahun, tanpa sarjana dan pengalaman < 4 tahun, serta sarjana dengan pengalaman >= 4 tahun), maka total = (14-X) + (18-X) + 3 + X = 30. Sederhanakan: 35 - X = 30, sehingga X = 5 orang.', 'hard', 12),
('b0000000-0000-4000-8000-060800000000', 'Dua buah segitiga saling bertolak belakang sehingga membentuk sebuah bangun ABC dengan titik himpitnya di titik C. Sudut A besarnya 60 derajat dan sudut ECD besarnya 30 derajat. Berapakah besar sudut B?', '120 derajat', '90 derajat', '60 derajat', '30 derajat', null, 'B', 'Sudut ACB merupakan pasangan sudut bertolak belakang dengan sudut ECD, sehingga sudut ACB = sudut ECD = 30 derajat. Karena jumlah sudut dalam segitiga ABC = 180 derajat, maka sudut A + sudut B + sudut C = 180 derajat, sehingga 60 + sudut B + 30 = 180, dan sudut B = 180 - 90 = 90 derajat.', 'medium', 13);
