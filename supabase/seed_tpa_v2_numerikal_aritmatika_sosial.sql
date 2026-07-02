-- Materi + mind map + soal: Bab "Aritmatika Sosial dan Barisan" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal1.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060700000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060700000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060700000000', null, 'Bab ini terbagi dua: (1) aritmatika sosial — untung/rugi, diskon, bunga, bruto-neto-tara dalam konteks jual-beli; dan (2) barisan bilangan — aritmatika (beda tetap) dan geometri (rasio tetap). Keduanya butuh ketelitian menentukan rumus mana yang dipakai sesuai kata kunci di soal.', 1),
('b0000000-0000-4000-8000-060700000000', 'Aritmatika Sosial: Untung, Rugi, Diskon, dan Bunga', '**Definisi:** Untung terjadi jika Harga Jual (HJ) lebih besar dari Harga Beli (HB), yaitu $Untung = Harga\ Jual - Harga\ Beli$; Rugi terjadi jika HB lebih besar dari HJ, yaitu $Rugi = Harga\ Beli - Harga\ Jual$.

**Pengenalan:** Sub-topik ini membahas istilah dan rumus dasar jual-beli — untung, rugi, diskon, serta bruto-neto-tara — dan dilanjutkan dengan dua jenis bunga (tunggal dan majemuk) yang sering dipakai dalam soal transaksi dan tabungan.

**Poin yang Harus Diketahui:**
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
- Untuk kasus gabungan diskon-pajak, urutan operasi mengikuti urutan kejadian di soal: diskon dihitung dulu, baru pajak dihitung dari harga yang SUDAH didiskon (bukan dari harga awal).
- Untuk bunga majemuk periode non-tahunan, ubah dulu persen bunga dan waktu ke satuan periode bunga yang sesuai (misalnya bunga per semester berarti persen bunga dibagi 2 dan waktu dikalikan 2).

**Tips cara cepat**: persentase untung/rugi SELALU dihitung terhadap Harga Beli (modal), bukan terhadap Harga Jual — kesalahan paling umum adalah membagi dengan harga jual.

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

**Pengenalan:** Sub-topik ini membahas dua pola barisan bilangan yang paling sering diujikan di TPA, yaitu aritmatika (berbasis penjumlahan beda tetap) dan geometri (berbasis perkalian rasio tetap), termasuk variasi soal sisipan bilangan dan barisan bertingkat.

**Poin yang Harus Diketahui:**
- Rumus suku ke-n Barisan Aritmatika: $U_n = a + (n - 1) \times b$, dengan a = suku pertama ($U_1$)
- Rumus suku ke-n Barisan Geometri: $U_n = a \times r^{(n - 1)}$, dengan a = suku pertama ($U_1$)
- Tabel pembeda cepat:

| Ciri | Aritmatika | Geometri |
|---|---|---|
| Antar suku | dijumlah beda tetap | dikali rasio tetap |
| Rumus Un | $a + (n-1)b$ | $a \times r^{(n-1)}$ |
| Contoh pola | 2, 5, 8, 11, ... (b=3) | 2, 6, 18, 54, ... (r=3) |

- **Sisipan pada Barisan**: jika di antara SETIAP dua suku berurutan pada barisan aritmatika (atau geometri) yang sudah ada disisipkan k buah bilangan baru sehingga bilangan-bilangan tersebut ikut membentuk barisan aritmatika (atau geometri) yang baru, maka: Aritmatika — beda baru = beda lama / (k + 1); Geometri — rasio baru dicari dari (rasio baru)^(k+1) = rasio lama, atau rasio baru = akar pangkat (k+1) dari rasio lama, dengan k = banyak bilangan yang disisipkan di antara setiap dua suku lama.
- **Barisan Aritmatika Bertingkat**: jika selisih (beda) antar suku TIDAK tetap, tetapi selisih dari beda-beda tersebut (disebut beda tingkat dua) bernilai TETAP, maka barisan tersebut adalah barisan aritmatika bertingkat dua. Cara praktis mencari suku berikutnya: turunkan barisan beda tingkat pertama, cek apakah beda tingkat kedua konstan, lalu lanjutkan pola beda tingkat pertama untuk menghitung suku-suku berikutnya satu per satu.

**Tips cara cepat**: untuk mengecek jenis barisan, kurangkan dua suku berurutan (kalau hasilnya konstan → aritmatika); jika tidak konstan, coba bagi dua suku berurutan (kalau hasilnya konstan → geometri).

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

**Pengenalan:** Diskon berantai (misalnya "diskon 20% + 10%") adalah JEBAKAN klasik di soal TPA — banyak yang salah menjumlahkan langsung menjadi diskon 30%, padahal hasil diskon berantai SELALU lebih kecil daripada dijumlah langsung.

**Poin yang Harus Diketahui:**
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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060700000000', 'Seorang pedagang membeli sepatu seharga Rp80.000,00 lalu menjualnya seharga Rp100.000,00. Persentase untung pedagang tersebut adalah...', '15%', '20%', '25%', '30%', '12,5%', 'C', 'Untung = Harga Jual - Harga Beli = 100.000 - 80.000 = 20.000. Persentase untung dihitung dari harga beli (modal): (20.000 / 80.000) x 100% = 25%.', 'medium'),
('b0000000-0000-4000-8000-060700000000', 'Sebuah baju berharga Rp150.000,00 mendapat diskon 20%. Harga yang harus dibayar setelah diskon adalah...', 'Rp120.000,00', 'Rp130.000,00', 'Rp100.000,00', 'Rp135.000,00', 'Rp125.000,00', 'A', 'Harga bayar = Harga Awal x (1 - persen diskon) = 150.000 x (1 - 0,2) = 150.000 x 0,8 = Rp120.000,00.', 'easy'),
('b0000000-0000-4000-8000-060700000000', 'Modal sebesar Rp2.000.000,00 ditabung dengan bunga TUNGGAL 5% per tahun. Jumlah total uang setelah 3 tahun adalah...', 'Rp2.100.000,00', 'Rp2.300.000,00', 'Rp2.200.000,00', 'Rp2.315.250,00', 'Rp2.500.000,00', 'B', 'Bunga tunggal = Modal x persen bunga x waktu = 2.000.000 x 0,05 x 3 = Rp300.000,00. Total uang = Modal + Bunga = 2.000.000 + 300.000 = Rp2.300.000,00.', 'medium'),
('b0000000-0000-4000-8000-060700000000', 'Suku ke-10 dari barisan aritmatika 3, 7, 11, 15, ... adalah...', '43', '39', '35', '41', '47', 'B', 'Suku pertama a = 3, beda b = 7-3 = 4. Un = a + (n-1) x b, sehingga U10 = 3 + (10-1) x 4 = 3 + 36 = 39.', 'medium'),
('b0000000-0000-4000-8000-060700000000', 'Suku ke-6 dari barisan geometri 2, 6, 18, 54, ... adalah...', '324', '432', '648', '486', '162', 'D', 'Suku pertama a = 2, rasio r = 6/2 = 3. Un = a x r^(n-1), sehingga U6 = 2 x 3^5 = 2 x 243 = 486.', 'hard');
