-- Materi + mind map + soal: Bab "Wacana" (Modul TPA v2)
-- Sub-topik: Paragraf Deduktif, Induktif, Campuran, Ide Pokok, Mencari Salah/Benar, Sinonim/Antonim Kontekstual
-- (dipecah dari seed_tpa_v2_verbal2_wacana.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060300000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060300000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060300000000', 'Paragraf Deduktif', '**Definisi:** Paragraf deduktif adalah paragraf yang kalimat utamanya diletakkan di AWAL paragraf, kemudian diikuti oleh kalimat-kalimat penjelas yang merinci, memberi contoh, atau memperkuat kalimat utama tersebut. Pola pengembangannya bergerak dari hal yang bersifat umum menuju hal yang lebih khusus (umum -> khusus).

**Cara Kerja / Langkah Pengerjaan:**
1. Baca kalimat pertama paragraf, lalu periksa apakah kalimat itu berupa pernyataan umum/besar yang bisa mewakili keseluruhan isi paragraf.
2. Periksa kalimat-kalimat berikutnya: pastikan masing-masing hanya merinci, memberi contoh, data, atau memperkuat gagasan kalimat pertama, bukan mengulanginya dengan kata lain.
3. Pilah kalimat penjelas yang benar-benar mendukung gagasan utama dari kalimat yang hanya berupa detail tambahan.
4. Jika kalimat paling umum ternyata berada di TENGAH paragraf, diapit kalimat pengantar dan penegasan, kenali itu sebagai variasi ineratif, bukan deduktif murni.

**Rumus & Poin Kunci:**
- Pola deduktif: umum -> khusus; kalimat utama adalah kalimat pertama.
- Wacana level lanjutan bisa memuat beberapa kalimat penjelas kompleks (data/statistik, sebab-akibat berlapis, perbandingan) yang masing-masing menjelaskan sisi berbeda dari gagasan utama, bukan sekadar mengulang dengan kata lain.
- Paragraf ineratif: kalimat utama berada di TENGAH, diapit kalimat pengantar dan penegasan -- variasi yang relatif jarang muncul namun tetap perlu dikenali.

**Kesalahan Umum / Jebakan:**
- Mengira paragraf ineratif "tidak memiliki kalimat utama" hanya karena letaknya di tengah, padahal paragraf tersebut tetap memiliki kalimat utama yang eksplisit.
- Keliru menandai kalimat penjelas kedua atau ketiga sebagai kalimat utama hanya karena memuat data atau angka yang mencolok, padahal kalimat itu hanya mendukung gagasan di kalimat pertama.

**Tips cara cepat**: kalau kalimat pertama sudah terasa seperti "pernyataan besar/umum" dan kalimat-kalimat berikutnya semakin spesifik (memberi contoh, data, atau rincian), maka itu sudah pasti paragraf deduktif. Jika kalimat utama justru muncul di tengah dan diapit kalimat pengantar-penegasan, curigai itu adalah paragraf ineratif.

**Kesimpulan:** Paragraf deduktif dikenali dari kalimat utama di awal yang diikuti kalimat-kalimat penjelas yang semakin khusus; waspadai variasi ineratif yang menempatkan kalimat utama di tengah.

**Contoh Soal:** "Investasi pada energi terbarukan di sejumlah negara berkembang menunjukkan peningkatan signifikan dalam satu dekade terakhir. Berdasarkan data lembaga energi internasional, kapasitas terpasang panel surya di kawasan Asia Tenggara tumbuh rata-rata 18 persen per tahun sejak 2015, didorong oleh turunnya biaya produksi panel hingga separuh dari harga sebelumnya. Di sisi lain, pemerintah di beberapa negara turut memberikan insentif pajak bagi industri yang beralih menggunakan sumber energi bersih, sehingga mempercepat adopsi teknologi tersebut oleh sektor swasta. Meski demikian, tantangan penyimpanan energi dalam skala besar masih menjadi kendala utama yang belum sepenuhnya terselesaikan." Tentukan jenis paragraf tersebut dan jelaskan alasannya.

- A. Induktif, karena paragraf ditutup oleh kalimat yang menyimpulkan seluruh data sebelumnya
- B. Deduktif, karena kalimat pertama berupa pernyataan umum yang diikuti kalimat-kalimat penjelas
- C. Campuran, karena gagasan awal ditegaskan kembali dengan kalimat senada di akhir paragraf
- D. Ineratif, karena kalimat utama berada di tengah paragraf, diapit kalimat pengantar dan penegasan
- E. Naratif tanpa kalimat utama, karena paragraf hanya memaparkan rangkaian peristiwa

**Pembahasan:**

**Diketahui:** Paragraf diawali kalimat umum "Investasi pada energi terbarukan di sejumlah negara berkembang menunjukkan peningkatan signifikan dalam satu dekade terakhir," lalu diikuti tiga kalimat penjelas: data pertumbuhan kapasitas panel surya, faktor pendorong berupa insentif pajak pemerintah, dan tantangan penyimpanan energi yang belum terselesaikan.

**Ditanya:** Jenis paragraf tersebut dan alasannya.

**Jawab:** Kalimat pertama adalah pernyataan umum yang menjadi kalimat utama. Tiga kalimat berikutnya masing-masing menjelaskan sisi berbeda dari peningkatan itu: data pertumbuhan kapasitas panel surya (kalimat kedua), faktor pendorong berupa insentif pemerintah (kalimat ketiga), dan tantangan yang masih ada (kalimat keempat). Karena ketiganya adalah kalimat penjelas kompleks yang memerinci gagasan umum di kalimat pertama, dan tidak ada kalimat penegasan ulang di akhir, paragraf ini termasuk paragraf deduktif. Jadi jawabannya adalah B.', 1),
('b0000000-0000-4000-8000-060300000000', 'Paragraf Induktif', '**Definisi:** Paragraf induktif adalah paragraf yang kalimat utamanya diletakkan di AKHIR paragraf. Kalimat-kalimat di awal berisi rincian, fakta, contoh, atau data-data khusus, kemudian ditutup dengan satu kalimat yang menyimpulkan semua hal khusus itu menjadi satu pernyataan umum (khusus -> umum).

**Cara Kerja / Langkah Pengerjaan:**
1. Baca kalimat-kalimat awal paragraf, kenali apakah berisi rincian, fakta, data, atau contoh yang bersifat khusus.
2. Cari kalimat terakhir yang berfungsi merangkum seluruh rincian tersebut menjadi satu pernyataan umum.
3. Perhatikan kata-kata penanda simpulan di kalimat terakhir seperti "jadi", "oleh karena itu", "dengan demikian", "maka dari itu", atau "sehingga".
4. Jika rincian yang dipaparkan di awal lebih dari satu jenis atau kompleks, cari benang merah yang menyatukan semuanya sebelum sampai ke kalimat simpulan.
5. Jika kata penanda simpulan justru muncul di TENGAH paragraf, diapit kalimat pengantar dan penegasan, kenali itu sebagai variasi ineratif, bukan induktif murni.

**Rumus & Poin Kunci:**
- Pola induktif: khusus -> umum; kalimat utama adalah kalimat terakhir.
- Penanda simpulan khas: "jadi", "oleh karena itu", "dengan demikian", "maka dari itu", "sehingga".
- Kalimat penjelas sebelum simpulan bisa berupa rangkaian data/statistik atau beberapa fakta khusus berbeda jenis yang semuanya mengarah ke satu simpulan di akhir.
- Paragraf ineratif: kalimat utama berada di TENGAH, diapit kalimat pengantar dan penegasan -- jarang muncul tetapi tetap perlu diwaspadai.

**Kesalahan Umum / Jebakan:**
- Menganggap kalimat pertama sebagai kalimat utama hanya karena posisinya di awal, padahal pada paragraf induktif kalimat pertama hanyalah salah satu rincian pendukung.
- Salah mengira paragraf ineratif sebagai induktif karena sama-sama memuat "penanda simpulan", padahal letak kalimat utamanya berbeda (tengah, bukan akhir).

**Tips cara cepat**: kalau kamu menemukan kata penanda simpulan di kalimat terakhir, hampir pasti itulah kalimat utama sekaligus penanda bahwa paragraf tersebut berjenis induktif. Jika penanda simpulan justru muncul di tengah paragraf, kemungkinan besar itu adalah paragraf ineratif, bukan induktif murni.

**Kesimpulan:** Paragraf induktif dikenali dari kalimat simpulan berpenanda khas di akhir paragraf yang merangkum kalimat-kalimat khusus sebelumnya.

**Contoh Soal:** "Sejumlah sekolah negeri di wilayah perkotaan mencatat penurunan rata-rata nilai ujian matematika siswa kelas akhir sebesar 7 poin dibandingkan lima tahun sebelumnya. Survei internal juga menunjukkan waktu belajar mandiri siswa di rumah berkurang lebih dari 40 persen akibat meningkatnya penggunaan gawai untuk hiburan. Selain itu, jumlah siswa yang mengikuti bimbingan belajar tambahan di luar sekolah justru menurun karena keterbatasan biaya orang tua. Dengan demikian, penurunan capaian matematika tersebut tidak bisa dilepaskan dari kombinasi berkurangnya waktu belajar mandiri dan minimnya akses bimbingan tambahan." Tentukan letak kalimat utama paragraf tersebut dan jelaskan alasannya.

- A. Awal paragraf, karena kalimat pertama sudah merangkum keseluruhan isi paragraf
- B. Tengah paragraf, karena kalimat utama diapit oleh kalimat pengantar dan penegasan
- C. Akhir paragraf, karena kalimat terakhir merangkum seluruh fakta khusus yang dipaparkan sebelumnya
- D. Awal dan akhir paragraf sekaligus, karena gagasan yang sama diulang dua kali
- E. Tidak ada kalimat utama, karena seluruh kalimat bersifat setara tanpa simpulan

**Pembahasan:**

**Diketahui:** Tiga kalimat pertama memaparkan fakta dan data khusus yang berbeda-beda: penurunan nilai ujian, berkurangnya waktu belajar mandiri, dan menurunnya partisipasi bimbingan belajar. Kalimat terakhir diawali penanda simpulan "Dengan demikian".

**Ditanya:** Letak kalimat utama paragraf tersebut dan alasannya.

**Jawab:** Kalimat terakhir yang diawali penanda simpulan "Dengan demikian," merangkai ketiga fakta khusus tersebut menjadi satu pernyataan umum tentang penyebab penurunan capaian matematika. Karena kalimat utama berada di akhir dan merupakan hasil rangkuman dari beberapa kalimat penjelas kompleks di awal, paragraf ini termasuk paragraf induktif dengan kalimat utama di akhir paragraf. Jadi jawabannya adalah C.', 2),
('b0000000-0000-4000-8000-060300000000', 'Paragraf Campuran', '**Definisi:** Paragraf campuran (kadang disebut deduktif-induktif) adalah paragraf yang kalimat utamanya muncul di AWAL paragraf, kemudian di bagian akhir paragraf gagasan yang sama ditegaskan kembali dengan kalimat yang senada atau merupakan simpulan dari kalimat awal tadi.

**Cara Kerja / Langkah Pengerjaan:**
1. Baca kalimat pertama, tentukan gagasan umum yang disampaikan.
2. Baca kalimat terakhir, periksa apakah gagasannya senada atau merupakan simpulan dari kalimat pertama.
3. Periksa kalimat-kalimat di tengah, pastikan fungsinya sebagai penjelas pendukung (data, contoh berlapis, argumen tambahan), bukan gagasan baru.
4. Bandingkan dengan ciri paragraf ineratif: jika gagasan utama hanya muncul SATU kali di tengah paragraf (bukan di dua titik, awal dan akhir), maka paragraf tersebut bukan paragraf campuran.

**Rumus & Poin Kunci:**
- Ciri utama paragraf campuran: gagasan utama muncul DUA kali -- di awal sebagai pembuka, di akhir sebagai penegasan.
- Penegasan di akhir tidak harus identik kata-katanya, cukup senada secara makna meski disampaikan dengan diksi berbeda.
- Kalimat-kalimat di tengah bisa memuat data pendukung, contoh berlapis, atau argumen tambahan yang memperkuat gagasan utama dari berbagai sisi.

**Kesalahan Umum / Jebakan:**
- Mengira paragraf campuran hanya karena kalimat terakhir "terasa seperti simpulan", padahal jika kalimat pertama bukan gagasan umum yang sama, paragraf itu sebenarnya induktif biasa.
- Tertukar dengan paragraf ineratif karena sama-sama memiliki penegasan, padahal ineratif hanya punya SATU kalimat utama di tengah, bukan dua kalimat senada di awal dan akhir.

**Tips cara cepat**: jika kalimat pertama dan kalimat terakhir paragraf isinya senada atau saling menegaskan (bukan sekadar penjelas), maka itu tandanya paragraf campuran, bukan murni deduktif atau induktif. Bedakan juga dengan paragraf ineratif yang kalimat utamanya hanya satu dan terletak di tengah, bukan di dua titik (awal & akhir).

**Kesimpulan:** Paragraf campuran ditandai gagasan utama yang muncul dua kali, di awal dan ditegaskan lagi di akhir, dengan kalimat penjelas di tengah.

**Contoh Soal:** "Pengelolaan sampah organik rumah tangga memiliki peran penting dalam mengurangi beban tempat pembuangan akhir. Warga dapat mengolah sisa makanan menjadi kompos menggunakan komposter sederhana yang mudah dibuat sendiri. Selain mengurangi volume sampah, kompos yang dihasilkan juga bisa dimanfaatkan untuk menyuburkan tanaman di pekarangan rumah. Beberapa komunitas bahkan menjadikan hasil kompos sebagai produk yang bernilai ekonomis untuk dijual. Oleh karena itu, pengelolaan sampah organik rumah tangga sesungguhnya membawa manfaat ganda, baik bagi lingkungan maupun bagi perekonomian warga." Paragraf tersebut termasuk paragraf campuran karena...

- A. Kalimat utama hanya muncul satu kali di tengah paragraf, diapit kalimat pengantar dan penegasan
- B. Gagasan bahwa pengelolaan sampah organik membawa manfaat ganda disampaikan di awal dan ditegaskan kembali di akhir paragraf
- C. Seluruh kalimat dalam paragraf bersifat khusus tanpa ada satu kalimat pun yang bersifat umum
- D. Paragraf tersebut tidak memiliki kalimat penjelas sama sekali di bagian tengah
- E. Kalimat utama hanya terdapat di akhir paragraf tanpa ada gagasan senada di bagian awal

**Pembahasan:**

**Diketahui:** Kalimat pertama menyatakan gagasan umum bahwa pengelolaan sampah organik "memiliki peran penting dalam mengurangi beban tempat pembuangan akhir". Tiga kalimat di tengah menjelaskan cara (komposter sederhana), manfaat lingkungan (menyuburkan tanaman), dan manfaat ekonomi (dijual) secara berlapis. Kalimat terakhir menyatakan pengelolaan sampah organik membawa "manfaat ganda, baik bagi lingkungan maupun bagi perekonomian warga".

**Ditanya:** Alasan paragraf tersebut termasuk paragraf campuran.

**Jawab:** Kalimat terakhir menegaskan kembali gagasan awal dengan diksi berbeda namun makna senada dengan kalimat pertama. Karena gagasan utama muncul di awal dan ditegaskan kembali di akhir dengan kalimat-kalimat penjelas kompleks di tengah, paragraf ini termasuk paragraf campuran. Jadi jawabannya adalah B.', 3),
('b0000000-0000-4000-8000-060300000000', 'Ide Pokok dan Kalimat Utama', '**Definisi:** Ide pokok adalah inti atau gagasan utama yang menjadi pusat pembahasan seluruh paragraf atau wacana. Kalimat utama adalah kalimat yang secara eksplisit memuat ide pokok tersebut.

**Cara Kerja / Langkah Pengerjaan:**
1. Cari kalimat yang paling umum dan bisa "menaungi" semua kalimat lain di paragraf tersebut.
2. Jika ditemukan, tandai kalimat itu sebagai kalimat utama -- ide pokoknya bersifat TERSURAT.
3. Jika tidak ada satu kalimat pun yang eksplisit merangkum keseluruhan isi (semua kalimat tampak setara/deskriptif), rumuskan sendiri benang merah dari seluruh kalimat -- ide pokok ini bersifat TERSIRAT.
4. Pastikan simpulan ide pokok tersirat yang kamu rumuskan didukung oleh SELURUH kalimat dalam paragraf, bukan hanya sebagian.
5. Cocokkan hasil rumusanmu dengan opsi jawaban yang paling merepresentasikan benang merah tersebut, tanpa menambah informasi yang tidak ada di teks.

**Rumus & Poin Kunci:**
- Ide pokok tersurat: ditemukan langsung dalam satu kalimat utama yang eksplisit (seperti pada paragraf deduktif, induktif, campuran, atau ineratif).
- Ide pokok tersirat: muncul pada paragraf naratif/deskriptif yang seluruh kalimatnya setara tanpa ada satu kalimat pun yang secara eksplisit merangkum keseluruhan isi -- misalnya paragraf "Hujan mengguyur kota sejak pagi. Jalan-jalan protokol tergenang air setinggi mata kaki. Sejumlah kendaraan mogok di tengah jalan. Aktivitas warga menuju tempat kerja pun terhambat," yang ide pokoknya harus dirumuskan sendiri, misalnya "hujan deras menyebabkan gangguan aktivitas warga kota", meskipun kalimat itu tidak tertulis secara harfiah.
- Letak kalimat utama tersurat bisa di awal (deduktif), akhir (induktif), awal & dipertegas di akhir (campuran), atau tengah (ineratif).

**Kesalahan Umum / Jebakan:**
- Memaksakan pencarian "kalimat utama" pada paragraf yang ide pokoknya sebenarnya tersirat, sehingga keliru menunjuk salah satu kalimat rincian sebagai kalimat utama.
- Merumuskan ide pokok tersirat hanya berdasarkan satu kalimat saja (bukan benang merah seluruh paragraf), sehingga simpulannya tidak didukung penuh oleh teks.

**Tips cara cepat**: untuk menemukan ide pokok, cari kalimat yang paling umum dan bisa "menaungi" semua kalimat lain di paragraf itu (kalimat lain hanya menjadi penjelas/pendukungnya). Jika tidak ada kalimat yang eksplisit memuat gagasan utama, ide pokok harus disimpulkan sendiri dari keseluruhan isi paragraf (ide pokok tersirat), dan simpulan itu tetap harus didukung oleh seluruh kalimat dalam paragraf, bukan sekadar tebakan berdasarkan satu kalimat saja.

**Kesimpulan:** Ide pokok adalah gagasan inti wacana yang bisa tersurat lewat kalimat utama eksplisit atau tersirat dan harus disimpulkan sendiri dari keseluruhan paragraf.

**Contoh Soal:** "Ratusan siswa di daerah terpencil harus menempuh jarak lebih dari 10 kilometer setiap hari untuk mencapai sekolah terdekat. Sebagian dari mereka terpaksa menyeberangi sungai tanpa jembatan permanen saat musim hujan tiba. Beberapa siswa bahkan memilih untuk tidak masuk sekolah ketika akses jalan terputus akibat longsor. Pihak sekolah pun kesulitan menjaga kehadiran siswa secara konsisten sepanjang tahun ajaran." Ide pokok paragraf tersebut adalah...

- A. Ratusan siswa di daerah terpencil harus berjalan kaki lebih dari 10 kilometer setiap hari
- B. Sungai tanpa jembatan permanen adalah penyebab utama seluruh siswa putus sekolah
- C. Longsor merupakan bencana yang paling sering terjadi di daerah terpencil
- D. Keterbatasan akses menuju sekolah di daerah terpencil menghambat pendidikan siswa
- E. Pihak sekolah tidak pernah berupaya menjaga kehadiran siswa

**Pembahasan:**

**Diketahui:** Paragraf ini tidak memiliki satu kalimat pun yang secara eksplisit merangkum keseluruhan isi. Keempat kalimat sama-sama memaparkan fakta khusus mengenai kesulitan akses siswa menuju sekolah: jarak jauh, menyeberangi sungai, akses terputus akibat longsor, dan kehadiran tidak konsisten.

**Ditanya:** Ide pokok paragraf tersebut, tersurat atau tersirat.

**Jawab:** Karena tidak ada kalimat eksplisit yang merangkum keseluruhan isi, ide pokok paragraf ini bersifat tersirat. Benang merah dari seluruh fakta khusus tersebut adalah bahwa keterbatasan akses transportasi di daerah terpencil menghambat pendidikan siswa, sehingga ide pokok paragraf ini dapat dirumuskan sebagai "keterbatasan akses menuju sekolah di daerah terpencil menghambat pendidikan siswa", meskipun kalimat tersebut tidak tertulis secara harfiah di dalam paragraf. Jadi jawabannya adalah D.', 4),
('b0000000-0000-4000-8000-060300000000', 'Mencari yang Salah atau Benar', '**Definisi:** Jenis soal ini memberikan sebuah wacana atau paragraf singkat, lalu meminta kamu menentukan pernyataan mana di antara pilihan jawaban yang SESUAI (benar) atau yang TIDAK SESUAI (salah) dengan isi wacana tersebut.

**Cara Kerja / Langkah Pengerjaan:**
1. Baca pertanyaan dan seluruh opsi jawaban terlebih dahulu, supaya kamu tahu detail apa saja yang perlu dicocokkan saat membaca wacana.
2. Baca wacana dengan teliti, catat fakta-fakta spesifik (angka, cakupan, syarat, urutan waktu) yang disebutkan.
3. Cocokkan setiap opsi satu per satu ke kalimat-kalimat di wacana.
4. Eliminasi opsi yang memutarbalikkan fakta, membesar-besarkan cakupan (overgeneralisasi), atau menambahkan informasi yang tidak ada di teks.
5. Untuk soal level lanjutan, pilah dulu mana pernyataan yang tergolong FAKTA, OPINI, atau ASUMSI dalam wacana sebelum menjawab.

**Rumus & Poin Kunci:**
- Jawaban harus murni berdasarkan apa yang tertulis atau bisa disimpulkan langsung dari teks, bukan asumsi atau pengetahuan pribadi.
- FAKTA: hal yang dapat dibuktikan/diukur dan memang tertulis di teks.
- OPINI: penilaian atau pendapat, biasanya ditandai kata seperti "sebaiknya", "seharusnya", "menurut", atau kata sifat subjektif.
- ASUMSI: simpulan yang dianggap benar oleh penulis tanpa dinyatakan secara eksplisit.

**Kesalahan Umum / Jebakan:**
- Overgeneralisasi: opsi membesar-besarkan informasi yang sebenarnya terbatas di teks (teks bilang "sebagian"/"beberapa", opsi menulis "semua"/"seluruh"/"selalu"/"tidak pernah"/"pasti").
- Informasi di luar teks: opsi memuat pernyataan yang masuk akal atau bahkan benar secara faktual di dunia nyata, tetapi TIDAK disebutkan sama sekali di wacana -- terasa "benar" karena sesuai pengetahuan umum, padahal tidak tertulis.
- Terburu-buru memilih opsi yang "terdengar benar secara umum" tanpa mencocokkannya kalimat per kalimat ke teks.

**Tips cara cepat**: baca pertanyaan dan seluruh opsi jawaban terlebih dahulu sebelum membaca ulang wacana, supaya kamu tahu detail apa saja yang perlu dicocokkan. Lalu cocokkan setiap opsi satu per satu ke kalimat-kalimat di wacana; opsi yang memutarbalikkan fakta, membesar-besarkan, atau menambah informasi yang tidak ada di teks harus dieliminasi. Waspadai juga opsi yang overgeneralisasi (membesar-besarkan cakupan info) dan opsi berisi informasi di luar teks (benar secara umum tapi tidak disebutkan di wacana) -- keduanya adalah jebakan paling umum di level lanjutan.

**Kesimpulan:** Jawaban soal jenis ini harus murni berdasarkan teks, dengan mewaspadai jebakan overgeneralisasi dan informasi di luar teks.

**Contoh Soal:** "Sejumlah perusahaan rintisan di bidang teknologi finansial mulai menerapkan sistem kerja hybrid sejak dua tahun terakhir. Sebagian karyawan diperbolehkan bekerja dari rumah selama tiga hari dalam seminggu, sementara dua hari lainnya tetap wajib hadir di kantor untuk rapat koordinasi. Kebijakan ini diklaim meningkatkan produktivitas pada beberapa tim pengembang produk, meskipun tim layanan pelanggan tetap diwajibkan hadir penuh di kantor setiap hari." Manakah pernyataan yang PALING SESUAI dengan isi paragraf tersebut?

- A. Seluruh perusahaan teknologi finansial menerapkan sistem kerja hybrid
- B. Sistem kerja hybrid terbukti secara ilmiah lebih efektif dibanding kerja penuh di kantor
- C. Tim layanan pelanggan tetap diwajibkan hadir penuh di kantor setiap hari
- D. Karyawan diperbolehkan bekerja dari rumah setiap hari dalam seminggu
- E. Kebijakan kerja hybrid tersebut sudah diterapkan sejak lebih dari sepuluh tahun terakhir

**Pembahasan:**

**Diketahui:** Wacana menyebutkan sejumlah perusahaan rintisan teknologi finansial menerapkan kerja hybrid sejak dua tahun terakhir, karyawan bekerja dari rumah tiga hari dan wajib hadir dua hari, produktivitas meningkat pada beberapa tim pengembang produk, dan tim layanan pelanggan tetap wajib hadir penuh setiap hari.

**Ditanya:** Pernyataan yang paling sesuai dengan isi paragraf.

**Jawab:** Opsi "seluruh perusahaan teknologi finansial menerapkan sistem kerja hybrid" merupakan jebakan overgeneralisasi karena teks hanya menyebutkan "sejumlah perusahaan rintisan", bukan seluruh perusahaan. Opsi "sistem kerja hybrid terbukti secara ilmiah lebih efektif dibanding kerja penuh di kantor" merupakan jebakan informasi di luar teks karena wacana hanya menyebutkan klaim peningkatan produktivitas pada "beberapa tim pengembang produk", bukan pembuktian ilmiah secara umum. Opsi tentang karyawan bekerja dari rumah setiap hari dan opsi tentang kebijakan sudah berjalan lebih dari sepuluh tahun juga memutarbalikkan data (seharusnya tiga hari dan dua tahun). Pernyataan yang paling sesuai adalah yang sejalan persis dengan teks, yaitu "tim layanan pelanggan tetap diwajibkan hadir penuh di kantor setiap hari", karena kalimat ini mengutip langsung informasi yang tertulis tanpa membesar-besarkan atau menambah cakupan. Jadi jawabannya adalah C.', 5),
('b0000000-0000-4000-8000-060300000000', 'Sinonim atau Antonim Kata dalam Konteks Wacana', '**Definisi:** Selain soal struktur paragraf, wacana juga sering dipakai untuk menguji pemahaman makna kata secara kontekstual, yaitu mencari sinonim (persamaan makna) atau antonim (lawan makna) dari sebuah kata yang digarisbawahi atau dicetak tebal di dalam wacana.

**Cara Kerja / Langkah Pengerjaan:**
1. Temukan kata yang ditanyakan, lalu baca kalimat tempat kata itu berada beserta kalimat-kalimat di sekitarnya.
2. Tentukan topik atau bidang pembahasan keseluruhan wacana (misalnya perbankan, kesehatan, pendidikan, dan sebagainya).
3. Pertimbangkan apakah kata tersebut bersifat polisemi, yaitu memiliki lebih dari satu makna.
4. Pilih makna yang konsisten dengan topik/bidang pembahasan wacana, bukan makna pertama yang terlintas di pikiran atau makna paling umum sehari-hari.
5. Cocokkan makna yang telah ditentukan dengan opsi jawaban yang paling pas menggantikan (sinonim) atau melawan (antonim) makna kata tersebut tanpa mengubah maksud kalimat.

**Rumus & Poin Kunci:**
- Banyak kata dalam bahasa Indonesia bersifat polisemi, contohnya kata "bisa" (mampu/dapat vs racun), "buku" (kitab bacaan vs ruas pada batang tebu/bambu), "genap" (lengkap/cukup vs bilangan yang habis dibagi dua).
- Makna kata dalam wacana ditentukan oleh konteks kalimat di sekitarnya, bukan makna kamus yang berdiri sendiri.

**Kesalahan Umum / Jebakan:**
- Langsung memilih sinonim/antonim dari makna kata yang paling populer atau paling sering dipakai sehari-hari, tanpa mengecek kecocokannya dengan konteks kalimat.
- Terkecoh oleh opsi yang merupakan makna lain dari kata polisemi tersebut -- benar secara kamus, tetapi salah konteks pada wacana yang sedang dibahas.

**Tips cara cepat**: jangan langsung memilih sinonim/antonim yang paling umum dari kamus. Baca dulu kalimat di sekitar kata tersebut untuk memastikan makna yang dimaksud dalam konteks itu, baru cocokkan dengan pilihan jawaban yang paling pas menggantikan atau melawan makna kata tersebut tanpa mengubah maksud kalimat. Untuk kata yang polisemi (bermakna ganda), utamakan makna yang konsisten dengan topik/bidang pembahasan seluruh kalimat, bukan makna yang pertama kali terlintas di pikiran.

**Kesimpulan:** Makna kata dalam wacana harus ditentukan berdasarkan konteks kalimat, terutama untuk kata polisemi yang punya lebih dari satu makna.

**Contoh Soal:** "Bank sentral menaikkan suku bunga acuan untuk menekan laju inflasi yang terus meningkat dalam beberapa bulan terakhir. Kebijakan ini diharapkan dapat menahan derasnya arus kredit konsumtif yang selama ini mendorong kenaikan harga barang. Meski demikian, sejumlah pelaku usaha kecil mengeluhkan biaya pinjaman modal yang semakin tinggi akibat kenaikan bunga tersebut." Makna kata "bunga" pada paragraf tersebut adalah...

- A. Tumbuhan yang memiliki kelopak dan mahkota berwarna-warni
- B. Hiasan yang biasa dipakai dalam upacara adat
- C. Imbalan atau biaya atas pinjaman/simpanan uang
- D. Bagian tanaman yang akan berkembang menjadi buah
- E. Istilah dalam sastra untuk menggambarkan keindahan bahasa

**Pembahasan:**

**Diketahui:** Kata "bunga" bersifat polisemi karena bisa bermakna "tumbuhan berbunga" atau "imbalan/biaya atas pinjaman uang (persentase bunga bank)". Konteks kalimat dalam paragraf membahas "suku bunga acuan", "arus kredit", dan "biaya pinjaman modal".

**Ditanya:** Makna kata "bunga" pada paragraf tersebut dan alasannya.

**Jawab:** Seluruh konteks kalimat berkaitan dengan dunia perbankan dan keuangan, bukan tumbuhan. Oleh karena itu, makna kata "bunga" dalam wacana ini adalah imbalan atau biaya atas pinjaman/simpanan uang, bukan bermakna tumbuhan berbunga sama sekali. Jadi jawabannya adalah C.', 6);

update chapters set mindmap = '# Wacana
## Paragraf Deduktif
- Kalimat utama di AWAL
- Pola umum -> khusus
- Kalimat berikutnya merinci/mencontohkan
## Paragraf Induktif
- Kalimat utama di AKHIR
- Pola khusus -> umum
- Penanda: "jadi", "oleh karena itu", "dengan demikian"
## Paragraf Campuran
- Kalimat utama di awal, ditegaskan lagi di akhir
- Kalimat tengah sebagai penjelas
## Ide Pokok & Kalimat Utama
- Ide pokok: inti seluruh wacana (tersurat/tersirat)
- Kalimat utama: kalimat yang memuat ide pokok
- Kalimat lain menjadi penjelas/pendukung
## Mencari yang Salah/Benar
- Cocokkan opsi dengan isi wacana, bukan asumsi
- Baca pertanyaan & opsi dulu sebelum membaca ulang teks
## Sinonim/Antonim dalam Konteks
- Makna kata menyesuaikan konteks kalimat
- Jangan pakai makna kamus paling umum begitu saja' where id = 'b0000000-0000-4000-8000-060300000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Pendidikan berbasis teknologi digital kini semakin diminati di berbagai jenjang sekolah. Guru dapat memanfaatkan aplikasi pembelajaran untuk memberi tugas dan menilai siswa secara daring. Siswa pun bisa mengakses materi pelajaran kapan saja melalui perangkat masing-masing. Bahkan, beberapa sekolah telah menyediakan kelas virtual sebagai pengganti tatap muka saat diperlukan."

Paragraf tersebut termasuk jenis paragraf...', 'Induktif', 'Deduktif', 'Campuran', 'Naratif', 'Deskriptif tanpa kalimat utama', 'B', 'Kalimat pertama, "Pendidikan berbasis teknologi digital kini semakin diminati di berbagai jenjang sekolah," merupakan pernyataan umum yang menjadi kalimat utama, sedangkan kalimat-kalimat berikutnya hanya merinci contoh penerapannya. Pola umum -> khusus ini menandakan paragraf deduktif.', 'easy', 1),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Pendidikan berbasis teknologi digital kini semakin diminati di berbagai jenjang sekolah. Guru dapat memanfaatkan aplikasi pembelajaran untuk memberi tugas dan menilai siswa secara daring. Siswa pun bisa mengakses materi pelajaran kapan saja melalui perangkat masing-masing. Bahkan, beberapa sekolah telah menyediakan kelas virtual sebagai pengganti tatap muka saat diperlukan."

Pernyataan berikut yang PALING SESUAI dengan isi paragraf adalah...', 'Seluruh sekolah di Indonesia sudah sepenuhnya beralih ke kelas virtual', 'Siswa hanya dapat mengakses materi pelajaran di sekolah pada jam belajar', 'Guru dapat memberi tugas dan menilai siswa secara daring melalui aplikasi pembelajaran', 'Kelas virtual menggantikan seluruh kegiatan tatap muka secara permanen', 'Teknologi digital menurunkan minat siswa terhadap pendidikan', 'C', 'Paragraf secara eksplisit menyatakan "Guru dapat memanfaatkan aplikasi pembelajaran untuk memberi tugas dan menilai siswa secara daring." Opsi lain melebih-lebihkan atau memutarbalikkan isi teks, misalnya kelas virtual hanya disebut sebagai pengganti "saat diperlukan", bukan permanen atau menyeluruh.', 'medium', 2),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Transformasi layanan kesehatan berbasis aplikasi digital telah mengubah pola interaksi antara pasien dan tenaga medis dalam lima tahun terakhir. Sejumlah rumah sakit mencatat rata-rata waktu tunggu konsultasi berkurang hingga 60 persen setelah menyediakan layanan konsultasi video bagi pasien dengan keluhan ringan. Di samping itu, sistem pengiriman resep elektronik ke apotek mitra memangkas waktu pengambilan obat dari rata-rata 45 menit menjadi kurang dari 15 menit. Integrasi hasil laboratorium ke dalam aplikasi juga memungkinkan pasien memantau perkembangan kondisi kesehatannya tanpa harus kembali mengunjungi fasilitas kesehatan."

Paragraf tersebut termasuk jenis paragraf...', 'Induktif, karena kalimat terakhir merangkum seluruh data yang dipaparkan sebelumnya', 'Deduktif, karena kalimat pertama berupa pernyataan umum yang diikuti kalimat-kalimat penjelas berisi data pendukung', 'Campuran, karena gagasan pada kalimat pertama ditegaskan kembali secara eksplisit pada kalimat terakhir', 'Ineratif, karena kalimat utama berada di tengah paragraf', 'Naratif tanpa kalimat utama, karena paragraf hanya memaparkan data secara acak', 'B', 'Kalimat pertama, "Transformasi layanan kesehatan berbasis aplikasi digital telah mengubah pola interaksi antara pasien dan tenaga medis dalam lima tahun terakhir," adalah pernyataan umum yang menjadi kalimat utama. Tiga kalimat berikutnya masing-masing memberi data pendukung (waktu tunggu konsultasi, waktu pengambilan obat, integrasi hasil laboratorium) yang memperkuat gagasan itu dari sisi berbeda, dan kalimat terakhir bukan pengulangan gagasan pembuka melainkan salah satu rincian tambahan, sehingga paragraf ini tetap tergolong deduktif, bukan campuran. Jadi jawabannya adalah B.', 'medium', 3),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Transformasi layanan kesehatan berbasis aplikasi digital telah mengubah pola interaksi antara pasien dan tenaga medis dalam lima tahun terakhir. Sejumlah rumah sakit mencatat rata-rata waktu tunggu konsultasi berkurang hingga 60 persen setelah menyediakan layanan konsultasi video bagi pasien dengan keluhan ringan. Di samping itu, sistem pengiriman resep elektronik ke apotek mitra memangkas waktu pengambilan obat dari rata-rata 45 menit menjadi kurang dari 15 menit. Integrasi hasil laboratorium ke dalam aplikasi juga memungkinkan pasien memantau perkembangan kondisi kesehatannya tanpa harus kembali mengunjungi fasilitas kesehatan."

Manakah pernyataan yang PALING SESUAI dengan isi paragraf tersebut?', 'Seluruh rumah sakit telah menghapus layanan konsultasi tatap muka bagi semua pasien', 'Waktu pengambilan obat rata-rata berkurang dari 45 menit menjadi kurang dari 15 menit setelah penerapan resep elektronik', 'Konsultasi video hanya tersedia untuk pasien dengan keluhan berat yang memerlukan rawat inap', 'Integrasi hasil laboratorium ke aplikasi terbukti secara ilmiah meningkatkan angka kesembuhan pasien', 'Waktu tunggu konsultasi meningkat drastis akibat penggunaan aplikasi digital', 'B', 'Pernyataan ini sesuai persis dengan teks: "sistem pengiriman resep elektronik ke apotek mitra memangkas waktu pengambilan obat dari rata-rata 45 menit menjadi kurang dari 15 menit." Opsi A overgeneralisasi karena teks hanya menyebut "sejumlah rumah sakit" dan hanya untuk pasien "keluhan ringan", bukan seluruh rumah sakit dan semua pasien. Opsi C bertentangan karena video justru untuk keluhan ringan, bukan keluhan berat/rawat inap. Opsi D merupakan informasi di luar teks karena tidak ada klaim ilmiah soal angka kesembuhan. Opsi E bertentangan langsung karena waktu tunggu justru berkurang, bukan meningkat. Jadi jawabannya adalah B.', 'hard', 4),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Berkebun di lahan sempit perkotaan kini menjadi solusi populer untuk memenuhi kebutuhan sayuran segar. Warga dapat memanfaatkan pot, polybag, atau rak vertikal untuk menanam sayuran di halaman rumah yang terbatas. Selain menghemat pengeluaran belanja, kegiatan ini juga membantu mengurangi limbah organik rumah tangga karena bisa diolah menjadi kompos. Kegiatan berkebun semacam ini pun turut mempererat interaksi sosial antarwarga melalui kelompok tani perkotaan."

Paragraf tersebut termasuk jenis paragraf...', 'Induktif', 'Campuran', 'Naratif', 'Persuasif tanpa kalimat utama', 'Deduktif', 'E', 'Kalimat pertama menyampaikan gagasan umum bahwa berkebun di lahan sempit perkotaan menjadi solusi populer, sedangkan kalimat-kalimat berikutnya merinci cara (pot, polybag, rak vertikal) dan manfaatnya (menghemat pengeluaran, mengurangi limbah, mempererat interaksi sosial). Pola umum -> khusus ini menandakan paragraf deduktif.', 'easy', 5);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Berkebun di lahan sempit perkotaan kini menjadi solusi populer untuk memenuhi kebutuhan sayuran segar. Warga dapat memanfaatkan pot, polybag, atau rak vertikal untuk menanam sayuran di halaman rumah yang terbatas. Selain menghemat pengeluaran belanja, kegiatan ini juga membantu mengurangi limbah organik rumah tangga karena bisa diolah menjadi kompos. Kegiatan berkebun semacam ini pun turut mempererat interaksi sosial antarwarga melalui kelompok tani perkotaan."

Antonim atau lawan kata dari kata "sempit" pada kalimat pertama paragraf tersebut adalah...', 'Luas', 'Padat', 'Kecil', 'Terbatas', 'Rapat', 'A', 'Kata "sempit" berarti tidak luas atau memiliki ruang yang terbatas, sehingga lawan katanya adalah "luas". Pilihan lain seperti "padat", "kecil", "terbatas", atau "rapat" bukan lawan kata melainkan justru senada atau tidak relevan sebagai antonim.', 'hard', 6),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Studi yang dilakukan di beberapa kawasan pesisir menemukan bahwa lebih dari 70 persen sampah yang terdampar di garis pantai berupa plastik sekali pakai seperti kantong belanja dan kemasan makanan. Mikroplastik hasil pecahan sampah tersebut terdeteksi dalam saluran pencernaan sejumlah spesies ikan yang menjadi sumber konsumsi masyarakat pesisir. Proses penguraian plastik yang membutuhkan waktu ratusan tahun menyebabkan akumulasi sampah terus bertambah setiap tahunnya, jauh melampaui laju pembersihan yang dilakukan oleh petugas maupun sukarelawan. Oleh sebab itu, pengurangan penggunaan plastik sekali pakai perlu menjadi prioritas kebijakan lingkungan di kawasan pesisir."

Kalimat utama paragraf tersebut terletak di bagian...', 'Awal paragraf', 'Tengah paragraf', 'Akhir paragraf', 'Awal dan akhir paragraf sekaligus', 'Tidak ada kalimat utama dalam paragraf ini', 'C', 'Kalimat terakhir diawali frasa penanda simpulan "Oleh sebab itu," yang merangkum tiga fakta sebelumnya -- proporsi sampah plastik di garis pantai, temuan mikroplastik pada saluran pencernaan ikan, dan laju akumulasi sampah yang melampaui laju pembersihan -- menjadi satu simpulan kebijakan. Ini adalah ciri khas paragraf induktif, di mana kalimat utama berada di akhir.', 'medium', 7),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Studi yang dilakukan di beberapa kawasan pesisir menemukan bahwa lebih dari 70 persen sampah yang terdampar di garis pantai berupa plastik sekali pakai seperti kantong belanja dan kemasan makanan. Mikroplastik hasil pecahan sampah tersebut terdeteksi dalam saluran pencernaan sejumlah spesies ikan yang menjadi sumber konsumsi masyarakat pesisir. Proses penguraian plastik yang membutuhkan waktu ratusan tahun menyebabkan akumulasi sampah terus bertambah setiap tahunnya, jauh melampaui laju pembersihan yang dilakukan oleh petugas maupun sukarelawan. Oleh sebab itu, pengurangan penggunaan plastik sekali pakai perlu menjadi prioritas kebijakan lingkungan di kawasan pesisir."

Ide pokok paragraf tersebut adalah...', 'Ikan di kawasan pesisir sepenuhnya tidak layak dikonsumsi akibat mikroplastik', 'Petugas dan sukarelawan tidak pernah berhasil membersihkan sampah plastik di pesisir', 'Pengurangan penggunaan plastik sekali pakai perlu menjadi prioritas kebijakan lingkungan di kawasan pesisir', 'Mikroplastik hanya ditemukan pada satu spesies ikan tertentu di kawasan pesisir', 'Sampah plastik sekali pakai sudah sepenuhnya digantikan oleh bahan ramah lingkungan', 'C', 'Ide pokok paragraf induktif ini tercermin dari kalimat simpulan berpenanda "Oleh sebab itu," yaitu perlunya menjadikan pengurangan plastik sekali pakai sebagai prioritas kebijakan lingkungan pesisir, setelah dipaparkan data proporsi sampah plastik, temuan mikroplastik pada ikan, dan laju akumulasi yang melampaui pembersihan. Opsi lain overgeneralisasi (opsi A, B) atau memutar fakta detail dari teks (opsi D, E).', 'hard', 8),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sejumlah penelitian di bidang neurosains menunjukkan bahwa durasi tidur kurang dari enam jam per malam secara konsisten berkaitan dengan penurunan kemampuan mengambil keputusan yang melibatkan risiko finansial. Selain itu, kadar hormon kortisol yang berkaitan dengan stres cenderung lebih tinggi pada individu yang mengalami kurang tidur kronis dibandingkan mereka yang tidur cukup. Gangguan pola tidur dalam jangka panjang juga dikaitkan dengan peningkatan risiko gangguan metabolisme seperti resistensi insulin. Dengan demikian, menjaga durasi tidur yang cukup setiap malam berperan penting tidak hanya bagi kesehatan fisik, tetapi juga bagi kualitas pengambilan keputusan dan kestabilan emosi seseorang."

Kalimat utama paragraf tersebut terletak di bagian...', 'Awal paragraf', 'Tengah paragraf', 'Akhir paragraf', 'Awal dan akhir paragraf sekaligus', 'Tidak ada kalimat utama dalam paragraf ini', 'C', 'Kalimat terakhir diawali frasa penanda simpulan "Dengan demikian," yang merangkum tiga temuan sebelumnya -- kaitan kurang tidur dengan keputusan finansial berisiko, kadar kortisol yang lebih tinggi, dan risiko gangguan metabolisme -- menjadi satu simpulan umum. Ini adalah ciri khas paragraf induktif, di mana kalimat utama berada di akhir.', 'medium', 9),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sejumlah penelitian di bidang neurosains menunjukkan bahwa durasi tidur kurang dari enam jam per malam secara konsisten berkaitan dengan penurunan kemampuan mengambil keputusan yang melibatkan risiko finansial. Selain itu, kadar hormon kortisol yang berkaitan dengan stres cenderung lebih tinggi pada individu yang mengalami kurang tidur kronis dibandingkan mereka yang tidur cukup. Gangguan pola tidur dalam jangka panjang juga dikaitkan dengan peningkatan risiko gangguan metabolisme seperti resistensi insulin. Dengan demikian, menjaga durasi tidur yang cukup setiap malam berperan penting tidak hanya bagi kesehatan fisik, tetapi juga bagi kualitas pengambilan keputusan dan kestabilan emosi seseorang."

Ide pokok paragraf tersebut adalah...', 'Hormon kortisol hanya diproduksi oleh tubuh saat seseorang mengalami kurang tidur', 'Seluruh individu yang tidur cukup dipastikan bebas dari risiko gangguan metabolisme', 'Menjaga durasi tidur yang cukup penting bagi kesehatan fisik, kualitas pengambilan keputusan, dan kestabilan emosi', 'Resistensi insulin hanya dialami oleh individu yang bekerja di bidang neurosains', 'Kemampuan mengambil keputusan finansial tidak berkaitan sama sekali dengan durasi tidur', 'C', 'Kalimat simpulan berpenanda "Dengan demikian," merangkum tiga temuan (kaitan kurang tidur dengan keputusan finansial berisiko, kadar kortisol lebih tinggi, dan risiko gangguan metabolisme) menjadi satu pernyataan tentang pentingnya durasi tidur yang cukup bagi kesehatan fisik, kualitas pengambilan keputusan, dan kestabilan emosi. Opsi lain overgeneralisasi (opsi A, B) atau bertentangan langsung dengan isi teks (opsi D, E).', 'hard', 10),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Transformasi perpustakaan daerah dari sekadar tempat peminjaman buku menjadi ruang publik multifungsi menjadi tren yang berkembang pesat di berbagai kota. Fasilitas ruang baca ber-AC, akses internet berkecepatan tinggi, dan ruang diskusi kelompok kini menjadi standar layanan yang ditawarkan. Sejumlah perpustakaan bahkan mengadakan pelatihan menulis, bedah buku, hingga inkubasi bisnis kreatif bagi warga secara rutin setiap bulan. Beberapa di antaranya turut menjalin kerja sama dengan universitas setempat untuk menyelenggarakan riset kepustakaan bersama mahasiswa. Dengan berbagai fasilitas dan program tersebut, perpustakaan daerah kini benar-benar bertransformasi menjadi pusat kegiatan literasi dan kreativitas masyarakat yang lengkap, jauh melampaui fungsi awalnya sebagai tempat peminjaman buku semata."

Paragraf tersebut termasuk paragraf campuran karena...', 'Kalimat utama hanya muncul satu kali di tengah paragraf, diapit kalimat pengantar dan penegasan', 'Gagasan bahwa perpustakaan daerah bertransformasi menjadi pusat literasi dan kreativitas masyarakat disampaikan di awal dan ditegaskan kembali secara eksplisit di akhir paragraf', 'Kalimat terakhir hanya berfungsi sebagai simpulan tanpa ada gagasan senada di kalimat pembuka, sehingga tergolong induktif murni', 'Seluruh kalimat di tengah paragraf tidak memiliki kaitan dengan gagasan utama', 'Paragraf tidak memiliki kalimat penjelas sama sekali di bagian tengah', 'B', 'Kalimat pertama menyatakan transformasi perpustakaan "dari sekadar tempat peminjaman buku menjadi ruang publik multifungsi", lalu kalimat terakhir menegaskan kembali gagasan itu secara eksplisit dengan frasa senada "benar-benar bertransformasi menjadi pusat kegiatan literasi dan kreativitas masyarakat yang lengkap, jauh melampaui fungsi awalnya sebagai tempat peminjaman buku semata". Karena gagasan yang sama muncul di awal dan ditegaskan ulang di akhir (bukan sekadar simpulan tanpa gagasan senada di awal seperti opsi C), paragraf ini termasuk paragraf campuran. Jadi jawabannya adalah B.', 'hard', 11),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Digitalisasi arsip nasional dinilai sebagai langkah strategis dalam menjaga kelestarian dokumen bersejarah sekaligus mempermudah akses publik terhadap warisan budaya bangsa. Proses digitalisasi melibatkan pemindaian resolusi tinggi terhadap naskah kuno yang sebagian besar berusia lebih dari satu abad dan rentan mengalami kerusakan fisik akibat kelembapan maupun serangan mikroorganisme. Sejumlah pihak berpendapat bahwa anggaran untuk proyek ini semestinya bisa dialokasikan untuk kebutuhan lain yang dianggap lebih mendesak, meskipun data menunjukkan lebih dari 40 persen naskah yang telah didigitalkan mengalami kerusakan tak terpulihkan sebelum proses alih media dilakukan. Setelah proses digitalisasi rampung, publik dapat mengakses salinan digital naskah tersebut melalui portal daring tanpa perlu menyentuh dokumen fisik yang rapuh. Oleh karena itu, digitalisasi arsip nasional sesungguhnya bukan sekadar proyek teknis semata, melainkan upaya strategis menyelamatkan warisan budaya sekaligus memperluas akses publik terhadapnya."

Paragraf tersebut tergolong paragraf campuran karena...', 'Kalimat "Sejumlah pihak berpendapat bahwa anggaran ini semestinya dialokasikan untuk kebutuhan lain" merupakan kalimat utama karena memuat pandangan paling kuat dalam paragraf', 'Paragraf tersebut sebenarnya induktif murni karena kalimat terakhir diawali penanda simpulan "Oleh karena itu"', 'Gagasan bahwa digitalisasi arsip nasional merupakan langkah strategis menyelamatkan warisan budaya sekaligus memperluas akses publik disampaikan di kalimat pertama dan ditegaskan kembali di kalimat terakhir, sedangkan kalimat-kalimat di tengah -- termasuk satu kalimat berisi opini pihak yang kontra -- hanya berfungsi sebagai pendukung/kontras', 'Seluruh kalimat dalam paragraf bersifat opini sehingga tidak dapat digolongkan sebagai paragraf campuran', 'Paragraf tersebut tidak memiliki kalimat utama sama sekali karena mengandung pendapat yang saling bertentangan', 'C', 'Kalimat pertama menyampaikan gagasan bahwa digitalisasi arsip nasional adalah "langkah strategis dalam menjaga kelestarian dokumen bersejarah sekaligus mempermudah akses publik", dan kalimat terakhir menegaskan kembali gagasan senada bahwa digitalisasi adalah "upaya strategis menyelamatkan warisan budaya sekaligus memperluas akses publik". Kalimat "Sejumlah pihak berpendapat..." adalah OPINI kontra yang disisipkan sebagai kalimat penjelas/kontras di tengah, bukan kalimat utama, sehingga tidak mengubah struktur campuran paragraf tersebut meskipun ada penanda simpulan "Oleh karena itu" di kalimat terakhir. Jadi jawabannya adalah C.', 'hard', 12),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Digitalisasi arsip nasional dinilai sebagai langkah strategis dalam menjaga kelestarian dokumen bersejarah sekaligus mempermudah akses publik terhadap warisan budaya bangsa. Proses digitalisasi melibatkan pemindaian resolusi tinggi terhadap naskah kuno yang sebagian besar berusia lebih dari satu abad dan rentan mengalami kerusakan fisik akibat kelembapan maupun serangan mikroorganisme. Sejumlah pihak berpendapat bahwa anggaran untuk proyek ini semestinya bisa dialokasikan untuk kebutuhan lain yang dianggap lebih mendesak, meskipun data menunjukkan lebih dari 40 persen naskah yang telah didigitalkan mengalami kerusakan tak terpulihkan sebelum proses alih media dilakukan. Setelah proses digitalisasi rampung, publik dapat mengakses salinan digital naskah tersebut melalui portal daring tanpa perlu menyentuh dokumen fisik yang rapuh. Oleh karena itu, digitalisasi arsip nasional sesungguhnya bukan sekadar proyek teknis semata, melainkan upaya strategis menyelamatkan warisan budaya sekaligus memperluas akses publik terhadapnya."

Makna kata "media" dalam frasa "proses alih media" pada paragraf tersebut paling dekat dengan...', 'Alat komunikasi massa seperti televisi dan radio', 'Wahana atau sarana penyimpanan/penyampaian sesuatu', 'Lingkungan sosial tempat seseorang tumbuh dan berinteraksi', 'Nilai tengah dari sekumpulan data statistik', 'Perantara dalam negosiasi antara dua pihak yang berselisih', 'B', 'Frasa "proses alih media" dalam konteks digitalisasi arsip merujuk pada perpindahan wahana/sarana penyimpanan dokumen, dari naskah fisik ke format digital. Kata "media" pada konteks ini bukan bermakna media massa (opsi A), lingkungan sosial (opsi C), nilai tengah statistik/median (opsi D), atau mediator/perantara sengketa (opsi E), melainkan wahana/sarana penyimpanan atau penyampaian sesuatu. Jadi jawabannya adalah B.', 'hard', 13),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sebuah kajian yang dilakukan terhadap 500 pekerja di sektor manufaktur menemukan bahwa penerapan sistem shift empat hari kerja dengan jam kerja lebih panjang per hari menghasilkan tingkat kelelahan yang secara statistik tidak berbeda signifikan dibandingkan sistem lima hari kerja konvensional. Sebagian manajer perusahaan berpendapat bahwa sistem empat hari kerja sebaiknya diterapkan secara permanen karena dianggap dapat meningkatkan kepuasan kerja karyawan. Namun demikian, data kajian tersebut hanya mengukur tingkat kelelahan fisik dan belum mencakup dampak jangka panjang terhadap produktivitas maupun kesehatan mental pekerja. Perusahaan yang menjadi objek kajian ini seluruhnya berlokasi di kawasan industri dengan iklim kerja yang relatif serupa, sehingga generalisasi hasil kajian ke sektor lain masih memerlukan kajian lanjutan."

Manakah pernyataan berikut yang PASTI benar berdasarkan paragraf tersebut?', 'Sistem empat hari kerja terbukti meningkatkan produktivitas pekerja manufaktur secara signifikan', 'Seluruh manajer perusahaan sepakat bahwa sistem empat hari kerja sebaiknya diterapkan secara permanen', 'Kajian tersebut mengukur tingkat kelelahan fisik pada 500 pekerja sektor manufaktur dan tidak menemukan perbedaan signifikan antara sistem empat hari dan lima hari kerja', 'Dampak jangka panjang terhadap kesehatan mental pekerja telah dipastikan tidak berbahaya oleh kajian tersebut', 'Hasil kajian ini pasti berlaku sama persis untuk seluruh sektor industri di berbagai iklim kerja', 'C', 'Opsi C murni mengulang fakta yang secara eksplisit tertulis di kalimat pertama paragraf: kajian terhadap 500 pekerja manufaktur menemukan tingkat kelelahan yang tidak berbeda signifikan antara sistem empat hari dan lima hari kerja. Opsi A adalah simpulan yang tidak didukung teks karena produktivitas tidak diukur dalam kajian ini. Opsi B overgeneralisasi karena teks hanya menyebut "sebagian manajer", dan pernyataan itu sendiri merupakan OPINI sebagian pihak, bukan fakta yang berlaku umum. Opsi D bertentangan langsung karena teks menyatakan dampak kesehatan mental belum tercakup dalam kajian. Opsi E bertentangan karena teks menyatakan generalisasi ke sektor lain masih memerlukan kajian lanjutan. Jadi satu-satunya pernyataan yang pasti benar berdasarkan teks adalah C.', 'hard', 14),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sebuah kajian yang dilakukan terhadap 500 pekerja di sektor manufaktur menemukan bahwa penerapan sistem shift empat hari kerja dengan jam kerja lebih panjang per hari menghasilkan tingkat kelelahan yang secara statistik tidak berbeda signifikan dibandingkan sistem lima hari kerja konvensional. Sebagian manajer perusahaan berpendapat bahwa sistem empat hari kerja sebaiknya diterapkan secara permanen karena dianggap dapat meningkatkan kepuasan kerja karyawan. Namun demikian, data kajian tersebut hanya mengukur tingkat kelelahan fisik dan belum mencakup dampak jangka panjang terhadap produktivitas maupun kesehatan mental pekerja. Perusahaan yang menjadi objek kajian ini seluruhnya berlokasi di kawasan industri dengan iklim kerja yang relatif serupa, sehingga generalisasi hasil kajian ke sektor lain masih memerlukan kajian lanjutan."

Ide pokok paragraf tersebut adalah...', 'Sistem empat hari kerja sudah terbukti secara menyeluruh lebih baik daripada sistem lima hari kerja', 'Kajian terhadap sistem empat hari kerja menunjukkan hasil awal yang belum berbeda signifikan dari sistem konvensional, namun masih memerlukan kajian lanjutan sebelum dapat digeneralisasi atau dijadikan dasar kebijakan permanen', 'Seluruh perusahaan manufaktur di berbagai iklim kerja sudah menerapkan sistem empat hari kerja secara permanen', 'Produktivitas dan kesehatan mental pekerja dipastikan tidak terpengaruh oleh perubahan sistem shift kerja', 'Pendapat manajer bahwa sistem empat hari kerja meningkatkan kepuasan kerja adalah fakta yang telah dibuktikan oleh kajian tersebut', 'B', 'Paragraf ini tidak memiliki satu kalimat eksplisit yang merangkum keseluruhan isi secara sederhana, sehingga ide pokoknya bersifat tersirat dan harus dirumuskan dari benang merah seluruh kalimat: kajian menemukan kelelahan fisik yang tidak berbeda signifikan (kalimat 1), ada opini manajer yang mendukung penerapan permanen (kalimat 2), namun kajian tersebut belum mencakup produktivitas/kesehatan mental (kalimat 3), dan masih memerlukan generalisasi lebih lanjut karena keterbatasan cakupan sampel (kalimat 4). Sintesis keempat kalimat ini menghasilkan simpulan bahwa hasil kajian masih bersifat awal dan memerlukan kajian lanjutan sebelum dijadikan dasar kebijakan permanen, bukan simpulan sederhana bahwa satu sistem "lebih baik" dari yang lain. Jadi jawabannya adalah B.', 'hard', 15);

-- Soal tambahan (sumber: TPA_USM_2017, USM_D3K_2018, USM_D4_2018) -- bacaan faktual/berita untuk sub-topik Ide Pokok, Mencari Salah/Benar, dan Sinonim/Antonim Kontekstual
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Mendengar kata terapi, boleh jadi kita akan segera mengasosiasikannya dengan proses penyembuhan. Tetapi pada kenyataannya, terapi tidak hanya menggunakan langkah-langkah medis, tetapi juga memanfaatkan ranah seni. Berbagai penelitian dalam dunia psikologi pada abad ke-20 membuktikan bahwa seni dapat menjadi salah satu media terapi yang tepat untuk penyembuhan pascatrauma. Terapi seni juga dianggap efektif untuk menangani penyakit degradasi memori seperti alzheimer, penurunan fungsi kognitif, stroke, post-traumatic stress disorder, dan penuaan."

Berdasarkan bacaan tersebut, yang tidak termasuk penyakit degradasi memori adalah...', 'Stroke', 'Kanker', 'Penuaan', 'Alzheimer', 'Penurunan fungsi kognitif', 'B', 'Bacaan secara eksplisit menyebutkan penyakit degradasi memori yang dapat ditangani terapi seni, yaitu alzheimer, penurunan fungsi kognitif, stroke, post-traumatic stress disorder, dan penuaan. Kanker tidak disebutkan sama sekali dalam daftar tersebut, sehingga jawabannya adalah B.', 'easy', 16),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Mendengar kata terapi, boleh jadi kita akan segera mengasosiasikannya dengan proses penyembuhan. Tetapi pada kenyataannya, terapi tidak hanya menggunakan langkah-langkah medis, tetapi juga memanfaatkan ranah seni. Berbagai penelitian dalam dunia psikologi pada abad ke-20 membuktikan bahwa seni dapat menjadi salah satu media terapi yang tepat untuk penyembuhan pascatrauma. Terapi seni juga dianggap efektif untuk menangani penyakit degradasi memori seperti alzheimer, penurunan fungsi kognitif, stroke, post-traumatic stress disorder, dan penuaan."

Tema yang paling tepat untuk bacaan tersebut adalah...', 'Terapi Air Seni', 'Seniman Terapi', 'Terapi untuk Seni', 'Seni untuk Terapi', 'Terapi bagi Seniman', 'D', 'Keseluruhan bacaan membahas bagaimana seni dimanfaatkan sebagai sarana atau media terapi penyembuhan, bukan sebaliknya, sehingga tema yang paling tepat adalah "Seni untuk Terapi".', 'easy', 17),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Mendengar kata terapi, boleh jadi kita akan segera mengasosiasikannya dengan proses penyembuhan. Tetapi pada kenyataannya, terapi tidak hanya menggunakan langkah-langkah medis, tetapi juga memanfaatkan ranah seni. Berbagai penelitian dalam dunia psikologi pada abad ke-20 membuktikan bahwa seni dapat menjadi salah satu media terapi yang tepat untuk penyembuhan pascatrauma. Terapi seni juga dianggap efektif untuk menangani penyakit degradasi memori seperti alzheimer, penurunan fungsi kognitif, stroke, post-traumatic stress disorder, dan penuaan."

Pernyataan berikut yang paling sesuai dengan bacaan tersebut adalah...', 'Menikmati dunia seni dengan melihat pertunjukan teater bukan wujud terapi seni', 'Terapi seni kurang bermanfaat untuk menangani penyakit degradasi memori', 'Terapi seni bermanfaat untuk menghasilkan orang dengan tingkat emosionalitas tinggi', 'Terapi seni merupakan bentuk penyembuhan yang memanfaatkan proses kreasi seni', 'Terapi seni terbukti menurunkan kualitas hidup penderita penyakit secara keseluruhan', 'D', 'Bacaan menyatakan bahwa terapi memanfaatkan ranah seni dan efektif menangani penyakit degradasi memori, sehingga secara umum terapi seni dapat dipahami sebagai bentuk penyembuhan yang menggunakan proses kreasi seni. Opsi lain bertentangan dengan bacaan: seni justru terbukti bermanfaat (bukan kurang bermanfaat), dan tidak ada pernyataan bahwa terapi seni menurunkan kualitas hidup atau sekadar menghasilkan emosionalitas tinggi tanpa tujuan penyembuhan. Jadi jawabannya adalah D.', 'medium', 18),
('b0000000-0000-4000-8000-060300000000', 'Bacalah pernyataan berikut.

"Berdasarkan data Dinas Tanaman Pangan dan Hortikultura Provinsi Papua, delapan kabupaten yang mendapat dana bantuan pengembangan ubi jalar adalah Tolikara, Puncak Jaya, Intan Jaya, Jayawijaya, Merauke, Nabire, Mimika, dan Keerom."

Pernyataan berikut yang TIDAK SESUAI dengan bacaan tersebut adalah...', 'Tolikara, Puncak Jaya, Intan Jaya, Jayawijaya, Merauke, Mimika, Jayapura, dan Keerom adalah delapan kabupaten yang mendapat bantuan', 'Merauke termasuk salah satu kabupaten yang mendapat dana bantuan pengembangan ubi jalar', 'Puncak Jaya dan Intan Jaya termasuk delapan kabupaten yang mendapat dana bantuan', 'Data tersebut bersumber dari Dinas Tanaman Pangan dan Hortikultura Provinsi Papua', 'Terdapat delapan kabupaten yang mendapat dana bantuan pengembangan ubi jalar di Papua', 'A', 'Bacaan menyebutkan delapan kabupaten tersebut adalah Tolikara, Puncak Jaya, Intan Jaya, Jayawijaya, Merauke, Nabire, Mimika, dan Keerom. Opsi A keliru karena mengganti nama "Nabire" menjadi "Jayapura", sehingga tidak sesuai dengan bacaan, sedangkan opsi B, C, D, dan E seluruhnya sesuai dengan informasi yang tertulis.', 'medium', 19),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Tanggal 5 paro terang bulan Asadha, 16 Juni 682, di sebuah tempat, Dapunta Hiyang mendirikan perkampungan, dan Sriwijaya menang. Sejak itu, Sriwijaya mulai bergerak, membangun diri menjadi sebuah imperium di wilayah Sumatra. Satu per satu bandar-bandar di sepanjang Selat Malaka mulai jatuh ke pelukan Sriwijaya, mulai dari bandar Lamuri, Pulau Kampe (Kampai), Kota Cina di Sumatra Utara, hingga bandar Jambi. Sriwijaya pun masyhur sebagai kampiun di lautan sejak abad ke-8.

Dari penguasaan bandar-bandar ini, pundi-pundi keuangan Sriwijaya pun bertambah. Sumber pendapatan itu berasal dari kapal-kapal yang lewat dan bersandar. "Penguasa Sriwijaya meminta 20.000 dinar sebelum memberikan izin kepada kapal dagang Persia atau Arab untuk melanjutkan pelayaran ke Tiongkok. Demikian pula dari sebaliknya," demikian dikutip dalam Program Book Kedatuan Sriwijaya. Selat Malaka merupakan jalur pelayaran utama yang menghubungkan Arab, Persia, dan India di sisi barat, dengan Tiongkok di sebelah timur.

Kerajaan Sriwijaya akhirnya menjadi pusat penyaluran semua hasil bumi Nusantara. Pemasukan pajak perdagangan terus mengalir ke kas kerajaan. Selain itu, penghasilan Sriwijaya juga diperoleh dari barang-barang ekspor. Menurut Elizabeth T. Gurning dan Amurwani Dwi Lestariningsih dalam Bumi Sriwijaya, tujuan ekspor Sriwijaya adalah Arab dan Cina. Ke Arab, Sriwijaya mengekspor kayu gaharu, kapur barus, cendana gading, timah, kayu ebony, kayu sapan, rempah-rempah, dan kemenyan. Sementara ke Cina, komoditas ekspornya adalah gading, air mawar, kemenyan, buah-buahan, gula putih, cincin kristal, cula badak, kapur barus, bumbu masak, dan obat-obatan.

"Pendapatan kerajaan antara ekspor dan pajak relatif sama. Tapi persentasenya lebih ke pajak karena para saudagar asing yang datang ke bandar-bandar Sriwijaya untuk mengambil komoditas dari Nusantara. Sriwijaya berfungsi sebagai bandar pengepul (entreport)," kata Bambang.

Namun, persoalan pajak pernah menimbulkan masalah. Penguasa Sriwijaya menerapkan pajak yang cukup tinggi kepada saudagar-saudagar dari Tamil, padahal pedagang Tamil juga sudah membayar pajak kepada Kerajaan Chola di India selatan. Penguasa Chola tidak terima atas perlakuan Sriwijaya terhadap pedagang Tamil, sehingga mereka menyerang Sriwijaya pada 1017 M dan 1025 M. Pada serangan kedua, raja Sriwijaya berhasil ditawan."

Judul yang paling tepat untuk bacaan tersebut adalah...', 'Perdagangan di Kerajaan Sriwijaya', 'Sriwijaya Genjot Pajak', 'Hubungan Dagang Sriwijaya dengan Arab dan Cina', 'Sejarah Pendirian Kerajaan Sriwijaya', 'Besar Pajak di Kerajaan Sriwijaya', 'A', 'Bacaan secara keseluruhan membahas aspek ekonomi Kerajaan Sriwijaya: penguasaan bandar, pajak, ekspor, hingga konflik akibat pajak dagang. Judul yang mencakup keseluruhan isi tersebut adalah "Perdagangan di Kerajaan Sriwijaya", sedangkan opsi lain hanya mencakup sebagian isi bacaan.', 'medium', 20),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Tanggal 5 paro terang bulan Asadha, 16 Juni 682, di sebuah tempat, Dapunta Hiyang mendirikan perkampungan, dan Sriwijaya menang. Sejak itu, Sriwijaya mulai bergerak, membangun diri menjadi sebuah imperium di wilayah Sumatra. Satu per satu bandar-bandar di sepanjang Selat Malaka mulai jatuh ke pelukan Sriwijaya, mulai dari bandar Lamuri, Pulau Kampe (Kampai), Kota Cina di Sumatra Utara, hingga bandar Jambi. Sriwijaya pun masyhur sebagai kampiun di lautan sejak abad ke-8.

Dari penguasaan bandar-bandar ini, pundi-pundi keuangan Sriwijaya pun bertambah. Sumber pendapatan itu berasal dari kapal-kapal yang lewat dan bersandar. "Penguasa Sriwijaya meminta 20.000 dinar sebelum memberikan izin kepada kapal dagang Persia atau Arab untuk melanjutkan pelayaran ke Tiongkok. Demikian pula dari sebaliknya," demikian dikutip dalam Program Book Kedatuan Sriwijaya. Selat Malaka merupakan jalur pelayaran utama yang menghubungkan Arab, Persia, dan India di sisi barat, dengan Tiongkok di sebelah timur.

Kerajaan Sriwijaya akhirnya menjadi pusat penyaluran semua hasil bumi Nusantara. Pemasukan pajak perdagangan terus mengalir ke kas kerajaan. Selain itu, penghasilan Sriwijaya juga diperoleh dari barang-barang ekspor. Menurut Elizabeth T. Gurning dan Amurwani Dwi Lestariningsih dalam Bumi Sriwijaya, tujuan ekspor Sriwijaya adalah Arab dan Cina. Ke Arab, Sriwijaya mengekspor kayu gaharu, kapur barus, cendana gading, timah, kayu ebony, kayu sapan, rempah-rempah, dan kemenyan. Sementara ke Cina, komoditas ekspornya adalah gading, air mawar, kemenyan, buah-buahan, gula putih, cincin kristal, cula badak, kapur barus, bumbu masak, dan obat-obatan.

"Pendapatan kerajaan antara ekspor dan pajak relatif sama. Tapi persentasenya lebih ke pajak karena para saudagar asing yang datang ke bandar-bandar Sriwijaya untuk mengambil komoditas dari Nusantara. Sriwijaya berfungsi sebagai bandar pengepul (entreport)," kata Bambang.

Namun, persoalan pajak pernah menimbulkan masalah. Penguasa Sriwijaya menerapkan pajak yang cukup tinggi kepada saudagar-saudagar dari Tamil, padahal pedagang Tamil juga sudah membayar pajak kepada Kerajaan Chola di India selatan. Penguasa Chola tidak terima atas perlakuan Sriwijaya terhadap pedagang Tamil, sehingga mereka menyerang Sriwijaya pada 1017 M dan 1025 M. Pada serangan kedua, raja Sriwijaya berhasil ditawan."

Bahan dagangan yang diekspor Sriwijaya ke Arab dan Cina (kedua-duanya) adalah...', 'Timah dan air mawar', 'Gading dan kayu ebony', 'Kapur barus dan kemenyan', 'Kayu sapan dan cula badak', 'Kayu gaharu dan kapur barus', 'C', 'Ekspor ke Arab meliputi kayu gaharu, kapur barus, cendana gading, timah, kayu ebony, kayu sapan, rempah-rempah, dan kemenyan; ekspor ke Cina meliputi gading, air mawar, kemenyan, buah-buahan, gula putih, cincin kristal, cula badak, kapur barus, bumbu masak, dan obat-obatan. Kapur barus dan kemenyan adalah komoditas yang muncul di KEDUA daftar ekspor tersebut. Jadi jawabannya adalah C.', 'medium', 21),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Tanggal 5 paro terang bulan Asadha, 16 Juni 682, di sebuah tempat, Dapunta Hiyang mendirikan perkampungan, dan Sriwijaya menang. Sejak itu, Sriwijaya mulai bergerak, membangun diri menjadi sebuah imperium di wilayah Sumatra. Satu per satu bandar-bandar di sepanjang Selat Malaka mulai jatuh ke pelukan Sriwijaya, mulai dari bandar Lamuri, Pulau Kampe (Kampai), Kota Cina di Sumatra Utara, hingga bandar Jambi. Sriwijaya pun masyhur sebagai kampiun di lautan sejak abad ke-8.

Dari penguasaan bandar-bandar ini, pundi-pundi keuangan Sriwijaya pun bertambah. Sumber pendapatan itu berasal dari kapal-kapal yang lewat dan bersandar. "Penguasa Sriwijaya meminta 20.000 dinar sebelum memberikan izin kepada kapal dagang Persia atau Arab untuk melanjutkan pelayaran ke Tiongkok. Demikian pula dari sebaliknya," demikian dikutip dalam Program Book Kedatuan Sriwijaya. Selat Malaka merupakan jalur pelayaran utama yang menghubungkan Arab, Persia, dan India di sisi barat, dengan Tiongkok di sebelah timur.

Kerajaan Sriwijaya akhirnya menjadi pusat penyaluran semua hasil bumi Nusantara. Pemasukan pajak perdagangan terus mengalir ke kas kerajaan. Selain itu, penghasilan Sriwijaya juga diperoleh dari barang-barang ekspor. Menurut Elizabeth T. Gurning dan Amurwani Dwi Lestariningsih dalam Bumi Sriwijaya, tujuan ekspor Sriwijaya adalah Arab dan Cina. Ke Arab, Sriwijaya mengekspor kayu gaharu, kapur barus, cendana gading, timah, kayu ebony, kayu sapan, rempah-rempah, dan kemenyan. Sementara ke Cina, komoditas ekspornya adalah gading, air mawar, kemenyan, buah-buahan, gula putih, cincin kristal, cula badak, kapur barus, bumbu masak, dan obat-obatan.

"Pendapatan kerajaan antara ekspor dan pajak relatif sama. Tapi persentasenya lebih ke pajak karena para saudagar asing yang datang ke bandar-bandar Sriwijaya untuk mengambil komoditas dari Nusantara. Sriwijaya berfungsi sebagai bandar pengepul (entreport)," kata Bambang.

Namun, persoalan pajak pernah menimbulkan masalah. Penguasa Sriwijaya menerapkan pajak yang cukup tinggi kepada saudagar-saudagar dari Tamil, padahal pedagang Tamil juga sudah membayar pajak kepada Kerajaan Chola di India selatan. Penguasa Chola tidak terima atas perlakuan Sriwijaya terhadap pedagang Tamil, sehingga mereka menyerang Sriwijaya pada 1017 M dan 1025 M. Pada serangan kedua, raja Sriwijaya berhasil ditawan."

Kata "imperium" pada paragraf pertama bacaan tersebut mengandung arti...', 'Negara', 'Daerah', 'Kerajaan', 'Pasukan besar', 'Bagian sebuah negara', 'C', 'Dalam konteks kalimat "Sriwijaya mulai bergerak, membangun diri menjadi sebuah imperium di wilayah Sumatra", kata "imperium" berarti kerajaan besar yang meluas kekuasaannya, sehingga padanan yang tepat adalah "kerajaan".', 'easy', 22),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Tanggal 5 paro terang bulan Asadha, 16 Juni 682, di sebuah tempat, Dapunta Hiyang mendirikan perkampungan, dan Sriwijaya menang. Sejak itu, Sriwijaya mulai bergerak, membangun diri menjadi sebuah imperium di wilayah Sumatra. Satu per satu bandar-bandar di sepanjang Selat Malaka mulai jatuh ke pelukan Sriwijaya, mulai dari bandar Lamuri, Pulau Kampe (Kampai), Kota Cina di Sumatra Utara, hingga bandar Jambi. Sriwijaya pun masyhur sebagai kampiun di lautan sejak abad ke-8.

Dari penguasaan bandar-bandar ini, pundi-pundi keuangan Sriwijaya pun bertambah. Sumber pendapatan itu berasal dari kapal-kapal yang lewat dan bersandar. "Penguasa Sriwijaya meminta 20.000 dinar sebelum memberikan izin kepada kapal dagang Persia atau Arab untuk melanjutkan pelayaran ke Tiongkok. Demikian pula dari sebaliknya," demikian dikutip dalam Program Book Kedatuan Sriwijaya. Selat Malaka merupakan jalur pelayaran utama yang menghubungkan Arab, Persia, dan India di sisi barat, dengan Tiongkok di sebelah timur.

Kerajaan Sriwijaya akhirnya menjadi pusat penyaluran semua hasil bumi Nusantara. Pemasukan pajak perdagangan terus mengalir ke kas kerajaan. Selain itu, penghasilan Sriwijaya juga diperoleh dari barang-barang ekspor. Menurut Elizabeth T. Gurning dan Amurwani Dwi Lestariningsih dalam Bumi Sriwijaya, tujuan ekspor Sriwijaya adalah Arab dan Cina. Ke Arab, Sriwijaya mengekspor kayu gaharu, kapur barus, cendana gading, timah, kayu ebony, kayu sapan, rempah-rempah, dan kemenyan. Sementara ke Cina, komoditas ekspornya adalah gading, air mawar, kemenyan, buah-buahan, gula putih, cincin kristal, cula badak, kapur barus, bumbu masak, dan obat-obatan.

"Pendapatan kerajaan antara ekspor dan pajak relatif sama. Tapi persentasenya lebih ke pajak karena para saudagar asing yang datang ke bandar-bandar Sriwijaya untuk mengambil komoditas dari Nusantara. Sriwijaya berfungsi sebagai bandar pengepul (entreport)," kata Bambang.

Namun, persoalan pajak pernah menimbulkan masalah. Penguasa Sriwijaya menerapkan pajak yang cukup tinggi kepada saudagar-saudagar dari Tamil, padahal pedagang Tamil juga sudah membayar pajak kepada Kerajaan Chola di India selatan. Penguasa Chola tidak terima atas perlakuan Sriwijaya terhadap pedagang Tamil, sehingga mereka menyerang Sriwijaya pada 1017 M dan 1025 M. Pada serangan kedua, raja Sriwijaya berhasil ditawan."

Alasan Kerajaan Chola menyerang Sriwijaya adalah...', 'Sriwijaya menarik pajak yang sangat tinggi kepada pedagang Tamil, padahal mereka sudah membayar pajak ke Chola', 'Saudagar Arab dan Cina berdagang langsung dengan Sriwijaya', 'Sriwijaya menjadi pusat penyaluran hasil bumi Nusantara', 'Sriwijaya menerapkan pajak yang tinggi kepada seluruh saudagar tanpa terkecuali', 'Sriwijaya menguasai jalur pelayaran di lautan', 'A', 'Bacaan menyatakan bahwa penguasa Sriwijaya menerapkan pajak yang cukup tinggi kepada saudagar dari Tamil, padahal mereka sudah membayar pajak kepada Kerajaan Chola, sehingga Chola tidak terima dan menyerang Sriwijaya. Jadi jawabannya adalah A.', 'easy', 23),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Tanggal 5 paro terang bulan Asadha, 16 Juni 682, di sebuah tempat, Dapunta Hiyang mendirikan perkampungan, dan Sriwijaya menang. Sejak itu, Sriwijaya mulai bergerak, membangun diri menjadi sebuah imperium di wilayah Sumatra. Satu per satu bandar-bandar di sepanjang Selat Malaka mulai jatuh ke pelukan Sriwijaya, mulai dari bandar Lamuri, Pulau Kampe (Kampai), Kota Cina di Sumatra Utara, hingga bandar Jambi. Sriwijaya pun masyhur sebagai kampiun di lautan sejak abad ke-8.

Dari penguasaan bandar-bandar ini, pundi-pundi keuangan Sriwijaya pun bertambah. Sumber pendapatan itu berasal dari kapal-kapal yang lewat dan bersandar. "Penguasa Sriwijaya meminta 20.000 dinar sebelum memberikan izin kepada kapal dagang Persia atau Arab untuk melanjutkan pelayaran ke Tiongkok. Demikian pula dari sebaliknya," demikian dikutip dalam Program Book Kedatuan Sriwijaya. Selat Malaka merupakan jalur pelayaran utama yang menghubungkan Arab, Persia, dan India di sisi barat, dengan Tiongkok di sebelah timur.

Kerajaan Sriwijaya akhirnya menjadi pusat penyaluran semua hasil bumi Nusantara. Pemasukan pajak perdagangan terus mengalir ke kas kerajaan. Selain itu, penghasilan Sriwijaya juga diperoleh dari barang-barang ekspor. Menurut Elizabeth T. Gurning dan Amurwani Dwi Lestariningsih dalam Bumi Sriwijaya, tujuan ekspor Sriwijaya adalah Arab dan Cina. Ke Arab, Sriwijaya mengekspor kayu gaharu, kapur barus, cendana gading, timah, kayu ebony, kayu sapan, rempah-rempah, dan kemenyan. Sementara ke Cina, komoditas ekspornya adalah gading, air mawar, kemenyan, buah-buahan, gula putih, cincin kristal, cula badak, kapur barus, bumbu masak, dan obat-obatan.

"Pendapatan kerajaan antara ekspor dan pajak relatif sama. Tapi persentasenya lebih ke pajak karena para saudagar asing yang datang ke bandar-bandar Sriwijaya untuk mengambil komoditas dari Nusantara. Sriwijaya berfungsi sebagai bandar pengepul (entreport)," kata Bambang.

Namun, persoalan pajak pernah menimbulkan masalah. Penguasa Sriwijaya menerapkan pajak yang cukup tinggi kepada saudagar-saudagar dari Tamil, padahal pedagang Tamil juga sudah membayar pajak kepada Kerajaan Chola di India selatan. Penguasa Chola tidak terima atas perlakuan Sriwijaya terhadap pedagang Tamil, sehingga mereka menyerang Sriwijaya pada 1017 M dan 1025 M. Pada serangan kedua, raja Sriwijaya berhasil ditawan."

Total pajak yang harus dibayar saudagar Cina yang membeli barang dagangan di India agar dapat melewati Sriwijaya (pulang-pergi) adalah ... dinar.', '20.000', '40.000', '60.000', '80.000', '100.000', 'B', 'Bacaan menyatakan bahwa penguasa Sriwijaya meminta 20.000 dinar untuk satu kali lintasan, baik dari arah Persia/Arab menuju Tiongkok maupun sebaliknya. Saudagar Cina yang pergi ke India untuk membeli barang lalu kembali ke Cina akan melintasi wilayah Sriwijaya sebanyak dua kali (pergi dan pulang), sehingga total pajak yang dibayar adalah 2 x 20.000 = 40.000 dinar.', 'medium', 24),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sayap penguin telah beralih fungsi, digunakan sebagai alat bantu untuk berenang, bukan lagi untuk membawanya mengangkasa. Penguin telah kehilangan kemampuan terbangnya sejak ribuan tahun lalu. Studi terbaru menduga bahwa penguin, si burung laut, berhenti terbang sebagai akibat proses evolusi yang membuat penguin harus beradaptasi dengan lingkungan, yakni menjadi perenang ulung.

Menurut studi yang dipublikasikan pada Proceedings of the National Academy of Sciences edisi 20 Mei 2013, penguin perlu berenang di tengah lingkungan yang kompetitif. Kemampuan terbang, untuk beberapa aspek, mungkin menguntungkan bagi penguin yang hidup di Kutub Selatan, misalnya saat melarikan diri dari predator atau saat pawai koloni penguin emperor yang bisa berlangsung berhari-hari. Namun, menurut Katsufumi Sato, ahli ekologi perilaku di Ocean Research Institute-University of Tokyo, hal ini tetap terjadi karena faktor evolusi.

Burung penguin berevolusi ke ukuran tubuh yang lebih besar sehingga membutuhkan penopang ketika menyelam di dalam air. Karena alasan inilah, sayap mengalami pengurangan fungsi dan ukuran secara progresif, yang membuat berenang menjadi lebih efisien, sementara terbang menjadi sebaliknya. Inilah yang diduga menjadi jawaban mengapa kemampuan penguin untuk terbang berangsur-angsur lenyap. Sato juga menjelaskan bahwa tubuh yang lebih besar memungkinkan penguin menyelam lebih lama. Pada masa transisi ketika sayap masih digunakan baik untuk terbang maupun menyelam, hal itu justru merugikan penguin karena memboroskan energi dan membuatnya tidak bisa bertahan lama.

Julia Clarke, peneliti evolusi burung dari University of Texas di Austin, mengungkapkan bahwa ada perbedaan yang ditemukan pada penguin-penguin purba, meski data yang relevan masih sedikit untuk mengembangkannya. Penemuan terbaru ini dapat menjadi salah satu kunci dalam pemaparan tentang transisi dari model "sayap" menjadi "sirip" pada penguin."

Tema dalam bacaan tersebut adalah...', 'Evolusi penguin', 'Perubahan dari sayap ke sirip', 'Penemuan baru di bidang ekologi', 'Penguin lebih pandai berenang daripada terbang', 'Ketahanan penguin emperor menghadapi predator', 'A', 'Keseluruhan bacaan membahas berbagai aspek evolusi penguin (perubahan ukuran tubuh, hilangnya kemampuan terbang, perubahan fungsi sayap), sehingga tema yang paling menyeluruh adalah "evolusi penguin", sedangkan opsi lain hanya mencakup sebagian aspek yang dibahas.', 'medium', 25),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sayap penguin telah beralih fungsi, digunakan sebagai alat bantu untuk berenang, bukan lagi untuk membawanya mengangkasa. Penguin telah kehilangan kemampuan terbangnya sejak ribuan tahun lalu. Studi terbaru menduga bahwa penguin, si burung laut, berhenti terbang sebagai akibat proses evolusi yang membuat penguin harus beradaptasi dengan lingkungan, yakni menjadi perenang ulung.

Menurut studi yang dipublikasikan pada Proceedings of the National Academy of Sciences edisi 20 Mei 2013, penguin perlu berenang di tengah lingkungan yang kompetitif. Kemampuan terbang, untuk beberapa aspek, mungkin menguntungkan bagi penguin yang hidup di Kutub Selatan, misalnya saat melarikan diri dari predator atau saat pawai koloni penguin emperor yang bisa berlangsung berhari-hari. Namun, menurut Katsufumi Sato, ahli ekologi perilaku di Ocean Research Institute-University of Tokyo, hal ini tetap terjadi karena faktor evolusi.

Burung penguin berevolusi ke ukuran tubuh yang lebih besar sehingga membutuhkan penopang ketika menyelam di dalam air. Karena alasan inilah, sayap mengalami pengurangan fungsi dan ukuran secara progresif, yang membuat berenang menjadi lebih efisien, sementara terbang menjadi sebaliknya. Inilah yang diduga menjadi jawaban mengapa kemampuan penguin untuk terbang berangsur-angsur lenyap. Sato juga menjelaskan bahwa tubuh yang lebih besar memungkinkan penguin menyelam lebih lama. Pada masa transisi ketika sayap masih digunakan baik untuk terbang maupun menyelam, hal itu justru merugikan penguin karena memboroskan energi dan membuatnya tidak bisa bertahan lama.

Julia Clarke, peneliti evolusi burung dari University of Texas di Austin, mengungkapkan bahwa ada perbedaan yang ditemukan pada penguin-penguin purba, meski data yang relevan masih sedikit untuk mengembangkannya. Penemuan terbaru ini dapat menjadi salah satu kunci dalam pemaparan tentang transisi dari model "sayap" menjadi "sirip" pada penguin."

Fakta yang terdapat pada bacaan tersebut adalah...', 'Jumlah koloni penguin menyusut dari masa ke masa', 'Penguin masih dapat terbang walau tidak terlalu tinggi', 'Penguin saat ini lebih gesit daripada penguin masa lalu', 'Penguin saat ini berukuran lebih besar daripada penguin masa lalu', 'Jumlah penguin saat ini lebih sedikit daripada jumlah penguin masa lalu', 'D', 'Bacaan menyatakan bahwa burung penguin berevolusi ke ukuran tubuh yang lebih besar sehingga membutuhkan penopang ketika menyelam di dalam air, yang berarti penguin saat ini berukuran lebih besar dibandingkan masa lalu. Fakta pada opsi lain tidak disebutkan dalam bacaan. Jadi jawabannya adalah D.', 'medium', 26),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sayap penguin telah beralih fungsi, digunakan sebagai alat bantu untuk berenang, bukan lagi untuk membawanya mengangkasa. Penguin telah kehilangan kemampuan terbangnya sejak ribuan tahun lalu. Studi terbaru menduga bahwa penguin, si burung laut, berhenti terbang sebagai akibat proses evolusi yang membuat penguin harus beradaptasi dengan lingkungan, yakni menjadi perenang ulung.

Menurut studi yang dipublikasikan pada Proceedings of the National Academy of Sciences edisi 20 Mei 2013, penguin perlu berenang di tengah lingkungan yang kompetitif. Kemampuan terbang, untuk beberapa aspek, mungkin menguntungkan bagi penguin yang hidup di Kutub Selatan, misalnya saat melarikan diri dari predator atau saat pawai koloni penguin emperor yang bisa berlangsung berhari-hari. Namun, menurut Katsufumi Sato, ahli ekologi perilaku di Ocean Research Institute-University of Tokyo, hal ini tetap terjadi karena faktor evolusi.

Burung penguin berevolusi ke ukuran tubuh yang lebih besar sehingga membutuhkan penopang ketika menyelam di dalam air. Karena alasan inilah, sayap mengalami pengurangan fungsi dan ukuran secara progresif, yang membuat berenang menjadi lebih efisien, sementara terbang menjadi sebaliknya. Inilah yang diduga menjadi jawaban mengapa kemampuan penguin untuk terbang berangsur-angsur lenyap. Sato juga menjelaskan bahwa tubuh yang lebih besar memungkinkan penguin menyelam lebih lama. Pada masa transisi ketika sayap masih digunakan baik untuk terbang maupun menyelam, hal itu justru merugikan penguin karena memboroskan energi dan membuatnya tidak bisa bertahan lama.

Julia Clarke, peneliti evolusi burung dari University of Texas di Austin, mengungkapkan bahwa ada perbedaan yang ditemukan pada penguin-penguin purba, meski data yang relevan masih sedikit untuk mengembangkannya. Penemuan terbaru ini dapat menjadi salah satu kunci dalam pemaparan tentang transisi dari model "sayap" menjadi "sirip" pada penguin."

Yang TIDAK termasuk penyebab berkurangnya fungsi dan ukuran sayap pada penguin adalah...', 'Tubuh penguin yang semakin besar', 'Berenang lebih efisien dibandingkan terbang', 'Penguin jarang menggunakan sayapnya untuk terbang', 'Penguin melakukan adaptasi terhadap lingkungan yang kompetitif', 'Dengan sayap yang besar, penguin tidak bisa bertahan lama saat menyelam', 'E', 'Bacaan menyatakan bahwa justru tubuh yang lebih besar membuat penguin dapat menyelam lebih lama, dan yang membuat boros energi/tidak tahan lama adalah ketika sayap masih dipakai ganda (untuk terbang sekaligus berenang) pada masa transisi, bukan karena "sayap besar". Pernyataan pada opsi E membalikkan fakta yang sebenarnya, sehingga bukan penyebab yang sesuai dengan bacaan.', 'hard', 27),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sayap penguin telah beralih fungsi, digunakan sebagai alat bantu untuk berenang, bukan lagi untuk membawanya mengangkasa. Penguin telah kehilangan kemampuan terbangnya sejak ribuan tahun lalu. Studi terbaru menduga bahwa penguin, si burung laut, berhenti terbang sebagai akibat proses evolusi yang membuat penguin harus beradaptasi dengan lingkungan, yakni menjadi perenang ulung.

Menurut studi yang dipublikasikan pada Proceedings of the National Academy of Sciences edisi 20 Mei 2013, penguin perlu berenang di tengah lingkungan yang kompetitif. Kemampuan terbang, untuk beberapa aspek, mungkin menguntungkan bagi penguin yang hidup di Kutub Selatan, misalnya saat melarikan diri dari predator atau saat pawai koloni penguin emperor yang bisa berlangsung berhari-hari. Namun, menurut Katsufumi Sato, ahli ekologi perilaku di Ocean Research Institute-University of Tokyo, hal ini tetap terjadi karena faktor evolusi.

Burung penguin berevolusi ke ukuran tubuh yang lebih besar sehingga membutuhkan penopang ketika menyelam di dalam air. Karena alasan inilah, sayap mengalami pengurangan fungsi dan ukuran secara progresif, yang membuat berenang menjadi lebih efisien, sementara terbang menjadi sebaliknya. Inilah yang diduga menjadi jawaban mengapa kemampuan penguin untuk terbang berangsur-angsur lenyap. Sato juga menjelaskan bahwa tubuh yang lebih besar memungkinkan penguin menyelam lebih lama. Pada masa transisi ketika sayap masih digunakan baik untuk terbang maupun menyelam, hal itu justru merugikan penguin karena memboroskan energi dan membuatnya tidak bisa bertahan lama.

Julia Clarke, peneliti evolusi burung dari University of Texas di Austin, mengungkapkan bahwa ada perbedaan yang ditemukan pada penguin-penguin purba, meski data yang relevan masih sedikit untuk mengembangkannya. Penemuan terbaru ini dapat menjadi salah satu kunci dalam pemaparan tentang transisi dari model "sayap" menjadi "sirip" pada penguin."

Faktor utama yang menyebabkan penguin kehilangan kemampuan terbangnya adalah...', 'Evolusi', 'Jumlah predator', 'Perubahan iklim', 'Ketersediaan makanan', 'Berkurangnya es di kutub', 'A', 'Bacaan secara eksplisit menyebutkan bahwa penguin berhenti terbang "sebagai akibat proses evolusi". Jadi jawabannya adalah A.', 'easy', 28),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sayap penguin telah beralih fungsi, digunakan sebagai alat bantu untuk berenang, bukan lagi untuk membawanya mengangkasa. Penguin telah kehilangan kemampuan terbangnya sejak ribuan tahun lalu. Studi terbaru menduga bahwa penguin, si burung laut, berhenti terbang sebagai akibat proses evolusi yang membuat penguin harus beradaptasi dengan lingkungan, yakni menjadi perenang ulung.

Menurut studi yang dipublikasikan pada Proceedings of the National Academy of Sciences edisi 20 Mei 2013, penguin perlu berenang di tengah lingkungan yang kompetitif. Kemampuan terbang, untuk beberapa aspek, mungkin menguntungkan bagi penguin yang hidup di Kutub Selatan, misalnya saat melarikan diri dari predator atau saat pawai koloni penguin emperor yang bisa berlangsung berhari-hari. Namun, menurut Katsufumi Sato, ahli ekologi perilaku di Ocean Research Institute-University of Tokyo, hal ini tetap terjadi karena faktor evolusi.

Burung penguin berevolusi ke ukuran tubuh yang lebih besar sehingga membutuhkan penopang ketika menyelam di dalam air. Karena alasan inilah, sayap mengalami pengurangan fungsi dan ukuran secara progresif, yang membuat berenang menjadi lebih efisien, sementara terbang menjadi sebaliknya. Inilah yang diduga menjadi jawaban mengapa kemampuan penguin untuk terbang berangsur-angsur lenyap. Sato juga menjelaskan bahwa tubuh yang lebih besar memungkinkan penguin menyelam lebih lama. Pada masa transisi ketika sayap masih digunakan baik untuk terbang maupun menyelam, hal itu justru merugikan penguin karena memboroskan energi dan membuatnya tidak bisa bertahan lama.

Julia Clarke, peneliti evolusi burung dari University of Texas di Austin, mengungkapkan bahwa ada perbedaan yang ditemukan pada penguin-penguin purba, meski data yang relevan masih sedikit untuk mengembangkannya. Penemuan terbaru ini dapat menjadi salah satu kunci dalam pemaparan tentang transisi dari model "sayap" menjadi "sirip" pada penguin."

Informasi yang sesuai dengan bacaan tersebut adalah...', 'Dahulu kala penguin adalah burung yang mempunyai kemampuan terbang', 'Penguin dapat menyelam dalam air karena bernapas dengan insang', 'Penguin tidak mau terbang karena tidak ada makanan di udara', 'Makanan burung penguin hanya berupa ikan', 'Saat ini penguin tidak mempunyai sayap', 'A', 'Bacaan menyatakan penguin "telah kehilangan kemampuan terbangnya sejak ribuan tahun lalu", yang menyiratkan bahwa dahulu kala penguin bisa terbang. Opsi lain tidak didukung oleh bacaan; penguin masih memiliki sayap yang beralih fungsi, bukan hilang sama sekali, dan bacaan tidak pernah menyebutkan penguin bernapas dengan insang. Jadi jawabannya adalah A.', 'medium', 29),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Dinas Kebudayaan Kabupaten Sleman kembali menggelar Lomba Macapat. Kali ini, lomba yang dihelat di Pendopo Rumah Dinas Bupati itu diselenggarakan untuk tingkat mahasiswa dan mahasiswi tahun 2017. Kepala Bidang Peninggalan Budaya dan Nilai Tradisi Dinas Kebudayaan Kabupaten Sleman, Sumarjono, mengatakan bahwa kegiatan ini diikuti setidaknya 35 peserta dari berbagai perguruan tinggi di DI Yogyakarta. Untuk hadiah, panitia menyiapkan total uang sebesar 16,5 juta rupiah kepada para pemenang.

Sekar Dhandanggula Lik Suling Laras Pelog Nem menjadi tembang wajib yang harus dibawakan peserta. Selain tembang wajib tersebut, ada pula tembang-tembang pilihan seperti Sekar Sinom Ginonjing Laras Pelog Nem dan Sekar Pangkur Paripurna Laras Pelog Barang. "Lomba Macapat ini bertujuan untuk meningkatkan kecintaan terhadap seni, khususnya macapat, dan sebagai sarana melestarikan macapat di lingkungan perguruan tinggi," kata Sumarjono."

Judul yang tepat untuk bacaan tersebut adalah...', 'Pagelaran Lomba Macapat di Pendopo Rumah Dinas Bupati Sleman', 'Lomba Macapat Berhadiah 16 Juta untuk Masing-Masing Pemenang', 'Dinas Kebudayaan Kabupaten Sleman Menggelar Lomba', 'Tujuan Lomba Macapat untuk Mahasiswa Sleman', 'Sleman Gelar Lomba Macapat untuk Mahasiswa', 'E', 'Judul yang tepat harus singkat namun mencakup inti berita (siapa-apa-untuk siapa) tanpa detail yang keliru. Opsi B salah karena 16,5 juta adalah total hadiah, bukan hadiah untuk masing-masing pemenang. Opsi E paling mencerminkan keseluruhan isi bacaan secara ringkas dan akurat. Jadi jawabannya adalah E.', 'medium', 30),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Dinas Kebudayaan Kabupaten Sleman kembali menggelar Lomba Macapat. Kali ini, lomba yang dihelat di Pendopo Rumah Dinas Bupati itu diselenggarakan untuk tingkat mahasiswa dan mahasiswi tahun 2017. Kepala Bidang Peninggalan Budaya dan Nilai Tradisi Dinas Kebudayaan Kabupaten Sleman, Sumarjono, mengatakan bahwa kegiatan ini diikuti setidaknya 35 peserta dari berbagai perguruan tinggi di DI Yogyakarta. Untuk hadiah, panitia menyiapkan total uang sebesar 16,5 juta rupiah kepada para pemenang.

Sekar Dhandanggula Lik Suling Laras Pelog Nem menjadi tembang wajib yang harus dibawakan peserta. Selain tembang wajib tersebut, ada pula tembang-tembang pilihan seperti Sekar Sinom Ginonjing Laras Pelog Nem dan Sekar Pangkur Paripurna Laras Pelog Barang. "Lomba Macapat ini bertujuan untuk meningkatkan kecintaan terhadap seni, khususnya macapat, dan sebagai sarana melestarikan macapat di lingkungan perguruan tinggi," kata Sumarjono."

Arti kata "macapat" pada bacaan tersebut adalah...', 'Puisi Jawa tradisional yang setiap baitnya mempunyai kalimat tertentu', 'Puisi Jawa tradisional yang setiap baitnya mempunyai makna tertentu', 'Puisi Jawa tradisional yang setiap baitnya dilagukan dengan nada tertentu', 'Lagu tentang kebudayaan', 'Puisi tentang kebudayaan', 'C', 'Bacaan menyebutkan tembang macapat memiliki "laras" (tangga nada) tertentu, seperti Laras Pelog Nem dan Laras Pelog Barang, yang menunjukkan bahwa macapat adalah puisi tradisional Jawa yang dilagukan dengan nada atau tangga nada tertentu. Jadi jawabannya adalah C.', 'medium', 31),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Dinas Kebudayaan Kabupaten Sleman kembali menggelar Lomba Macapat. Kali ini, lomba yang dihelat di Pendopo Rumah Dinas Bupati itu diselenggarakan untuk tingkat mahasiswa dan mahasiswi tahun 2017. Kepala Bidang Peninggalan Budaya dan Nilai Tradisi Dinas Kebudayaan Kabupaten Sleman, Sumarjono, mengatakan bahwa kegiatan ini diikuti setidaknya 35 peserta dari berbagai perguruan tinggi di DI Yogyakarta. Untuk hadiah, panitia menyiapkan total uang sebesar 16,5 juta rupiah kepada para pemenang.

Sekar Dhandanggula Lik Suling Laras Pelog Nem menjadi tembang wajib yang harus dibawakan peserta. Selain tembang wajib tersebut, ada pula tembang-tembang pilihan seperti Sekar Sinom Ginonjing Laras Pelog Nem dan Sekar Pangkur Paripurna Laras Pelog Barang. "Lomba Macapat ini bertujuan untuk meningkatkan kecintaan terhadap seni, khususnya macapat, dan sebagai sarana melestarikan macapat di lingkungan perguruan tinggi," kata Sumarjono."

Tembang yang disebutkan dalam bacaan tersebut, KECUALI...', 'Pucung Tunjungset', 'Sekar Dhandanggula Lik Suling Laras Pelog Nem', 'Sekar Sinom Ginonjing Laras Pelog Nem', 'Sekar Pangkur Paripurna Laras Pelog Barang', 'Tidak ada jawaban yang benar', 'A', 'Bacaan hanya menyebutkan tiga tembang, yaitu Sekar Dhandanggula Lik Suling Laras Pelog Nem (tembang wajib), Sekar Sinom Ginonjing Laras Pelog Nem, dan Sekar Pangkur Paripurna Laras Pelog Barang (tembang pilihan). "Pucung Tunjungset" tidak disebutkan sama sekali dalam bacaan. Jadi jawabannya adalah A.', 'medium', 32),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Dinas Kebudayaan Kabupaten Sleman kembali menggelar Lomba Macapat. Kali ini, lomba yang dihelat di Pendopo Rumah Dinas Bupati itu diselenggarakan untuk tingkat mahasiswa dan mahasiswi tahun 2017. Kepala Bidang Peninggalan Budaya dan Nilai Tradisi Dinas Kebudayaan Kabupaten Sleman, Sumarjono, mengatakan bahwa kegiatan ini diikuti setidaknya 35 peserta dari berbagai perguruan tinggi di DI Yogyakarta. Untuk hadiah, panitia menyiapkan total uang sebesar 16,5 juta rupiah kepada para pemenang.

Sekar Dhandanggula Lik Suling Laras Pelog Nem menjadi tembang wajib yang harus dibawakan peserta. Selain tembang wajib tersebut, ada pula tembang-tembang pilihan seperti Sekar Sinom Ginonjing Laras Pelog Nem dan Sekar Pangkur Paripurna Laras Pelog Barang. "Lomba Macapat ini bertujuan untuk meningkatkan kecintaan terhadap seni, khususnya macapat, dan sebagai sarana melestarikan macapat di lingkungan perguruan tinggi," kata Sumarjono."

Tujuan kegiatan lomba macapat menurut bacaan tersebut adalah...', 'Memberikan hadiah kepada mahasiswa', 'Meningkatkan kecintaan terhadap seni, khususnya macapat', 'Mengenalkan budaya macapat pada warga Sleman', 'Mengenalkan budaya macapat bagi generasi muda', 'Memberikan apresiasi kepada mahasiswa atas budaya macapat', 'B', 'Bacaan menyatakan secara eksplisit: "Lomba Macapat ini bertujuan untuk meningkatkan kecintaan terhadap seni, khususnya macapat...". Jadi jawabannya adalah B.', 'easy', 33),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Menteri Pariwisata (Menpar) Arief Yahya bersama Gubernur Sulawesi Tenggara (Sultra) Nur Alam, Wakil Gubernur Sultra M. Saleh Lasata, dan Bupati Wakatobi Arhawi meluncurkan Calendar of Event Wakatobi 2017. Peluncuran ini merupakan upaya mempromosikan sekaligus meningkatkan kunjungan wisatawan ke Wakatobi, yang pada tahun tersebut menargetkan 40 ribu wisatawan.

Penyelenggaraan Calendar of Event Wakatobi 2017 yang mengangkat tema "Kalender Event Wakatobi Bersinar, Wakatobi Melala" merupakan yang pertama kali digelar, berlangsung sepanjang Januari-Desember 2017 dengan menampilkan event unggulan yang bertumpu pada daya tarik alam (nature), budaya (culture), dan buatan manusia (handmade). Menpar Arief Yahya memberikan apresiasi terhadap penyelenggaraan ini dalam rangka memperkuat daya saing pariwisata Wakatobi sebagai destinasi kelas dunia, khususnya untuk marine tourism, yang didukung unsur 3A (atraksi, amenitas, dan aksesibilitas) berstandar global. Setiap hari sudah tersedia 4 kali penerbangan (Garuda Indonesia, Batik Air, Lion Air, dan Wings Air) dari Jakarta/Bali transit Makassar menuju Bandara Matahora Wakatobi.

Gubernur Sultra Nur Alam mengatakan, tujuan penyelenggaraan event ini adalah mempromosikan Wakatobi sebagai salah satu destinasi wisata unggulan di Indonesia, dengan target peningkatan arus kunjungan wisatawan (khususnya wisatawan nusantara), serta mendorong percepatan pembangunan dan pengembangan potensi sumber daya kelautan dan pariwisata dalam mewujudkan kesejahteraan masyarakat seluas-luasnya, khususnya masyarakat pesisir dan pulau-pulau kecil. Kegiatan Calendar of Event Wakatobi 2017 berisi rangkaian festival budaya, antara lain Wowine, Festival Pulau Tomia, Festival Sampela Liya, Festival Barata Kahedupa, Semalam di Liya Togo, dan Wakatobi Wave."

Gagasan pokok dari bacaan tersebut adalah...', 'Upaya dalam meningkatkan jumlah wisatawan di Wakatobi', 'Wakatobi sebagai destinasi wisata unggulan di Indonesia', 'Wakatobi sebagai wisata yang diakui di kelas dunia', 'Peluncuran Calendar of Event Wakatobi 2017', 'Kunjungan Menteri Pariwisata ke Wakatobi', 'D', 'Keseluruhan bacaan berpusat pada peristiwa peluncuran Calendar of Event Wakatobi 2017, termasuk tujuan, unsur pendukung, dan rangkaian kegiatannya. Opsi lain hanya merupakan bagian atau detail pendukung dari topik utama tersebut. Jadi jawabannya adalah D.', 'medium', 34),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Menteri Pariwisata (Menpar) Arief Yahya bersama Gubernur Sulawesi Tenggara (Sultra) Nur Alam, Wakil Gubernur Sultra M. Saleh Lasata, dan Bupati Wakatobi Arhawi meluncurkan Calendar of Event Wakatobi 2017. Peluncuran ini merupakan upaya mempromosikan sekaligus meningkatkan kunjungan wisatawan ke Wakatobi, yang pada tahun tersebut menargetkan 40 ribu wisatawan.

Penyelenggaraan Calendar of Event Wakatobi 2017 yang mengangkat tema "Kalender Event Wakatobi Bersinar, Wakatobi Melala" merupakan yang pertama kali digelar, berlangsung sepanjang Januari-Desember 2017 dengan menampilkan event unggulan yang bertumpu pada daya tarik alam (nature), budaya (culture), dan buatan manusia (handmade). Menpar Arief Yahya memberikan apresiasi terhadap penyelenggaraan ini dalam rangka memperkuat daya saing pariwisata Wakatobi sebagai destinasi kelas dunia, khususnya untuk marine tourism, yang didukung unsur 3A (atraksi, amenitas, dan aksesibilitas) berstandar global. Setiap hari sudah tersedia 4 kali penerbangan (Garuda Indonesia, Batik Air, Lion Air, dan Wings Air) dari Jakarta/Bali transit Makassar menuju Bandara Matahora Wakatobi.

Gubernur Sultra Nur Alam mengatakan, tujuan penyelenggaraan event ini adalah mempromosikan Wakatobi sebagai salah satu destinasi wisata unggulan di Indonesia, dengan target peningkatan arus kunjungan wisatawan (khususnya wisatawan nusantara), serta mendorong percepatan pembangunan dan pengembangan potensi sumber daya kelautan dan pariwisata dalam mewujudkan kesejahteraan masyarakat seluas-luasnya, khususnya masyarakat pesisir dan pulau-pulau kecil. Kegiatan Calendar of Event Wakatobi 2017 berisi rangkaian festival budaya, antara lain Wowine, Festival Pulau Tomia, Festival Sampela Liya, Festival Barata Kahedupa, Semalam di Liya Togo, dan Wakatobi Wave."

Istilah "amenitas" pada paragraf kedua bacaan tersebut dapat diartikan sebagai...', 'Keindahan', 'Keramahan', 'Kesenangan', 'Keselarasan', 'Keterjangkauan', 'C', 'Amenitas (amenity) dalam konteks 3A pariwisata (atraksi, amenitas, aksesibilitas) merujuk pada kenyamanan atau kesenangan yang dirasakan wisatawan melalui fasilitas pendukung, sehingga padanan terdekat dari pilihan yang tersedia adalah "kesenangan". Jadi jawabannya adalah C.', 'hard', 35),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Menteri Pariwisata (Menpar) Arief Yahya bersama Gubernur Sulawesi Tenggara (Sultra) Nur Alam, Wakil Gubernur Sultra M. Saleh Lasata, dan Bupati Wakatobi Arhawi meluncurkan Calendar of Event Wakatobi 2017. Peluncuran ini merupakan upaya mempromosikan sekaligus meningkatkan kunjungan wisatawan ke Wakatobi, yang pada tahun tersebut menargetkan 40 ribu wisatawan.

Penyelenggaraan Calendar of Event Wakatobi 2017 yang mengangkat tema "Kalender Event Wakatobi Bersinar, Wakatobi Melala" merupakan yang pertama kali digelar, berlangsung sepanjang Januari-Desember 2017 dengan menampilkan event unggulan yang bertumpu pada daya tarik alam (nature), budaya (culture), dan buatan manusia (handmade). Menpar Arief Yahya memberikan apresiasi terhadap penyelenggaraan ini dalam rangka memperkuat daya saing pariwisata Wakatobi sebagai destinasi kelas dunia, khususnya untuk marine tourism, yang didukung unsur 3A (atraksi, amenitas, dan aksesibilitas) berstandar global. Setiap hari sudah tersedia 4 kali penerbangan (Garuda Indonesia, Batik Air, Lion Air, dan Wings Air) dari Jakarta/Bali transit Makassar menuju Bandara Matahora Wakatobi.

Gubernur Sultra Nur Alam mengatakan, tujuan penyelenggaraan event ini adalah mempromosikan Wakatobi sebagai salah satu destinasi wisata unggulan di Indonesia, dengan target peningkatan arus kunjungan wisatawan (khususnya wisatawan nusantara), serta mendorong percepatan pembangunan dan pengembangan potensi sumber daya kelautan dan pariwisata dalam mewujudkan kesejahteraan masyarakat seluas-luasnya, khususnya masyarakat pesisir dan pulau-pulau kecil. Kegiatan Calendar of Event Wakatobi 2017 berisi rangkaian festival budaya, antara lain Wowine, Festival Pulau Tomia, Festival Sampela Liya, Festival Barata Kahedupa, Semalam di Liya Togo, dan Wakatobi Wave."

Tujuan penyelenggaraan kegiatan tersebut adalah sebagai berikut, KECUALI...', 'Meningkatkan arus kunjungan wisatawan', 'Mewujudkan kesejahteraan masyarakat pesisir', 'Meningkatkan kerja sama di bidang pariwisata dengan negara-negara lain', 'Mempromosikan Wakatobi sebagai salah satu destinasi wisata unggulan di Indonesia', 'Mendorong percepatan pembangunan dan pengembangan potensi sumber daya kelautan dan pariwisata', 'C', 'Bacaan menyebutkan tujuan Calendar of Event Wakatobi 2017 meliputi promosi destinasi unggulan, peningkatan arus kunjungan wisatawan, percepatan pembangunan sumber daya kelautan-pariwisata, dan kesejahteraan masyarakat pesisir. Tidak ada satu pun bagian bacaan yang menyebutkan tujuan berupa kerja sama pariwisata dengan negara lain. Jadi jawabannya adalah C.', 'medium', 36),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Menteri Pariwisata (Menpar) Arief Yahya bersama Gubernur Sulawesi Tenggara (Sultra) Nur Alam, Wakil Gubernur Sultra M. Saleh Lasata, dan Bupati Wakatobi Arhawi meluncurkan Calendar of Event Wakatobi 2017. Peluncuran ini merupakan upaya mempromosikan sekaligus meningkatkan kunjungan wisatawan ke Wakatobi, yang pada tahun tersebut menargetkan 40 ribu wisatawan.

Penyelenggaraan Calendar of Event Wakatobi 2017 yang mengangkat tema "Kalender Event Wakatobi Bersinar, Wakatobi Melala" merupakan yang pertama kali digelar, berlangsung sepanjang Januari-Desember 2017 dengan menampilkan event unggulan yang bertumpu pada daya tarik alam (nature), budaya (culture), dan buatan manusia (handmade). Menpar Arief Yahya memberikan apresiasi terhadap penyelenggaraan ini dalam rangka memperkuat daya saing pariwisata Wakatobi sebagai destinasi kelas dunia, khususnya untuk marine tourism, yang didukung unsur 3A (atraksi, amenitas, dan aksesibilitas) berstandar global. Setiap hari sudah tersedia 4 kali penerbangan (Garuda Indonesia, Batik Air, Lion Air, dan Wings Air) dari Jakarta/Bali transit Makassar menuju Bandara Matahora Wakatobi.

Gubernur Sultra Nur Alam mengatakan, tujuan penyelenggaraan event ini adalah mempromosikan Wakatobi sebagai salah satu destinasi wisata unggulan di Indonesia, dengan target peningkatan arus kunjungan wisatawan (khususnya wisatawan nusantara), serta mendorong percepatan pembangunan dan pengembangan potensi sumber daya kelautan dan pariwisata dalam mewujudkan kesejahteraan masyarakat seluas-luasnya, khususnya masyarakat pesisir dan pulau-pulau kecil. Kegiatan Calendar of Event Wakatobi 2017 berisi rangkaian festival budaya, antara lain Wowine, Festival Pulau Tomia, Festival Sampela Liya, Festival Barata Kahedupa, Semalam di Liya Togo, dan Wakatobi Wave."

Pernyataan yang TIDAK SESUAI dengan bacaan tersebut adalah...', 'Wakatobi adalah wisata laut unggulan di Indonesia', 'Peluncuran Calendar of Event Wakatobi 2017 dihadiri oleh pejabat setempat', 'Wakatobi dapat diakses langsung dari Jakarta/Bali ke Bandara Matahora Wakatobi', 'Masyarakat setempat mengadakan berbagai festival dalam memeriahkan event Wakatobi', 'Selain keindahan alam, Wakatobi juga menonjolkan budaya sebagai daya tarik bagi wisatawan', 'C', 'Bacaan menyebutkan bahwa penerbangan dari Jakarta/Bali menuju Bandara Matahora Wakatobi harus transit terlebih dahulu di Makassar, sehingga pernyataan bahwa Wakatobi dapat diakses LANGSUNG dari Jakarta/Bali tidak sesuai dengan bacaan. Jadi jawabannya adalah C.', 'medium', 37),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Dalam rancangan Rencana Kerja Pemerintah (RKP) 2018, pertumbuhan ekonomi diprediksi berada pada kisaran 5,4-6,1 persen, atau tepatnya di level 5,6 persen. Menteri PPN/Kepala Bappenas Bambang Brodjonegoro, dalam Musyawarah Perencanaan Pembangunan Nasional (Musrenbangnas) 2017, menyatakan bahwa pemerintah akan fokus pada pengembangan industri pengolahan, pertanian, perdagangan, konstruksi, hingga jasa keuangan.

Pada 2018, pembangunan difokuskan pada tiga sektor prioritas yang akan ditingkatkan perannya terhadap pertumbuhan ekonomi dan penciptaan lapangan pekerjaan, yaitu industri pengolahan, pertanian, dan pariwisata. Penyusunan RKP 2018 menggunakan prinsip money follows program melalui pendekatan tematik, holistik, integratif, dan spasial, dengan empat fokus perkuatan, yaitu: (1) perkuatan perencanaan dan penganggaran, dengan menajamkan prioritas nasional dan program prioritas 2018 serta memperkuat koordinasi antar-kementerian/lembaga dan pusat-daerah; (2) penguatan pengendalian perencanaan, dengan menyusun proyek prioritas hingga level proyek; (3) penguatan perencanaan berbasis kewilayahan, dengan proyek prioritas hingga detail rencana lokasi pembangunan; dan (4) penguatan integrasi sumber pendanaan, yang mencakup APBN, APBD, badan usaha (BUMN/BUMD), dan swasta melalui skema KPBU dan PINA."

Yang TIDAK termasuk fokus perkuatan pada penyusunan RKP 2018 yang menggunakan prinsip money follows program adalah...', 'Memperkuat perencanaan dan pengalokasian anggaran', 'Memperkuat perencanaan dengan basis kewilayahan', 'Menajamkan prioritas pertumbuhan ekonomi', 'Melakukan integrasi dalam hal pendanaan', 'Memperkuat pengendalian perencanaan', 'C', 'Keempat fokus perkuatan yang disebutkan bacaan adalah perencanaan-penganggaran, pengendalian perencanaan, perencanaan berbasis kewilayahan, dan integrasi sumber pendanaan. Bacaan menyebutkan "menajamkan prioritas nasional", bukan "prioritas pertumbuhan ekonomi", sehingga opsi C tidak termasuk keempat fokus tersebut. Jadi jawabannya adalah C.', 'hard', 38),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Dalam rancangan Rencana Kerja Pemerintah (RKP) 2018, pertumbuhan ekonomi diprediksi berada pada kisaran 5,4-6,1 persen, atau tepatnya di level 5,6 persen. Menteri PPN/Kepala Bappenas Bambang Brodjonegoro, dalam Musyawarah Perencanaan Pembangunan Nasional (Musrenbangnas) 2017, menyatakan bahwa pemerintah akan fokus pada pengembangan industri pengolahan, pertanian, perdagangan, konstruksi, hingga jasa keuangan.

Pada 2018, pembangunan difokuskan pada tiga sektor prioritas yang akan ditingkatkan perannya terhadap pertumbuhan ekonomi dan penciptaan lapangan pekerjaan, yaitu industri pengolahan, pertanian, dan pariwisata. Penyusunan RKP 2018 menggunakan prinsip money follows program melalui pendekatan tematik, holistik, integratif, dan spasial, dengan empat fokus perkuatan, yaitu: (1) perkuatan perencanaan dan penganggaran, dengan menajamkan prioritas nasional dan program prioritas 2018 serta memperkuat koordinasi antar-kementerian/lembaga dan pusat-daerah; (2) penguatan pengendalian perencanaan, dengan menyusun proyek prioritas hingga level proyek; (3) penguatan perencanaan berbasis kewilayahan, dengan proyek prioritas hingga detail rencana lokasi pembangunan; dan (4) penguatan integrasi sumber pendanaan, yang mencakup APBN, APBD, badan usaha (BUMN/BUMD), dan swasta melalui skema KPBU dan PINA."

Berikut ini yang merupakan sektor prioritas yang akan ditingkatkan untuk menciptakan lapangan pekerjaan adalah...', 'Jasa keuangan', 'Perdagangan', 'Pendidikan', 'Konstruksi', 'Pertanian', 'E', 'Bacaan menyebutkan tiga sektor prioritas untuk penciptaan lapangan pekerjaan secara spesifik, yaitu industri pengolahan, pertanian, dan pariwisata. Jasa keuangan, perdagangan, dan konstruksi disebut sebagai sektor pengembangan ekonomi umum (bukan bagian dari tiga sektor prioritas penciptaan lapangan kerja), sedangkan pendidikan tidak disebutkan sama sekali. Jadi jawabannya adalah E.', 'medium', 39);
