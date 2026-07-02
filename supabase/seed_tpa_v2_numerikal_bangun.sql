-- Materi + mind map + soal: Bab "Bangun Datar dan Bangun Ruang" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060600000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060600000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060600000000', null, 'Bab ini menguji hafalan sekaligus penerapan rumus luas & keliling bangun datar, serta volume & luas permukaan bangun ruang. Karena rumus jumlahnya banyak, strategi terbaik adalah menghafal lewat tabel dan sering berlatih substitusi angka.', 1),
('b0000000-0000-4000-8000-060600000000', 'Rumus Luas dan Keliling Bangun Datar', '**Definisi:** Luas (L) adalah ukuran daerah yang tertutup oleh suatu bangun datar, sedangkan keliling (K) adalah total panjang seluruh sisi terluar bangun tersebut.

**Pengenalan:** Bagian ini menguji hafalan rumus luas dan keliling bangun datar dasar sekaligus kemampuan menerapkannya pada bangun gabungan. Karena jumlah rumusnya banyak, strategi terbaik adalah menghafal lewat tabel dan sering berlatih substitusi angka.

**Poin yang Harus Diketahui:**
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
- Level lanjutan sering menampilkan bangun gabungan: sebuah bangun tak beraturan yang sebenarnya adalah gabungan (atau selisih) dua bangun sederhana. Strategi: pecah bangun tersebut menjadi bangun-bangun standar yang rumusnya sudah dihafal, hitung luas masing-masing secara terpisah, baru jumlahkan (jika gabungan) atau kurangkan (jika salah satu bangun adalah lubang/potongan di dalam bangun lain).

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

**Pengenalan:** Bagian ini menguji hafalan rumus volume dan luas permukaan bangun ruang dasar, serta pemahaman bagaimana perubahan skala dimensi memengaruhi volume dan luas permukaannya.

**Poin yang Harus Diketahui:**
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

**Pengenalan:** Untuk segitiga siku-siku, sisi miring (hipotenusa) selalu bisa dicari dengan $c = \sqrt{a^2 + b^2}$. Tapi menghitung akar kuadrat itu makan waktu — soal TPA sering sengaja memakai angka yang mengikuti pola tripel Pythagoras, sehingga sisi ketiga bisa langsung ditebak tanpa akar sama sekali.

**Poin yang Harus Diketahui:**
- Tabel tripel Pythagoras dasar beserta kelipatannya:

| Tripel Dasar | Kelipatan 2x | Kelipatan 3x |
|---|---|---|
| 3, 4, 5 | 6, 8, 10 | 9, 12, 15 |
| 5, 12, 13 | 10, 24, 26 | 15, 36, 39 |
| 8, 15, 17 | 16, 30, 34 | 24, 45, 51 |
| 7, 24, 25 | 14, 48, 50 | 21, 72, 75 |

**Tips cara cepat:** Begitu soal memberi dua sisi segitiga siku-siku, cek dulu apakah keduanya cocok dengan salah satu tripel di atas (termasuk kelipatannya) sebelum menghitung akar kuadrat manual. Misalnya sisi 6 dan 8 langsung dikenali sebagai kelipatan 2x dari 3-4-5, sehingga sisi miringnya pasti 10 tanpa perlu dihitung.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060600000000', 'Luas sebuah persegi panjang dengan panjang 12 cm dan lebar 8 cm adalah...', '20 cm persegi', '96 cm persegi', '40 cm persegi', '80 cm persegi', '104 cm persegi', 'B', 'Luas persegi panjang = panjang x lebar = 12 x 8 = 96 cm persegi.', 'easy'),
('b0000000-0000-4000-8000-060600000000', 'Keliling sebuah lingkaran dengan diameter 14 cm (gunakan pi = 22/7) adalah...', '44 cm', '22 cm', '154 cm', '88 cm', '308 cm', 'A', 'Keliling lingkaran = pi x d = 22/7 x 14 = 44 cm.', 'easy'),
('b0000000-0000-4000-8000-060600000000', 'Volume sebuah balok dengan panjang 10 cm, lebar 5 cm, dan tinggi 4 cm adalah...', '19 cm kubik', '90 cm kubik', '400 cm kubik', '150 cm kubik', '200 cm kubik', 'E', 'Volume balok = panjang x lebar x tinggi = 10 x 5 x 4 = 200 cm kubik.', 'easy'),
('b0000000-0000-4000-8000-060600000000', 'Luas sebuah segitiga dengan alas 10 cm dan tinggi 6 cm adalah...', '60 cm persegi', '16 cm persegi', '30 cm persegi', '36 cm persegi', '20 cm persegi', 'C', 'Luas segitiga = 1/2 x alas x tinggi = 1/2 x 10 x 6 = 30 cm persegi.', 'easy'),
('b0000000-0000-4000-8000-060600000000', 'Volume sebuah tabung dengan jari-jari alas 7 cm dan tinggi 10 cm (gunakan pi = 22/7) adalah...', '2.200 cm kubik', '440 cm kubik', '1.540 cm kubik', '1.540 cm persegi', '770 cm kubik', 'C', 'Volume tabung = pi x r x r x t = 22/7 x 7 x 7 x 10 = 22 x 7 x 10 = 1.540 cm kubik.', 'medium');
