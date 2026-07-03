-- Materi + mind map + soal: Bab "Aritmatika Sosial dan Barisan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060700000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060700000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060700000000', null, 'Bab ini terbagi dua: (1) aritmatika sosial — untung/rugi, diskon, bunga, bruto-neto-tara dalam konteks jual-beli; dan (2) barisan bilangan — aritmatika (beda tetap) dan geometri (rasio tetap). Keduanya butuh ketelitian menentukan rumus mana yang dipakai sesuai kata kunci di soal.', 1),
('b0000000-0000-4000-8000-060700000000', 'Aritmatika Sosial: Untung, Rugi, Diskon, dan Bunga', '**Definisi:** Untung terjadi jika Harga Jual (HJ) lebih besar dari Harga Beli (HB), yaitu $Untung = Harga\ Jual - Harga\ Beli$; Rugi terjadi jika HB lebih besar dari HJ, yaitu $Rugi = Harga\ Beli - Harga\ Jual$.

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan dulu apakah soal tentang untung/rugi, diskon, atau bunga (tunggal/majemuk) dari kata kunci yang muncul di soal.
2. Untuk untung/rugi: hitung selisih Harga Jual dan Harga Beli, lalu jika diminta persentase, bagi selisih tersebut dengan Harga Beli (modal), BUKAN dengan Harga Jual.
3. Untuk diskon: kalikan harga awal dengan (1 - persen diskon); jika ada pajak setelah diskon, hitung pajak dari harga yang SUDAH didiskon, bukan dari harga awal.
4. Untuk bunga: pilih rumus tunggal (bunga selalu dihitung dari modal awal) atau majemuk (bunga dihitung ulang dari saldo terbaru tiap periode) sesuai kata kunci soal.
5. Jika periode bunga majemuk BUKAN tahunan penuh (per semester/kuartal/bulan), ubah dulu persen bunga dan waktu ke satuan periode bunga yang sesuai sebelum dimasukkan ke rumus.

**Rumus & Poin Kunci:**
- Istilah dan rumus dasar jual-beli:

| Istilah | Rumus |
|---|---|
| Untung | $Harga\ Jual - Harga\ Beli$ (jika HJ > HB) |
| Rugi | $Harga\ Beli - Harga\ Jual$ (jika HB > HJ) |
| Persentase untung | $\frac{Untung}{Harga\ Beli} \times 100\%$ |
| Persentase rugi | $\frac{Rugi}{Harga\ Beli} \times 100\%$ |
| Harga setelah diskon | $Harga\ Awal \times (1 - persen\ diskon)$ |
| Bruto | Berat kotor (isi + kemasan) |
| Neto | Berat bersih (isi saja) |
| Tara | Berat kemasan/pembungkus = Bruto - Neto |

- **Bunga tunggal**: $Bunga = Modal \times persen\ bunga \times waktu$ (tahun). Bunga tunggal dihitung selalu dari modal awal, tidak berbunga-lagi.
- **Bunga majemuk**: $Modal\ akhir = Modal\ awal \times (1 + persen\ bunga)^{waktu}$. Bunga majemuk dihitung ulang dari saldo terbaru tiap periode (berbunga-lagi/compound).
- Soal tingkat lanjut sering MENGGABUNGKAN dua konsep sekaligus, misalnya diskon diikuti pajak (PPN), atau bunga majemuk dengan periode BUKAN tahunan penuh (per semester/kuartal/bulan, atau pecahan tahun).

**Tips cara cepat**: persentase untung/rugi SELALU dihitung terhadap Harga Beli (modal), bukan terhadap Harga Jual — kesalahan paling umum adalah membagi dengan harga jual.

**Kesalahan Umum / Jebakan:**
- Menghitung persentase untung/rugi dari Harga Jual, padahal seharusnya dari Harga Beli (modal).
- Menghitung pajak (PPN) dari harga awal, padahal seharusnya dari harga yang sudah dipotong diskon.
- Lupa mengonversi persen bunga dan waktu ke satuan periode yang sesuai saat bunga majemuk dihitung per semester/kuartal/bulan (bukan per tahun).

**Kesimpulan:** Kuasai rumus dasar untung-rugi-diskon-bunga di atas, kenali kata kunci "diskon lalu pajak" atau "bunga per periode tertentu" pada soal gabungan, dan selalu terapkan urutan operasi sesuai urutan kejadian di soal.

**Contoh Soal:** Sebuah televisi berharga Rp4.000.000,00 mendapat diskon 15%, kemudian dikenai pajak (PPN) 10% dari harga setelah diskon. Berapa harga akhir yang harus dibayar pembeli?

- A. Rp3.400.000,00
- B. Rp3.800.000,00
- C. Rp3.740.000,00
- D. Rp4.400.000,00
- E. Rp3.060.000,00

**Pembahasan:**

**Diketahui:** Harga TV Rp4.000.000,00, diskon 15%, pajak (PPN) 10% dihitung dari harga setelah diskon.

**Ditanya:** Harga akhir yang harus dibayar pembeli.

**Jawab:** Harga setelah diskon = 4.000.000 x (1 - 0,15) = 4.000.000 x 0,85 = Rp3.400.000,00. Pajak dihitung dari harga SETELAH diskon (bukan harga awal) = 3.400.000 x 10% = Rp340.000,00. Harga akhir = harga setelah diskon + pajak = 3.400.000 + 340.000 = Rp3.740.000,00. Jadi jawabannya adalah C.

**Contoh Soal:** Modal Rp5.000.000,00 didepositokan dengan bunga majemuk 8% per tahun, tetapi dihitung ulang tiap SEMESTER (setengah tahun). Jika modal disimpan selama 1,5 tahun (3 semester), berapa jumlah uang di akhir periode?

- A. Rp5.600.000,00
- B. Rp6.298.560,00
- C. Rp5.624.320,00
- D. Rp5.200.000,00
- E. Rp5.302.986,00

**Pembahasan:**

**Diketahui:** Modal Rp5.000.000,00, bunga majemuk 8% per tahun dihitung ulang tiap semester, lama simpan 1,5 tahun (3 semester).

**Ditanya:** Jumlah uang di akhir periode.

**Jawab:** Karena bunga dihitung per semester, bunga per semester = 8% / 2 = 4%, dan banyak periode = 1,5 tahun x 2 = 3 semester. Modal akhir = Modal awal x (1 + persen bunga per periode)^(banyak periode) = 5.000.000 x (1,04)^3. (1,04)^3 = 1,124864, sehingga Modal akhir = 5.000.000 x 1,124864 = Rp5.624.320,00. Jadi jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-060700000000', 'Barisan Aritmatika dan Barisan Geometri', '**Definisi:** Barisan Aritmatika adalah barisan bilangan dengan selisih (beda) antar suku berurutan yang selalu SAMA/tetap ($b = U_n - U_{n-1}$); Barisan Geometri adalah barisan bilangan dengan hasil bagi (rasio) antar suku berurutan yang selalu SAMA/tetap ($r = \frac{U_n}{U_{n-1}}$).

**Cara Kerja / Langkah Pengerjaan:**
1. Kurangkan dua suku berurutan; jika hasilnya konstan, barisan tersebut aritmatika dengan beda b tersebut.
2. Jika selisihnya tidak konstan, coba bagi dua suku berurutan; jika hasilnya konstan, barisan tersebut geometri dengan rasio r tersebut.
3. Jika baik selisih maupun rasio tidak konstan, curigai barisan bertingkat: turunkan beda tingkat pertama antar suku, lalu cek apakah beda tingkat kedua (selisih dari beda tingkat pertama) konstan.
4. Untuk soal sisipan, cari dulu beda/rasio barisan lama, tentukan k (banyak bilangan yang disisipkan di antara SETIAP dua suku lama), lalu terapkan rumus beda baru = beda lama / (k+1) untuk aritmatika, atau rasio baru = akar pangkat (k+1) dari rasio lama untuk geometri.
5. Setelah jenis, beda/rasio, atau pola tingkat ditemukan, substitusikan ke rumus $U_n$ yang sesuai (atau lanjutkan polanya suku demi suku) untuk menjawab suku yang ditanya.

**Rumus & Poin Kunci:**
- Rumus suku ke-n Barisan Aritmatika: $U_n = a + (n - 1) \times b$, dengan a = suku pertama ($U_1$)
- Rumus suku ke-n Barisan Geometri: $U_n = a \times r^{(n - 1)}$, dengan a = suku pertama ($U_1$)
- Tabel pembeda cepat:

| Ciri | Aritmatika | Geometri |
|---|---|---|
| Antar suku | dijumlah beda tetap | dikali rasio tetap |
| Rumus Un | $a + (n-1)b$ | $a \times r^{(n-1)}$ |
| Contoh pola | 2, 5, 8, 11, ... (b=3) | 2, 6, 18, 54, ... (r=3) |

- **Sisipan pada Barisan**: jika di antara SETIAP dua suku berurutan pada barisan aritmatika (atau geometri) yang sudah ada disisipkan k buah bilangan baru sehingga bilangan-bilangan tersebut ikut membentuk barisan aritmatika (atau geometri) yang baru, maka: Aritmatika — beda baru = beda lama / (k + 1); Geometri — rasio baru dicari dari (rasio baru)^(k+1) = rasio lama, atau rasio baru = akar pangkat (k+1) dari rasio lama, dengan k = banyak bilangan yang disisipkan di antara setiap dua suku lama.
- **Barisan Aritmatika Bertingkat**: jika selisih (beda) antar suku TIDAK tetap, tetapi selisih dari beda-beda tersebut (disebut beda tingkat dua) bernilai TETAP, maka barisan tersebut adalah barisan aritmatika bertingkat dua.

**Tips cara cepat**: untuk mengecek jenis barisan, kurangkan dua suku berurutan (kalau hasilnya konstan → aritmatika); jika tidak konstan, coba bagi dua suku berurutan (kalau hasilnya konstan → geometri).

**Kesalahan Umum / Jebakan:**
- Tertukar rumus aritmatika (dijumlah beda) dan geometri (dikali rasio), terutama saat suku bernilai negatif atau desimal.
- Salah menghitung k pada rumus sisipan — k adalah banyak bilangan yang disisipkan di antara SETIAP dua suku lama, bukan total suku barisan baru.
- Pada barisan bertingkat, langsung mengasumsikan beda tetap (aritmatika biasa) tanpa mengecek dulu apakah beda tingkat keduanya konstan.

**Kesimpulan:** Bedakan aritmatika (beda tetap, dijumlah) dan geometri (rasio tetap, dikali) dengan cepat lewat pengecekan selisih/bagi dua suku berurutan, lalu terapkan rumus sisipan atau beda tingkat dua saat soal memberi variasi seperti itu.

**Contoh Soal:** Di antara setiap dua suku berurutan pada barisan aritmatika 4, 24, 44, ... disisipkan 4 buah bilangan sehingga terbentuk barisan aritmatika baru. Berapakah beda barisan yang baru?

- A. 5
- B. 8
- C. 4
- D. 16
- E. 100

**Pembahasan:**

**Diketahui:** Barisan aritmatika 4, 24, 44, ...; disisipkan 4 buah bilangan di antara setiap dua suku berurutan.

**Ditanya:** Beda barisan aritmatika yang baru.

**Jawab:** Beda barisan lama = 24 - 4 = 20. Banyak bilangan yang disisipkan k = 4, sehingga beda baru = beda lama / (k+1) = 20 / (4+1) = 20/5 = 4. Jadi jawabannya adalah C.

**Contoh Soal:** Perhatikan barisan bilangan 2, 5, 10, 17, 26, .... Tentukan suku ke-8 dari barisan tersebut.

- A. 53
- B. 50
- C. 65
- D. 71
- E. 78

**Pembahasan:**

**Diketahui:** Barisan bilangan 2, 5, 10, 17, 26, ....

**Ditanya:** Suku ke-8 dari barisan tersebut.

**Jawab:** Cari beda tingkat pertama antar suku: 5-2=3, 10-5=5, 17-10=7, 26-17=9. Beda tingkat kedua (selisih dari beda tingkat pertama) = 5-3=2, 7-5=2, 9-7=2, yaitu KONSTAN = 2, sehingga barisan ini adalah barisan aritmatika bertingkat dua. Karena beda tingkat kedua konstan = 2, beda tingkat pertama berikutnya adalah 9+2=11, lalu 11+2=13, lalu 13+2=15. Lanjutkan suku asli: U5=26, U6=26+11=37, U7=37+13=50, U8=50+15=65. Jadi jawabannya adalah C.', 3),
('b0000000-0000-4000-8000-060700000000', 'Cara Cepat: Diskon Berantai (Bertingkat)', '**Definisi:** Diskon berantai adalah dua diskon atau lebih yang diberikan secara berurutan, di mana diskon kedua dihitung dari harga yang SUDAH dipotong diskon pertama (bukan dari harga awal), dengan rumus cepat $Harga\ Akhir = Harga\ Awal \times (1 - d_1) \times (1 - d_2)$.

**Cara Kerja / Langkah Pengerjaan:**
1. Identifikasi semua persentase diskon berantai yang diberikan (d1, d2, ...) — JANGAN dijumlahkan langsung.
2. Kalikan harga awal dengan faktor sisa tiap diskon secara berurutan: $Harga\ Akhir = Harga\ Awal \times (1 - d_1) \times (1 - d_2)$.
3. Jika soal juga menyertakan pajak (PPN), kalikan hasil langkah 2 dengan faktor pajak (1 + persen pajak) sebagai langkah TERAKHIR, karena pajak dikenakan dari harga yang sudah bersih dari seluruh diskon.
4. Jika ditanya "diskon efektif/setara tunggal", selisihkan hasil kali faktor sisa (1-d1)(1-d2) dari 100% untuk mendapatkan persentase diskon tunggal yang setara.

**Rumus & Poin Kunci:**
- Rumus cepat: $Harga\ Akhir = Harga\ Awal \times (1 - d_1) \times (1 - d_2)$
- Tabel kesetaraan diskon berantai dengan diskon tunggal:

| Diskon Berantai | Setara Diskon Tunggal | Bukan |
|---|---|---|
| 20% + 10% | 28% | ~~30%~~ |
| 10% + 10% | 19% | ~~20%~~ |
| 50% + 50% | 75% | ~~100%~~ |
| 25% + 20% | 40% | ~~45%~~ |

- Level lanjut: diskon berantai sering digabung dengan pajak (PPN) dalam satu soal. Urutan pengerjaannya WAJIB mengikuti urutan kejadian: kalikan dulu semua faktor sisa diskon secara berurutan (1-d1)(1-d2)..., baru kalikan hasilnya dengan faktor pajak (1+persen pajak) di langkah TERAKHIR — karena pajak dikenakan atas harga yang sudah bersih dari seluruh diskon, bukan atas harga awal.

**Tips cara cepat:** Jangan pernah menjumlahkan langsung dua persen diskon. Kalikan berurutan sisa persentase yang dibayar (1-d1) lalu (1-d2), baru selisihkan dari 100% di akhir untuk tahu diskon efektifnya.

**Kesalahan Umum / Jebakan:**
- Menjumlahkan langsung dua persen diskon (mis. 20% + 10% dianggap 30%), padahal hasil diskon berantai SELALU lebih kecil daripada dijumlah langsung.
- Menghitung pajak dari harga awal, padahal seharusnya dari harga yang sudah bersih dari seluruh diskon berantai.

**Kesimpulan:** Diskon berantai selalu dihitung bertahap (bukan dijumlah langsung), dan jika digabung dengan pajak, pajak WAJIB dihitung PALING TERAKHIR dari harga yang sudah bersih dari seluruh diskon.

**Contoh Soal:** Sebuah laptop berharga Rp10.000.000,00 mendapat diskon berantai 20% + 5%, kemudian dikenai pajak 11% dari harga setelah diskon berantai. Berapa harga akhir yang harus dibayar pembeli?

- A. Rp8.325.000,00
- B. Rp7.600.000,00
- C. Rp8.436.000,00
- D. Rp6.764.000,00
- E. Rp8.880.000,00

**Pembahasan:**

**Diketahui:** Harga laptop Rp10.000.000,00, diskon berantai 20% + 5%, pajak 11% dihitung dari harga setelah diskon berantai.

**Ditanya:** Harga akhir yang harus dibayar pembeli.

**Jawab:** Harga setelah diskon berantai = 10.000.000 x (1-0,20) x (1-0,05) = 10.000.000 x 0,8 x 0,95 = Rp7.600.000,00. Pajak dihitung dari harga setelah diskon berantai = 7.600.000 x 11% = Rp836.000,00. Harga akhir = 7.600.000 + 836.000 = Rp8.436.000,00. Jadi jawabannya adalah C.', 4);

update chapters set mindmap = '# Aritmatika Sosial dan Barisan

## Untung / Rugi
- $Untung = Harga\ Jual - Harga\ Beli$
- $\%Untung = \frac{Untung}{Harga\ Beli} \times 100\%$
- $Rugi = Harga\ Beli - Harga\ Jual$

## Diskon
- $Harga\ bayar = Harga\ Awal \times (1 - \%diskon)$

## Bruto, Neto, Tara
- $Bruto = Neto + Tara$
- $Tara = Bruto - Neto$

## Bunga
- Tunggal: $Bunga = Modal \times \%bunga \times waktu$
- Majemuk: $Modal\ akhir = Modal \times (1+\%bunga)^{waktu}$

## Barisan Aritmatika
- Beda (b) tetap: $b = U_n - U_{n-1}$
- $U_n = a + (n-1) \times b$

## Barisan Geometri
- Rasio (r) tetap: $r = \frac{U_n}{U_{n-1}}$
- $U_n = a \times r^{(n-1)}$' where id = 'b0000000-0000-4000-8000-060700000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060700000000', 'Setelah mendapat diskon 20%, sebuah baju dijual seharga Rp120.000,00. Berapa harga baju tersebut sebelum diskon?', 'Rp144.000,00', 'Rp150.000,00', 'Rp140.000,00', 'Rp160.000,00', 'Rp136.000,00', 'B', 'Misalkan harga sebelum diskon = P. Setelah diskon 20%, harga menjadi 0,8 x P = 120.000, sehingga P = 120.000 / 0,8 = Rp150.000,00.', 'medium', 1),
('b0000000-0000-4000-8000-060700000000', 'Bejo menabung Rp2.000.000,00 selama 2 tahun. Bank A menawarkan bunga TUNGGAL 6% per tahun, sedangkan Bank B menawarkan bunga MAJEMUK 5% per tahun. Berapa selisih total uang Bejo antara Bank A dan Bank B pada akhir tahun ke-2?', 'Rp35.000,00', 'Rp40.000,00', 'Rp5.000,00', 'Rp45.000,00', 'Rp30.000,00', 'A', 'Bank A (bunga tunggal 6%/tahun): Bunga = 2.000.000 x 0,06 x 2 = Rp240.000,00, sehingga total = 2.000.000 + 240.000 = Rp2.240.000,00. Bank B (bunga majemuk 5%/tahun): Modal akhir = 2.000.000 x (1,05)^2 = 2.000.000 x 1,1025 = Rp2.205.000,00. Selisih = 2.240.000 - 2.205.000 = Rp35.000,00.', 'hard', 2),
('b0000000-0000-4000-8000-060700000000', 'Seorang pedagang membeli barang seharga Rp2.000.000,00. Ia ingin menulis harga label (harga sebelum diskon) sedemikian rupa sehingga setelah memberi diskon 20% dari harga label, ia tetap mendapat untung 25% dari harga beli. Berapa harga label yang harus ditulis pedagang?', 'Rp3.125.000,00', 'Rp3.000.000,00', 'Rp2.500.000,00', 'Rp3.250.000,00', 'Rp2.800.000,00', 'A', 'Target harga jual agar untung 25% dari harga beli = Harga Beli x (1 + 25%) = 2.000.000 x 1,25 = Rp2.500.000,00. Harga jual ini adalah harga SETELAH diskon 20% dari harga label, sehingga 0,8 x Harga Label = 2.500.000, maka Harga Label = 2.500.000 / 0,8 = Rp3.125.000,00.', 'hard', 3),
('b0000000-0000-4000-8000-060700000000', 'Diketahui suatu barisan aritmatika dengan suku ke-3 = 11 dan suku ke-7 = 27. Tentukan suku ke-15 dari barisan tersebut.', '59', '55', '63', '51', '67', 'A', 'Misalkan suku pertama = a dan beda = b. U3 = a + 2b = 11 dan U7 = a + 6b = 27. Kurangkan: (a+6b) - (a+2b) = 27-11, sehingga 4b = 16, b = 4. Maka a = 11 - 2(4) = 3. U15 = a + 14b = 3 + 14(4) = 3 + 56 = 59.', 'hard', 4),
('b0000000-0000-4000-8000-060700000000', 'Suku ke-6 dari barisan geometri 2, 6, 18, 54, ... adalah...', '324', '432', '648', '486', '162', 'D', 'Suku pertama a = 2, rasio r = 6/2 = 3. Un = a x r^(n-1), sehingga U6 = 2 x 3^5 = 2 x 243 = 486.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060700000000', 'Jika x adalah jumlah seluruh diskon atas sebuah jam tangan yang dijual dengan dua kali diskon berturut-turut (diskon berantai) yaitu 40% dan setelah itu 15%, dan y adalah persentase dari pecahan 9/20, maka manakah pernyataan yang benar?', 'x < y', 'x <= y', 'x > y', 'x = y', null, 'C', 'Diskon berantai 40% dan 15% setara dengan diskon tunggal = 1 - [(1-0,40) x (1-0,15)] = 1 - (0,6 x 0,85) = 1 - 0,51 = 0,49 = 49%, sehingga x = 49%. Sementara itu, y = 9/20 = 45%. Karena 49% > 45%, maka x > y.', 'medium', 6),
('b0000000-0000-4000-8000-060700000000', 'Dari sejumlah peserta seleksi beasiswa, 90% di antaranya lulus seleksi administrasi dan berhak mengikuti ujian tertulis. Berdasarkan hasil ujian tertulis, hanya setengah dari mereka yang dipanggil untuk mengikuti tes wawancara. Jika 1/5 dari peserta tes wawancara, yaitu 135 orang, dinyatakan lulus seleksi beasiswa, berapa jumlah peserta seleksi beasiswa seluruhnya?', '540', '675', '1500', '5400', '6750', 'C', 'Banyak peserta tes wawancara = 135 x 5 = 675 orang (karena 135 orang adalah 1/5 dari peserta wawancara). Peserta wawancara adalah setengah dari peserta yang lulus seleksi administrasi (90% dari total), sehingga 675 = 0,5 x 0,9 x Total = 0,45 x Total. Maka Total = 675 / 0,45 = 1.500 orang.', 'medium', 7),
('b0000000-0000-4000-8000-060700000000', 'Seseorang menjadi reseller sebuah produk melalui toko online dengan harga pokok m rupiah. Jika keuntungan yang ia harapkan sebesar 2n% dari harga pokok, maka ia harus menjual produk tersebut seharga...', '200mn', '2mn : 100', 'm(2n+100) : 100', '200(n-m)', '(2n:100)m', 'C', 'Harga jual = harga pokok + keuntungan = m + (2n/100)m = m(100+2n)/100, yang senilai dengan bentuk m(2n+100) : 100.', 'easy', 8),
('b0000000-0000-4000-8000-060700000000', 'Lia membeli 12 batang cokelat dengan total harga Rp122.400,00. Setiap pembelian 2 batang cokelat, Lia mendapat bonus 1 batang gratis. Berapa harga jual tiap batang cokelat yang harus ditetapkan Lia agar mendapat keuntungan 45% dari total modalnya?', 'Rp9.680,00', 'Rp9.860,00', 'Rp9.690,00', 'Rp12.790,00', 'Rp14.790,00', 'B', 'Bonus yang diperoleh = (12/2) x 1 = 6 batang gratis, sehingga total cokelat yang dimiliki Lia = 12 + 6 = 18 batang. Total pendapatan yang dibutuhkan agar untung 45% dari modal = Rp122.400,00 x 1,45 = Rp177.480,00. Harga jual per batang = Rp177.480,00 / 18 = Rp9.860,00.', 'medium', 9),
('b0000000-0000-4000-8000-060700000000', 'Sejenis barang pada awal tahun berharga D rupiah. Pada akhir tahun barang tersebut berharga Q rupiah. Berapakah kenaikan harga barang tersebut jika dinyatakan dalam bentuk pecahan terhadap harga awal?', '(Q-D)/D', '(D-Q)/D', '(Q-D)/Q', '(D-Q)/Q', null, 'A', 'Kenaikan harga dalam bentuk pecahan = (harga akhir tahun - harga awal tahun) / harga awal tahun = (Q-D)/D.', 'easy', 10),
('b0000000-0000-4000-8000-060700000000', 'Sekelompok warga ingin menanam pohon palem botol dengan jarak yang sama di sepanjang jalan boulevard, mulai dari ujung jalan yang satu sampai ke ujung jalan lainnya. Jika panjang jalan tersebut 1.560 meter dan jarak antar pohon yang diinginkan 12 meter, berapa banyak pohon palem yang harus ditanam?', '130', '131', '132', '133', null, 'B', 'Karena pohon ditanam di kedua ujung jalan, banyak pohon = (panjang jalan / jarak antar pohon) + 1 = (1.560 / 12) + 1 = 130 + 1 = 131 pohon.', 'medium', 11),
('b0000000-0000-4000-8000-060700000000', 'Sebuah stadion berkapasitas 20.000 penonton, tetapi hanya 200 tempat duduk yang tidak terjual. Dari tiket yang terjual, separuhnya dijual dengan harga penuh Rp20.000,00 dan separuhnya lagi dijual dengan setengah harga. Berapakah total pendapatan dari penjualan tiket tersebut?', 'Rp297.000.000,00', 'Rp356.400.000,00', 'Rp360.000.000,00', 'Rp435.600.000,00', null, 'A', 'Jumlah tiket yang terjual = 20.000 - 200 = 19.800 tiket. Separuhnya (9.900 tiket) dijual dengan harga penuh Rp20.000,00, dan separuhnya lagi (9.900 tiket) dijual dengan setengah harga yaitu Rp10.000,00. Total pendapatan = (9.900 x Rp20.000,00) + (9.900 x Rp10.000,00) = Rp198.000.000,00 + Rp99.000.000,00 = Rp297.000.000,00.', 'medium', 12),
('b0000000-0000-4000-8000-060700000000', 'Dalam suatu pengiriman sebanyak 24.000 komponen, 5% di antaranya ditemukan rusak. Dalam pengiriman lain sebanyak 16.000 komponen, 10% di antaranya ditemukan rusak. Jika kedua pengiriman tersebut digabungkan, berapa persen jumlah komponen yang rusak terhadap total komponen yang dikirimkan?', '7%', '8%', '9%', '15%', null, 'A', 'Komponen rusak pada pengiriman pertama = 5% x 24.000 = 1.200 komponen. Komponen rusak pada pengiriman kedua = 10% x 16.000 = 1.600 komponen. Total komponen rusak = 1.200 + 1.600 = 2.800 komponen. Total komponen yang dikirim = 24.000 + 16.000 = 40.000 komponen. Persentase komponen rusak = (2.800 / 40.000) x 100% = 7%.', 'medium', 13),
('b0000000-0000-4000-8000-060700000000', 'Pada hari Senin, seorang pengusaha menarik cek senilai 1/4 dari total simpanannya. Pada hari Selasa, ia menarik cek lagi sebesar 1/5 dari sisa saldo setelah penarikan hari Senin. Jika saldo tabungannya sekarang tersisa Rp24.000.000,00, berapa nilai tabungannya sebelum ditarik pada hari Senin?', 'Rp32.500.000,00', 'Rp35.000.000,00', 'Rp37.500.000,00', 'Rp40.000.000,00', null, 'D', 'Misalkan tabungan awal = a. Setelah penarikan hari Senin, sisa saldo = a - (1/4)a = (3/4)a. Setelah penarikan hari Selasa sebesar 1/5 dari sisa saldo tersebut, saldo akhir = (3/4)a - (1/5)(3/4)a = (3/4)a x (1 - 1/5) = (3/4)a x (4/5) = (3/5)a. Karena saldo akhir = Rp24.000.000,00, maka (3/5)a = 24.000.000, sehingga a = 24.000.000 x 5/3 = Rp40.000.000,00.', 'hard', 14),
('b0000000-0000-4000-8000-060700000000', 'Sebuah barisan aritmatika memiliki suku ke-7 (U7) = 45 dengan beda (b) = -7. Berapakah nilai suku ke-4 (U4) dari barisan tersebut?', '45', '78', '66', '87', null, 'C', 'Rumus suku ke-n adalah Un = a + (n-1)b. Dari U7 = 45: a + (7-1)(-7) = 45, sehingga a - 42 = 45, dan a = 87. Maka U4 = a + (4-1)(-7) = 87 + 3(-7) = 87 - 21 = 66.', 'medium', 15),
('b0000000-0000-4000-8000-060700000000', 'Sebuah pusat perbelanjaan menetapkan biaya sewa kios berdasarkan omset (hasil penjualan) hariannya dengan aturan berikut: jika omset x memenuhi Rp400.000,00 < x <= Rp600.000,00, biaya sewa = Rp4.000,00 + (2% x (x - Rp400.000,00)); jika omset x memenuhi Rp600.000,00 < x < Rp2.500.000,00, biaya sewa = Rp8.000,00 + (3% x (x - Rp600.000,00)); dan jika omset x >= Rp2.500.000,00, biaya sewa = Rp107.000,00 + (7% x (x - Rp2.500.000,00)). Jika sebuah kios pada suatu hari menghasilkan omset Rp750.000,00, berapakah biaya sewa yang harus dibayar?', 'Rp7.500,00', 'Rp8.000,00', 'Rp12.500,00', 'Rp15.000,00', null, 'C', 'Karena omset Rp750.000,00 berada pada rentang Rp600.000,00 < x < Rp2.500.000,00, biaya sewa = Rp8.000,00 + (3% x (Rp750.000,00 - Rp600.000,00)) = Rp8.000,00 + (3% x Rp150.000,00) = Rp8.000,00 + Rp4.500,00 = Rp12.500,00.', 'medium', 16),
('b0000000-0000-4000-8000-060700000000', 'Sebuah lumbung padi diisi dengan W Kg padi. Setiap hari, sejumlah r Kg padi diambil dari lumbung tersebut untuk ditanak. Setelah 25 hari, berapa persen padi yang telah diambil dari isi lumbung semula?', '(25r/W)%', '(25r/100W)%', '(2.500r/W)%', 'r/W', null, 'C', 'Padi yang telah diambil setelah 25 hari = 25r Kg. Dinyatakan dalam persen terhadap isi lumbung semula (W Kg): (25r/W) x 100% = (2.500r/W)%.', 'medium', 17),
('b0000000-0000-4000-8000-060700000000', 'Sebuah bank mengenakan bunga pinjaman (kredit) sebesar p rupiah per Rp1.000.000,00 untuk bulan pertama, dan q rupiah per Rp1.000.000,00 untuk setiap bulan setelah bulan pertama. Berapakah total bunga untuk pinjaman Rp10.000.000,00 selama 3 bulan?', '30q', 'p + 2q', '20p + 10q', '10p + 20q', null, 'D', 'Pinjaman Rp10.000.000,00 setara dengan 10 satuan Rp1.000.000,00. Bunga bulan pertama = 10p. Bunga untuk 2 bulan berikutnya (bulan kedua dan ketiga) = 2 x 10q = 20q. Total bunga selama 3 bulan = 10p + 20q.', 'hard', 18),
('b0000000-0000-4000-8000-060700000000', 'Sebuah sepeda motor baru bernilai Rp2.500.000,00. Pada setiap akhir tahun, nilai sepeda motor tersebut menjadi 4/5 dari nilai pada awal tahun yang bersangkutan. Berapakah nilai sepeda motor tersebut pada akhir tahun ketiga?', 'Rp1.000.000,00', 'Rp1.200.000,00', 'Rp1.280.000,00', 'Rp1.340.000,00', null, 'C', 'Nilai merupakan barisan geometri dengan rasio 4/5. Nilai akhir tahun ke-1 = (4/5) x Rp2.500.000,00 = Rp2.000.000,00. Nilai akhir tahun ke-2 = (4/5) x Rp2.000.000,00 = Rp1.600.000,00. Nilai akhir tahun ke-3 = (4/5) x Rp1.600.000,00 = Rp1.280.000,00.', 'medium', 19),
('b0000000-0000-4000-8000-060700000000', 'Jika x adalah jumlah semua bilangan ganjil yang terletak antara 20 dan 30, sedangkan y adalah jumlah semua bilangan genap yang terletak antara 20 dan 30, maka...', 'x < y', 'x > y', 'x = y', 'x^2 = y^2', 'hubungan x dan y tidak dapat ditentukan', 'B', 'Bilangan ganjil antara 20 dan 30 adalah 21, 23, 25, 27, 29, sehingga x = 21+23+25+27+29 = 125. Bilangan genap antara 20 dan 30 adalah 22, 24, 26, 28, sehingga y = 22+24+26+28 = 100. Karena 125 > 100, maka x > y.', 'easy', 20),
('b0000000-0000-4000-8000-060700000000', 'Budi membeli handuk dengan harga label Rp50.000,00. Ia mendapat diskon sebesar 16%. Jika ia membayar dengan uang Rp100.000,00, berapa uang kembalian yang diterima Budi?', 'Rp8.000,00', 'Rp34.000,00', 'Rp42.000,00', 'Rp58.000,00', 'Rp66.000,00', 'D', 'Harga setelah diskon = Rp50.000,00 x (1 - 16%) = Rp50.000,00 x 0,84 = Rp42.000,00. Uang kembalian = Rp100.000,00 - Rp42.000,00 = Rp58.000,00.', 'easy', 21),
('b0000000-0000-4000-8000-060700000000', 'Dedy menjual sebuah buku komik kepada Sony dengan mengambil keuntungan 25%. Sony kemudian menjual buku komik tersebut kepada Roby dan mengalami kerugian 15%. Jika Roby membayar Rp5.100,00 untuk komik tersebut, berapa uang yang dibayarkan Dedy saat membeli komik tersebut?', 'Rp3.200,00', 'Rp4.800,00', 'Rp5.200,00', 'Rp5.400,00', 'Rp6.000,00', 'B', 'Harga jual Sony ke Roby = harga beli Sony x (1 - 15%), sehingga harga beli Sony (sama dengan harga jual Dedy ke Sony) = Rp5.100,00 / 0,85 = Rp6.000,00. Karena Dedy menjual dengan untung 25%, harga beli Dedy (modal) = harga jual Dedy / (1 + 25%) = Rp6.000,00 / 1,25 = Rp4.800,00.', 'medium', 22),
('b0000000-0000-4000-8000-060700000000', 'Dimas menabung di bank, dan dalam waktu 1 tahun tabungannya menjadi Rp2.700.000,00. Jika bunga bank yang berlaku adalah bunga tunggal sebesar 8% per tahun, berapakah uang yang mula-mula ditabung Dimas?', 'Rp2.500.000,00', 'Rp2.400.000,00', 'Rp2.300.000,00', 'Rp2.200.000,00', 'Rp2.100.000,00', 'A', 'Misalkan tabungan awal = a. Setelah dikenai bunga 8%, a x (1 + 0,08) = Rp2.700.000,00, sehingga a x 1,08 = 2.700.000, dan a = 2.700.000 / 1,08 = Rp2.500.000,00.', 'easy', 23),
('b0000000-0000-4000-8000-060700000000', 'Seorang tentara mendapat upah Rp16.000,00 per jam untuk bertugas dari jam 08.00 hingga jam 16.00. Jika tugas berlanjut setelah jam 16.00, upahnya dinaikkan 50% per jam tambahan. Jika pada suatu hari ia menerima total upah Rp160.000,00, pada jam berapa ia selesai bertugas?', '16.20', '17.00', '17.20', '18.00', '18.20', 'C', 'Upah normal dari jam 08.00 hingga 16.00 (8 jam) = 8 x Rp16.000,00 = Rp128.000,00. Sisa upah = Rp160.000,00 - Rp128.000,00 = Rp32.000,00 diperoleh dari jam tambahan dengan tarif lembur = Rp16.000,00 x 1,5 = Rp24.000,00 per jam. Lama lembur = Rp32.000,00 / Rp24.000,00 = 1,333 jam = 1 jam 20 menit. Maka ia selesai bertugas pada jam 16.00 + 1 jam 20 menit = 17.20.', 'medium', 24);
