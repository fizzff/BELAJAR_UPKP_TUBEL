-- Materi + mind map + soal: Bab "Jarak, Kecepatan & Waktu" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061000000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061000000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061000000000', null, 'Subtes ini menguji hubungan tiga besaran: jarak (s), kecepatan (v), dan waktu (t). Rumus dasarnya saling terkait dan bisa diturunkan satu sama lain. Kesalahan paling umum adalah mencampur satuan (misalnya km dengan menit) dan merata-ratakan kecepatan padahal seharusnya merata-ratakan lewat total jarak dibagi total waktu.', 1),
('b0000000-0000-4000-8000-061000000000', 'Rumus Dasar', '**Definisi:** Kecepatan (v), jarak (s), dan waktu (t) adalah tiga besaran yang saling terkait lewat rumus $v = \frac{s}{t}$, $s = v \times t$, dan $t = \frac{s}{v}$.

**Cara Kerja / Langkah Pengerjaan:**
1. Identifikasi besaran yang sudah diketahui (dua di antara jarak, kecepatan, waktu) dan besaran yang ditanyakan.
2. Pastikan satuan jarak dan waktu konsisten (misalnya sama-sama km dan jam, atau meter dan detik); konversi dulu jika belum sama.
3. Pilih rumus yang sesuai dengan besaran yang dicari: $v = \frac{s}{t}$, $s = v \times t$, atau $t = \frac{s}{v}$.
4. Hitung, lalu periksa kembali apakah satuan hasil akhir sudah sesuai dengan yang diminta soal.

**Rumus & Poin Kunci:**
- Tiga rumus inti yang saling diturunkan:

| Dicari | Rumus |
|---|---|
| Kecepatan (v) | $v = \frac{s}{t}$ |
| Jarak (s) | $s = v \times t$ |
| Waktu (t) | $t = \frac{s}{v}$ |

- Pastikan satuan jarak dan waktu konsisten (contoh: km dan jam, atau meter dan detik) sebelum menghitung.

**Kesalahan Umum / Jebakan:**
- Mencampur satuan (misalnya km dengan menit) tanpa mengonversi lebih dulu.
- Tertukar memilih rumus turunan (misalnya memakai rumus mencari waktu padahal yang diminta adalah jarak) karena tergesa-gesa membaca soal.

**Kesimpulan:** Kesalahan paling umum adalah mencampur satuan (misalnya km dengan menit), jadi selalu samakan satuan terlebih dahulu sebelum menggunakan salah satu dari ketiga rumus di atas.

**Contoh Soal:** Sebuah drone menempuh jarak 5.400 meter dalam waktu 4,5 menit. Berapa kecepatan drone tersebut dalam km/jam?
- A. 60 km/jam
- B. 66 km/jam
- C. 72 km/jam
- D. 75 km/jam
- E. 80 km/jam

**Pembahasan:**

**Diketahui:** Jarak 5.400 meter, waktu tempuh 4,5 menit.

**Ditanya:** Kecepatan drone dalam km/jam.

**Jawab:** Samakan satuan terlebih dahulu: jarak 5.400 meter = 5,4 km, dan waktu 4,5 menit = 4,5/60 jam = 0,075 jam. Gunakan rumus $v = \frac{s}{t} = \frac{5,4}{0,075} = 72$ km/jam. Jadi jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-061000000000', 'Gerak Berpapasan dan Menyusul', '**Definisi:** Gerak berpapasan adalah dua objek yang bergerak dari titik berbeda menuju satu sama lain (rumus $t = \frac{\text{jarak awal}}{v_1 + v_2}$), sedangkan gerak menyusul adalah dua objek yang bergerak searah dari titik start berbeda (rumus $t = \frac{\text{jarak awal}}{v_1 - v_2}$, dengan $v_2 > v_1$).

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan dulu apakah kedua objek bergerak saling mendekat/berlawanan arah (berpapasan) atau searah dengan salah satu mengejar yang lain (menyusul).
2. Untuk berpapasan, jumlahkan kedua kecepatan: $t = \frac{\text{jarak awal}}{v_1+v_2}$; untuk menyusul, gunakan selisih kecepatan dengan kecepatan pengejar lebih besar: $t = \frac{\text{jarak awal}}{v_1-v_2}$.
3. Jika panjang kendaraan (misalnya kereta) tidak boleh diabaikan, tambahkan total panjang kedua kendaraan ke jarak awal sebelum dibagi dengan jumlah/selisih kecepatan.
4. Jika soal melibatkan arus (perahu di sungai), tentukan dulu kecepatan efektif: tambahkan kecepatan arus jika searah arus, kurangi jika melawan arus.
5. Samakan satuan kecepatan dan jarak (misalnya sama-sama ke m/s atau ke km/jam) sebelum melakukan perhitungan akhir.

**Rumus & Poin Kunci:**
- Tabel rumus waktu bertemu:

| Kasus | Rumus waktu bertemu |
|---|---|
| Berpapasan (arah berlawanan) | $t = \frac{\text{jarak awal}}{v_1 + v_2}$ |
| Searah, saling menyusul | $t = \frac{\text{jarak awal}}{v_1 - v_2}$, dengan $v_2 > v_1$ |

- Pada kasus berpapasan, kecepatan kedua objek dijumlahkan karena jarak di antara mereka berkurang lebih cepat. Pada kasus menyusul, dipakai selisih kecepatan karena jarak berkurang lebih lambat.
- Kasus Panjang Kendaraan Diperhitungkan: pada soal dua kereta yang berpapasan atau saling menyusul, jika panjang kereta tidak boleh diabaikan, jarak tempuh efektif yang harus dihitung bukan hanya jarak antar posisi ujung depan, melainkan ditambah total panjang kedua kereta (supaya ujung belakang kedua kereta juga benar-benar saling melewati). Rumusnya menjadi: $t = \frac{\text{jarak awal} + (\text{panjang kereta}_1 + \text{panjang kereta}_2)}{v_1 \pm v_2}$ (tanda + untuk berpapasan, tanda - untuk menyusul).
- Kecepatan Relatif Terhadap Arus (Perahu di Sungai): jika perahu bergerak searah arus (mengikuti arus), kecepatan efektifnya terhadap daratan adalah kecepatan mesin perahu ditambah kecepatan arus: $v_{\text{efektif}} = v_{\text{perahu}} + v_{\text{arus}}$. Jika perahu bergerak melawan arus, kecepatan efektifnya berkurang: $v_{\text{efektif}} = v_{\text{perahu}} - v_{\text{arus}}$.

**Kesalahan Umum / Jebakan:**
- Tertukar menggunakan penjumlahan/selisih kecepatan antara kasus berpapasan dan kasus menyusul.
- Lupa menambahkan total panjang kendaraan ke jarak awal ketika soal menyebutkan kereta/kendaraan yang harus benar-benar selesai saling melewati (ujung belakang saling melewati), bukan sekadar ujung depan bertemu.
- Lupa mengonversi satuan kecepatan (km/jam ke m/s atau sebaliknya) sebelum dijumlahkan/diselisihkan, sehingga hasil akhir salah skala.
- Salah menentukan arah arus sehingga menambahkan kecepatan arus padahal seharusnya mengurangi (atau sebaliknya).

**Kesimpulan:** Kuncinya adalah menentukan apakah kedua objek saling mendekat (kecepatan dijumlahkan) atau saling mengejar (kecepatan diselisihkan), lalu sesuaikan lagi dengan faktor tambahan seperti panjang kendaraan atau arus jika soal menyebutkannya.

**Contoh Soal 1 (Panjang Kereta Diperhitungkan):** Kereta A sepanjang 150 meter melaju 72 km/jam dan kereta B sepanjang 100 meter melaju 54 km/jam berlawanan arah pada rel sejajar. Jika jarak antara ujung depan kedua kereta mula-mula adalah 1.850 meter, berapa detik waktu yang dibutuhkan sejak posisi awal itu sampai kedua kereta benar-benar selesai berpapasan (ujung belakang saling melewati)?
- A. 50 detik
- B. 53 detik
- C. 60 detik
- D. 70 detik
- E. 84 detik

**Pembahasan:**

**Diketahui:** Kereta A panjang 150 m dengan kecepatan 72 km/jam; kereta B panjang 100 m dengan kecepatan 54 km/jam; keduanya berlawanan arah; jarak awal antar ujung depan 1.850 meter.

**Ditanya:** Waktu (dalam detik) sejak posisi awal sampai kedua kereta selesai berpapasan.

**Jawab:** Ubah kecepatan ke m/s: 72 km/jam = 72 : 3,6 = 20 m/s, dan 54 km/jam = 54 : 3,6 = 15 m/s. Karena panjang kereta diperhitungkan, jarak efektif = jarak awal antar ujung depan + total panjang kedua kereta = 1.850 + (150+100) = 2.100 meter. Karena berpapasan (berlawanan arah), kecepatan dijumlahkan: $t = \frac{2.100}{20+15} = \frac{2.100}{35} = 60$ detik. Jadi jawabannya adalah C.

**Contoh Soal 2 (Kecepatan Relatif Arus Sungai):** Sebuah perahu memiliki kecepatan mesin 18 km/jam di air tenang. Perahu menempuh 48 km menyusuri sungai searah arus, lalu kembali ke titik semula (48 km) melawan arus. Jika kecepatan arus sungai 6 km/jam, berapa jam total waktu perjalanan pergi-pulang tersebut?
- A. 4 jam
- B. 5,33 jam
- C. 6 jam
- D. 8 jam
- E. 10 jam

**Pembahasan:**

**Diketahui:** Kecepatan mesin perahu 18 km/jam, kecepatan arus 6 km/jam, jarak satu arah 48 km (searah arus lalu melawan arus).

**Ditanya:** Total waktu perjalanan pergi-pulang.

**Jawab:** Searah arus, kecepatan efektif = 18 + 6 = 24 km/jam, sehingga waktu pergi = 48/24 = 2 jam. Melawan arus, kecepatan efektif = 18 - 6 = 12 km/jam, sehingga waktu pulang = 48/12 = 4 jam. Total waktu = 2 + 4 = 6 jam. Jadi jawabannya adalah C.', 3),
('b0000000-0000-4000-8000-061000000000', 'Kecepatan Rata-Rata Perjalanan Bolak-Balik', '**Definisi:** Kecepatan rata-rata untuk perjalanan pergi-pulang dengan jarak sama tetapi kecepatan pergi ($v_1$) dan pulang ($v_2$) berbeda dihitung dengan rata-rata harmonis, $v_{\text{rata-rata}} = \frac{2 \times v_1 \times v_2}{v_1 + v_2}$, BUKAN sekadar $(v_1+v_2)/2$.

**Cara Kerja / Langkah Pengerjaan:**
1. Cek apakah jarak pergi dan pulang sama; jika ya, JANGAN langsung merata-ratakan $(v_1+v_2)/2$.
2. Gunakan rumus rata-rata harmonis $v_{\text{rata-rata}} = \frac{2 \times v_1 \times v_2}{v_1 + v_2}$ untuk mencari kecepatan rata-rata secara langsung.
3. Sebagai alternatif yang lebih aman, hitung total jarak (jarak pergi + jarak pulang) dan total waktu (waktu pergi + waktu pulang), lalu gunakan $v = \frac{s_{\text{total}}}{t_{\text{total}}}$.
4. Jika soal memberikan total waktu dan meminta jarak, misalkan jarak satu arah sebagai $d$, nyatakan waktu pergi dan waktu pulang dalam $d$, lalu selesaikan persamaannya.

**Rumus & Poin Kunci:**
- Rumus rata-rata harmonis: $$v_{\text{rata-rata}} = \frac{2 \times v_1 \times v_2}{v_1 + v_2}$$
- Jika jarak dan kecepatan sudah dalam satuan yang sama/konsisten, cara paling aman adalah langsung membagi total jarak dengan total waktu ($v = \frac{s_{\text{total}}}{t_{\text{total}}}$).
- Jangan merata-ratakan kecepatan tiap segmen secara langsung $(v_1+v_2)/2$, karena itu hanya benar jika waktu tempuh tiap segmen sama, bukan jaraknya.

**Kesalahan Umum / Jebakan:**
- Langsung merata-ratakan kecepatan pergi dan pulang secara aritmetika biasa $(v_1+v_2)/2$, padahal yang sama adalah jaraknya, bukan waktunya.
- Salah menyamakan penyebut pecahan saat menyelesaikan persamaan waktu total dalam bentuk pemisalan $d$.

**Kesimpulan:** Ingat baik-baik bahwa rata-rata kecepatan pada jarak yang sama menggunakan rumus harmonis, bukan rata-rata biasa — kesalahan ini adalah salah satu jebakan paling umum dalam subtes jarak-kecepatan-waktu.

**Contoh Soal:** Seorang pengendara motor menempuh perjalanan dari kota P ke kota Q dengan kecepatan 30 km/jam, lalu kembali dari Q ke P melalui rute yang sama dengan kecepatan 45 km/jam. Jika total waktu perjalanan pergi-pulang adalah 5 jam, berapa jarak kota P ke Q?
- A. 75 km
- B. 90 km
- C. 100 km
- D. 120 km
- E. 150 km

**Pembahasan:**

**Diketahui:** Kecepatan pergi (P ke Q) 30 km/jam, kecepatan pulang (Q ke P) 45 km/jam, total waktu pergi-pulang 5 jam.

**Ditanya:** Jarak kota P ke Q.

**Jawab:** Misalkan jarak P ke Q adalah $d$ km. Waktu pergi = $d/30$ jam, waktu pulang = $d/45$ jam. Total waktu: $\frac{d}{30} + \frac{d}{45} = 5$. Samakan penyebut (KPK 30 dan 45 = 90): $\frac{3d}{90} + \frac{2d}{90} = 5$, sehingga $\frac{5d}{90} = 5$, maka $d = \frac{5 \times 90}{5} = 90$. Jadi jawabannya adalah B.', 4),
('b0000000-0000-4000-8000-061000000000', 'Cara Cepat: Konversi Satuan Kecepatan', '**Definisi:** Konversi kecepatan antara meter/detik (m/s) dan kilometer/jam (km/jam) dilakukan dengan mengalikan atau membagi angka 3,6, yang berasal dari 1000 meter / 3600 detik.

**Cara Kerja / Langkah Pengerjaan:**
1. Kenali satuan kecepatan yang diberikan pada soal (m/s atau km/jam) dan satuan yang diminta pada jawaban.
2. Jika mengubah dari m/s ke km/jam, kalikan dengan 3,6; jika sebaliknya (dari km/jam ke m/s), bagi dengan 3,6.
3. Pastikan satuan jarak juga sudah konsisten dengan satuan kecepatan yang baru sebelum menghitung waktu tempuh.

**Rumus & Poin Kunci:**
- Tabel konversi:

| Dari | Ke | Cara |
|---|---|---|
| m/s | km/jam | kalikan 3,6 |
| km/jam | m/s | bagi 3,6 |

- Contoh cepat: 20 m/s = 20 x 3,6 = 72 km/jam. Sebaliknya, 108 km/jam = 108 : 3,6 = 30 m/s.

**Kesalahan Umum / Jebakan:**
- Lupa mengonversi satuan kecepatan sehingga jarak dan waktu yang dibagi/dikalikan menjadi tidak konsisten satuannya.
- Tertukar arah konversi (mengalikan 3,6 padahal seharusnya membagi, atau sebaliknya).

**Tips cara cepat:** Hafalkan angka 3,6 sebagai jembatan m/s ke km/jam (kali untuk naik ke km/jam, bagi untuk turun ke m/s), supaya tidak perlu menulis ulang konversi 1000 meter dan 3600 detik setiap kali soal muncul.

**Kesimpulan:** Angka 3,6 adalah jembatan konversi kunci antara m/s dan km/jam — pastikan satuan kecepatan dan jarak sudah konsisten sebelum menghitung waktu tempuh.

**Contoh Soal:** Sebuah kereta cepat melaju dengan kecepatan tetap 25 m/s. Jika kereta tersebut harus menempuh jarak 180 km, berapa lama waktu tempuhnya (dalam jam)?
- A. 1,8 jam
- B. 2 jam
- C. 2,4 jam
- D. 3,6 jam
- E. 7,2 jam

**Pembahasan:**

**Diketahui:** Kecepatan kereta tetap 25 m/s, jarak tempuh 180 km.

**Ditanya:** Waktu tempuh (dalam jam).

**Jawab:** Ubah dulu kecepatan ke km/jam agar satuannya konsisten dengan jarak: 25 m/s x 3,6 = 90 km/jam. Gunakan rumus $t = \frac{s}{v} = \frac{180}{90} = 2$ jam. Jadi jawabannya adalah B.', 5);

update chapters set mindmap = '# Jarak, Kecepatan & Waktu

## Rumus Dasar
- $v = \frac{s}{t}$ (kecepatan)
- $s = v \times t$ (jarak)
- $t = \frac{s}{v}$ (waktu)
- Satuan jarak & waktu harus konsisten

## Berpapasan
- $t = \frac{jarak\ awal}{v_1 + v_2}$
- Kecepatan dijumlah (arah berlawanan)

## Menyusul (Searah)
- $t = \frac{jarak\ awal}{v_1 - v_2}$, $v_2 > v_1$
- Kecepatan diselisihkan (arah sama)

## Kecepatan Rata-Rata (PP, jarak sama)
- $v_{rata-rata} = \frac{2 \times v_1 \times v_2}{v_1 + v_2}$
- Bukan $\frac{v_1+v_2}{2}$

## Catatan Penting
- Satuan sama -> langsung total jarak / total waktu
- Jangan rata-ratakan kecepatan segmen langsung' where id = 'b0000000-0000-4000-8000-061000000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061000000000', 'Sebuah mobil berangkat pukul 07.15 dan tiba di tujuan pukul 10.00 setelah menempuh jarak 220 km, dengan istirahat selama 15 menit di tengah perjalanan. Berapa kecepatan rata-rata mobil tersebut selama waktu berkendara (tidak termasuk waktu istirahat)?', '80 km/jam', '84 km/jam', '88 km/jam', '92 km/jam', '96 km/jam', 'C', 'Total waktu dari pukul 07.15 sampai 10.00 = 2 jam 45 menit = 2,75 jam. Waktu berkendara = total waktu - istirahat = 2,75 - 0,25 = 2,5 jam. Kecepatan rata-rata = jarak / waktu berkendara = 220 / 2,5 = 88 km/jam.', 'medium', 1),
('b0000000-0000-4000-8000-061000000000', 'Sebuah kereta menempuh perjalanan dari kota P ke kota Q sejauh 180 km dengan kecepatan tetap 60 km/jam. Kereta tersebut berhenti transit selama 30 menit di kota R yang terletak tepat di titik tengah jarak P-Q, lalu melanjutkan sisa perjalanan dengan kecepatan 90 km/jam. Berapa total waktu tempuh dari P ke Q, termasuk waktu transit?', '2,5 jam', '2,75 jam', '3 jam', '3,25 jam', '3,5 jam', 'C', 'Jarak P ke R = R ke Q = 180/2 = 90 km. Waktu P ke R = 90/60 = 1,5 jam (90 menit). Waktu R ke Q = 90/90 = 1 jam (60 menit). Transit = 30 menit. Total waktu = 90 + 60 + 30 = 180 menit = 3 jam.', 'hard', 2),
('b0000000-0000-4000-8000-061000000000', 'Kereta Ekspres sepanjang 120 meter melaju dengan kecepatan 90 km/jam dari stasiun X menuju stasiun Y. Pada saat bersamaan, Kereta Lokal sepanjang 80 meter melaju dengan kecepatan 54 km/jam dari stasiun Y menuju stasiun X pada rel yang sejajar. Jarak stasiun X dan Y adalah 15 km. Berapa detik waktu yang dibutuhkan sejak keberangkatan sampai kedua kereta benar-benar selesai berpapasan (ujung belakang saling melewati)?', '300 detik', '350 detik', '380 detik', '400 detik', '425 detik', 'C', 'Ubah kecepatan ke m/s: 90 km/jam = 90 : 3,6 = 25 m/s, dan 54 km/jam = 54 : 3,6 = 15 m/s. Jarak awal = 15 km = 15.000 m. Karena panjang kereta diperhitungkan, jarak efektif = jarak awal + total panjang kedua kereta = 15.000 + (120+80) = 15.200 meter. Karena berpapasan (berlawanan arah), kecepatan dijumlahkan: t = 15.200 / (25+15) = 15.200 / 40 = 380 detik.', 'hard', 3),
('b0000000-0000-4000-8000-061000000000', 'Andi bersepeda dari suatu titik dengan kecepatan tetap 40 km/jam. Budi berangkat dari titik yang sama 45 menit setelah Andi, mengejar arah yang sama dengan kecepatan tetap 60 km/jam. Pada jarak berapa km dari titik keberangkatan, Budi akan menyusul Andi?', '60 km', '75 km', '80 km', '90 km', '100 km', 'D', 'Selama 45 menit (0,75 jam) sebelum Budi berangkat, Andi sudah menempuh jarak awal = 40 x 0,75 = 30 km. Karena searah dan saling menyusul, digunakan selisih kecepatan: waktu menyusul = jarak awal / (v2-v1) = 30 / (60-40) = 1,5 jam. Jarak dari titik keberangkatan saat Budi menyusul Andi = kecepatan Budi x waktu = 60 x 1,5 = 90 km.', 'hard', 4),
('b0000000-0000-4000-8000-061000000000', 'Sebuah kendaraan menempuh perjalanan pergi dengan kecepatan 60 km/jam dan perjalanan pulang (dengan jarak yang sama) dengan kecepatan 40 km/jam. Kecepatan rata-rata seluruh perjalanan pergi-pulang tersebut adalah...', '40 km/jam', '48 km/jam', '45 km/jam', '50 km/jam', '52 km/jam', 'B', 'Untuk jarak sama, gunakan rata-rata harmonis: v rata-rata = (2 x v1 x v2)/(v1+v2) = (2x60x40)/(60+40) = 4800/100 = 48 km/jam. BUKAN (60+40)/2=50.', 'hard', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-061000000000', 'Andi dan Bintang tinggal serumah dan akan pergi ke kolam renang yang sama. Bintang menempuh perjalanan dengan kecepatan 40 km/jam selama x menit, sedangkan Andi menempuh rute yang sama dengan kecepatan 15 km/jam selama y = 60 menit. Manakah pernyataan yang benar mengenai x dan y?', 'x > y', 'x < y', 'x = y', 'x + y < 80 menit', 'hubungan antara x dan y tidak dapat ditentukan', 'B', 'Karena rute sama, jarak tempuh keduanya sama. Jarak Andi = 15 km/jam x 1 jam = 15 km. Untuk Bintang: 40 x (x/60) = 15, sehingga x/60 = 0,375, maka x = 22,5 menit. Karena x = 22,5 menit dan y = 60 menit, maka x < y.', 'medium', 6),
('b0000000-0000-4000-8000-061000000000', 'Joni bersepeda ke sekolah dengan kecepatan 20 km/jam. Karena bekal Joni tertinggal, ibunya mengantarkan bekal tersebut dengan mengendarai sepeda motor berkecepatan 30 km/jam, berangkat 10 menit setelah Joni. Pada jarak berapa km dari rumah ibu Joni berhasil menyusul Joni?', '5 km', '10 km', '15 km', '20 km', '25 km', 'B', 'Saat ibu berangkat, Joni sudah menempuh jarak 20 x (10/60) = 10/3 km. Misalkan t = waktu (jam) setelah ibu berangkat sampai menyusul Joni: 30t = (10/3) + 20t, sehingga 10t = 10/3, maka t = 1/3 jam (20 menit). Jarak yang ditempuh ibu saat menyusul = 30 x (1/3) = 10 km.', 'medium', 7),
('b0000000-0000-4000-8000-061000000000', 'Pesawat P tinggal landas pada pukul 02.00 dengan kecepatan konstan x km/jam. Pesawat Q tinggal landas pada pukul 03.30 dengan rute yang sama, dengan kecepatan y km/jam. Jika y lebih besar dari x, berapa jam setelah pukul 03.30 pesawat Q akan menyusul pesawat P?', '1,5x jam', '(3/2)y jam', '(3/2)(y - x) jam', '(3/2)(9y - x) jam', '3x/[2(y - x)] jam', 'E', 'Saat pukul 03.30, pesawat P sudah menempuh 1,5 jam sehingga sudah berjarak 1,5x. Misalkan t = waktu (jam) setelah pukul 03.30 sampai Q menyusul P: yt = 1,5x + xt, sehingga t(y - x) = 1,5x, maka t = 1,5x/(y - x) = 3x/[2(y - x)].', 'hard', 8),
('b0000000-0000-4000-8000-061000000000', 'Berapakah jarak yang ditempuh sebuah komet selama tiga per empat jam dengan kecepatan dua belas meter per detik?', '10,8 kilometer', '32,4 kilometer', '10.800 meter', '108.000 meter', '324.000 meter', 'B', '3/4 jam = 0,75 x 3.600 detik = 2.700 detik. Jarak = kecepatan x waktu = 12 m/s x 2.700 detik = 32.400 meter = 32,4 kilometer.', 'medium', 9),
('b0000000-0000-4000-8000-061000000000', 'Perjalanan dari kota P ke kota Q dapat ditempuh dalam waktu 2 jam 20 menit dengan motor berkecepatan 65 km/jam. Berapa lama waktu yang diperlukan dari kota P ke kota Q jika ditempuh dengan kecepatan 70 km/jam?', '1 jam 50 menit', '2 jam 6 menit', '2 jam 10 menit', '2 jam 15 menit', '2 jam 16 menit', 'C', 'Jarak P-Q = 65 km/jam x (2 + 20/60) jam = 65 x 7/3 = 151,67 km. Waktu tempuh dengan kecepatan 70 km/jam = 151,67 : 70 = 2,1667 jam = 2 jam 10 menit.', 'medium', 10),
('b0000000-0000-4000-8000-061000000000', 'Cici bersepeda menempuh jarak 50 km. Pada hari pertama, 20 km pertama ditempuh dengan kecepatan 25 km/jam dan sisanya dengan kecepatan 15 km/jam. Pada hari kedua, ia menempuh 35 km pertama dengan kecepatan 20 km/jam dan sisanya dengan kecepatan 10 km/jam. Berapa selisih waktu tempuh antara hari pertama dan hari kedua?', '27 menit', '45 menit', '48 menit', '87 menit', '115 menit', 'A', 'Hari pertama: waktu = 20/25 + 30/15 = 0,8 + 2 = 2,8 jam. Hari kedua: waktu = 35/20 + 15/10 = 1,75 + 1,5 = 3,25 jam. Selisih waktu = 3,25 - 2,8 = 0,45 jam = 27 menit.', 'medium', 11),
('b0000000-0000-4000-8000-061000000000', 'Fredi berangkat dari kota A pada pukul 18.15 menuju kota B dengan mengendarai sepeda motor dan tiba pukul 23.45 pada hari yang sama. Jika kecepatan rata-rata yang ditempuhnya adalah 30 km/jam dan ia beristirahat selama 1 jam di perjalanan, berapa jarak antara kota A dan B?', '120 km', '135 km', '180 km', '165 km', '150 km', 'B', 'Total waktu dari pukul 18.15 sampai 23.45 = 5,5 jam. Waktu berkendara = total waktu - waktu istirahat = 5,5 - 1 = 4,5 jam. Jarak = waktu berkendara x kecepatan = 4,5 jam x 30 km/jam = 135 km.', 'medium', 12),
('b0000000-0000-4000-8000-061000000000', 'Jika Joni berjalan sejauh 16 km dalam waktu 3 jam dan Paul berjalan sejauh 16 km dalam waktu 5 jam, berapa persen Joni berjalan lebih cepat daripada Paul?', '33,33%', '40%', '60%', '66,6%', '75%', 'D', 'Kecepatan Joni = 16/3 km/jam, kecepatan Paul = 16/5 km/jam. Persentase Joni lebih cepat = [(16/3) - (16/5)] : (16/5) x 100% = (32/15) : (16/5) x 100% = (2/3) x 100% = 66,67%.', 'medium', 13),
('b0000000-0000-4000-8000-061000000000', 'Rumah Andi berjarak 1,5 km dari kantornya. Jika ia berjalan kaki dengan kecepatan rata-rata 4,5 km/jam, berapa jam total waktu yang dibutuhkannya untuk berjalan pulang-pergi selama satu minggu, jika ia bekerja dari Senin sampai Sabtu dan tidak pernah makan siang di rumah pada hari kerja?', '4', '6', '8', '20', '10', 'A', 'Waktu sekali jalan = 1,5 : 4,5 = 1/3 jam. Dalam satu hari kerja, Andi pulang-pergi 2 kali perjalanan = 2 x (1/3) = 2/3 jam. Selama 6 hari kerja (Senin-Sabtu), total waktu = 6 x (2/3) = 4 jam.', 'medium', 14),
('b0000000-0000-4000-8000-061000000000', 'Kereta Sembrani meninggalkan stasiun Amarta pada jam 7.22 dan tiba di stasiun Astina pada jam 7.28 pagi. Jarak kedua stasiun tersebut adalah 2,5 mil. Berapakah kecepatan kereta Sembrani?', '15 mil/jam', '20 mil/jam', '25 mil/jam', '40 mil/jam', '50 mil/jam', 'C', 'Waktu tempuh = 7.28 - 7.22 = 6 menit = 0,1 jam. Kecepatan = jarak : waktu = 2,5 : 0,1 = 25 mil/jam.', 'easy', 15),
('b0000000-0000-4000-8000-061000000000', 'Sinta dan Santi masing-masing memiliki jam tangan. Jam tangan Sinta terlalu cepat 5 menit setiap jamnya, sedangkan jam tangan Santi terlambat 3 menit setiap jamnya. Kedua jam tersebut dicocokkan tepat pukul 12 siang. Berapa selisih waktu antara kedua jam tersebut ketika jam yang tepat menunjukkan pukul 1 dini hari (13 jam kemudian)?', '0 menit', '26 menit', '1 jam 4 menit', '1 jam 24 menit', '1 jam 44 menit', 'E', 'Dari pukul 12 siang ke pukul 1 dini hari berselang 13 jam. Setiap jam, jam Sinta makin cepat 5 menit dan jam Santi makin lambat 3 menit, sehingga selisih keduanya bertambah 5+3=8 menit setiap jam. Setelah 13 jam, selisih = 8 x 13 = 104 menit = 1 jam 44 menit.', 'hard', 16),
('b0000000-0000-4000-8000-061000000000', 'Seekor gajah berjalan sejauh 5/8 km setiap 5 menit. Berapakah kecepatan rata-rata gajah tersebut dalam km/jam?', '5 km/jam', '6,25 km/jam', '7,5 km/jam', '8 km/jam', '12,5 km/jam', 'C', 'Dalam 1 jam (60 menit) terdapat 12 periode 5 menit, sehingga jarak tempuh per jam = (5/8) x 12 = 60/8 = 7,5 km/jam.', 'medium', 17);
