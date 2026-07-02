-- Materi + mind map + soal: Bab "Bilangan Bulat dan Pecahan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060500000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060500000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060500000000', null, 'Bab ini mengukur kecermatan berhitung dasar: operasi bilangan bulat (positif/negatif), urutan operasi hitung, serta pecahan (biasa, campuran, desimal, persen) beserta konversi dan operasinya. Kunci suksesnya adalah ketelitian pada tanda (+/-) dan urutan pengerjaan operasi, bukan rumus yang rumit.', 1),
('b0000000-0000-4000-8000-060500000000', 'Bilangan Bulat dan Urutan Operasi Hitung', '**Definisi:** Urutan pengerjaan operasi hitung campuran mengikuti kaidah **KABATAKU** (Kali Bagi dulu, baru Tambah Kurang), dengan tanda kurung selalu dikerjakan paling dulu.

**Pengenalan:** Materi ini menguji ketelitian dalam mengurutkan operasi hitung campuran (kurung, pangkat/akar, kali, bagi, tambah, kurang) sekaligus aturan tanda pada bilangan bulat positif dan negatif. Kesalahan kecil pada urutan pengerjaan atau tanda sudah cukup membuat jawaban meleset, meski konsepnya sendiri sederhana.

**Poin yang Harus Diketahui:**
- Urutan prioritas pengerjaan operasi hitung campuran:

| Prioritas | Operasi |
|---|---|
| 1 | Kurung ( ) |
| 2 | Perpangkatan/akar |
| 3 | Kali (x) dan Bagi (:) — dikerjakan berurutan dari kiri |
| 4 | Tambah (+) dan Kurang (-) — dikerjakan berurutan dari kiri |

- Aturan tanda bilangan bulat:
  - $(+) \times (+) = (+)$, $(-) \times (-) = (+)$, $(+) \times (-) = (-)$
  - $(+) : (+) = (+)$, $(-) : (-) = (+)$, $(+) : (-) = (-)$
  - Mengurang dengan bilangan negatif sama dengan menambah: $a - (-b) = a + b$
- Level lanjutan (setara OTO Bappenas) biasanya menggabungkan pangkat dan akar sekaligus dalam satu soal berlapis, bukan cuma tambah-kurang-kali-bagi biasa. Ingat aturan tanda: $(-a)^2 = +a^2$ (pangkat genap dari bilangan negatif menjadi positif), sedangkan $(-a)^3 = -a^3$ (pangkat ganjil tetap negatif). Akar pangkat genap ($\sqrt{\phantom{x}}$) dari bilangan negatif tidak dipakai dalam soal TPA karena tidak terdefinisi di bilangan real.

**Tips cara cepat**: kerjakan dulu semua perkalian/pembagian dalam soal (tandai di kepala atau coret-coretan), baru jumlahkan/kurangkan sisanya dari kiri ke kanan — jangan asal urut dari kiri jika ada kali/bagi di tengah.

**Kesimpulan:** Kuasai urutan KABATAKU dan aturan tanda perkalian/pembagian bilangan bulat, maka soal operasi hitung campuran — termasuk yang menggabungkan pangkat dan akar — bisa diselesaikan dengan cepat dan akurat.

**Contoh Soal:** Hasil dari $\sqrt{144} + 3^2 \times (-2) - \sqrt{64} : 4$ adalah ...
- A. -32
- B. -14
- C. -4
- D. -8
- E. 28

**Pembahasan:**

**Diketahui:** Bentuk operasi hitung campuran $\sqrt{144} + 3^2 \times (-2) - \sqrt{64} : 4$.

**Ditanya:** Hasil dari operasi hitung campuran tersebut.

**Jawab:** Kerjakan pangkat dan akar lebih dulu karena prioritasnya di atas kali/bagi: $\sqrt{144} = 12$, $3^2 = 9$, dan $\sqrt{64} = 8$. Soal menjadi $12 + 9 \times (-2) - 8 : 4$. Lanjutkan kali/bagi: $9 \times (-2) = -18$ dan $8 : 4 = 2$. Terakhir tambah/kurang dari kiri ke kanan: $12 + (-18) - 2 = 12 - 18 - 2 = -8$. Jadi jawabannya adalah D.', 2),
('b0000000-0000-4000-8000-060500000000', 'Pecahan: Bentuk, Operasi, dan Konversi', '**Definisi:** Pecahan adalah bilangan yang menyatakan bagian dari suatu keseluruhan, dan bisa ditulis dalam beberapa bentuk setara: pecahan biasa ($\frac{3}{4}$), pecahan campuran ($2\frac{1}{2} = \frac{5}{2}$), desimal (0,75), dan persen (75%).

**Pengenalan:** Materi ini menguji kemampuan mengonversi antar bentuk pecahan serta mengoperasikan (tambah, kurang, kali, bagi) pecahan biasa maupun campuran. Kuncinya adalah hafal konversi umum dan tertib menyamakan penyebut sebelum menjumlah/mengurangkan.

**Poin yang Harus Diketahui:**
- Tabel konversi cepat:

| Pecahan | Desimal | Persen |
|---|---|---|
| $\frac{1}{2}$ | 0,5 | 50% |
| $\frac{1}{4}$ | 0,25 | 25% |
| $\frac{1}{5}$ | 0,2 | 20% |
| $\frac{1}{8}$ | 0,125 | 12,5% |
| $\frac{3}{4}$ | 0,75 | 75% |

- Operasi pecahan:
  - **Tambah/kurang**: samakan penyebut dulu (cari KPK penyebut), baru operasikan pembilang. Contoh: $\frac{1}{2} + \frac{1}{3} = \frac{3}{6} + \frac{2}{6} = \frac{5}{6}$.
  - **Kali**: kalikan pembilang dengan pembilang, penyebut dengan penyebut (pecahan campuran diubah ke pecahan biasa dulu).
  - **Bagi**: kalikan dengan kebalikan (invers) pecahan pembagi. Contoh: $\frac{2}{3} : \frac{1}{4} = \frac{2}{3} \times \frac{4}{1} = \frac{8}{3}$.
- Level lanjutan sering menyajikan pecahan bertingkat (pecahan di dalam pecahan) atau operasi pecahan campuran 3 suku sekaligus. Strategi: sederhanakan dulu pembilang dan penyebut dari pecahan besar secara terpisah (masing-masing menjadi satu pecahan tunggal), baru bagi keduanya seperti pembagian pecahan biasa.

**Tips cara cepat**: untuk konversi pecahan ke persen, kalikan pecahan dengan 100%. Untuk pecahan campuran $a\frac{b}{c}$, ubah dulu ke pecahan biasa dengan rumus $\frac{(a \times c + b)}{c}$ sebelum dioperasikan.

**Kesimpulan:** Hafalkan tabel konversi umum dan biasakan menyamakan penyebut sebelum tambah/kurang, serta ubah pecahan campuran ke pecahan biasa sebelum kali/bagi — dengan begitu, soal pecahan sederhana maupun bertingkat bisa diselesaikan secara sistematis.

**Contoh Soal:** Hasil dari $\frac{1\frac{1}{2} + \frac{2}{3}}{2\frac{1}{4} - \frac{5}{6}} \times \frac{1}{2}$ adalah ...
- A. $\frac{221}{144}$
- B. $\frac{26}{17}$
- C. $\frac{13}{17}$
- D. $\frac{17}{26}$
- E. $-\frac{1}{4}$

**Pembahasan:**

**Diketahui:** Bentuk pecahan bertingkat $\frac{1\frac{1}{2} + \frac{2}{3}}{2\frac{1}{4} - \frac{5}{6}} \times \frac{1}{2}$.

**Ditanya:** Hasil penyederhanaan pecahan bertingkat tersebut.

**Jawab:** Sederhanakan pembilang dan penyebut pecahan besar secara terpisah dulu. Pembilang: $1\frac{1}{2} + \frac{2}{3} = \frac{3}{2} + \frac{2}{3} = \frac{9}{6} + \frac{4}{6} = \frac{13}{6}$. Penyebut: $2\frac{1}{4} - \frac{5}{6} = \frac{9}{4} - \frac{5}{6} = \frac{27}{12} - \frac{10}{12} = \frac{17}{12}$. Pecahan bertingkat menjadi $\frac{13/6}{17/12} = \frac{13}{6} \times \frac{12}{17} = \frac{156}{102} = \frac{26}{17}$. Kalikan dengan $\frac{1}{2}$: $\frac{26}{17} \times \frac{1}{2} = \frac{26}{34} = \frac{13}{17}$. Jadi jawabannya adalah C.', 3),
('b0000000-0000-4000-8000-060500000000', 'Cara Cepat: Persen di Luar Kepala', '**Definisi:** Menghitung persen dari suatu bilangan sering lebih cepat dilakukan lewat pecahan sederhana (10%, 5%, 1%, dst) daripada mengalikan langsung dengan bentuk persennya.

**Pengenalan:** Trik ini berguna untuk mempercepat perhitungan tanpa kalkulator saat ujian. Susun dulu nilai 10% (cukup geser koma satu digit ke kiri), lalu turunkan ke persentase lain yang dibutuhkan.

**Poin yang Harus Diketahui:**
- Tabel cara cepat menghitung persen (contoh dari angka 240):

| Persen | Cara Cepat | Contoh dari 240 |
|---|---|---|
| 10% | bagi 10 (geser koma 1 digit) | 24 |
| 5% | 10% dibagi 2 | 12 |
| 1% | bagi 100 (geser koma 2 digit) | 2,4 |
| 20% | 10% dikali 2 | 48 |
| 25% | bagi 4 | 60 |
| 50% | bagi 2 | 120 |
| 15% | 10% + 5% | 36 |

**Tips cara cepat:** Pecah persen yang rumit menjadi jumlah dari 10%, 5%, dan 1% yang sudah gampang dihitung. Misalnya 35% dari suatu angka = 10% + 10% + 10% + 5% dari angka itu, tinggal jumlahkan hasil masing-masing tanpa perkalian panjang.

**Kesimpulan:** Dengan menjadikan 10% sebagai basis dan menurunkannya ke persentase lain, perhitungan persen di luar kepala jadi jauh lebih cepat dibanding mengalikan langsung.

**Contoh Soal:** Suatu barang mengalami kenaikan harga 20%, kemudian didiskon 25% dari harga setelah kenaikan tersebut. Jika harga akhir barang itu adalah Rp180.000, berapakah harga awal barang tersebut?
- A. Rp120.000
- B. Rp300.000
- C. Rp162.000
- D. Rp200.000
- E. Rp189.474

**Pembahasan:**

**Diketahui:** Harga naik 20%, lalu didiskon 25% dari harga setelah kenaikan, harga akhir Rp180.000.

**Ditanya:** Harga awal barang sebelum kenaikan dan diskon.

**Jawab:** Harga setelah naik 20% menjadi 120% dari harga awal, atau $1,2 \times$ harga awal. Harga itu kemudian didiskon 25%, sehingga yang tersisa adalah 75%, atau $0,75 \times (1,2 \times \text{harga awal}) = 0,9 \times \text{harga awal}$. Karena harga akhir Rp180.000 sama dengan $0,9 \times$ harga awal, maka harga awal $= 180.000 : 0,9 = Rp200.000$. Jadi jawabannya adalah D.', 4);

update chapters set mindmap = '# Bilangan Bulat dan Pecahan

## Urutan Operasi (KABATAKU)
- Kurung dulu, lalu pangkat/akar
- Kali & Bagi (kiri ke kanan)
- Tambah & Kurang (kiri ke kanan)

## Bilangan Bulat
- $(-) \times (-) = (+)$ ; $(+) \times (-) = (-)$
- $a - (-b) = a + b$

## Bentuk Pecahan
- Biasa, campuran, desimal, persen
- Campuran $a\frac{b}{c} \rightarrow \frac{(a \times c) + b}{c}$

## Operasi Pecahan
- Tambah/kurang: samakan penyebut (KPK)
- Kali: pembilang x pembilang, penyebut x penyebut
- Bagi: kali dengan kebalikan (invers)

## Konversi
- Pecahan ke persen: kali 100%
- $\frac{1}{2}=50\%$, $\frac{1}{4}=25\%$, $\frac{1}{8}=12,5\%$' where id = 'b0000000-0000-4000-8000-060500000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060500000000', 'Hasil dari -12 + 8 x (-3) - (-20) : 4 adalah...', '-4', '-16', '-20', '-31', '13', 'D', 'Kerjakan kali/bagi dulu (KABATAKU): 8 x (-3) = -24, dan (-20) : 4 = -5. Soal menjadi -12 + (-24) - (-5) = -12 - 24 + 5 = -31.', 'medium'),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 2 1/2 + 1 3/4 - 1/2 adalah...', '3 3/4', '4 1/4', '3 1/4', '2 3/4', '4 1/2', 'A', 'Ubah ke pecahan biasa dengan penyebut sama (4): 2 1/2 = 10/4, 1 3/4 = 7/4, 1/2 = 2/4. Maka 10/4 + 7/4 - 2/4 = 15/4 = 3 3/4.', 'medium'),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 1 1/2 x 2 2/3 : 1/4 adalah...', '8', '16', '4', '32', '12', 'B', 'Ubah ke pecahan biasa: 1 1/2 = 3/2, 2 2/3 = 8/3. Kalikan dulu: 3/2 x 8/3 = 24/6 = 4. Lalu bagi 1/4 sama dengan kali kebalikannya: 4 : 1/4 = 4 x 4 = 16.', 'hard'),
('b0000000-0000-4000-8000-060500000000', 'Bentuk persen dari pecahan 3/8 adalah...', '3,8%', '38%', '30%', '3,75%', '37,5%', 'E', 'Ubah ke desimal dulu: 3/8 = 0,375. Kalikan dengan 100% untuk jadi persen: 0,375 x 100% = 37,5%.', 'easy'),
('b0000000-0000-4000-8000-060500000000', 'Hasil dari 24 - 18 : 3 + 5 x 2 adalah...', '17', '4', '28', '2', '33', 'C', 'Kerjakan kali/bagi dulu: 18 : 3 = 6, dan 5 x 2 = 10. Soal menjadi 24 - 6 + 10 = 28.', 'easy');
