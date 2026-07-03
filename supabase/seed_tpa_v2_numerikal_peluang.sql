-- Materi + mind map + soal: Bab "Peluang" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061100000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061100000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061100000000', null, 'Peluang (probabilitas) mengukur seberapa besar kemungkinan suatu kejadian terjadi, dengan nilai antara 0 (mustahil) dan 1 (pasti). Subtes ini juga sering menggabungkan peluang dengan kaidah pencacahan dasar (permutasi dan kombinasi) untuk menghitung n(A) atau n(S).', 1),
('b0000000-0000-4000-8000-061100000000', 'Peluang Dasar dan Komplemen', '**Definisi:** Peluang kejadian A mengukur seberapa besar kemungkinan A terjadi, dirumuskan $P(A) = \frac{n(A)}{n(S)}$, dengan nilai selalu antara 0 (mustahil) dan 1 (pasti).

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan n(S), yaitu banyak seluruh kemungkinan kejadian (ruang sampel).
2. Tentukan n(A), yaitu banyak kejadian yang diharapkan/sesuai syarat soal.
3. Hitung peluang langsung dengan $P(A) = \frac{n(A)}{n(S)}$.
4. Jika soal menanyakan "peluang tidak terjadi" atau lebih mudah dihitung lewat kebalikannya, gunakan rumus komplemen $P(A'') = 1 - P(A)$ agar perhitungan lebih singkat.

**Rumus & Poin Kunci:**
- $$P(A) = \frac{n(A)}{n(S)}$$ dengan n(A) = banyak kejadian yang diharapkan, n(S) = banyak seluruh kemungkinan (ruang sampel).
- Nilai peluang selalu berada antara 0 (mustahil) dan 1 (pasti).
- Rumus komplemen: $$P(A'') = 1 - P(A)$$ sangat berguna ketika menghitung "peluang bukan A" lebih mudah lewat kebalikannya daripada langsung.

**Kesalahan Umum / Jebakan:**
- Lupa memasukkan SELURUH kemungkinan ke dalam n(S) (misalnya lupa menghitung total elemen gabungan semua kategori), sehingga P(A) yang dihasilkan salah.
- Salah menerapkan komplemen, misalnya menghitung $1 - n(A)$ tanpa membaginya dengan n(S) terlebih dahulu, padahal rumusnya adalah $1 - P(A)$, bukan $n(S) - n(A)$ langsung tanpa dibagi ulang.

**Kesimpulan:** Tentukan dulu n(A) dan n(S) untuk peluang langsung; jika soal menanyakan "peluang tidak terjadi", gunakan rumus komplemen agar perhitungan lebih singkat.

**Contoh Soal:** Dalam sebuah kantong terdapat 6 kelereng merah, 4 kelereng biru, dan 5 kelereng kuning. Diambil dua kelereng sekaligus secara acak. Berapa peluang bahwa TIDAK ADA kelereng kuning yang terambil?

- A. 3/14
- B. 1/3
- C. 3/7
- D. 4/7
- E. 6/7

**Pembahasan:**

**Diketahui:** Kantong berisi 6 kelereng merah, 4 kelereng biru, dan 5 kelereng kuning (total 15 kelereng); diambil 2 kelereng sekaligus secara acak.

**Ditanya:** Peluang tidak ada kelereng kuning yang terambil.

**Jawab:** n(S) = C(15,2) = (15 \times 14)/2 = 105. Kelereng non-kuning ada 6 + 4 = 10, sehingga n(A) = C(10,2) = (10 \times 9)/2 = 45. Maka P(A) = n(A)/n(S) = 45/105 = 3/7. Jadi jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-061100000000', 'Peluang Gabungan Dua Kejadian', '**Definisi:** Peluang gabungan P(A atau B) menggabungkan dua kejadian, dengan rumus berbeda tergantung apakah A dan B bisa terjadi bersamaan (tidak saling lepas) atau tidak (saling lepas).

**Cara Kerja / Langkah Pengerjaan:**
1. Identifikasi apakah kejadian A dan B saling lepas (tidak mungkin terjadi bersamaan) atau tidak saling lepas (bisa terjadi bersamaan).
2. Jika saling lepas, jumlahkan langsung $P(A) + P(B)$; jika tidak saling lepas, kurangi dengan irisannya: $P(A) + P(B) - P(A \text{ dan } B)$.
3. Untuk dua kejadian berurutan, cek apakah keduanya saling bebas (independent, biasanya "dengan pengembalian" atau dua kejadian terpisah) atau bersyarat (conditional, biasanya "tanpa pengembalian" atau "setelah diketahui...").
4. Jika saling bebas, kalikan langsung $P(A) \times P(B)$; jika bersyarat, hitung $P(B|A)$ dengan ruang sampel B yang sudah berubah akibat pengaruh A.

**Rumus & Poin Kunci:**
- Peluang gabungan:

| Kondisi | Rumus |
|---|---|
| Saling lepas (tidak mungkin terjadi bersamaan) | $P(A) + P(B)$ |
| Tidak saling lepas (bisa terjadi bersamaan) | $P(A) + P(B) - P(A \text{ dan } B)$ |

- Contoh saling lepas: muncul mata dadu 2 ATAU 5 (tidak mungkin dua-duanya sekaligus dalam satu lemparan).
- Contoh tidak saling lepas: kartu As ATAU kartu Hati (ada As Hati yang termasuk keduanya).
- **Kejadian saling bebas (independent events):** dua kejadian A dan B disebut saling bebas jika terjadinya A tidak memengaruhi peluang terjadinya B (misalnya dua lemparan dadu yang terpisah, atau pengambilan dengan pengembalian):

  $$P(A \text{ dan } B) = P(A) \times P(B)$$

- **Peluang bersyarat (conditional probability):** peluang terjadinya B DENGAN SYARAT A sudah terjadi lebih dulu (ruang sampel B berubah karena pengaruh A):

  $$P(B|A) = \frac{P(A \text{ dan } B)}{P(A)}$$

**Kesalahan Umum / Jebakan:**
- Menjumlahkan langsung $P(A) + P(B)$ padahal kejadian TIDAK saling lepas, sehingga irisan $P(A \text{ dan } B)$ terhitung dua kali (lupa dikurangi).
- Mengalikan $P(A) \times P(B)$ untuk kejadian bersyarat/tanpa pengembalian, padahal ruang sampel kejadian kedua sudah berubah sehingga seharusnya memakai $P(B|A)$, bukan menganggap saling bebas.

**Kesimpulan:** Kenali dulu apakah kejadian saling lepas, saling bebas, atau bersyarat sebelum memilih rumus gabungan yang tepat.

**Contoh Soal:** Sebuah kotak berisi 5 kelereng merah dan 3 kelereng putih. Diambil dua kelereng satu per satu TANPA pengembalian. Berapa peluang kelereng pertama merah DAN kelereng kedua putih?

- A. 15/64
- B. 5/16
- C. 3/8
- D. 15/56
- E. 5/28

**Pembahasan:**

**Diketahui:** Kotak berisi 5 kelereng merah dan 3 kelereng putih (total 8); diambil 2 kelereng satu per satu tanpa pengembalian.

**Ditanya:** Peluang kelereng pertama merah DAN kelereng kedua putih.

**Jawab:** Karena tanpa pengembalian, pengambilan kedua bersyarat pada hasil pengambilan pertama (bukan saling bebas). P(merah pertama) = 5/8. Setelah satu kelereng merah diambil, sisa kelereng tinggal 7 (4 merah, 3 putih), sehingga P(putih kedua | merah pertama) = 3/7. Dengan aturan perkalian bersyarat: P(merah dan putih) = P(merah) \times P(putih|merah) = 5/8 \times 3/7 = 15/56. Jadi jawabannya adalah D.', 3),
('b0000000-0000-4000-8000-061100000000', 'Kaidah Pencacahan Dasar', '**Definisi:** Kaidah pencacahan adalah kumpulan aturan untuk menghitung banyaknya kemungkinan susunan atau pilihan, mencakup aturan perkalian, permutasi, dan kombinasi.

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan apakah urutan diperhatikan (gunakan permutasi) atau tidak (gunakan kombinasi).
2. Untuk kejadian bertahap/berurutan, gunakan aturan perkalian: kalikan banyak cara di tiap tahap.
3. Untuk susunan melingkar (mis. duduk mengelilingi meja bundar), gunakan permutasi siklis $(n-1)!$ karena satu posisi dijadikan acuan tetap.
4. Untuk susunan dengan unsur berulang (mis. huruf sama pada satu kata), bagi $n!$ dengan faktorial banyaknya masing-masing unsur yang berulang.
5. Substitusikan nilai n dan r ke rumus yang sesuai, lalu hitung hasil akhirnya.

**Rumus & Poin Kunci:**
- **Aturan perkalian**: jika kejadian pertama punya m cara dan kejadian kedua punya n cara, total cara $= m \times n$.
- **Permutasi** (urutan diperhatikan): $$P(n,r) = \frac{n!}{(n-r)!}$$
- **Kombinasi** (urutan tidak diperhatikan): $$C(n,r) = \frac{n!}{r!(n-r)!}$$
- **Permutasi siklis** (susunan melingkar): $$P_{siklis} = (n-1)!$$
- **Permutasi dengan unsur sama** (ada elemen berulang): $$P = \frac{n!}{p_1! \times p_2! \times \dots}$$ dengan $p_1, p_2, \dots$ = banyak masing-masing unsur yang berulang.

**Kesalahan Umum / Jebakan:**
- Tertukar memakai permutasi padahal soal meminta kombinasi (atau sebaliknya) — misalnya soal "memilih tim/kelompok" (urutan tidak penting, seharusnya kombinasi) sering keliru dikerjakan dengan permutasi sehingga hasilnya kelipatan yang salah.
- Lupa mengurangi 1 pada susunan melingkar (memakai $n!$ biasa, padahal seharusnya $(n-1)!$), atau lupa membagi dengan faktorial unsur berulang saat menyusun huruf yang mengandung pengulangan.

**Tips cara cepat**: Gunakan kombinasi saat memilih anggota kelompok/tim (urutan tidak penting), dan gunakan permutasi saat menyusun posisi/jabatan/urutan (urutan penting). Untuk soal melingkar, langsung pakai $(n-1)!$; untuk soal huruf berulang, langsung bagi $n!$ dengan faktorial banyaknya tiap huruf yang sama.

**Kesimpulan:** Pilih rumus pencacahan berdasarkan apakah urutan diperhatikan (permutasi) atau tidak (kombinasi), dan perhatikan kasus khusus melingkar serta unsur berulang.

**Contoh Soal:** a) Dalam sebuah acara, 6 orang duduk mengelilingi meja bundar secara acak. Ada berapa banyak susunan duduk yang mungkin? b) Ada berapa banyak susunan huruf berbeda yang bisa dibentuk dari kata "MATEMATIKA"?

- A. a) 720 cara; b) 151.200 susunan
- B. a) 120 cara; b) 302.400 susunan
- C. a) 120 cara; b) 151.200 susunan
- D. a) 360 cara; b) 151.200 susunan
- E. a) 120 cara; b) 3.628.800 susunan

**Pembahasan:**

**Diketahui:** a) 6 orang duduk mengelilingi meja bundar. b) Kata MATEMATIKA terdiri dari 10 huruf dengan pengulangan M=2, A=3, T=2 (E, I, K masing-masing 1 kali).

**Ditanya:** a) Banyak susunan duduk melingkar. b) Banyak susunan huruf berbeda dari kata MATEMATIKA.

**Jawab:** a) Karena posisi melingkar, satu orang dijadikan acuan tetap sehingga hanya sisa (6-1) orang yang disusun: permutasi siklis $= (6-1)! = 5! = 120$ cara. b) Permutasi dengan unsur sama $= \frac{10!}{2! \times 3! \times 2!} = \frac{3.628.800}{24} = 151.200$ susunan. Jadi jawabannya adalah C.', 4);

update chapters set mindmap = '# Peluang

## Peluang Dasar
- $P(A) = \frac{n(A)}{n(S)}$
- Nilai antara 0 dan 1

## Peluang Komplemen
- $P(A'') = 1 - P(A)$
- Dipakai saat "bukan A" lebih mudah dihitung

## Peluang Gabungan
- Saling lepas: $P(A) + P(B)$
- Tidak saling lepas: $P(A) + P(B) - P(A\ dan\ B)$

## Kaidah Pencacahan
- Aturan perkalian: $m \times n$
- Permutasi $P(n,r) = \frac{n!}{(n-r)!}$ (urutan penting)
- Kombinasi $C(n,r) = \frac{n!}{r!(n-r)!}$ (urutan tidak penting)

## Catatan Penting
- Pilih kelompok/tim -> kombinasi
- Susun urutan/posisi -> permutasi' where id = 'b0000000-0000-4000-8000-061100000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061100000000', 'Sebuah dadu setimbang dilempar satu kali. Peluang munculnya mata dadu bilangan genap adalah...', '1/6', '1/3', '1/2', '2/3', '5/6', 'C', 'Mata dadu genap: {2,4,6}, ada 3 dari 6 kemungkinan. P = 3/6 = 1/2.', 'easy', 1),
('b0000000-0000-4000-8000-061100000000', 'Dalam sebuah kotak terdapat 50 kartu bernomor 1 sampai 50. Diambil satu kartu secara acak. Peluang terambilnya kartu dengan angka yang BUKAN kelipatan 5 adalah...', '1/5', '2/5', '1/2', '3/5', '4/5', 'E', 'Kelipatan 5 dari 1 sampai 50 ada 10 (yaitu 5, 10, 15, ..., 50), sehingga P(kelipatan 5) = 10/50 = 1/5. Dengan rumus komplemen, P(bukan kelipatan 5) = 1 - 1/5 = 4/5.', 'medium', 2),
('b0000000-0000-4000-8000-061100000000', 'Sebuah kotak berisi 6 bola merah, 4 bola biru, dan 5 bola hijau. Diambil satu bola secara acak, dicatat warnanya, lalu dikembalikan ke kotak. Kemudian diambil sekali lagi secara acak. Peluang bahwa KEDUA bola yang terambil bukan bola hijau adalah...', '2/3', '4/9', '1/3', '5/9', '8/9', 'B', 'Total bola = 6+4+5 = 15. P(bukan hijau) pada satu kali pengambilan = 10/15 = 2/3. Karena bola dikembalikan (kejadian saling bebas/independen), P(kedua bola bukan hijau) = (2/3) x (2/3) = 4/9.', 'medium', 3),
('b0000000-0000-4000-8000-061100000000', 'Dari satu set kartu bridge (52 kartu) diambil satu kartu secara acak. Peluang terambilnya kartu As ATAU kartu Hati adalah...', '4/13', '17/52', '1/4', '13/52', '3/13', 'A', 'P(As) = 4/52 dan P(Hati) = 13/52. Kejadian As dan Hati TIDAK saling lepas karena ada As Hati (1 kartu) yang termasuk keduanya, sehingga P(As dan Hati) = 1/52. Maka P(As atau Hati) = 4/52 + 13/52 - 1/52 = 16/52 = 4/13.', 'hard', 4),
('b0000000-0000-4000-8000-061100000000', 'Sebuah panitia terdiri dari 5 pria dan 4 wanita. Akan dipilih 3 orang secara acak sebagai delegasi (tanpa membedakan jabatan). Peluang bahwa delegasi tersebut terdiri dari SEKURANG-KURANGNYA 1 wanita adalah...', '37/42', '5/42', '10/21', '11/21', '5/14', 'A', 'Total cara memilih 3 dari 9 orang: C(9,3) = 9!/(3! x 6!) = 84. Cara memilih delegasi TANPA wanita (hanya dari 5 pria): C(5,3) = 5!/(3! x 2!) = 10. P(tanpa wanita) = 10/84 = 5/42. Dengan rumus komplemen, P(sekurang-kurangnya 1 wanita) = 1 - 5/42 = 37/42.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061100000000', 'Dalam pemilihan siswa teladan terdapat 9 calon, yaitu 5 orang putra dan 4 orang putri. Jika akan dipilih sepasang siswa teladan yang terdiri dari seorang putra dan seorang putri, berapa banyak pasangan yang mungkin?', '9', '12', '18', '20', '36', 'D', 'Dengan aturan perkalian, banyaknya pasangan yang mungkin = 5 (pilihan putra) x 4 (pilihan putri) = 20 pasangan.', 'easy', 6),
('b0000000-0000-4000-8000-061100000000', 'Dalam sebuah kelas, 25 mahasiswa memiliki nama yang dimulai dengan huruf A hingga M, dan 35 mahasiswa memiliki nama yang dimulai dengan huruf N hingga Z. Berapakah peluang bahwa sebuah nama yang diambil secara acak dimulai dengan huruf A hingga M?', '1/3', '5/12', '1/2', '5/7', null, 'B', 'Peluangnya = 25/(25+35) = 25/60 = 5/12.', 'easy', 7),
('b0000000-0000-4000-8000-061100000000', 'Jika x adalah peluang munculnya jumlah mata dadu 9 atau 10 pada pelemparan dua buah dadu secara bersama-sama, dan y adalah 1/9 dari 1 1/4, maka...', 'x < y', 'x > y', 'x = y', 'x = y + 1/6', 'Hubungan x dan y tidak dapat ditentukan', 'B', 'Jumlah 9 dapat terjadi dengan pasangan (3,6), (4,5), (5,4), (6,3), yaitu 4 cara. Jumlah 10 dapat terjadi dengan pasangan (4,6), (5,5), (6,4), yaitu 3 cara. Total kejadian yang diharapkan = 4 + 3 = 7 dari 36 kemungkinan, sehingga x = 7/36. Sementara itu y = (1/9) x (5/4) = 5/36. Karena 7/36 > 5/36, maka x > y.', 'medium', 8);
