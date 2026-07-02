-- Materi + mind map + soal: Bab "Jarak, Kecepatan & Waktu" (Modul TPA v2, Subtest Numerikal)
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061000000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061000000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061000000000', null, 'Subtes ini menguji hubungan tiga besaran: jarak (s), kecepatan (v), dan waktu (t). Rumus dasarnya saling terkait dan bisa diturunkan satu sama lain. Kesalahan paling umum adalah mencampur satuan (misalnya km dengan menit) dan merata-ratakan kecepatan padahal seharusnya merata-ratakan lewat total jarak dibagi total waktu.', 1),
('b0000000-0000-4000-8000-061000000000', 'Rumus Dasar', '**Definisi:** Kecepatan (v), jarak (s), dan waktu (t) adalah tiga besaran yang saling terkait lewat rumus $v = \frac{s}{t}$, $s = v \times t$, dan $t = \frac{s}{v}$.

**Pengenalan:** Subtes ini menguji hubungan ketiga besaran tersebut, di mana satu rumus bisa diturunkan langsung dari rumus lainnya.

**Poin yang Harus Diketahui:**
- Tiga rumus inti yang saling diturunkan:

| Dicari | Rumus |
|---|---|
| Kecepatan (v) | $v = \frac{s}{t}$ |
| Jarak (s) | $s = v \times t$ |
| Waktu (t) | $t = \frac{s}{v}$ |

- Pastikan satuan jarak dan waktu konsisten (contoh: km dan jam, atau meter dan detik) sebelum menghitung.

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

**Pengenalan:** Kasus ini merupakan pengembangan dari rumus dasar jarak-kecepatan-waktu, dengan tambahan dua variasi yang sering muncul: panjang kendaraan yang diperhitungkan, dan kecepatan relatif terhadap arus.

**Poin yang Harus Diketahui:**
- Tabel rumus waktu bertemu:

| Kasus | Rumus waktu bertemu |
|---|---|
| Berpapasan (arah berlawanan) | $t = \frac{\text{jarak awal}}{v_1 + v_2}$ |
| Searah, saling menyusul | $t = \frac{\text{jarak awal}}{v_1 - v_2}$, dengan $v_2 > v_1$ |

- Pada kasus berpapasan, kecepatan kedua objek dijumlahkan karena jarak di antara mereka berkurang lebih cepat. Pada kasus menyusul, dipakai selisih kecepatan karena jarak berkurang lebih lambat.
- Kasus Panjang Kendaraan Diperhitungkan: pada soal dua kereta yang berpapasan atau saling menyusul, jika panjang kereta tidak boleh diabaikan, jarak tempuh efektif yang harus dihitung bukan hanya jarak antar posisi ujung depan, melainkan ditambah total panjang kedua kereta (supaya ujung belakang kedua kereta juga benar-benar saling melewati). Rumusnya menjadi: $t = \frac{\text{jarak awal} + (\text{panjang kereta}_1 + \text{panjang kereta}_2)}{v_1 \pm v_2}$ (tanda + untuk berpapasan, tanda - untuk menyusul).
- Kecepatan Relatif Terhadap Arus (Perahu di Sungai): jika perahu bergerak searah arus (mengikuti arus), kecepatan efektifnya terhadap daratan adalah kecepatan mesin perahu ditambah kecepatan arus: $v_{\text{efektif}} = v_{\text{perahu}} + v_{\text{arus}}$. Jika perahu bergerak melawan arus, kecepatan efektifnya berkurang: $v_{\text{efektif}} = v_{\text{perahu}} - v_{\text{arus}}$.

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

**Pengenalan:** Konsep ini sering menjadi jebakan karena secara intuitif orang cenderung menjumlahkan lalu membagi dua kedua kecepatan, padahal cara itu hanya valid pada kondisi tertentu.

**Poin yang Harus Diketahui:**
- Rumus rata-rata harmonis: $$v_{\text{rata-rata}} = \frac{2 \times v_1 \times v_2}{v_1 + v_2}$$
- Jika jarak dan kecepatan sudah dalam satuan yang sama/konsisten, cara paling aman adalah langsung membagi total jarak dengan total waktu ($v = \frac{s_{\text{total}}}{t_{\text{total}}}$).
- Jangan merata-ratakan kecepatan tiap segmen secara langsung $(v_1+v_2)/2$, karena itu hanya benar jika waktu tempuh tiap segmen sama, bukan jaraknya.

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

**Pengenalan:** Soal kadang mencampur satuan m/s dengan km/jam untuk menjebak, sehingga konversi cepat antar keduanya penting dikuasai agar tidak salah hitung.

**Poin yang Harus Diketahui:**
- Tabel konversi:

| Dari | Ke | Cara |
|---|---|---|
| m/s | km/jam | kalikan 3,6 |
| km/jam | m/s | bagi 3,6 |

- Contoh cepat: 20 m/s = 20 x 3,6 = 72 km/jam. Sebaliknya, 108 km/jam = 108 : 3,6 = 30 m/s.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-061000000000', 'Sebuah mobil menempuh jarak 180 km dalam waktu 3 jam. Kecepatan rata-rata mobil tersebut adalah...', '50 km/jam', '55 km/jam', '60 km/jam', '65 km/jam', '70 km/jam', 'C', 'v = s / t = 180 km / 3 jam = 60 km/jam.', 'easy'),
('b0000000-0000-4000-8000-061000000000', 'Kota A dan kota B berjarak 300 km. Mobil pertama berangkat dari A menuju B dengan kecepatan 60 km/jam, sedangkan mobil kedua berangkat dari B menuju A pada saat bersamaan dengan kecepatan 90 km/jam. Keduanya akan berpapasan setelah...', '1 jam', '1,5 jam', '2 jam', '2,5 jam', '3 jam', 'C', 'Karena bergerak saling berpapasan (berlawanan arah), kecepatan dijumlahkan: t = jarak / (v1+v2) = 300 / (60+90) = 300/150 = 2 jam.', 'medium'),
('b0000000-0000-4000-8000-061000000000', 'Andi bersepeda dengan kecepatan 40 km/jam, sedangkan Budi berangkat dari titik yang sama 30 menit kemudian dengan kecepatan 60 km/jam mengejar arah yang sama. Jika saat Budi mulai berangkat jarak Andi sudah 20 km di depan, berapa lama Budi butuh waktu untuk menyusul Andi?', '2 jam', '1,5 jam', '30 menit', '45 menit', '1 jam', 'E', 'Karena searah dan saling menyusul, digunakan selisih kecepatan: t = jarak awal / (v2-v1) = 20 / (60-40) = 20/20 = 1 jam.', 'medium'),
('b0000000-0000-4000-8000-061000000000', 'Sebuah kendaraan menempuh perjalanan pergi dengan kecepatan 60 km/jam dan perjalanan pulang (dengan jarak yang sama) dengan kecepatan 40 km/jam. Kecepatan rata-rata seluruh perjalanan pergi-pulang tersebut adalah...', '40 km/jam', '48 km/jam', '45 km/jam', '50 km/jam', '52 km/jam', 'B', 'Untuk jarak sama, gunakan rata-rata harmonis: v rata-rata = (2 x v1 x v2)/(v1+v2) = (2x60x40)/(60+40) = 4800/100 = 48 km/jam. BUKAN (60+40)/2=50.', 'hard'),
('b0000000-0000-4000-8000-061000000000', 'Sebuah kereta menempuh jarak 250 km dengan kecepatan tetap 50 km/jam. Waktu yang dibutuhkan kereta tersebut untuk sampai tujuan adalah...', '3 jam', '4 jam', '6 jam', '7 jam', '5 jam', 'E', 't = s / v = 250 km / 50 km/jam = 5 jam.', 'easy');
