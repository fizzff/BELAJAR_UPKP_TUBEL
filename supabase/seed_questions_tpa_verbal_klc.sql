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

-- ============================ PENARIKAN KESIMPULAN (paragraf informatif -> PASTI BENAR/SALAH) ============================
('b0000000-0000-4000-8000-060400000000','Koperasi Sejahtera hanya menerima anggota yang berusia minimal 17 tahun. Setiap anggota wajib menabung setiap bulan. Anggota yang menabung rutin selama satu tahun berhak mengajukan pinjaman. Tahun ini Rani baru saja diterima sebagai anggota koperasi tersebut.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Rani berusia minimal 17 tahun','Rani sudah dapat mengajukan pinjaman sekarang','Rani menabung setiap minggu','Semua anggota koperasi pernah meminjam','Rani adalah anggota termuda',null,'A','Rani telah diterima sebagai anggota, sedangkan syarat menjadi anggota adalah minimal 17 tahun; maka Rani pasti berusia minimal 17 tahun. Hak meminjam baru muncul setelah menabung rutin satu tahun, sehingga opsi lain belum tentu benar.','hard'),
('b0000000-0000-4000-8000-060400000000','Kereta ekspres jurusan Kota A-Kota B hanya berhenti di dua stasiun, yaitu Stasiun Cempaka dan Stasiun Dahlia. Perjalanan ditempuh dalam waktu tiga jam. Kereta berangkat dari Kota A setiap pukul 07.00 dan tiba di Kota B pukul 10.00.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Kereta tiba di Kota B pukul 10.00','Kereta berhenti di lebih dari dua stasiun','Perjalanan ditempuh selama tiga jam','Stasiun Dahlia adalah salah satu tempat pemberhentian','Kereta berangkat pukul 07.00 dari Kota A',null,'B','Teks menyatakan kereta hanya berhenti di dua stasiun, sehingga pernyataan kereta berhenti di lebih dari dua stasiun pasti salah.','medium'),
('b0000000-0000-4000-8000-060400000000','Dalam lomba menggambar tingkat sekolah, setiap peserta hanya boleh mengumpulkan satu karya. Karya yang mengandung unsur kekerasan otomatis didiskualifikasi. Juara ditentukan dari nilai tertinggi tiga juri. Doni mengikuti lomba dan karyanya tidak didiskualifikasi.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Karya Doni tidak mengandung unsur kekerasan','Doni menjadi juara lomba','Doni mengumpulkan dua karya','Karya Doni mendapat nilai tertinggi','Semua peserta karyanya didiskualifikasi',null,'A','Karya berunsur kekerasan pasti didiskualifikasi; karena karya Doni tidak didiskualifikasi, karyanya pasti tidak mengandung unsur kekerasan (kontraposisi). Menjadi juara belum tentu.','hard'),
('b0000000-0000-4000-8000-060400000000','Di gedung perkantoran Mawar, mobil wajib parkir di lantai basement, sedangkan sepeda motor parkir di halaman depan. Parkir gratis untuk satu jam pertama, selebihnya dikenai tarif per jam. Karyawan tetap memperoleh kartu parkir bulanan.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Mobil diparkir di lantai basement','Sepeda motor diparkir di halaman depan','Parkir selalu gratis tanpa batas waktu','Satu jam pertama tidak dikenai tarif','Karyawan tetap memperoleh kartu parkir bulanan',null,'C','Parkir gratis hanya berlaku satu jam pertama, selebihnya berbayar; jadi pernyataan parkir selalu gratis tanpa batas waktu pasti salah.','medium'),
('b0000000-0000-4000-8000-060400000000','Beasiswa Bhakti hanya diberikan kepada mahasiswa dengan indeks prestasi minimal 3,5 dan berasal dari keluarga kurang mampu. Penerima wajib mempertahankan indeks prestasinya agar beasiswa dilanjutkan. Sinta adalah penerima Beasiswa Bhakti tahun ini.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Sinta memiliki indeks prestasi minimal 3,5','Sinta pasti lulus tepat waktu','Sinta berasal dari keluarga mampu','Semua mahasiswa menerima beasiswa ini','Sinta tidak perlu mempertahankan indeks prestasinya',null,'A','Syarat penerima adalah indeks prestasi minimal 3,5; karena Sinta menerima beasiswa, indeksnya pasti minimal 3,5. Ia justru berasal dari keluarga kurang mampu dan tetap wajib mempertahankan indeksnya.','medium'),
('b0000000-0000-4000-8000-060400000000','Taman Nasional Cendana melindungi berbagai satwa langka. Pengunjung dilarang memberi makan satwa dan membuang sampah sembarangan, dan setiap pelanggaran dikenai denda. Taman ini dibuka untuk umum hanya pada akhir pekan.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Taman Nasional Cendana dibuka untuk umum setiap hari','Pengunjung dilarang memberi makan satwa','Membuang sampah sembarangan dikenai denda','Taman melindungi satwa langka','Taman dibuka untuk umum pada akhir pekan',null,'A','Taman hanya dibuka pada akhir pekan, sehingga pernyataan taman dibuka setiap hari pasti salah.','easy'),
('b0000000-0000-4000-8000-060400000000','Survei di sebuah sekolah menunjukkan bahwa sebagian besar siswa menyukai pelajaran olahraga. Sebagian siswa juga aktif dalam kegiatan pramuka. Tidak ada satu pun siswa yang mengikuti lebih dari tiga kegiatan ekstrakurikuler.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Semua siswa menyukai pelajaran olahraga','Tidak ada siswa yang mengikuti empat kegiatan ekstrakurikuler','Semua siswa aktif dalam pramuka','Setiap siswa mengikuti tepat tiga kegiatan','Sebagian siswa tidak menyukai kegiatan apa pun',null,'B','Karena tidak ada siswa yang mengikuti lebih dari tiga kegiatan, pasti tidak ada yang mengikuti empat kegiatan. Kata "sebagian besar" dan "sebagian" tidak berarti "semua".','hard'),
('b0000000-0000-4000-8000-060400000000','Toko Buku Aksara memberikan diskon 20% untuk semua buku pelajaran. Buku novel tidak termasuk dalam program diskon ini. Pembelian di atas Rp200.000 mendapat bonus satu pembatas buku.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Buku novel mendapat diskon 20%','Buku pelajaran mendapat diskon 20%','Pembelian di atas Rp200.000 mendapat bonus pembatas buku','Diskon berlaku untuk buku pelajaran','Novel tidak termasuk program diskon',null,'A','Novel dinyatakan tidak termasuk program diskon, sehingga pernyataan novel mendapat diskon 20% pasti salah.','easy'),
('b0000000-0000-4000-8000-060400000000','Klub renang Tirta hanya menerima anggota yang sudah bisa berenang. Latihan diadakan tiga kali seminggu. Anggota yang absen lebih dari tiga kali berturut-turut tanpa izin akan dikeluarkan. Bayu adalah anggota klub renang Tirta.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Bayu sudah bisa berenang','Bayu tidak pernah absen latihan','Bayu berlatih setiap hari','Bayu adalah perenang tercepat di klub','Bayu akan segera dikeluarkan',null,'A','Syarat menjadi anggota adalah sudah bisa berenang; karena Bayu anggota, ia pasti sudah bisa berenang. Latihan hanya tiga kali seminggu, bukan setiap hari.','medium'),
('b0000000-0000-4000-8000-060400000000','Aplikasi Sehat mencatat langkah kaki pengguna setiap hari. Fitur pengingat minum air hanya tersedia pada versi berbayar. Semua pengguna dapat melihat riwayat langkah tujuh hari terakhir, sedangkan riwayat yang lebih lama hanya untuk pengguna berbayar.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Pengguna gratis dapat melihat riwayat langkah 30 hari terakhir','Fitur pengingat minum air tersedia pada versi berbayar','Aplikasi mencatat langkah kaki setiap hari','Pengguna berbayar dapat melihat riwayat lebih dari tujuh hari','Semua pengguna dapat melihat riwayat tujuh hari terakhir',null,'A','Pengguna gratis hanya dapat melihat riwayat tujuh hari terakhir; riwayat lebih lama khusus pengguna berbayar. Jadi klaim pengguna gratis dapat melihat 30 hari pasti salah.','medium'),
('b0000000-0000-4000-8000-060400000000','Setiap paket yang beratnya melebihi 5 kg dikenai biaya tambahan. Paket yang dikirim Pak Anton tidak dikenai biaya tambahan.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Berat paket Pak Anton tidak melebihi 5 kg','Berat paket Pak Anton tepat 5 kg','Paket Pak Anton berisi barang yang sangat ringan','Semua paket dikenai biaya tambahan','Pak Anton tidak mengirim paket apa pun',null,'A','Paket di atas 5 kg pasti kena biaya tambahan; karena paket Pak Anton tidak kena biaya tambahan, beratnya pasti tidak melebihi 5 kg (kontraposisi). Beratnya bisa kurang dari 5 kg, tidak harus tepat 5 kg.','hard'),
('b0000000-0000-4000-8000-060400000000','Kantin sekolah hanya menjual makanan dan minuman sehat. Semua gorengan telah dihapus dari menu sejak tahun lalu. Minuman bersoda juga tidak dijual. Kantin hanya menerima pembayaran nontunai.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Kantin masih menjual gorengan','Kantin tidak menjual minuman bersoda','Pembayaran di kantin dilakukan secara nontunai','Kantin menjual makanan sehat','Minuman bersoda tidak tersedia di kantin',null,'A','Gorengan telah dihapus dari menu sejak tahun lalu, sehingga pernyataan kantin masih menjual gorengan pasti salah.','easy'),

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
