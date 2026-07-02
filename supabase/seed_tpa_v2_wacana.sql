-- Materi + mind map + soal: Bab "Wacana" (Modul TPA v2)
-- Sub-topik: Paragraf Deduktif, Induktif, Campuran, Ide Pokok, Mencari Salah/Benar, Sinonim/Antonim Kontekstual
-- (dipecah dari seed_tpa_v2_verbal2_wacana.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060300000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060300000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060300000000', 'Paragraf Deduktif', '**Definisi:** Paragraf deduktif adalah paragraf yang kalimat utamanya diletakkan di AWAL paragraf, kemudian diikuti oleh kalimat-kalimat penjelas yang merinci, memberi contoh, atau memperkuat kalimat utama tersebut. Pola pengembangannya bergerak dari hal yang bersifat umum menuju hal yang lebih khusus (umum -> khusus).

**Pengenalan:** Ciri paling mudah dikenali: begitu membaca kalimat pertama paragraf, kamu sudah bisa menangkap inti keseluruhan paragraf, sedangkan kalimat-kalimat setelahnya hanya menjabarkan detail dari kalimat pertama itu. Pada level lanjutan (setingkat tes potensi akademik OTO Bappenas), paragraf deduktif yang diujikan biasanya tidak sesederhana 3-4 kalimat naratif.

**Poin yang Harus Diketahui:**
- Wacana bisa terdiri atas satu kalimat utama yang diikuti BEBERAPA kalimat penjelas kompleks -- misalnya kalimat yang memuat data/statistik, sebab-akibat berlapis, atau perbandingan -- yang masing-masing menjelaskan sisi berbeda dari gagasan utama, bukan sekadar mengulang dengan kata lain.
- Kamu perlu memilah kalimat penjelas mana yang benar-benar mendukung gagasan utama dan mana yang hanya berupa detail tambahan.
- Ada variasi yang disebut paragraf ineratif, yaitu paragraf yang kalimat utamanya berada di TENGAH paragraf: kalimat sebelum dan sesudahnya sama-sama berfungsi sebagai pengantar dan penegasan.
- Paragraf ineratif relatif jarang muncul dibanding deduktif/induktif/campuran, tetapi tetap perlu dikenali agar tidak keliru mengira paragraf tersebut tidak memiliki kalimat utama.

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

**Pengenalan:** Ciri paling mudah dikenali: kalimat terakhir paragraf sering diawali kata-kata penanda simpulan seperti "jadi", "oleh karena itu", "dengan demikian", "maka dari itu", atau "sehingga". Pada level lanjutan, paragraf induktif yang diujikan sering memuat LEBIH dari satu kalimat penjelas yang kompleks sebelum simpulan.

**Poin yang Harus Diketahui:**
- Kalimat penjelas sebelum simpulan bisa berupa rangkaian data/statistik, beberapa fakta khusus yang berbeda jenis (bukan sekadar mengulang satu poin dengan kata lain), atau argumen berlapis yang semuanya mengarah ke satu simpulan di akhir.
- Semakin banyak dan beragam rincian di awal, semakin penting bagi kamu mengenali benang merah yang menyatukan semuanya sebelum sampai ke kalimat simpulan.
- Ada pula variasi paragraf ineratif, yaitu kalimat utama yang justru berada di TENGAH paragraf, diapit oleh kalimat pengantar di awal dan kalimat penegasan di akhir.
- Variasi ineratif jarang muncul, tetapi perlu diwaspadai supaya tidak salah menyimpulkan letak kalimat utama.

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

**Pengenalan:** Jadi ada dua kalimat yang saling menguatkan: satu di awal sebagai pembuka gagasan, satu di akhir sebagai penegasan ulang, sementara kalimat-kalimat di tengah berisi penjelasan pendukung. Pada level lanjutan, kalimat-kalimat penjelas di tengah paragraf campuran seringkali lebih dari satu dan bersifat kompleks.

**Poin yang Harus Diketahui:**
- Kalimat penjelas di tengah bisa memuat data pendukung, contoh berlapis, atau argumen tambahan yang memperkuat gagasan utama dari berbagai sisi sebelum akhirnya ditegaskan kembali di kalimat penutup.
- Penegasan di akhir tidak selalu berupa pengulangan kata yang identik dengan kalimat pembuka, tetapi bisa berupa simpulan yang senada secara makna meski disampaikan dengan diksi berbeda.
- Perlu dibedakan dari paragraf ineratif, yang kalimat utamanya justru hanya muncul SATU kali di tengah paragraf (bukan di awal dan akhir sekaligus) -- pada paragraf campuran, gagasan utama harus tampak di DUA titik: awal dan akhir.

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

**Pengenalan:** Ide pokok bisa dinyatakan secara tersurat (langsung tertulis) di dalam kalimat utama, atau tersirat, yaitu tersebar dan harus disimpulkan sendiri oleh pembaca dari keseluruhan isi paragraf. Letak kalimat utama bisa di awal (deduktif), di akhir (induktif), di awal & dipertegas di akhir (campuran), atau di tengah (ineratif). Pada level lanjutan, kamu dituntut lebih tegas membedakan ide pokok TERSURAT dan ide pokok TERSIRAT.

**Poin yang Harus Diketahui:**
- Ide pokok tersurat ditemukan langsung dalam satu kalimat utama yang eksplisit (seperti pada paragraf deduktif, induktif, campuran, atau ineratif).
- Ide pokok tersirat muncul pada paragraf yang seluruh kalimatnya setara/deskriptif tanpa ada satu kalimat pun yang secara eksplisit merangkum keseluruhan isi paragraf tersebut -- misalnya paragraf naratif yang hanya memaparkan rangkaian peristiwa, tanpa kalimat simpulan atau kalimat umum yang menaunginya.
- Contohnya, paragraf berikut tidak memiliki kalimat utama eksplisit: "Hujan mengguyur kota sejak pagi. Jalan-jalan protokol tergenang air setinggi mata kaki. Sejumlah kendaraan mogok di tengah jalan. Aktivitas warga menuju tempat kerja pun terhambat." Pada paragraf semacam ini, ide pokok harus dirumuskan sendiri oleh pembaca dari benang merah seluruh kalimat, misalnya "hujan deras menyebabkan gangguan aktivitas warga kota", meskipun kalimat itu sendiri tidak tertulis secara harfiah di dalam paragraf.

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

**Pengenalan:** Soal ini menguji ketelitian membaca, bukan pengetahuan umum di luar teks, sehingga jawaban harus murni berdasarkan apa yang tertulis atau bisa disimpulkan langsung dari teks, bukan asumsi pribadi. Pada level lanjutan, dua jenis jebakan yang paling sering muncul adalah OVERGENERALISASI dan INFORMASI DI LUAR TEKS.

**Poin yang Harus Diketahui:**
- Jebakan overgeneralisasi terjadi ketika sebuah opsi membesar-besarkan informasi yang sebenarnya terbatas di dalam teks -- misalnya teks hanya menyebutkan "sebagian sekolah" atau "beberapa daerah", tetapi opsi jawaban menuliskannya seolah berlaku untuk "semua sekolah" atau "seluruh daerah".
- Kata-kata seperti "selalu", "seluruh", "semua", "tidak pernah", atau "pasti" pada opsi jawaban patut dicurigai jika teks aslinya hanya menyebutkan cakupan yang terbatas atau bersyarat.
- Jebakan informasi di luar teks terjadi ketika sebuah opsi memuat pernyataan yang secara umum masuk akal atau bahkan benar secara faktual di dunia nyata, tetapi TIDAK disebutkan sama sekali di dalam wacana yang diberikan; opsi semacam ini sering terasa "benar" karena sesuai pengetahuan umum pembaca, padahal soal menuntut jawaban murni berdasarkan apa yang tertulis di teks.
- Level lanjutan juga menuntut kamu membedakan FAKTA (hal yang dapat dibuktikan/diukur dan memang tertulis di teks), OPINI (penilaian atau pendapat, biasanya ditandai kata seperti "sebaiknya", "seharusnya", "menurut", atau kata sifat subjektif), dan ASUMSI (simpulan yang dianggap benar oleh penulis tanpa dinyatakan secara eksplisit) yang mungkin bercampur dalam satu wacana.

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

**Pengenalan:** Berbeda dengan soal sinonim/antonim yang berdiri sendiri, di sini makna kata harus disesuaikan dengan konteks kalimat tempat kata itu berada, karena satu kata bisa punya beberapa makna berbeda tergantung situasinya. Pada level lanjutan, banyak kata dalam bahasa Indonesia bersifat polisemi, yaitu memiliki LEBIH dari satu makna yang berbeda tergantung konteks kalimatnya.

**Poin yang Harus Diketahui:**
- Misalnya kata "bisa" dapat bermakna "mampu/dapat" atau bermakna "racun" tergantung kalimatnya; kata "buku" dapat bermakna "kitab bacaan" atau "ruas pada batang tebu/bambu"; kata "genap" bisa berarti "lengkap/cukup" atau "bilangan yang habis dibagi dua".
- Soal level lanjutan sengaja memilih kata-kata polisemi seperti ini agar peserta tidak asal memilih makna kamus yang paling sering dipakai sehari-hari, melainkan harus benar-benar menelusuri konteks kalimat di sekitarnya untuk menentukan makna yang tepat.
- Kesalahan umum adalah langsung memilih sinonim/antonim dari makna yang paling populer tanpa mengecek apakah makna itu cocok dengan konteks kalimat yang sedang dibahas.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Pendidikan berbasis teknologi digital kini semakin diminati di berbagai jenjang sekolah. Guru dapat memanfaatkan aplikasi pembelajaran untuk memberi tugas dan menilai siswa secara daring. Siswa pun bisa mengakses materi pelajaran kapan saja melalui perangkat masing-masing. Bahkan, beberapa sekolah telah menyediakan kelas virtual sebagai pengganti tatap muka saat diperlukan."

Paragraf tersebut termasuk jenis paragraf...', 'Induktif', 'Deduktif', 'Campuran', 'Naratif', 'Deskriptif tanpa kalimat utama', 'B', 'Kalimat pertama, "Pendidikan berbasis teknologi digital kini semakin diminati di berbagai jenjang sekolah," merupakan pernyataan umum yang menjadi kalimat utama, sedangkan kalimat-kalimat berikutnya hanya merinci contoh penerapannya. Pola umum -> khusus ini menandakan paragraf deduktif.', 'easy'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang pendidikan berbasis teknologi digital), pernyataan berikut yang PALING SESUAI dengan isi paragraf adalah...', 'Seluruh sekolah di Indonesia sudah sepenuhnya beralih ke kelas virtual', 'Siswa hanya dapat mengakses materi pelajaran di sekolah pada jam belajar', 'Guru dapat memberi tugas dan menilai siswa secara daring melalui aplikasi pembelajaran', 'Kelas virtual menggantikan seluruh kegiatan tatap muka secara permanen', 'Teknologi digital menurunkan minat siswa terhadap pendidikan', 'C', 'Paragraf secara eksplisit menyatakan "Guru dapat memanfaatkan aplikasi pembelajaran untuk memberi tugas dan menilai siswa secara daring." Opsi lain melebih-lebihkan atau memutarbalikkan isi teks, misalnya kelas virtual hanya disebut sebagai pengganti "saat diperlukan", bukan permanen atau menyeluruh.', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Sampah plastik yang dibuang sembarangan dapat mencemari sungai dan merusak ekosistem air. Banyak hewan laut yang mati akibat menelan atau terjerat plastik. Selain itu, plastik membutuhkan waktu ratusan tahun untuk terurai secara alami. Oleh karena itu, pengurangan penggunaan plastik sekali pakai perlu digalakkan sejak dari lingkungan rumah tangga."

Kalimat utama paragraf tersebut terletak di bagian...', 'Awal paragraf', 'Tengah paragraf', 'Akhir paragraf', 'Awal dan akhir paragraf sekaligus', 'Tidak ada kalimat utama dalam paragraf ini', 'C', 'Kalimat terakhir diawali frasa penanda simpulan "Oleh karena itu," yang merangkum seluruh dampak buruk plastik yang dijelaskan sebelumnya menjadi satu simpulan umum: perlunya mengurangi plastik sekali pakai. Ini adalah ciri khas paragraf induktif, di mana kalimat utama berada di akhir.', 'easy'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang sampah plastik), ide pokok paragraf tersebut adalah...', 'Hewan laut adalah makhluk yang paling terancam punah di dunia', 'Sungai adalah satu-satunya ekosistem yang tercemar oleh plastik', 'Rumah tangga adalah penyebab utama seluruh pencemaran laut', 'Plastik dapat terurai secara alami dalam waktu singkat', 'Plastik sekali pakai perlu dikurangi karena dampak buruknya terhadap lingkungan', 'E', 'Ide pokok paragraf induktif tercermin dari kalimat simpulannya, yaitu perlunya mengurangi penggunaan plastik sekali pakai karena berbagai dampak buruk yang telah dipaparkan sebelumnya (pencemaran sungai, kematian hewan laut, sulit terurai).', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Perpustakaan daerah kini tidak lagi sekadar tempat meminjam buku. Fasilitas ruang baca ber-AC, akses internet gratis, dan ruang diskusi kelompok tersedia bagi pengunjung. Beberapa perpustakaan bahkan mengadakan pelatihan menulis dan bedah buku secara rutin. Dengan berbagai fasilitas dan kegiatan tersebut, perpustakaan daerah kini bertransformasi menjadi pusat kegiatan literasi masyarakat yang lengkap."

Paragraf tersebut termasuk jenis paragraf campuran karena...', 'Kalimat utama hanya muncul satu kali di tengah paragraf', 'Gagasan tentang perpustakaan sebagai pusat literasi disampaikan di awal dan ditegaskan kembali di akhir paragraf', 'Seluruh kalimat dalam paragraf bersifat khusus tanpa ada simpulan', 'Paragraf tidak memiliki kalimat penjelas sama sekali', 'Kalimat utama hanya terdapat di bagian akhir tanpa ada penanda di awal', 'B', 'Kalimat pertama menyatakan perpustakaan "tidak lagi sekadar tempat meminjam buku" (mengisyaratkan fungsi baru yang lebih luas), lalu kalimat terakhir menegaskan kembali gagasan itu secara eksplisit sebagai "pusat kegiatan literasi masyarakat yang lengkap". Pengulangan gagasan di awal dan akhir dengan kalimat penjelas di tengah adalah ciri khas paragraf campuran.', 'hard');

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Layanan kesehatan berbasis aplikasi kini semakin mudah diakses masyarakat. Pasien dapat berkonsultasi dengan dokter melalui panggilan video tanpa perlu datang ke klinik. Resep obat pun bisa langsung dikirim ke apotek terdekat secara elektronik. Bahkan, hasil pemeriksaan laboratorium dapat diunduh langsung dari aplikasi tanpa menunggu lama."

Paragraf tersebut termasuk jenis paragraf...', 'Induktif', 'Deduktif', 'Campuran', 'Naratif', 'Deskriptif tanpa kalimat utama', 'B', 'Kalimat pertama, "Layanan kesehatan berbasis aplikasi kini semakin mudah diakses masyarakat," adalah pernyataan umum yang menjadi kalimat utama, sedangkan kalimat-kalimat berikutnya hanya merinci contoh layanannya (konsultasi video, resep elektronik, hasil lab). Pola umum -> khusus ini adalah ciri paragraf deduktif.', 'easy'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang layanan kesehatan berbasis aplikasi), pernyataan berikut yang PALING SESUAI dengan isi paragraf adalah...', 'Semua rumah sakit telah menutup seluruh layanan tatap muka', 'Pasien wajib membeli obat langsung di apotek tanpa resep dokter', 'Hasil pemeriksaan laboratorium hanya bisa diperoleh dengan datang langsung ke klinik', 'Pasien dapat berkonsultasi dengan dokter melalui panggilan video tanpa perlu datang ke klinik', 'Aplikasi kesehatan hanya melayani konsultasi tanpa bisa mengirim resep obat', 'D', 'Pernyataan ini sesuai dengan kalimat kedua paragraf yang menyebutkan pasien dapat berkonsultasi dengan dokter melalui panggilan video tanpa perlu datang ke klinik. Opsi lain bertentangan dengan teks, misalnya resep obat justru dikirim elektronik ke apotek dan hasil lab bisa diunduh dari aplikasi, bukan harus datang ke klinik.', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Kurang tidur dalam jangka panjang dapat menurunkan daya konsentrasi dan memperlambat waktu reaksi seseorang. Selain itu, sistem kekebalan tubuh juga menjadi lebih rentan terhadap infeksi ketika waktu tidur tidak tercukupi. Risiko gangguan suasana hati seperti mudah marah dan cemas juga meningkat akibat kurang istirahat. Dengan demikian, tidur yang cukup setiap malam sangat penting untuk menjaga kesehatan fisik maupun mental."

Kalimat utama paragraf tersebut terletak di bagian...', 'Awal paragraf', 'Tengah paragraf', 'Akhir paragraf', 'Awal dan akhir paragraf sekaligus', 'Tidak ada kalimat utama dalam paragraf ini', 'C', 'Kalimat terakhir diawali frasa penanda simpulan "Dengan demikian," yang merangkum seluruh dampak buruk kurang tidur yang dijelaskan sebelumnya menjadi satu simpulan umum. Ini adalah ciri khas paragraf induktif, di mana kalimat utama berada di akhir.', 'easy'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang kurang tidur), ide pokok paragraf tersebut adalah...', 'Sistem kekebalan tubuh tidak dipengaruhi oleh waktu tidur seseorang', 'Gangguan suasana hati akibat kurang tidur hanya dialami oleh orang dewasa', 'Waktu reaksi seseorang menjadi semakin cepat ketika kurang tidur', 'Kurang tidur tidak memberi dampak apa pun terhadap kesehatan mental', 'Tidur yang cukup setiap malam sangat penting untuk menjaga kesehatan fisik maupun mental', 'E', 'Ide pokok paragraf induktif tercermin dari kalimat simpulannya, yaitu pentingnya tidur yang cukup setiap malam bagi kesehatan fisik maupun mental, setelah dipaparkan berbagai dampak buruk kurang tidur (konsentrasi menurun, imun melemah, suasana hati terganggu).', 'hard'),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Mengatur anggaran belanja bulanan adalah kunci utama menjaga kestabilan keuangan keluarga. Setiap pengeluaran, mulai dari kebutuhan pokok hingga hiburan, sebaiknya dicatat secara rutin agar mudah dievaluasi. Dana darurat juga perlu disisihkan setiap bulan untuk mengantisipasi kebutuhan mendadak. Oleh sebab itu, pencatatan dan perencanaan anggaran yang disiplin menjadi fondasi utama bagi kesehatan finansial sebuah keluarga."

Paragraf tersebut termasuk jenis paragraf campuran karena...', 'Gagasan tentang anggaran sebagai kunci kestabilan keuangan disampaikan di awal dan ditegaskan kembali di akhir paragraf', 'Kalimat utama hanya muncul satu kali di tengah paragraf', 'Seluruh kalimat dalam paragraf bersifat umum tanpa ada contoh atau rincian', 'Paragraf tidak memiliki kalimat penjelas sama sekali', 'Kalimat utama hanya terdapat di awal tanpa ada penegasan ulang di akhir', 'A', 'Kalimat pertama menyatakan anggaran belanja adalah "kunci utama menjaga kestabilan keuangan keluarga", lalu kalimat terakhir menegaskan kembali gagasan senada bahwa pencatatan dan perencanaan anggaran menjadi "fondasi utama bagi kesehatan finansial sebuah keluarga". Pengulangan gagasan di awal dan akhir ini adalah ciri paragraf campuran.', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang anggaran belanja bulanan), makna kata "fondasi" pada kalimat terakhir paragraf tersebut paling dekat dengan...', 'Hambatan', 'Dasar atau landasan', 'Tujuan akhir', 'Pengeluaran rutin', 'Risiko keuangan', 'B', 'Dalam konteks kalimat tersebut, "fondasi" bermakna dasar atau landasan tempat sesuatu dibangun, yaitu pencatatan dan perencanaan anggaran yang disiplin menjadi dasar bagi kesehatan finansial keluarga.', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Berkebun di lahan sempit perkotaan kini menjadi solusi populer untuk memenuhi kebutuhan sayuran segar. Warga dapat memanfaatkan pot, polybag, atau rak vertikal untuk menanam sayuran di halaman rumah yang terbatas. Selain menghemat pengeluaran belanja, kegiatan ini juga membantu mengurangi limbah organik rumah tangga karena bisa diolah menjadi kompos. Kegiatan berkebun semacam ini pun turut mempererat interaksi sosial antarwarga melalui kelompok tani perkotaan."

Paragraf tersebut termasuk jenis paragraf...', 'Induktif', 'Campuran', 'Naratif', 'Persuasif tanpa kalimat utama', 'Deduktif', 'E', 'Kalimat pertama menyampaikan gagasan umum bahwa berkebun di lahan sempit perkotaan menjadi solusi populer, sedangkan kalimat-kalimat berikutnya merinci cara (pot, polybag, rak vertikal) dan manfaatnya (menghemat pengeluaran, mengurangi limbah, mempererat interaksi sosial). Pola umum -> khusus ini menandakan paragraf deduktif.', 'easy'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang berkebun di lahan sempit perkotaan), antonim atau lawan kata dari kata "sempit" pada kalimat pertama paragraf tersebut adalah...', 'Luas', 'Padat', 'Kecil', 'Terbatas', 'Rapat', 'A', 'Kata "sempit" berarti tidak luas atau memiliki ruang yang terbatas, sehingga lawan katanya adalah "luas". Pilihan lain seperti "padat", "kecil", "terbatas", atau "rapat" bukan lawan kata melainkan justru senada atau tidak relevan sebagai antonim.', 'hard'),
('b0000000-0000-4000-8000-060300000000', 'Bacalah paragraf berikut.

"Anak-anak yang diajari mengelola uang saku sejak dini cenderung lebih bijak dalam mengambil keputusan finansial saat dewasa. Kebiasaan menabung sebagian uang saku juga melatih anak untuk menunda kepuasan sesaat demi tujuan yang lebih besar. Selain itu, anak yang memahami perbedaan antara kebutuhan dan keinginan akan lebih jarang berperilaku konsumtif. Oleh karena itu, pendidikan literasi keuangan sebaiknya diperkenalkan kepada anak sejak usia sekolah dasar."

Berdasarkan paragraf tersebut, pernyataan berikut yang PALING SESUAI dengan isi paragraf adalah...', 'Anak-anak sebaiknya tidak diberi uang saku sama sekali', 'Menabung membuat anak semakin sulit membedakan kebutuhan dan keinginan', 'Kebiasaan menabung melatih anak menunda kepuasan sesaat demi tujuan yang lebih besar', 'Literasi keuangan hanya perlu diajarkan kepada orang dewasa', 'Anak yang memahami kebutuhan dan keinginan justru lebih berperilaku konsumtif', 'C', 'Pernyataan ini sesuai dengan kalimat kedua paragraf yang menyebutkan kebiasaan menabung sebagian uang saku melatih anak untuk menunda kepuasan sesaat demi tujuan yang lebih besar. Opsi lain bertentangan langsung dengan isi paragraf.', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Berdasarkan paragraf pada soal sebelumnya (tentang literasi keuangan anak), ide pokok paragraf tersebut adalah...', 'Anak-anak tidak membutuhkan pendidikan finansial sejak dini', 'Uang saku sebaiknya dihabiskan sepenuhnya oleh anak setiap hari', 'Kemampuan menunda kepuasan hanya berlaku bagi orang dewasa', 'Pendidikan literasi keuangan sebaiknya diperkenalkan kepada anak sejak usia sekolah dasar', 'Anak-anak secara alami sudah bijak mengelola uang tanpa perlu diajari', 'D', 'Ide pokok paragraf induktif ini tercermin dari kalimat simpulan di akhir yang diawali "Oleh karena itu," yaitu pendidikan literasi keuangan sebaiknya diperkenalkan kepada anak sejak usia sekolah dasar, setelah dipaparkan berbagai manfaat mengelola uang saku sejak dini.', 'hard');
