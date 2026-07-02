-- Materi + mind map + soal: Bab "Verbal #2" (Modul TPA v2)
-- Sub-topik: Analogi, Analogi Induktif, Analogi Deklaratif, Kelompok Kata
-- (dipecah dari seed_tpa_v2_verbal2_wacana.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060200000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060200000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060200000000', 'Analogi', '**Definisi:** Soal analogi menguji seberapa cepat kamu menangkap hubungan logis antara dua kata yang berpasangan (bentuk A : B), lalu menerapkan hubungan yang sama pada pasangan kata lain.

**Pengenalan:** Bentuk hubungan yang sering muncul antara lain: tempat dengan produk khasnya (sawah : padi), alat dengan pemiliknya/profesi yang memakainya (petani : cangkul), sebab dengan akibat (lapar : makan), benda dengan fungsinya, hubungan ukuran (besar-kecil), serta hubungan golongan/kategori (jenis-genus).

**Poin yang Harus Diketahui:**
- Pada level soal yang lebih lanjut (setara tes potensi akademik OTO Bappenas), pola hubungan yang diuji sering kali lebih abstrak dan berlapis, bukan sekadar sebab-akibat satu langkah.
- Hubungan gradasi intensitas, yaitu urutan tingkat kekuatan/kadar suatu keadaan, misalnya GERIMIS : HUJAN sejajar dengan SEJUK : DINGIN (gerimis adalah tingkat hujan yang lebih ringan, sejuk adalah tingkat dingin yang lebih ringan).
- Hubungan simbol dengan makna yang diwakilinya, misalnya MERAH : BAHAYA sejajar dengan PUTIH : SUCI (merah adalah simbol/lambang dari bahaya, putih adalah simbol/lambang dari kesucian) -- bukan hubungan benda dengan sifat fisiknya, melainkan benda/warna dengan makna simbolis yang disepakati secara sosial.
- Hubungan urutan proses atau tahapan, misalnya TELUR : ULAT : KEPOMPONG : KUPU-KUPU atau BENIH : TUNAS : POHON, yang menuntutmu mengenali posisi suatu kata dalam sebuah rangkaian proses, bukan cuma satu pasangan lepas.
- Soal level lanjutan juga kerap menggabungkan dua lapis hubungan sekaligus, misalnya hubungan sebab-akibat yang di dalamnya juga tersembunyi hubungan gradasi, sehingga kamu perlu menalar dua langkah: menemukan pola dasar dulu, baru menyaring tingkat/derajatnya.
- Jebakan soal umum: opsi yang hubungannya tampak mirip tapi arah atau derajatnya terbalik, atau levelnya tidak sepadan dengan pola pertanyaan.

**Tips cara cepat**: baca dulu pasangan A : B pada soal, lalu ubah menjadi satu kalimat pendek yang menjelaskan keterkaitannya, misalnya "A adalah tempat yang menghasilkan B" atau "A adalah alat yang dipakai oleh profesi B". Setelah pola kalimatnya ketemu, cocokkan pola itu ke tiap pilihan jawaban satu per satu, lalu coret opsi yang tidak menghasilkan kalimat dengan pola serupa. Cara ini jauh lebih cepat dan minim jebakan dibanding menghafal sinonim kata semata, karena kunci soal analogi adalah hubungan, bukan makna kata itu sendiri. Untuk soal level lanjutan, jangan berhenti di hubungan permukaan yang pertama kali terlintas -- cek apakah hubungan itu punya "arah" atau "derajat" tertentu (misalnya dari ringan ke berat, dari awal ke akhir proses), karena jebakan paling umum di level OTO Bappenas adalah opsi yang hubungannya mirip tapi arah/derajatnya terbalik atau levelnya tidak sepadan.

**Kesimpulan:** Kuasai pola dasar hubungan A : B dengan mengubahnya jadi kalimat pendek, lalu untuk soal level lanjutan selalu waspadai arah dan derajat hubungannya agar tidak terjebak opsi yang mirip tapi tidak sepadan.

**Contoh Soal:** Lengkapi pola gradasi berikut: RIAK : OMBAK : TSUNAMI = ... : ... : ... Manakah deret emosi yang menjadi analogi paling presisi?

- A. (KECEWA, MARAH, MENGAMUK)
- B. (SEDIH, KECEWA, MARAH)
- C. (JENGKEL, MARAH, MENGAMUK)
- D. (TAKUT, WASPADA, PANIK)
- E. (SENANG, GEMBIRA, BAHAGIA)

**Pembahasan:**

**Diketahui:** Pola RIAK : OMBAK : TSUNAMI adalah hubungan gradasi intensitas gelombang air dari yang paling lemah (riak) ke sedang (ombak) ke paling dahsyat (tsunami) -- tiga tingkat kekuatan yang berjenjang naik dalam satu jenis fenomena yang sama.

**Ditanya:** Deret emosi manakah (opsi A-E) yang menjadi analogi paling presisi dengan pola gradasi tersebut?

**Jawab:** Kita butuh deret emosi yang juga berjenjang tiga tingkat dari paling ringan ke paling ekstrem, dan seluruh deret harus berasal dari satu jenis emosi yang sama (bukan campuran emosi berbeda). Opsi A (KECEWA, MARAH, MENGAMUK) kurang presisi karena "kecewa" bukan tingkat paling ringan dari skala kemarahan, melainkan emosi lain yang berdekatan. Opsi B (SEDIH, KECEWA, MARAH) juga tidak tepat karena "sedih" bukan bagian dari skala intensitas marah, melainkan jenis emosi berbeda. Opsi D (TAKUT, WASPADA, PANIK) adalah gradasi emosi takut, bukan emosi marah seperti pada soal. Opsi E (SENANG, GEMBIRA, BAHAGIA) adalah gradasi emosi senang, juga bukan marah. Opsi C (JENGKEL, MARAH, MENGAMUK) benar-benar presisi, sebab jengkel adalah tingkat kemarahan paling ringan, marah adalah tingkat menengah, dan mengamuk adalah puncak intensitasnya -- persis mengikuti pola riak-ombak-tsunami yang sama-sama menaik tiga tingkat dari ringan ke ekstrem dalam satu jenis fenomena (gelombang air vs emosi marah). Ini menegaskan bahwa kunci soal gradasi bukan sekadar "sama-sama emosi" atau "sama-sama air", melainkan konsistensi arah kenaikan intensitas pada jenis fenomena yang benar-benar sama. Jadi jawabannya adalah C.', 1),
('b0000000-0000-4000-8000-060200000000', 'Analogi Induktif', '**Definisi:** Analogi induktif adalah cara menyimpulkan pola hubungan umum setelah melihat beberapa contoh pasangan kata yang sejenis, bukan hanya dari satu pasangan A : B saja.

**Pengenalan:** Alih-alih diberi satu pasangan A : B lalu diminta mencari pasangan yang sama persis, pada analogi induktif kamu disodori beberapa pasangan kata sekaligus (biasanya tiga pasang atau lebih) yang semuanya mengikuti satu pola hubungan tertentu, kemudian diminta menarik simpulan pola tersebut atau melengkapi pasangan berikutnya yang konsisten dengan pola itu.

**Poin yang Harus Diketahui:**
- Pada level soal yang lebih menantang, analogi induktif tidak berhenti pada tiga pasangan yang polanya seragam, melainkan menyajikan empat pasangan kata atau lebih sekaligus.
- Salah satu pasangan sengaja disisipkan sebagai jebakan: pasangan yang sekilas tampak sejenis (topiknya mirip atau kategorinya sama) tetapi sebenarnya mengikuti pola hubungan yang berbeda dari pasangan-pasangan lainnya.
- Contoh: dari empat pasangan GAJAH : BELALAI, JERAPAH : LEHER, BURUNG : PARUH, dan IKAN : SISIK, tiga pasangan pertama sama-sama menunjukkan hubungan hewan dengan ciri fisik paling menonjol/khas yang membedakannya dari hewan lain, sedangkan IKAN : SISIK adalah jebakan karena sisik bukan ciri paling menonjol yang membedakan ikan (hampir semua ikan bersisik secara umum, ini lebih ke hubungan hewan dengan bagian tubuh biasa, bukan ciri unik pembeda).
- Pola sebenarnya yang konsisten pada contoh tersebut hanya berlaku untuk tiga pasangan yang menunjukkan "ciri fisik unik yang menjadi identitas utama hewan tersebut".
- Pada level OTO Bappenas, kamu dituntut memeriksa SEMUA pasangan yang diberikan, bukan berhenti setelah menemukan pola dari dua atau tiga pasangan pertama saja, karena pola yang tampak cocok di awal bisa jadi hanya kebetulan dan gugur ketika diuji ke pasangan keempat atau kelima.

**Tips cara cepat**: jangan terpaku pada satu pasangan saja, tetapi bandingkan seluruh pasangan yang diberikan untuk menemukan benang merah hubungannya (apakah semuanya soal sebab-akibat, bagian-keseluruhan, atau golongan yang sama). Setelah pola umum ditemukan, barulah pola itu diuji ke pilihan jawaban yang tersedia. Ketika pasangan yang disajikan berjumlah empat atau lebih, uji pola yang kamu temukan ke SETIAP pasangan sampai pasangan terakhir sebelum menyimpulkan -- jika ada satu pasangan yang tidak cocok dengan pola mayoritas, curigai itu sebagai jebakan dan cari pola yang lebih sempit/spesifik yang tetap konsisten menaungi pasangan-pasangan lain, bukan pola yang longgar sehingga semua pasangan "kelihatan" cocok.

**Kesimpulan:** Analogi induktif menuntutmu menarik pola dari beberapa pasangan kata sekaligus dan menguji pola itu ke semua pasangan yang ada, bukan berhenti di dua-tiga pasangan pertama, agar tidak terjebak pasangan yang menyimpang.

**Contoh Soal:** Perhatikan pasangan kata berikut: DOKTER : STETOSKOP, POLISI : BORGOL, KOKI : PISAU, PETANI : CANGKUL, dan PENGACARA : DASI. Manakah pasangan yang TIDAK mengikuti pola hubungan yang sama dengan pasangan-pasangan lainnya?

- A. DOKTER : STETOSKOP
- B. POLISI : BORGOL
- C. KOKI : PISAU
- D. PETANI : CANGKUL
- E. PENGACARA : DASI

**Pembahasan:**

**Diketahui:** Lima pasangan kata: DOKTER : STETOSKOP, POLISI : BORGOL, KOKI : PISAU, PETANI : CANGKUL, dan PENGACARA : DASI.

**Ditanya:** Pasangan mana (opsi A-E) yang TIDAK mengikuti pola hubungan yang sama dengan pasangan-pasangan lainnya?

**Jawab:** Opsi A, B, C, dan D (DOKTER : STETOSKOP, POLISI : BORGOL, KOKI : PISAU, PETANI : CANGKUL) sama-sama menunjukkan hubungan profesi dengan alat kerja utama yang secara fungsional dipakai langsung untuk menjalankan tugas inti profesi tersebut: dokter memeriksa pasien dengan stetoskop, polisi mengamankan tersangka dengan borgol, koki mengolah bahan makanan dengan pisau, dan petani mengolah lahan dengan cangkul. Sementara itu opsi E (PENGACARA : DASI) adalah jebakan, sebab dasi hanyalah atribut pakaian/penampilan, bukan alat yang dipakai untuk menjalankan tugas inti profesi pengacara (yaitu membela/mendampingi klien secara hukum). Pola induktif yang konsisten pada empat pasangan lainnya adalah "profesi dengan alat kerja fungsional yang langsung dipakai untuk menjalankan tugas utama profesi", sehingga PENGACARA : DASI harus disingkirkan dari kelompok tersebut. Jadi jawabannya adalah E.', 2),
('b0000000-0000-4000-8000-060200000000', 'Analogi Deklaratif', '**Definisi:** Analogi deklaratif adalah bentuk analogi yang hubungannya berupa pernyataan fakta atau definisi yang sifatnya langsung dan baku antara dua kata, misalnya hubungan bagian dengan keseluruhannya (jari : tangan), atau hubungan sesuatu dengan tempat asalnya yang sudah pasti secara definisi.

**Pengenalan:** Berbeda dengan analogi biasa yang polanya bisa bervariasi (sebab-akibat, alat-profesi, dsb.), analogi deklaratif menitikberatkan pada hubungan yang "sudah pasti benar secara definisi" sehingga tidak banyak ditafsirkan ulang.

**Poin yang Harus Diketahui:**
- Pada level lanjutan, jebakan paling umum dalam soal analogi deklaratif adalah opsi jawaban yang tampak mirip karena sama-sama "berpasangan secara wajar", padahal sebenarnya berjenis hubungan fungsional (alat-profesi, sebab-akibat, tempat-produk), bukan hubungan bagian-keseluruhan atau fakta baku seperti pada soal.
- Contoh: untuk pasangan RODA : MOBIL (bagian-keseluruhan, deklaratif), opsi seperti SOPIR : MOBIL (pelaku dengan objek yang dikendarainya, hubungan fungsional) atau BENSIN : MOBIL (bahan bakar dengan objek yang digerakkannya, juga fungsional) sekilas terasa "berhubungan erat dengan mobil", tetapi keduanya BUKAN hubungan bagian-keseluruhan seperti RODA : MOBIL, sehingga harus disingkirkan meskipun topiknya sama-sama tentang mobil.
- Ciri khas analogi deklaratif adalah hubungannya tetap benar tanpa syarat/konteks tambahan apa pun -- "roda adalah bagian dari mobil" benar di semua keadaan, sedangkan "sopir mengendarai mobil" atau "bensin menggerakkan mobil" adalah pernyataan tentang fungsi/peran yang sifatnya kontekstual (butuh kata kerja aktif seperti "menggunakan", "menghasilkan", "menyebabkan" untuk menjelaskannya), bukan pernyataan definisi bagian-keseluruhan yang statis.

**Tips cara cepat**: tanyakan pada diri sendiri, "apakah hubungan A dan B ini adalah fakta baku yang tidak terbantahkan?" Jika ya, cari pasangan opsi jawaban yang punya hubungan fakta sejenis (bagian-keseluruhan dengan bagian-keseluruhan, bukan dicampur dengan sebab-akibat), karena analogi deklaratif menuntut kesamaan jenis hubungan yang presisi, bukan sekadar mirip-mirip. Uji tambahan yang ampuh untuk membedakan dari analogi fungsional: coba ubah pasangan A : B menjadi kalimat "A menggunakan/menghasilkan/menyebabkan B" -- jika kalimat itu terasa dipaksakan atau butuh kata kerja aktif untuk masuk akal, berarti itu hubungan fungsional, bukan deklaratif. Sebaliknya, jika pasangan itu cukup dijelaskan dengan kalimat statis seperti "A adalah bagian dari B" atau "A adalah jenis dari B" tanpa kata kerja aktif, itu tandanya hubungan deklaratif yang sesungguhnya.

**Kesimpulan:** Analogi deklaratif menuntut hubungan fakta baku yang berlaku tanpa syarat apa pun, sehingga kunci membedakannya dari jebakan analogi fungsional adalah menguji apakah pasangan kata butuh kata kerja aktif untuk dijelaskan atau tidak.

**Contoh Soal:** BAB : BUKU = ... Manakah pasangan berikut yang merupakan analogi deklaratif sejati (bagian-keseluruhan), sepadan dengan pola BAB : BUKU?

- A. PENULIS : BUKU
- B. BABAK : DRAMA
- C. PERCETAKAN : BUKU
- D. PEMBACA : BUKU
- E. PENERBIT : BUKU

**Pembahasan:**

**Diketahui:** Hubungan BAB : BUKU adalah bagian dengan keseluruhannya secara definitif -- bab adalah unit pembagi isi dari sebuah buku, sebuah fakta struktural yang selalu benar tanpa syarat tambahan.

**Ditanya:** Pasangan mana (opsi A-E) yang merupakan analogi deklaratif sejati, sepadan dengan pola BAB : BUKU?

**Jawab:** Opsi A (PENULIS : BUKU) adalah jebakan analogi fungsional, karena penulis bukan bagian dari buku, melainkan pelaku yang menghasilkan/menciptakan buku (butuh kata kerja aktif "menulis" atau "menghasilkan" untuk menjelaskan hubungannya) -- ini sejenis dengan hubungan profesi-karya, bukan bagian-keseluruhan. Opsi C (PERCETAKAN : BUKU) juga fungsional, karena percetakan mencetak buku, bukan bagian dari buku. Opsi D (PEMBACA : BUKU) fungsional, karena pembaca membaca buku, bukan bagian dari buku. Opsi E (PENERBIT : BUKU) juga fungsional, karena penerbit menerbitkan buku, bukan bagian dari buku. Opsi B (BABAK : DRAMA) adalah jawaban yang tepat, karena babak adalah unit pembagi isi dari sebuah drama, persis sepadan secara struktural dengan bab yang menjadi unit pembagi isi buku -- keduanya sama-sama hubungan bagian dengan keseluruhan yang berlaku baku tanpa perlu kata kerja aktif untuk menjelaskannya. Ini menegaskan bahwa memeriksa apakah hubungan bisa dijelaskan tanpa kata kerja aktif adalah cara efektif memilah analogi deklaratif dari analogi fungsional yang menyamar mirip. Jadi jawabannya adalah B.', 3),
('b0000000-0000-4000-8000-060200000000', 'Kelompok Kata', '**Definisi:** Soal kelompok kata meminta kamu menemukan satu kata yang paling tidak sejenis atau tidak sekelompok dibandingkan kata-kata lain dalam daftar pilihan.

**Pengenalan:** Kata-kata yang "sekelompok" biasanya memiliki kesamaan kategori (sama-sama alat musik, sama-sama profesi, sama-sama jenis hewan), kesamaan fungsi (sama-sama alat tulis), atau kesamaan sifat (sama-sama bersifat cair). Kata yang menyimpang dari kesamaan itulah jawabannya.

**Poin yang Harus Diketahui:**
- Pada level lanjutan, pengelompokan tidak selalu berdasarkan kategori benda konkret (alat musik, hewan, alat tulis), tetapi bisa berdasarkan kategori ABSTRAK berupa sifat, konsep, atau nilai yang dikandung kata-kata tersebut.
- Contoh: dalam daftar JUJUR, ADIL, DISIPLIN, RAMAH, dan CERDAS, empat kata pertama (JUJUR, ADIL, DISIPLIN, RAMAH) sama-sama tergolong sifat/nilai moral atau karakter (virtue), sedangkan CERDAS adalah kata yang menyimpang karena tergolong kemampuan kognitif/intelektual, bukan nilai moral -- meskipun sama-sama kata sifat positif yang biasa dipakai memuji seseorang, sehingga jebakannya adalah mengira semuanya "sama-sama sifat baik" tanpa membedah kategori abstrak yang lebih spesifik (moral vs kognitif).
- Contoh lain: KEMARAHAN, KESEDIHAN, KEBAHAGIAAN, dan KECEMASAN tergolong konsep emosi, sedangkan KEBIJAKSANAAN tergolong konsep hasil proses berpikir/pengalaman, bukan emosi, walaupun sama-sama kata benda abstrak berakhiran "ke-an".
- Level OTO Bappenas sering menyandingkan kata-kata abstrak seperti ini untuk menguji ketajaman membedah sub-kategori konsep, bukan sekadar mengenali kategori benda yang kasatmata.

**Tips cara cepat**: jangan buru-buru menjawab kata yang "terasa aneh" secara sekilas. Cek dulu 4-5 kata yang ada, cari benang merah kesamaan di antara sebagian besar kata (biasanya 3-4 kata sudah membentuk pola yang sama), baru simpulkan kata mana yang menyimpang dari pola mayoritas tersebut. Kadang jebakannya adalah kata yang terlihat berhubungan tapi sebenarnya beda kategori (misalnya termasuk "alat" vs termasuk "bahan"). Untuk kelompok kata abstrak, coba beri "nama kategori" yang paling spesifik untuk keempat kata yang sama polanya (misalnya bukan cuma "sifat baik", tapi lebih spesifik lagi seperti "nilai moral/karakter" atau "jenis emosi") -- semakin spesifik nama kategorinya, semakin mudah menemukan kata yang sebenarnya masuk sub-kategori berbeda meskipun tampak serumpun secara umum.

**Kesimpulan:** Menemukan kata yang tidak sekelompok memerlukan kejelian membedah kesamaan hingga ke sub-kategori yang paling spesifik, terutama saat kategorinya bersifat abstrak seperti sifat, nilai, atau konsep.

**Contoh Soal:** Manakah kata berikut yang TIDAK sekelompok dengan kata-kata lainnya?

- A. OPTIMISME
- B. AMBISI
- C. KEGIGIHAN
- D. KETEKUNAN
- E. KEBERANIAN

**Pembahasan:**

**Diketahui:** Lima kata: OPTIMISME, AMBISI, KEGIGIHAN, KETEKUNAN, KEBERANIAN.

**Ditanya:** Kata mana (opsi A-E) yang TIDAK sekelompok dengan kata-kata lainnya?

**Jawab:** Sekilas kelima kata tampak "sama-sama sifat positif yang mendukung kesuksesan seseorang", tetapi perlu dibedah lebih spesifik. Opsi C (KEGIGIHAN), D (KETEKUNAN), dan E (KEBERANIAN) adalah sifat/karakter yang berhubungan dengan cara seseorang bertindak atau berproses menghadapi kesulitan (karakter dalam berjuang). Opsi A (OPTIMISME) juga termasuk kategori ini karena merupakan sikap mental positif dalam menghadapi proses/masa depan. Opsi B (AMBISI) berbeda secara mendasar: ambisi adalah dorongan/keinginan kuat untuk mencapai suatu tujuan atau target, bukan cara seseorang menjalani prosesnya -- ambisi bisa ada tanpa kegigihan, ketekunan, keberanian, atau optimisme, dan sebaliknya. Dengan kata lain, empat kata lainnya menggambarkan "kualitas karakter dalam menjalani proses", sedangkan AMBISI menggambarkan "arah/dorongan menuju tujuan", sehingga AMBISI adalah kata yang tidak sekelompok. Jadi jawabannya adalah B.', 4);

update chapters set mindmap = '# Verbal #2
## Analogi
- Pola A : B -> ubah jadi kalimat pendek
- Jenis hubungan: tempat-produk, alat-profesi, sebab-akibat, fungsi, ukuran, golongan
- Uji pola kalimat ke opsi, eliminasi yang tidak cocok
## Analogi Induktif
- Beberapa contoh pasangan kata sejenis
- Tarik pola umum dari seluruh pasangan
- Terapkan pola ke pasangan/opsi berikutnya
## Analogi Deklaratif
- Hubungan berupa fakta/definisi baku (mis. bagian-keseluruhan)
- Tidak banyak ditafsirkan ulang
- Cocokkan jenis hubungan secara presisi
## Kelompok Kata
- Cari 1 kata yang tidak sekelompok
- Kesamaan: kategori, fungsi, atau sifat
- Temukan pola mayoritas dulu, baru simpulkan kata menyimpang' where id = 'b0000000-0000-4000-8000-060200000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060200000000', 'GURU : MURID = DOKTER : ...', 'Pasien', 'Rumah Sakit', 'Obat', 'Suster', 'Stetoskop', 'A', 'Guru berhubungan dengan murid sebagai pihak yang dilayani/dibimbing dalam proses belajar-mengajar. Pola yang sama berlaku pada dokter yang melayani/menangani pasien. Rumah sakit, obat, suster, dan stetoskop hanyalah sarana pendukung, bukan pihak yang dilayani langsung.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'PETANI : CANGKUL = TUKANG KAYU : ...', 'Kayu', 'Rumah', 'Gergaji', 'Paku', 'Meja', 'C', 'Pola hubungan ini adalah profesi dengan alat utama yang digunakannya (alat-profesi). Petani menggunakan cangkul untuk bekerja, sebagaimana tukang kayu menggunakan gergaji sebagai alat utamanya. Kayu, paku, dan meja adalah bahan/hasil kerja, bukan alat kerja utama seperti gergaji.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'Perhatikan pasangan kata berikut: AWAN : HUJAN, API : ABU, dan MENDUNG : GERIMIS. Pola hubungan yang konsisten pada ketiga pasangan tersebut adalah...', 'Golongan dengan anggotanya', 'Suatu keadaan/benda dengan hasil atau akibat yang ditimbulkannya', 'Alat dengan penggunanya', 'Tempat dengan produk khasnya', 'Sinonim antar kata', 'B', 'Ketiga pasangan kata menunjukkan pola sebab-akibat: awan menghasilkan hujan, api meninggalkan abu sebagai sisa pembakaran, dan mendung menjadi tanda datangnya gerimis. Ini adalah contoh analogi induktif karena pola ditarik dari beberapa pasangan sejenis sekaligus.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'JARI : TANGAN = ...', 'Ranting : Pohon', 'Meja : Kursi', 'Guru : Sekolah', 'Air : Sungai', 'Dokter : Pasien', 'A', 'Hubungan JARI : TANGAN adalah hubungan bagian dengan keseluruhannya, sebuah fakta/definisi yang baku (analogi deklaratif). Pola yang sama terdapat pada RANTING : POHON, karena ranting adalah bagian dari pohon secara definitif, bukan sekadar berdekatan atau berfungsi bersama seperti pada pasangan lainnya.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'Manakah kata berikut yang TIDAK sekelompok dengan kata-kata lainnya?', 'Biola', 'Gitar', 'Seruling', 'Kanvas', 'Piano', 'D', 'Biola, gitar, seruling, dan piano semuanya termasuk kategori alat musik. Kanvas bukan alat musik, melainkan media untuk melukis, sehingga tidak sekelompok dengan keempat kata lainnya.', 'hard');

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060200000000', 'NELAYAN : JALA = PELUKIS : ...', 'Kanvas', 'Cat', 'Pensil', 'Kuas', 'Meja', 'D', 'Pola hubungan ini adalah profesi dengan alat utama yang digunakannya (alat-profesi). Nelayan menggunakan jala untuk menangkap ikan, sebagaimana pelukis menggunakan kuas sebagai alat utamanya untuk melukis. Kanvas, cat, pensil, dan meja adalah bahan atau sarana pendukung, bukan alat utama seperti kuas.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'KEBUN : SAYUR = SAWAH : ...', 'Traktor', 'Padi', 'Cangkul', 'Petani', 'Air', 'B', 'Pola hubungan ini adalah tempat dengan produk khas yang dihasilkannya. Kebun menghasilkan sayur, sebagaimana sawah menghasilkan padi sebagai produk utamanya. Traktor dan cangkul adalah alat, petani adalah pelaku, dan air adalah sarana pendukung, bukan produk yang dihasilkan sawah.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'LAPAR : MAKAN = HAUS : ...', 'Dahaga', 'Air', 'Gelas', 'Panas', 'Minum', 'E', 'Pola hubungan ini adalah sebab dengan tindakan yang dilakukan untuk mengatasinya. Rasa lapar diatasi dengan makan, sebagaimana rasa haus diatasi dengan minum. Dahaga hanya sinonim dari haus (bukan tindakan mengatasi), sedangkan air, gelas, dan panas adalah benda/keadaan, bukan tindakan.', 'hard'),
('b0000000-0000-4000-8000-060200000000', 'Perhatikan pasangan kata berikut: MERPATI : BURUNG, KOMODO : REPTIL, dan PAUS : MAMALIA. Pola hubungan yang konsisten pada ketiga pasangan tersebut adalah...', 'Anggota dengan golongan/kelas biologisnya', 'Alat dengan penggunanya', 'Sebab dengan akibatnya', 'Tempat dengan penghuninya', 'Bahan dengan hasil olahannya', 'A', 'Ketiga pasangan menunjukkan hubungan anggota dengan golongan/kelas biologis tempatnya digolongkan: merpati tergolong burung, komodo tergolong reptil, dan paus tergolong mamalia. Ini adalah analogi induktif karena pola ditarik dari beberapa pasangan sejenis, bukan hubungan alat, sebab-akibat, tempat, maupun bahan.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'Perhatikan pasangan kata berikut: PEMAHAT : PATUNG, PENULIS : NASKAH, dan PENJAHIT : BAJU. Pola hubungan yang konsisten pada ketiga pasangan tersebut adalah...', 'Golongan dengan anggotanya', 'Tempat dengan hasil produksinya', 'Profesi dengan karya/hasil kerjanya', 'Alat dengan bahan bakunya', 'Sebab dengan akibatnya', 'C', 'Ketiga pasangan menunjukkan hubungan profesi dengan karya atau hasil kerja utamanya: pemahat menghasilkan patung, penulis menghasilkan naskah, dan penjahit menghasilkan baju. Pola ini bukan golongan-anggota, tempat-produk, alat-bahan, maupun sebab-akibat.', 'hard'),
('b0000000-0000-4000-8000-060200000000', 'Perhatikan pasangan kata berikut: KOPRAL : SERSAN, SERSAN : LETNAN, dan LETNAN : KAPTEN. Pola hubungan yang konsisten pada pasangan-pasangan tersebut adalah...', 'Sinonim pangkat militer', 'Alat dengan pemakainya', 'Golongan dengan anggotanya', 'Pangkat yang lebih rendah menuju pangkat yang lebih tinggi secara berurutan', 'Sebab dengan akibat', 'D', 'Ketiga pasangan menunjukkan urutan tingkatan pangkat militer dari yang lebih rendah ke yang lebih tinggi secara berjenjang (kopral di bawah sersan, sersan di bawah letnan, letnan di bawah kapten). Pola ini adalah hubungan tingkatan/urutan, bukan sinonim, alat-pemakai, golongan-anggota, ataupun sebab-akibat.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'DAUN : POHON = ...', 'Meja : Kursi', 'Halaman : Buku', 'Guru : Murid', 'Dokter : Pasien', 'Ikan : Laut', 'B', 'Hubungan DAUN : POHON adalah hubungan bagian dengan keseluruhannya, fakta baku (analogi deklaratif): daun adalah bagian dari pohon. Pola yang sama terdapat pada HALAMAN : BUKU, karena halaman adalah bagian dari buku secara definitif. Meja-kursi hanya berdekatan fungsinya, guru-murid dan dokter-pasien adalah hubungan pihak yang melayani, dan ikan-laut adalah hubungan penghuni-tempat, bukan bagian-keseluruhan.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'RODA : MOBIL = ...', 'Air : Sungai', 'Guru : Sekolah', 'Petani : Sawah', 'Kunci : Rumah', 'Sayap : Pesawat', 'E', 'Hubungan RODA : MOBIL adalah hubungan bagian dengan keseluruhannya yang bersifat baku (analogi deklaratif): roda merupakan bagian dari mobil. Pola yang sama terdapat pada SAYAP : PESAWAT, karena sayap adalah bagian dari pesawat secara definitif. Air-sungai dan petani-sawah adalah hubungan penghuni/pelaku dengan tempat, guru-sekolah adalah pihak dengan tempat kerja, dan kunci-rumah adalah alat dengan objek yang dibukanya, bukan bagian-keseluruhan.', 'hard'),
('b0000000-0000-4000-8000-060200000000', 'Manakah kata berikut yang TIDAK sekelompok dengan kata-kata lainnya?', 'Ayam', 'Ular', 'Buaya', 'Komodo', 'Kadal', 'A', 'Ular, buaya, komodo, dan kadal semuanya termasuk golongan reptil. Ayam termasuk golongan unggas/burung, sehingga tidak sekelompok dengan keempat kata lainnya.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'Manakah kata berikut yang TIDAK sekelompok dengan kata-kata lainnya?', 'Pensil', 'Bolpoin', 'Piring', 'Spidol', 'Krayon', 'C', 'Pensil, bolpoin, spidol, dan krayon semuanya termasuk kategori alat tulis/gambar. Piring adalah alat makan, bukan alat tulis, sehingga tidak sekelompok dengan keempat kata lainnya.', 'medium');
