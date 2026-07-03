-- Materi + mind map + soal: Bab "Bangun Datar dan Bangun Ruang" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060600000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060600000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060600000000', null, 'Bab ini menguji hafalan sekaligus penerapan rumus luas & keliling bangun datar, serta volume & luas permukaan bangun ruang. Karena rumus jumlahnya banyak, strategi terbaik adalah menghafal lewat tabel dan sering berlatih substitusi angka.', 1),
('b0000000-0000-4000-8000-060600000000', 'Rumus Luas dan Keliling Bangun Datar', '**Definisi:** Luas (L) adalah ukuran daerah yang tertutup oleh suatu bangun datar, sedangkan keliling (K) adalah total panjang seluruh sisi terluar bangun tersebut.

**Cara Kerja / Langkah Pengerjaan:**
1. Kenali bentuk bangun datar yang ditanyakan (persegi, persegi panjang, segitiga, lingkaran, trapesium, jajar genjang, layang-layang, dst).
2. Identifikasi ukuran yang diketahui dari soal (sisi, alas, tinggi, jari-jari/diameter, diagonal, dst) sesuai kebutuhan rumus bangun tersebut.
3. Untuk bangun gabungan atau tak beraturan, pecah dulu menjadi beberapa bangun standar yang rumusnya sudah dihafal.
4. Hitung luas atau keliling tiap bangun standar tersebut secara terpisah menggunakan rumus yang sesuai.
5. Jumlahkan hasilnya (jika bangun gabungan) atau kurangkan (jika ada bagian yang menjadi lubang/potongan di dalam bangun lain) untuk memperoleh hasil akhir.

**Rumus & Poin Kunci:**
- Tabel rumus bangun datar (L = luas, K = keliling):

| Bangun | Luas (L) | Keliling (K) |
|---|---|---|
| Persegi (sisi s) | $s \times s$ | $4 \times s$ |
| Persegi panjang (p, l) | $p \times l$ | $2 \times (p + l)$ |
| Segitiga (alas a, tinggi t) | $\frac{1}{2} \times a \times t$ | jumlah 3 sisi |
| Lingkaran (jari-jari r) | $\pi \times r \times r$ | $2 \times \pi \times r$ |
| Trapesium (sisi sejajar a, b; tinggi t) | $\frac{1}{2} \times (a + b) \times t$ | jumlah semua sisi |
| Jajar genjang (alas a, tinggi t) | $a \times t$ | $2 \times (sisi_1 + sisi_2)$ |
| Layang-layang (diagonal d1, d2) | $\frac{1}{2} \times d_1 \times d_2$ | jumlah 4 sisi |

- Catatan: nilai $\pi$ biasa dipakai $\frac{22}{7}$ (jika jari-jari/diameter kelipatan 7) atau 3,14 (untuk kasus lain).
- Level lanjutan sering menampilkan bangun gabungan: sebuah bangun tak beraturan yang sebenarnya adalah gabungan (atau selisih) dua bangun sederhana.

**Kesalahan Umum / Jebakan:**
- Salah menerapkan nilai $\pi$ (memakai 3,14 padahal jari-jari/diameter kelipatan 7, atau sebaliknya) sehingga hasil akhir tidak presisi.
- Lupa mengurangkan luas bagian yang menjadi lubang/potongan pada bangun gabungan, malah menjumlahkan semua bagian.
- Tertukar antara rumus luas dan keliling, terutama pada lingkaran ($\pi \times r \times r$ untuk luas versus $2 \times \pi \times r$ untuk keliling).

**Kesimpulan:** Hafal tabel rumus luas dan keliling bangun dasar, lalu latih kejelian memecah bangun gabungan menjadi bangun-bangun standar sebelum menjumlah atau mengurangkan luasnya.

**Contoh Soal:** Sebuah taman berbentuk persegi panjang berukuran panjang 20 m dan lebar 14 m. Di salah satu ujung taman terdapat kolam berbentuk setengah lingkaran dengan diameter sama dengan lebar taman (14 m) yang menempel pada sisi lebar. Berapakah luas taman yang tersisa (di luar kolam), gunakan $\pi = \frac{22}{7}$?
- A. 357 $\text{m}^2$
- B. 126 $\text{m}^2$
- C. 203 $\text{m}^2$
- D. 280 $\text{m}^2$
- E. 217 $\text{m}^2$

**Pembahasan:**

**Diketahui:** Taman persegi panjang panjang 20 m, lebar 14 m; kolam setengah lingkaran dengan diameter 14 m menempel pada sisi lebar.

**Ditanya:** Luas taman yang tersisa di luar kolam.

**Jawab:** Luas persegi panjang penuh $= p \times l = 20 \times 14 = 280 \text{ m}^2$. Kolam setengah lingkaran punya diameter 14 m sehingga jari-jarinya $r = 7$ m. Luas setengah lingkaran $= \frac{1}{2} \times \pi \times r \times r = \frac{1}{2} \times \frac{22}{7} \times 7 \times 7 = \frac{1}{2} \times 154 = 77 \text{ m}^2$. Karena kolam adalah bagian yang harus dikurangkan dari taman, luas taman yang tersisa $= 280 - 77 = 203 \text{ m}^2$. Jadi jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-060600000000', 'Rumus Volume dan Luas Permukaan Bangun Ruang', '**Definisi:** Volume (V) adalah ukuran ruang yang ditempati oleh suatu bangun ruang, sedangkan luas permukaan (LP) adalah total luas seluruh sisi/permukaan luar bangun tersebut.

**Cara Kerja / Langkah Pengerjaan:**
1. Kenali jenis bangun ruang yang ditanyakan (kubus, balok, tabung, kerucut, bola, limas, prisma).
2. Identifikasi ukuran yang diketahui dari soal (sisi, panjang-lebar-tinggi, jari-jari, tinggi, garis pelukis, luas alas, dst).
3. Substitusikan nilai yang diketahui ke rumus volume atau luas permukaan sesuai bangun tersebut.
4. Jika ada perubahan skala dimensi, cek dulu apakah pembesaran/pengecilan berlaku seragam pada semua sisi (pakai faktor $k^3$ untuk volume dan $k^2$ untuk luas permukaan) atau tidak seragam (hitung ulang dari rumus dasar memakai dimensi baru).

**Rumus & Poin Kunci:**
- Tabel rumus bangun ruang (V = volume, LP = luas permukaan):

| Bangun | Volume (V) | Luas Permukaan (LP) |
|---|---|---|
| Kubus (sisi s) | $s \times s \times s$ | $6 \times s \times s$ |
| Balok (p, l, t) | $p \times l \times t$ | $2 \times (pl + pt + lt)$ |
| Tabung (r, t) | $\pi \times r \times r \times t$ | $2 \times \pi \times r \times (r + t)$ |
| Kerucut (r, t, garis pelukis s) | $\frac{1}{3} \times \pi \times r \times r \times t$ | $\pi \times r \times (r + s)$ |
| Bola (r) | $\frac{4}{3} \times \pi \times r \times r \times r$ | $4 \times \pi \times r \times r$ |
| Limas (luas alas La, tinggi t) | $\frac{1}{3} \times L_a \times t$ | luas alas + jumlah luas sisi tegak |
| Prisma (luas alas La, tinggi t) | $L_a \times t$ | $(2 \times L_a) + (keliling alas \times t)$ |

- Konsep penting level lanjutan: jika sebuah bangun ruang diperbesar secara seragam (semua dimensi dikalikan faktor $k$), volumenya menjadi $k^3$ kali volume semula (skala kubik), sedangkan luas permukaannya menjadi $k^2$ kali semula (skala kuadrat). Namun soal yang lebih menantang sering mengubah dimensi secara tidak seragam (misalnya hanya jari-jari yang diperbesar, sementara tinggi tetap atau justru diperkecil), sehingga rumus $k^3$ sederhana tidak bisa langsung dipakai — volume baru harus dihitung ulang dari rumus dasarnya.

**Tips cara cepat**: saat r atau d adalah kelipatan 7 (7, 14, 21, ...), gunakan $\pi = \frac{22}{7}$ supaya perhitungan menjadi bilangan bulat tanpa desimal.

**Kesalahan Umum / Jebakan:**
- Menganggap semua pembesaran dimensi otomatis mengikuti skala $k^3$/$k^2$, padahal itu hanya berlaku jika SEMUA dimensi diperbesar dengan faktor yang sama.
- Tertukar rumus kerucut/limas (memakai faktor $\frac{1}{3}$) dengan rumus prisma/tabung (tanpa faktor $\frac{1}{3}$).
- Lupa mengalikan 2 pada luas permukaan balok/tabung karena ada dua sisi identik (atas dan bawah).

**Kesimpulan:** Hafal tabel rumus volume dan luas permukaan bangun dasar, dan ingat bahwa skala $k^3$/$k^2$ hanya berlaku untuk pembesaran seragam — jika dimensinya berubah tidak seragam, hitung ulang dari rumus dasar.

**Contoh Soal:** Sebuah tabung mula-mula memiliki jari-jari $r$ dan tinggi $t$ sehingga volumenya $V = \pi \times r^2 \times t$. Jika jari-jari tabung tersebut diperbesar menjadi 2 kali semula, namun tingginya diperkecil menjadi setengah dari semula, volume tabung yang baru menjadi berapa kali volume semula?
- A. 8 kali
- B. 1 kali
- C. 4 kali
- D. 2 kali
- E. $\frac{1}{2}$ kali

**Pembahasan:**

**Diketahui:** Tabung dengan jari-jari mula-mula $r$ dan tinggi $t$, $V = \pi \times r^2 \times t$. Jari-jari diperbesar 2 kali, tinggi diperkecil menjadi setengah.

**Ditanya:** Volume tabung baru menjadi berapa kali volume semula.

**Jawab:** Volume baru $V_{baru} = \pi \times (2r)^2 \times \frac{t}{2} = \pi \times 4r^2 \times \frac{t}{2} = \frac{4}{2} \times \pi \times r^2 \times t = 2 \times \pi \times r^2 \times t = 2V$. Jadi meskipun jari-jari diperbesar 2 kali (yang seharusnya melipatgandakan volume 4 kali jika hanya $r$ yang berubah), karena tinggi ikut diperkecil setengah, volume akhirnya hanya menjadi 2 kali volume semula. Jadi jawabannya adalah D.', 3),
('b0000000-0000-4000-8000-060600000000', 'Cara Cepat: Tripel Pythagoras', '**Definisi:** Tripel Pythagoras adalah tiga bilangan bulat $(a, b, c)$ yang memenuhi $c = \sqrt{a^2 + b^2}$ pada segitiga siku-siku, sehingga sisi miring bisa langsung dikenali tanpa menghitung akar.

**Cara Kerja / Langkah Pengerjaan:**
1. Begitu soal menyebutkan segitiga siku-siku dengan dua sisi diketahui, cek dulu apakah kedua sisi itu cocok dengan salah satu tripel Pythagoras dasar (3-4-5, 5-12-13, 8-15-17, 7-24-25) atau kelipatannya.
2. Jika cocok, sisi ketiga bisa langsung ditentukan dari pola tripel tersebut tanpa menghitung akar.
3. Jika tidak cocok dengan tripel manapun, hitung sisi ketiga dengan rumus $c = \sqrt{a^2 + b^2}$ (untuk sisi miring) atau $a = \sqrt{c^2 - b^2}$ (untuk salah satu sisi siku-siku).
4. Gunakan sisi yang sudah ditemukan untuk menghitung besaran lain yang ditanyakan pada soal (luas, keliling, dst).

**Rumus & Poin Kunci:**
- Rumus dasar: $c = \sqrt{a^2 + b^2}$ pada segitiga siku-siku, dengan $c$ adalah sisi miring (hipotenusa).
- Tabel tripel Pythagoras dasar beserta kelipatannya:

| Tripel Dasar | Kelipatan 2x | Kelipatan 3x |
|---|---|---|
| 3, 4, 5 | 6, 8, 10 | 9, 12, 15 |
| 5, 12, 13 | 10, 24, 26 | 15, 36, 39 |
| 8, 15, 17 | 16, 30, 34 | 24, 45, 51 |
| 7, 24, 25 | 14, 48, 50 | 21, 72, 75 |

**Tips cara cepat:** Begitu soal memberi dua sisi segitiga siku-siku, cek dulu apakah keduanya cocok dengan salah satu tripel di atas (termasuk kelipatannya) sebelum menghitung akar kuadrat manual. Misalnya sisi 6 dan 8 langsung dikenali sebagai kelipatan 2x dari 3-4-5, sehingga sisi miringnya pasti 10 tanpa perlu dihitung.

**Kesalahan Umum / Jebakan:**
- Menganggap sembarang dua sisi otomatis merupakan tripel Pythagoras tanpa mengecek kecocokan rasionya terlebih dahulu.
- Salah menentukan sisi mana yang menjadi sisi miring — hipotenusa harus sisi terpanjang, yaitu sisi yang berhadapan dengan sudut siku-siku.
- Lupa bahwa rumus $c = \sqrt{a^2 + b^2}$ hanya berlaku untuk segitiga siku-siku, bukan sembarang segitiga.

**Kesimpulan:** Hafalkan tripel Pythagoras dasar dan kelipatannya agar bisa langsung menebak sisi miring segitiga siku-siku tanpa menghitung akar kuadrat secara manual.

**Contoh Soal:** Sebuah taman berbentuk trapesium siku-siku dengan sisi sejajar 9 m (bagian atas) dan 15 m (bagian bawah). Sisi tegak taman belum diketahui panjangnya, namun sisi miring yang menghubungkan ujung sisi sejajar atas dan bawah panjangnya 10 m. Berapakah luas taman tersebut?
- A. 120 $\text{m}^2$
- B. 96 $\text{m}^2$
- C. 72 $\text{m}^2$
- D. 192 $\text{m}^2$
- E. 144 $\text{m}^2$

**Pembahasan:**

**Diketahui:** Trapesium siku-siku dengan sisi sejajar 9 m dan 15 m, sisi miring penghubung ujung sisi sejajar 10 m.

**Ditanya:** Luas trapesium tersebut.

**Jawab:** Trapesium siku-siku ini bisa dibayangkan sebagai gabungan persegi panjang dan segitiga siku-siku, dengan segitiga siku-sikunya memiliki alas horizontal $15 - 9 = 6$ m dan sisi miring 10 m. Alih-alih menghitung $\sqrt{10^2 - 6^2}$ secara manual, kenali bahwa 6 dan 10 adalah kelipatan 2x dari tripel dasar 3-4-5, sehingga sisi tegak (tinggi trapesium) pasti $4 \times 2 = 8$ m. Dengan tinggi 8 m, luas taman $= \frac{1}{2} \times (9 + 15) \times 8 = \frac{1}{2} \times 24 \times 8 = 96 \text{ m}^2$. Jadi jawabannya adalah B.', 4);

update chapters set mindmap = '# Bangun Datar dan Bangun Ruang

## Bangun Datar - Luas
- Persegi: $s \times s$ | Persegi panjang: $p \times l$
- Segitiga: $\frac{1}{2} \times a \times t$
- Lingkaran: $\pi \times r \times r$
- Trapesium: $\frac{1}{2} \times (a+b) \times t$
- Jajar genjang: $a \times t$
- Layang-layang: $\frac{1}{2} \times d_1 \times d_2$

## Bangun Datar - Keliling
- Persegi: $4 \times s$ | Persegi panjang: $2 \times (p+l)$
- Lingkaran: $2 \times \pi \times r$

## Bangun Ruang - Volume
- Kubus: $s^3$ | Balok: $p \times l \times t$
- Tabung: $\pi \times r^2 \times t$
- Kerucut: $\frac{1}{3} \times \pi \times r^2 \times t$
- Bola: $\frac{4}{3} \times \pi \times r^3$
- Limas: $\frac{1}{3} \times L_a \times t$ | Prisma: $L_a \times t$

## Bangun Ruang - Luas Permukaan
- Kubus: $6 \times s^2$ | Balok: $2(pl+pt+lt)$
- Tabung: $2 \times \pi \times r \times (r+t)$
- Bola: $4 \times \pi \times r^2$

## Tips
- r/d kelipatan 7 -> pakai $\pi = \frac{22}{7}$' where id = 'b0000000-0000-4000-8000-060600000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060600000000', 'Luas sebuah persegi panjang dengan panjang 12 cm dan lebar 8 cm adalah...', '20 cm persegi', '96 cm persegi', '40 cm persegi', '80 cm persegi', '104 cm persegi', 'B', 'Luas persegi panjang = panjang x lebar = 12 x 8 = 96 cm persegi.', 'easy', 1),
('b0000000-0000-4000-8000-060600000000', 'Sebuah taman berbentuk persegi panjang berukuran panjang 16 m dan lebar 10 m. Sebuah kolam berbentuk segitiga siku-siku dengan alas 8 m dan tinggi 6 m dibangun di salah satu sudut taman. Berapakah luas taman yang tidak tertutup kolam?', '136 m persegi', '112 m persegi', '144 m persegi', '152 m persegi', '184 m persegi', 'A', 'Luas taman penuh = panjang x lebar = 16 x 10 = 160 m persegi. Luas kolam segitiga = 1/2 x alas x tinggi = 1/2 x 8 x 6 = 24 m persegi. Luas taman yang tidak tertutup kolam = 160 - 24 = 136 m persegi.', 'hard', 2),
('b0000000-0000-4000-8000-060600000000', 'Sebuah lapangan berbentuk persegi panjang dengan panjang 24 m dan lebar 14 m. Pada salah satu ujung (menempel sisi lebar) dibuat lengkungan berbentuk setengah lingkaran dengan diameter sama dengan lebar lapangan, menggantikan sisi lebar tersebut. Berapakah keliling total lapangan itu (dua sisi panjang, satu sisi lebar, dan busur setengah lingkaran), gunakan pi = 22/7?', '84 m', '92 m', '76 m', '70 m', '98 m', 'A', 'Dua sisi panjang = 2 x 24 = 48 m, satu sisi lebar yang tidak melengkung = 14 m, dan busur setengah lingkaran menggantikan ujung satunya dengan diameter 14 m: keliling setengah lingkaran = 1/2 x pi x d = 1/2 x 22/7 x 14 = 22 m. Total keliling = 48 + 14 + 22 = 84 m.', 'hard', 3),
('b0000000-0000-4000-8000-060600000000', 'Sebuah balok memiliki panjang 10 cm, lebar 5 cm, dan tinggi 4 cm. Jika balok tersebut diperbesar sehingga semua sisinya menjadi 2 kali panjang semula, berapakah volume balok yang baru?', '400 cm kubik', '800 cm kubik', '1.200 cm kubik', '1.600 cm kubik', '3.200 cm kubik', 'D', 'Volume balok awal = 10 x 5 x 4 = 200 cm kubik. Karena seluruh sisi diperbesar seragam 2 kali (skala k = 2), volume menjadi k pangkat 3 = 8 kali volume semula: 200 x 8 = 1.600 cm kubik (bisa dicek langsung: 20 x 10 x 8 = 1.600 cm kubik).', 'hard', 4),
('b0000000-0000-4000-8000-060600000000', 'Sebuah wadah berbentuk tabung dengan jari-jari alas 7 cm dan tinggi 20 cm berisi air penuh; wadah itu dibeli dengan harga Rp45.000. Ke dalam wadah dimasukkan sebuah pemberat berbentuk kerucut pejal dengan jari-jari alas 7 cm dan tinggi 6 cm, sehingga air yang tumpah keluar sama dengan volume kerucut tersebut. Gunakan pi = 22/7. Berapa cm kubik volume air yang tersisa di dalam wadah?', '2.772 cm kubik', '2.464 cm kubik', '3.080 cm kubik', '3.388 cm kubik', '2.156 cm kubik', 'A', 'Info harga wadah tidak diperlukan untuk menghitung volume. Volume tabung = pi x r x r x t = 22/7 x 7 x 7 x 20 = 3.080 cm kubik. Volume kerucut (pemberat) yang menggantikan air = 1/3 x pi x r x r x t = 1/3 x 22/7 x 7 x 7 x 6 = 1/3 x 924 = 308 cm kubik. Volume air yang tersisa = 3.080 - 308 = 2.772 cm kubik.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060600000000', 'Jika P adalah luas belah ketupat yang mempunyai diagonal berturut-turut 24 cm dan 32 cm, serta Q adalah luas segitiga yang memiliki panjang sisi 16 cm, 20 cm, dan 12 cm, maka...', 'P > Q', 'P < Q', 'P = Q', 'P = 3/4 Q', 'Hubungan antara P dan Q tidak dapat ditentukan', 'A', 'Luas belah ketupat P = (d1 x d2) : 2 = (24 x 32) : 2 = 384 cm persegi. Segitiga dengan sisi 12, 16, 20 adalah segitiga siku-siku karena 12^2 + 16^2 = 20^2 (144+256=400), sehingga luas Q = (12 x 16) : 2 = 96 cm persegi. Karena 384 > 96, maka P > Q.', 'medium', 6),
('b0000000-0000-4000-8000-060600000000', 'Sebuah akuarium berbentuk kerucut memiliki volume awal V. Berapakah pertambahan volume akuarium tersebut jika tingginya diperbesar menjadi tiga kali tinggi semula (jari-jari alas tetap)?', 'Sepertiga kali V', 'Dua per tiga kali V', 'Dua kali V', 'Tiga per empat kali V', 'Tiga kali V', 'C', 'Volume kerucut V = 1/3 x pi x r x r x t. Jika t menjadi 3t (r tetap), volume baru = 3V. Pertambahan volume = volume baru dikurangi volume awal = 3V - V = 2V, artinya volume bertambah sebesar dua kali volume semula.', 'medium', 7),
('b0000000-0000-4000-8000-060600000000', 'Dua lingkaran masing-masing berdiameter 20 cm dan 40 cm. Perbandingan luas kedua lingkaran tersebut adalah...', '1:2', '1:3', '1:4', '1:5', '1:8', 'C', 'Luas lingkaran sebanding dengan kuadrat jari-jarinya. Jari-jari kedua lingkaran adalah 10 cm dan 20 cm, sehingga perbandingan luas = 10^2 : 20^2 = 100 : 400 = 1 : 4.', 'easy', 8),
('b0000000-0000-4000-8000-060600000000', 'Sebuah kotak sereal berukuran 6 cm x 5 cm x 7 cm akan dimasukkan ke dalam kardus besar berukuran 28 cm x 24 cm x 60 cm. Berapa jumlah kotak sereal yang dapat dimasukkan ke dalam kardus tersebut?', '128', '144', '192', '210', '216', 'C', 'Susun agar tiap dimensi kotak membagi habis dimensi kardus: 28 : 7 = 4, 24 : 6 = 4, dan 60 : 5 = 12 (semua pas tanpa sisa). Jumlah kotak yang muat = 4 x 4 x 12 = 192.', 'medium', 9),
('b0000000-0000-4000-8000-060600000000', 'Jika x cm kubik adalah volume kubus dengan panjang rusuk 26 cm dan y cm kubik adalah volume balok berukuran 13 cm x 26 cm x 52 cm, maka...', 'x < y', 'x > y', 'x = y', 'x^2 > y^2', 'Hubungan x dan y tidak dapat ditentukan', 'C', 'Volume kubus x = 26^3 = 17.576 cm kubik. Volume balok y = 13 x 26 x 52 = 17.576 cm kubik. Karena nilainya sama persis, maka x = y.', 'medium', 10),
('b0000000-0000-4000-8000-060600000000', 'Jika P adalah volume setengah bola berjari-jari 2 m, sementara Q adalah volume kerucut dengan jari-jari alas 2 m dan tinggi 1 m, maka...', 'P = Q', 'P > Q', 'P < Q', 'P <= Q', 'Hubungan P dan Q tidak dapat ditentukan', 'B', 'Volume setengah bola P = 1/2 x 4/3 x pi x r x r x r = 1/2 x 4/3 x pi x 2 x 2 x 2 = 16/3 pi. Volume kerucut Q = 1/3 x pi x r x r x t = 1/3 x pi x 2 x 2 x 1 = 4/3 pi. Karena 16/3 pi = 4 x (4/3 pi), maka P = 4Q, sehingga P > Q.', 'medium', 11),
('b0000000-0000-4000-8000-060600000000', 'Sebuah wadah berbentuk silinder sudah terisi air sebanyak 1/3 kapasitasnya. Kemudian ditambahkan 3 liter air, sehingga isinya menjadi 1/2 kapasitasnya. Berapa liter kapasitas total wadah tersebut?', '9', '12', '15', '18', '24', 'D', 'Penambahan 3 liter menyebabkan isi wadah bertambah dari 1/3 menjadi 1/2 kapasitas, yaitu sebesar 1/2 - 1/3 = 1/6 kapasitas. Jadi 1/6 kapasitas = 3 liter, sehingga kapasitas total = 3 x 6 = 18 liter.', 'medium', 12),
('b0000000-0000-4000-8000-060600000000', 'Sebuah tangga sepanjang 6,5 meter disandarkan pada sebuah dinding tembok, dengan bagian bawah tangga berjarak 2,5 meter dari dinding. Jika bagian atas tangga digeser turun sepanjang 0,8 meter, berapa meter bagian bawah tangga akan bergeser dari posisi semula?', '6', '5,2', '1,4', '1', null, 'C', 'Tinggi tembok mula-mula (dari segitiga siku-siku pada tangga): tinggi^2 = 6,5^2 - 2,5^2 = 42,25 - 6,25 = 36, sehingga tinggi = 6 m. Setelah bagian atas tangga digeser turun 0,8 m, tinggi baru = 6 - 0,8 = 5,2 m. Jarak bawah baru dari dinding: jarak^2 = 6,5^2 - 5,2^2 = 42,25 - 27,04 = 15,21, sehingga jarak = akar(15,21) = 3,9 m. Pergeseran bagian bawah tangga = 3,9 - 2,5 = 1,4 m.', 'hard', 13),
('b0000000-0000-4000-8000-060600000000', 'Jika luas sebuah bujur sangkar dinaikkan sebesar 69%, maka sisi bujur sangkar tersebut naik sebesar...', '13%', '30%', '39%', '69%', null, 'B', 'Jika luas awal = Lx dan luas akhir Ly = 169% dari Lx (naik 69%), maka sisi baru = akar(1,69) = 1,3 kali sisi awal. Jadi kenaikan sisinya adalah 1,3 - 1 = 0,3 = 30%.', 'hard', 14),
('b0000000-0000-4000-8000-060600000000', 'Sebuah kotak mempunyai lebar 12 cm, panjang 16 cm, dan tinggi 6 cm. Berapa cm persegi luas kertas yang diperlukan untuk menutup semua sisi kotak tersebut?', '192', '360', '720', '900', null, 'C', 'Luas sisi depan-belakang = (16 x 6) x 2 = 192 cm persegi. Luas sisi kanan-kiri = (12 x 6) x 2 = 144 cm persegi. Luas sisi atas-bawah = (12 x 16) x 2 = 384 cm persegi. Luas kertas keseluruhan = 192 + 144 + 384 = 720 cm persegi.', 'medium', 15),
('b0000000-0000-4000-8000-060600000000', 'Luas sebuah lingkaran adalah 49 pi cm persegi. Berapakah keliling lingkaran tersebut?', '10 pi cm', '14 pi cm', '28 pi cm', '49 pi cm', null, 'B', 'Luas = pi x r x r = 49 pi, sehingga r^2 = 49, r = 7 cm. Keliling = 2 x pi x r = 2 x pi x 7 = 14 pi cm.', 'easy', 16),
('b0000000-0000-4000-8000-060600000000', 'Luas persegi panjang R dengan lebar 4 meter sama dengan luas bujur sangkar S yang kelilingnya 24 meter. Berapakah keliling persegi panjang R?', '9 meter', '16 meter', '24 meter', '26 meter', null, 'D', 'Sisi bujur sangkar S = 24 : 4 = 6 m, sehingga luas S = 6 x 6 = 36 m persegi. Karena luas R = luas S, maka 36 = 4 x panjang, sehingga panjang R = 9 m. Keliling R = 2 x (9 + 4) = 26 meter.', 'medium', 17),
('b0000000-0000-4000-8000-060600000000', 'Susan memiliki sebidang tanah berbentuk persegi panjang. Lebar tanah 9 meter lebih pendek daripada panjang tanah. Jika luas tanah adalah 360 m persegi, berapakah keliling tanah Susan?', '42 m', '36 m', '60 m', '78 m', '84 m', 'D', 'Misal panjang = p, maka lebar = p - 9. Luas: p x (p-9) = 360, sehingga p^2 - 9p - 360 = 0. Dengan rumus kuadrat, p = (9 + akar(81+1440)) : 2 = (9+39) : 2 = 24 m (nilai positif yang valid). Lebar = 24 - 9 = 15 m. Keliling = 2 x (24+15) = 2 x 39 = 78 m.', 'medium', 18),
('b0000000-0000-4000-8000-060600000000', 'Sebuah limas segiempat dengan alas sama persis dengan sisi kubus ditempelkan di atas kubus tersebut. Rusuk kubus adalah 9 m. Jika volume gabungan bangun tersebut adalah 945 m kubik, berapakah tinggi limas?', '16 m', '10 m', '8 m', '5,5 m', '2,7 m', 'C', 'Volume kubus = 9^3 = 729 m kubik. Volume limas = 945 - 729 = 216 m kubik. Luas alas limas = 9 x 9 = 81 m persegi. Karena volume limas = 1/3 x luas alas x tinggi, maka 216 = 1/3 x 81 x tinggi, sehingga 216 = 27 x tinggi, dan tinggi = 216 : 27 = 8 m.', 'medium', 19),
('b0000000-0000-4000-8000-060600000000', 'Sebuah bak mandi berisi 6 liter air. Ke dalamnya dimasukkan satu per satu 5 buah batu X (masing-masing menambah volume 300 cc) dan 8 buah batu Y (masing-masing menambah volume 800 cc). Setiap kali sebuah batu dimasukkan, air memercik keluar sebanyak 30 ml. Berapakah volume air dalam bak mandi sekarang?', '7,6 L', '7,84 L', '7,9 L', '13,5 L', '13,9 L', 'D', 'Volume awal = 6.000 cc. Penambahan dari 5 batu X = 5 x 300 = 1.500 cc. Penambahan dari 8 batu Y = 8 x 800 = 6.400 cc. Total batu yang dimasukkan = 5+8 = 13 buah, sehingga air yang keluar akibat percikan = 13 x 30 = 390 ml = 390 cc. Volume akhir = 6.000 + 1.500 + 6.400 - 390 = 13.510 cc, dibulatkan menjadi 13,5 L.', 'medium', 20);
