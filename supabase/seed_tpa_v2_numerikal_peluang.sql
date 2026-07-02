-- Materi + mind map + soal: Bab "Peluang" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061100000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061100000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061100000000', null, 'Peluang (probabilitas) mengukur seberapa besar kemungkinan suatu kejadian terjadi, dengan nilai antara 0 (mustahil) dan 1 (pasti). Subtes ini juga sering menggabungkan peluang dengan kaidah pencacahan dasar (permutasi dan kombinasi) untuk menghitung n(A) atau n(S).', 1),
('b0000000-0000-4000-8000-061100000000', 'Peluang Dasar dan Komplemen', '**Definisi:** Peluang kejadian A dirumuskan sebagai:

$$P(A) = \frac{n(A)}{n(S)}$$

dengan n(A) = banyak kejadian yang diharapkan, n(S) = banyak seluruh kemungkinan (ruang sampel).

**Pengenalan:** Selain menghitung peluang suatu kejadian secara langsung, sering kali lebih mudah menghitung peluang kejadian sebaliknya (komplemen), yaitu peluang kejadian A TIDAK terjadi:

$$P(A'') = 1 - P(A)$$

**Poin yang Harus Diketahui:**
- Nilai peluang selalu berada antara 0 (mustahil) dan 1 (pasti).
- n(A) = banyak kejadian yang diharapkan; n(S) = banyak seluruh kemungkinan (ruang sampel).
- Rumus komplemen $P(A'') = 1 - P(A)$ sangat berguna ketika menghitung "peluang bukan A" lebih mudah lewat kebalikannya daripada langsung.

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
('b0000000-0000-4000-8000-061100000000', 'Peluang Gabungan Dua Kejadian', '**Definisi:** Peluang gabungan P(A atau B) memiliki dua rumus tergantung hubungan antara A dan B:

| Kondisi | Rumus |
|---|---|
| Saling lepas (tidak mungkin terjadi bersamaan) | $P(A) + P(B)$ |
| Tidak saling lepas (bisa terjadi bersamaan) | $P(A) + P(B) - P(A \text{ dan } B)$ |

**Pengenalan:** Selain peluang gabungan, ada dua konsep pelengkap yang sering diuji dalam soal berlapis, yaitu kejadian saling bebas dan peluang bersyarat.

**Poin yang Harus Diketahui:**
- Contoh saling lepas: muncul mata dadu 2 ATAU 5 (tidak mungkin dua-duanya sekaligus dalam satu lemparan).
- Contoh tidak saling lepas: kartu As ATAU kartu Hati (ada As Hati yang termasuk keduanya).
- **Kejadian saling bebas (independent events):** dua kejadian A dan B disebut saling bebas jika terjadinya A tidak memengaruhi peluang terjadinya B (misalnya dua lemparan dadu yang terpisah, atau pengambilan dengan pengembalian). Rumusnya:

  $$P(A \text{ dan } B) = P(A) \times P(B)$$

- **Peluang bersyarat (conditional probability):** peluang terjadinya B DENGAN SYARAT A sudah terjadi lebih dulu (ruang sampel B berubah karena pengaruh A), dirumuskan:

  $$P(B|A) = \frac{P(A \text{ dan } B)}{P(A)}$$

- Ciri soal bersyarat: biasanya memakai kata "tanpa pengembalian" atau "setelah diketahui...".

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
('b0000000-0000-4000-8000-061100000000', 'Kaidah Pencacahan Dasar', '**Definisi:** Kaidah pencacahan adalah kumpulan aturan untuk menghitung banyaknya kemungkinan susunan atau pilihan, yaitu aturan perkalian, permutasi, dan kombinasi.

**Pengenalan:** Sebelum menghitung n(A) atau n(S) pada soal peluang, sering diperlukan kaidah pencacahan berikut ini.

**Poin yang Harus Diketahui:**
- **Aturan perkalian**: jika kejadian pertama punya m cara dan kejadian kedua punya n cara, total cara $= m \times n$.
- **Permutasi** (urutan diperhatikan): $$P(n,r) = \frac{n!}{(n-r)!}$$
- **Kombinasi** (urutan tidak diperhatikan): $$C(n,r) = \frac{n!}{r!(n-r)!}$$
- **Permutasi siklis** (susunan melingkar, mis. duduk mengelilingi meja bundar): $$P_{siklis} = (n-1)!$$ karena satu posisi dijadikan acuan tetap sehingga hanya sisanya yang perlu disusun.
- **Permutasi dengan unsur sama** (ada elemen berulang, mis. menyusun huruf pada kata yang huruf-hurufnya ada yang sama): $$P = \frac{n!}{p_1! \times p_2! \times \dots}$$ dengan $p_1, p_2, \dots$ = banyak masing-masing unsur yang berulang.

**Catatan Penting (cara cepat):** Gunakan kombinasi saat memilih anggota kelompok/tim (urutan tidak penting), dan gunakan permutasi saat menyusun posisi/jabatan/urutan (urutan penting). Untuk soal melingkar, langsung pakai $(n-1)!$; untuk soal huruf berulang, langsung bagi $n!$ dengan faktorial banyaknya tiap huruf yang sama.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-061100000000', 'Sebuah dadu setimbang dilempar satu kali. Peluang munculnya mata dadu bilangan genap adalah...', '1/6', '1/3', '1/2', '2/3', '5/6', 'C', 'Mata dadu genap: {2,4,6}, ada 3 dari 6 kemungkinan. P = 3/6 = 1/2.', 'easy'),
('b0000000-0000-4000-8000-061100000000', 'Dari satu set kartu bridge (52 kartu) diambil satu kartu secara acak. Peluang terambilnya kartu As adalah...', '1/52', '1/26', '1/4', '1/13', '4/13', 'D', 'Jumlah kartu As ada 4 dari 52 kartu. P = 4/52 = 1/13.', 'easy'),
('b0000000-0000-4000-8000-061100000000', 'Dalam sebuah kotak terdapat 5 bola merah dan 3 bola biru. Sebuah bola diambil secara acak. Peluang terambilnya bola BUKAN merah adalah...', '1/8', '3/8', '1/2', '5/8', '7/8', 'B', 'P(merah) = 5/8, maka P(bukan merah) = 1 - 5/8 = 3/8 (peluang komplemen), sesuai jumlah bola biru 3/8.', 'medium'),
('b0000000-0000-4000-8000-061100000000', 'Sebuah dadu dilempar satu kali. Peluang munculnya mata dadu 2 ATAU 5 adalah...', '1/6', '1/4', '1/2', '2/3', '1/3', 'E', 'Kejadian muncul 2 dan muncul 5 saling lepas (tak mungkin bersamaan): P = P(2)+P(5) = 1/6+1/6 = 2/6 = 1/3.', 'medium'),
('b0000000-0000-4000-8000-061100000000', 'Sebuah panitia beranggotakan 5 orang akan memilih 2 orang sebagai perwakilan tanpa membedakan jabatan (posisi tidak diperhatikan). Banyaknya cara memilih 2 perwakilan tersebut adalah...', '5 cara', '8 cara', '10 cara', '15 cara', '20 cara', 'C', 'Karena urutan/posisi tidak diperhatikan, gunakan kombinasi: C(5,2) = 5!/(2!x3!) = (5x4)/(2x1) = 10 cara.', 'hard');
