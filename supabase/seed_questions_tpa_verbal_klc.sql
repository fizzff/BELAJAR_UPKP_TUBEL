-- Bank soal TPA VERBAL berstruktur kategori KLC (ORISINAL, bukan salinan):
-- Sinonim, Antonim, Analogi, Silogisme/Penalaran, Pemahaman Wacana (1 bacaan = 5 soal).
-- Idempotent: hapus soal pada 5 bab verbal lalu isi ulang.
-- Jalankan SETELAH migrate_verbal_klc_structure.sql.

delete from questions where chapter_id in (
  'b0000000-0000-4000-8000-060100000000', -- Sinonim
  'b0000000-0000-4000-8000-060200000000', -- Antonim
  'b0000000-0000-4000-8000-060500000000', -- Analogi
  'b0000000-0000-4000-8000-060400000000', -- Penarikan Kesimpulan
  'b0000000-0000-4000-8000-060600000000', -- Logika Posisi
  'b0000000-0000-4000-8000-060300000000'  -- Wacana
);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values

-- ============================ SINONIM ============================
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata BERGEGAS adalah...','Tergesa-gesa','Bersantai','Berhenti','Melambat','Ragu-ragu',null,'A','Bergegas berarti bergerak cepat karena tergesa-gesa.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata RANCU adalah...','Teratur','Kacau','Jelas','Rapi','Runut',null,'B','Rancu berarti kacau atau tidak teratur.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata KONKRET adalah...','Abstrak','Semu','Nyata','Maya','Kabur',null,'C','Konkret berarti nyata atau berwujud.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SAHIH adalah...','Palsu','Keliru','Cacat','Valid','Lemah',null,'D','Sahih berarti sah, benar, atau valid.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ANDAL adalah...','Rapuh','Labil','Ragu','Lemah','Tangguh',null,'E','Andal berarti dapat dipercaya dan tangguh.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SINKRON adalah...','Selaras','Sumbang','Acak','Bertentangan','Timpang',null,'A','Sinkron berarti selaras atau serentak.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata AMBIGU adalah...','Pasti','Taksa','Lugas','Terang','Tunggal',null,'B','Ambigu berarti bermakna ganda atau taksa.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata KONSERVASI adalah...','Perusakan','Eksploitasi','Pelestarian','Pembongkaran','Penebangan',null,'C','Konservasi berarti pelestarian atau perlindungan.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ELABORASI adalah...','Penyederhanaan','Perincian','Penghapusan','Penyingkatan','Pengabaian',null,'B','Elaborasi berarti penggarapan secara tekun dan terperinci.','hard'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SPORADIS adalah...','Terus-menerus','Teratur','Kadang-kadang','Serentak','Merata',null,'C','Sporadis berarti tidak tentu dan hanya sekali-sekali.','hard'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ANOMALI adalah...','Keteraturan','Kelaziman','Kewajaran','Keganjilan','Kestabilan',null,'D','Anomali berarti keganjilan atau penyimpangan dari keadaan normal.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata BONAFIDE adalah...','Meragukan','Abal-abal','Palsu','Rapuh','Tepercaya',null,'E','Bonafide berarti dapat dipercaya dan sungguh-sungguh.','medium'),

-- ============================ ANTONIM ============================
('b0000000-0000-4000-8000-060200000000','Antonim (lawan kata) dari GAGAL adalah...','Rugi','Berhasil','Jatuh','Kalah','Hancur',null,'B','Lawan dari gagal adalah berhasil.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata CURAM adalah...','Terjal','Tinggi','Landai','Dalam','Miring',null,'C','Lawan dari curam (terjal) adalah landai.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata FANA adalah...','Sementara','Rapuh','Sirna','Kekal','Lenyap',null,'D','Fana berarti sementara; lawannya kekal atau abadi.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata STATIS adalah...','Diam','Tetap','Beku','Kaku','Dinamis',null,'E','Lawan dari statis (tidak berubah) adalah dinamis.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata GERSANG adalah...','Subur','Tandus','Kering','Kerontang','Kosong',null,'A','Lawan dari gersang adalah subur.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata CEROBOH adalah...','Lalai','Teliti','Sembrono','Gegabah','Lengah',null,'B','Lawan dari ceroboh adalah teliti atau cermat.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata NISBI adalah...','Relatif','Semu','Mutlak','Bias','Samar',null,'C','Nisbi berarti relatif; lawannya mutlak.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata PROGRESIF adalah...','Maju','Pesat','Dinamis','Regresif','Aktif',null,'D','Progresif berarti ke arah maju; lawannya regresif (mundur).','hard'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata KOLEKTIF adalah...','Bersama','Kelompok','Massal','Gotong royong','Individual',null,'E','Kolektif berarti bersama-sama; lawannya individual.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata ANTIPATI adalah...','Simpati','Benci','Acuh','Muak','Sinis',null,'A','Antipati berarti perasaan tidak suka; lawannya simpati.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata MAYOR adalah...','Besar','Utama','Minor','Induk','Pokok',null,'C','Lawan dari mayor adalah minor.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata SEKULER adalah...','Duniawi','Bebas','Netral','Religius','Awam',null,'D','Sekuler berarti duniawi/tidak bersifat keagamaan; lawannya religius.','hard'),

-- ============================ ANALOGI ============================
('b0000000-0000-4000-8000-060500000000','DOKTER : PASIEN = GURU : ...','Sekolah','Murid','Papan tulis','Buku','Kelas',null,'B','Dokter menangani pasien, sebagaimana guru mengajar murid.','easy'),
('b0000000-0000-4000-8000-060500000000','PILOT : PESAWAT = MASINIS : ...','Rel','Stasiun','Kereta','Gerbong','Sinyal',null,'C','Pilot mengemudikan pesawat, masinis mengemudikan kereta.','easy'),
('b0000000-0000-4000-8000-060500000000','TERMOMETER : SUHU = BAROMETER : ...','Cuaca','Angin','Ketinggian','Tekanan','Kelembapan',null,'D','Termometer mengukur suhu, barometer mengukur tekanan udara.','medium'),
('b0000000-0000-4000-8000-060500000000','HAUS : MINUM = LAPAR : ...','Kenyang','Lelah','Makan','Tidur','Sakit',null,'C','Haus diatasi dengan minum, lapar diatasi dengan makan.','easy'),
('b0000000-0000-4000-8000-060500000000','PADI : SAWAH = TEBU : ...','Pabrik','Gula','Ladang','Petani','Cangkul',null,'C','Padi ditanam di sawah, tebu ditanam di ladang.','medium'),
('b0000000-0000-4000-8000-060500000000','SINGA : KARNIVORA = SAPI : ...','Mamalia','Ternak','Rumput','Herbivora','Omnivora',null,'D','Singa termasuk karnivora (pemakan daging), sapi termasuk herbivora (pemakan tumbuhan).','medium'),
('b0000000-0000-4000-8000-060500000000','JARUM : JAHIT = PENA : ...','Kertas','Tinta','Buku','Tulis','Gambar',null,'D','Jarum digunakan untuk menjahit, pena digunakan untuk menulis.','easy'),
('b0000000-0000-4000-8000-060500000000','IKAN : AKUARIUM = BURUNG : ...','Langit','Sayap','Sarang','Sangkar','Pohon',null,'D','Ikan peliharaan ditempatkan di akuarium, burung peliharaan di sangkar.','medium'),
('b0000000-0000-4000-8000-060500000000','GURU : SEKOLAH = HAKIM : ...','Hukum','Palu','Perkara','Pengadilan','Jaksa',null,'D','Guru bekerja di sekolah, hakim bekerja di pengadilan.','medium'),
('b0000000-0000-4000-8000-060500000000','DINGIN : ES = TERANG : ...','Bulan','Lampu','Gelap','Siang','Bayangan',null,'B','Es memberi rasa dingin, lampu memberi terang.','medium'),
('b0000000-0000-4000-8000-060500000000','KAKI : SEPATU = TANGAN : ...','Jari','Cincin','Sarung tangan','Kaus kaki','Gelang',null,'C','Sepatu dikenakan pada kaki, sarung tangan dikenakan pada tangan.','easy'),
('b0000000-0000-4000-8000-060500000000','BUKU : HALAMAN = RUMAH : ...','Atap','Dinding','Kamar','Pintu','Jendela',null,'C','Buku tersusun atas halaman-halaman, rumah tersusun atas kamar-kamar (ruangan).','medium'),

-- ============================ SILOGISME & PENALARAN ============================
('b0000000-0000-4000-8000-060400000000','Semua logam memuai jika dipanaskan. Besi adalah logam. Simpulan yang tepat adalah...','Besi tidak memuai','Besi memuai jika dipanaskan','Semua yang memuai adalah besi','Besi bukan logam','Besi selalu memuai tanpa syarat',null,'B','Besi termasuk logam, maka berlaku sifat semua logam: memuai jika dipanaskan.','medium'),
('b0000000-0000-4000-8000-060400000000','Semua burung berkembang biak dengan bertelur. Pinguin adalah burung. Maka...','Pinguin melahirkan anak','Pinguin berkembang biak dengan bertelur','Pinguin bukan burung','Semua yang bertelur adalah burung','Pinguin tidak berkembang biak',null,'B','Pinguin adalah burung, sehingga berlaku sifat semua burung: bertelur.','medium'),
('b0000000-0000-4000-8000-060400000000','Tidak ada ikan yang bernapas dengan paru-paru. Lele adalah ikan. Maka...','Lele bernapas dengan paru-paru','Lele tidak bernapas dengan paru-paru','Lele bukan ikan','Semua ikan berparu-paru','Lele termasuk mamalia',null,'B','Karena tidak ada ikan yang berparu-paru dan lele adalah ikan, lele tidak bernapas dengan paru-paru.','medium'),
('b0000000-0000-4000-8000-060400000000','Semua dokter pandai. Sebagian dokter adalah peneliti. Simpulan yang pasti benar adalah...','Semua peneliti pandai','Sebagian peneliti pandai','Semua yang pandai adalah dokter','Tidak ada peneliti yang pandai','Semua peneliti adalah dokter',null,'B','Sebagian peneliti (yang juga dokter) pasti pandai, karena semua dokter pandai.','hard'),
('b0000000-0000-4000-8000-060400000000','Jika hari hujan, maka jalan basah. Hari ini jalan tidak basah. Maka...','Hari ini hujan','Hari ini tidak hujan','Jalan tetap basah','Hujan turun lebat','Tidak dapat disimpulkan',null,'B','Modus tollens: bila akibat (jalan basah) tidak terjadi, maka sebab (hujan) juga tidak terjadi.','hard'),
('b0000000-0000-4000-8000-060400000000','Jika Ani rajin, ia naik kelas. Ani naik kelas. Simpulan yang tepat adalah...','Ani pasti rajin','Ani tidak rajin','Ani tidak naik kelas','Belum tentu Ani rajin','Ani sudah pasti malas',null,'D','Naik kelas bisa disebabkan hal lain; dari premis itu tidak dapat dipastikan Ani rajin.','hard'),
('b0000000-0000-4000-8000-060400000000','Semua mahasiswa mengerjakan tugas. Sebagian mahasiswa mengikuti lomba. Maka...','Semua peserta lomba adalah mahasiswa','Sebagian peserta lomba mengerjakan tugas','Semua mahasiswa mengikuti lomba','Tidak ada mahasiswa yang berlomba','Semua yang bertugas berlomba',null,'B','Sebagian peserta lomba adalah mahasiswa, dan semua mahasiswa mengerjakan tugas.','medium'),
('b0000000-0000-4000-8000-060400000000','Semua pohon mangga berbuah. Sebagian pohon di kebun itu adalah pohon mangga. Maka...','Semua pohon di kebun berbuah','Sebagian pohon di kebun itu berbuah','Tidak ada pohon yang berbuah','Semua pohon adalah mangga','Kebun itu tidak berbuah',null,'B','Sebagian pohon di kebun adalah mangga, dan semua mangga berbuah.','medium'),
('b0000000-0000-4000-8000-060400000000','Semua peserta wajib memakai seragam. Doni tidak memakai seragam. Maka...','Doni adalah peserta','Doni bukan peserta','Doni memakai seragam','Sebagian peserta tanpa seragam','Doni datang terlambat',null,'B','Jika semua peserta berseragam dan Doni tidak, maka Doni bukan peserta.','medium'),
('b0000000-0000-4000-8000-060400000000','Semua siswa kelas A lulus ujian. Bima adalah siswa kelas A. Maka...','Bima tidak lulus','Bima lulus ujian','Sebagian kelas A tidak lulus','Bima bukan siswa','Bima mengulang ujian',null,'B','Bima siswa kelas A, sedangkan semua siswa kelas A lulus; maka Bima lulus.','easy'),
('b0000000-0000-4000-8000-060400000000','Semua pegawai yang disiplin mendapat penghargaan. Sebagian pegawai yang disiplin adalah lulusan terbaik. Simpulan yang tepat adalah...','Semua lulusan terbaik disiplin','Sebagian lulusan terbaik mendapat penghargaan','Tidak ada lulusan terbaik yang disiplin','Semua yang mendapat penghargaan adalah lulusan terbaik','Semua pegawai mendapat penghargaan',null,'B','Sebagian lulusan terbaik adalah pegawai disiplin, dan semua pegawai disiplin mendapat penghargaan; maka sebagian lulusan terbaik mendapat penghargaan.','hard'),
('b0000000-0000-4000-8000-060400000000','Tidak ada tumbuhan yang dapat berpindah tempat dengan sendirinya. Semua mawar adalah tumbuhan. Maka...','Semua mawar dapat berpindah tempat','Mawar bukan tumbuhan','Tidak ada mawar yang dapat berpindah tempat dengan sendirinya','Sebagian tumbuhan dapat berpindah tempat','Mawar termasuk hewan',null,'C','Mawar adalah tumbuhan, sedangkan tidak ada tumbuhan yang dapat berpindah sendiri; maka tidak ada mawar yang dapat berpindah sendiri.','medium'),
('b0000000-0000-4000-8000-060400000000','Jika seseorang begadang, ia mengantuk keesokan harinya. Rudi tidak mengantuk hari ini. Maka...','Rudi begadang tadi malam','Rudi tidak begadang tadi malam','Rudi selalu mengantuk','Rudi tidur siang','Tidak dapat disimpulkan apa pun',null,'B','Modus tollens: karena akibat (mengantuk) tidak terjadi, sebab (begadang) juga tidak terjadi.','hard'),

-- ============================ WACANA (1 bacaan = 5 soal) ============================
-- --- BACAAN 1 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Gagasan utama bacaan tersebut adalah...','Perpustakaan adalah satu-satunya cara meningkatkan literasi','Meningkatkan literasi memerlukan akses buku sekaligus budaya membaca','Minat baca masyarakat sudah sangat tinggi','Membaca hanya berguna untuk memperoleh informasi','Anak tidak terpengaruh lingkungan dalam membaca',null,'B','Bacaan menekankan bahwa literasi perlu akses buku dan penciptaan budaya membaca, bukan sekadar perpustakaan.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Kata KETELADANAN pada bacaan tersebut berarti...','Hal yang dapat dijadikan contoh','Hukuman bagi yang malas','Bantuan berupa dana','Aturan yang mengikat','Hadiah bagi pembaca',null,'A','Keteladanan berarti sesuatu (perilaku) yang patut dicontoh atau diteladani.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Pernyataan yang SESUAI dengan bacaan adalah...','Minat baca di banyak daerah sudah tinggi','Anak cenderung meniru kebiasaan membaca di lingkungannya','Membaca tidak memengaruhi cara berpikir','Buku bermutu tersedia melimpah dan murah','Keteladanan tidak diperlukan dalam menumbuhkan minat baca',null,'B','Bacaan menyatakan anak yang tumbuh di lingkungan gemar membaca cenderung meniru kebiasaan itu.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Rendahnya minat baca antara lain disebabkan akses buku yang terbatas','Membangun perpustakaan saja sudah cukup meningkatkan literasi','Membaca membantu menimbang berbagai sudut pandang','Menumbuhkan minat baca memerlukan keteladanan','Budaya membaca perlu diciptakan dalam keluarga',null,'B','Bacaan justru menegaskan membangun perpustakaan saja TIDAK cukup; perlu budaya membaca.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Simpulan yang tepat dari bacaan tersebut adalah...','Perpustakaan tidak diperlukan sama sekali','Meningkatkan literasi menuntut akses buku dan pembiasaan membaca yang diteladankan','Membaca hanya penting bagi anak-anak','Minat baca tidak dapat ditingkatkan','Informasi baru hanya diperoleh dari buku',null,'B','Simpulan menggabungkan dua hal: akses buku dan penciptaan budaya membaca lewat keteladanan.','medium'),

-- --- BACAAN 2 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Gagasan utama bacaan tersebut adalah...','Toko fisik lebih baik daripada toko daring','Digitalisasi usaha kecil membuka peluang sekaligus memerlukan pendampingan','Pelaku usaha tidak membutuhkan pelatihan','Media sosial hanya untuk hiburan','Perekonomian daerah tidak terpengaruh teknologi',null,'B','Bacaan membahas peluang digitalisasi usaha kecil dan perlunya pendampingan agar dimanfaatkan.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Kata LOKAPASAR pada bacaan tersebut paling dekat maknanya dengan...','Pasar tradisional','Tempat jual beli daring','Gudang penyimpanan','Kantor pemerintah','Toko fisik besar',null,'B','Lokapasar merujuk pada pasar daring (marketplace), tempat jual beli melalui internet.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Menurut bacaan, penyebab pelaku usaha ragu beralih ke ranah digital adalah...','Tidak ada pembeli daring','Keterbatasan keterampilan dan modal','Larangan dari pemerintah','Harga internet yang gratis','Produk yang terlalu banyak',null,'B','Bacaan menyebutkan keraguan itu disebabkan keterbatasan keterampilan dan modal.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Tujuan penulis menulis bacaan tersebut adalah...','Melarang usaha kecil memakai teknologi','Menjelaskan pentingnya pendampingan dalam digitalisasi usaha kecil','Mengkritik pemerintah yang tidak peduli','Menyatakan bahwa toko daring pasti gagal','Menghibur pembaca dengan cerita',null,'B','Penulis memaparkan manfaat digitalisasi dan menekankan pendampingan sebagai kuncinya.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Simpulan yang tepat dari bacaan tersebut adalah...','Digitalisasi usaha kecil merugikan perekonomian','Digitalisasi usaha kecil yang didampingi berkelanjutan dapat memperkuat ekonomi daerah','Pelaku usaha sebaiknya menutup toko daring','Teknologi digital tidak berguna bagi usaha kecil','Pelatihan digital hanya membuang waktu',null,'B','Bacaan menyimpulkan digitalisasi yang didukung berkelanjutan dapat memperkuat perekonomian daerah.','medium'),

-- --- BACAAN 3 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Gagasan utama bacaan tersebut adalah...','Air di bumi jumlahnya tidak terbatas','Menjaga dan menghemat air bersih adalah tanggung jawab bersama','Sungai yang tercemar mudah dipulihkan','Air hujan tidak berguna','Pencemaran tidak memengaruhi ketersediaan air',null,'B','Bacaan menekankan bahwa menjaga dan menghemat air bersih menjadi tanggung jawab bersama.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Kata DIPULIHKAN pada bacaan tersebut berarti...','Dikembalikan ke keadaan semula','Dibiarkan begitu saja','Diperjualbelikan','Dicemari kembali','Dipindahkan tempatnya',null,'A','Dipulihkan berarti dikembalikan ke keadaan semula (sehat/bersih).','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Pernyataan yang SESUAI dengan bacaan adalah...','Seluruh air di bumi layak dikonsumsi','Hanya sebagian kecil air di bumi yang layak dikonsumsi','Membuang limbah ke sungai tidak berbahaya','Menghemat air adalah tugas pemerintah saja','Menampung air hujan merugikan',null,'B','Bacaan menyatakan hanya sebagian kecil air di bumi yang layak dikonsumsi manusia.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Ketersediaan air bersih semakin menipis di banyak wilayah','Sungai yang tercemar dapat dipulihkan dengan cepat dan mudah','Menutup keran saat tidak digunakan menghemat air','Pencemaran memperparah ketersediaan air bersih','Melestarikan air berarti menjaga keberlangsungan hidup',null,'B','Bacaan menyatakan sungai tercemar SULIT dipulihkan dalam waktu singkat, bukan mudah dan cepat.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Simpulan yang tepat dari bacaan tersebut adalah...','Air bersih tidak perlu dihemat','Menjaga dan menghemat air bersih penting demi keberlangsungan hidup dan menjadi tanggung jawab bersama','Sampah boleh dibuang ke saluran air','Air bersih tersedia tanpa batas','Hanya pemerintah yang wajib menjaga air',null,'B','Simpulan bacaan: menjaga dan menghemat air adalah tanggung jawab bersama demi keberlangsungan hidup.','medium'),

-- ============================ LOGIKA POSISI (2 teka-teki = 10 soal) ============================
-- --- TEKA-TEKI 1: tempat duduk (urutan benar: R, Q, U, S, T, P) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Orang yang duduk di posisi ke-4 adalah...','P','S','U','Q','T',null,'B','Urutan yang memenuhi semua ketentuan: R, Q, U, S, T, P. Posisi ke-4 ditempati S.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Orang yang duduk di ujung paling kanan (posisi ke-6) adalah...','U','S','P','T','Q',null,'C','Urutan: R, Q, U, S, T, P. Posisi ke-6 (paling kanan) ditempati P.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Orang yang duduk tepat di antara U dan T adalah...','Q','P','R','S','U',null,'D','Urutan: R, Q, U, S, T, P. Di antara U (posisi 3) dan T (posisi 5) terdapat S (posisi 4).','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Posisi yang ditempati U adalah...','Posisi ke-2','Posisi ke-3','Posisi ke-4','Posisi ke-5','Posisi ke-6',null,'B','Urutan: R, Q, U, S, T, P. U menempati posisi ke-3.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Pernyataan yang BENAR adalah...','Q duduk di posisi ke-3','S duduk di sebelah kiri U','P duduk di posisi paling kanan','T duduk di posisi ke-4','R duduk di posisi ke-2',null,'C','Urutan: R, Q, U, S, T, P. Maka P duduk di posisi paling kanan (ke-6).','hard'),

-- --- TEKA-TEKI 2: tinggi badan (urutan tertinggi->terpendek: Doni, Andi, Budi, Cici, Eka) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Siswa yang paling tinggi adalah...','Andi','Budi','Cici','Doni','Eka',null,'D','Urutan tertinggi ke terpendek: Doni, Andi, Budi, Cici, Eka. Yang tertinggi adalah Doni.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Siswa yang paling pendek adalah...','Andi','Budi','Cici','Doni','Eka',null,'E','Urutan: Doni, Andi, Budi, Cici, Eka. Yang paling pendek adalah Eka.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Siswa yang lebih tinggi daripada Budi tetapi lebih pendek daripada Doni adalah...','Andi','Budi','Cici','Eka','Doni',null,'A','Urutan: Doni, Andi, Budi, Cici, Eka. Yang berada di antara Doni dan Budi adalah Andi.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Urutan siswa dari yang tertinggi ke terpendek adalah...','Doni, Andi, Budi, Cici, Eka','Andi, Doni, Budi, Cici, Eka','Doni, Budi, Andi, Cici, Eka','Eka, Cici, Budi, Andi, Doni','Doni, Andi, Cici, Budi, Eka',null,'A','Dari ketentuan diperoleh Doni > Andi > Budi > Cici > Eka.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Pernyataan yang BENAR adalah...','Budi lebih tinggi daripada Andi','Cici lebih tinggi daripada Eka','Eka lebih tinggi daripada Cici','Budi adalah yang paling pendek','Andi lebih tinggi daripada Doni',null,'B','Urutan: Doni, Andi, Budi, Cici, Eka. Maka Cici lebih tinggi daripada Eka.','medium')
;
