-- Bank soal TPA VERBAL berstruktur kategori KLC (ORISINAL, bukan salinan).
-- 6 bab @ 40 soal = 240 soal:
--   Sinonim, Antonim, Analogi, Penalaran Analitis (pasti benar/salah + memperkuat/
--   memperlemah/asumsi), Logika Posisi (8 teka-teki), Pemahaman Wacana (8 bacaan @ 5 soal).
-- Idempotent: hapus soal pada 6 bab verbal lalu isi ulang.
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
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata BERGEGAS adalah...','Tergesa-gesa','Bersantai','Berhenti','Melambat','Ragu-ragu','A','Bergegas berarti bergerak cepat karena tergesa-gesa.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata RANCU adalah...','Teratur','Kacau','Jelas','Rapi','Runut','B','Rancu berarti kacau atau tidak teratur.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata KONKRET adalah...','Abstrak','Semu','Nyata','Maya','Kabur','C','Konkret berarti nyata atau berwujud.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SAHIH adalah...','Palsu','Keliru','Cacat','Valid','Lemah','D','Sahih berarti sah, benar, atau valid.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ANDAL adalah...','Rapuh','Labil','Ragu','Lemah','Tangguh','E','Andal berarti dapat dipercaya dan tangguh.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SINKRON adalah...','Selaras','Sumbang','Acak','Bertentangan','Timpang','A','Sinkron berarti selaras atau serentak.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata AMBIGU adalah...','Pasti','Taksa','Lugas','Terang','Tunggal','B','Ambigu berarti bermakna ganda atau taksa.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata KONSERVASI adalah...','Perusakan','Eksploitasi','Pelestarian','Pembongkaran','Penebangan','C','Konservasi berarti pelestarian atau perlindungan.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ELABORASI adalah...','Penyederhanaan','Perincian','Penghapusan','Penyingkatan','Pengabaian','B','Elaborasi berarti penggarapan secara tekun dan terperinci.','hard'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SPORADIS adalah...','Terus-menerus','Teratur','Kadang-kadang','Serentak','Merata','C','Sporadis berarti tidak tentu dan hanya sekali-sekali.','hard'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ANOMALI adalah...','Keteraturan','Kelaziman','Kewajaran','Keganjilan','Kestabilan','D','Anomali berarti keganjilan atau penyimpangan dari keadaan normal.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata BONAFIDE adalah...','Meragukan','Abal-abal','Palsu','Rapuh','Tepercaya','E','Bonafide berarti dapat dipercaya dan sungguh-sungguh.','medium'),

('b0000000-0000-4000-8000-060100000000','Sinonim dari kata ABSAH adalah...','Sah','Palsu','Batal','Cacat','Ragu','A','Absah berarti sah atau berlaku menurut hukum.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata BAKU adalah...','Longgar','Standar','Bebas','Acak','Cair','B','Baku berarti standar atau menjadi tolok ukur.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata CANGGIH adalah...','Kuno','Usang','Mutakhir','Sederhana','Lawas','C','Canggih berarti mutakhir atau paling maju.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata DAMPAK adalah...','Sebab','Awal','Sumber','Akibat','Niat','D','Dampak berarti akibat atau pengaruh yang ditimbulkan.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata EFEKTIF adalah...','Sia-sia','Boros','Lamban','Gagal','Tepat guna','E','Efektif berarti tepat guna atau berhasil mencapai tujuan.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata FIKTIF adalah...','Rekaan','Nyata','Faktual','Sejati','Asli','A','Fiktif berarti bersifat rekaan atau tidak nyata.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata GEMULAI adalah...','Kaku','Luwes','Kasar','Kikuk','Tegang','B','Gemulai berarti luwes dan lemah lembut dalam bergerak.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata HAMBAR adalah...','Manis','Pedas','Tawar','Gurih','Asin','C','Hambar berarti tawar atau tidak berasa.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata IMBAS adalah...','Sumber','Sebab','Pangkal','Pengaruh','Asal','D','Imbas berarti pengaruh atau efek yang merambat.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata JENUH adalah...','Segar','Semangat','Riang','Antusias','Bosan','E','Jenuh berarti bosan atau muak.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata KENDALA adalah...','Hambatan','Dukungan','Kemudahan','Peluang','Jalan','A','Kendala berarti hambatan atau rintangan.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata LAZIM adalah...','Aneh','Umum','Ganjil','Langka','Asing','B','Lazim berarti umum atau biasa terjadi.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata MUTLAK adalah...','Nisbi','Relatif','Absolut','Bersyarat','Sebagian','C','Mutlak berarti absolut atau tanpa syarat.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata NETRAL adalah...','Berat sebelah','Condong','Bias','Tidak memihak','Partisan','D','Netral berarti tidak memihak salah satu pihak.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata OPTIMIS adalah...','Ragu','Putus asa','Pesimis','Cemas','Yakin','E','Optimis berarti yakin akan keberhasilan.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata PRAKTIS adalah...','Mudah','Rumit','Berbelit','Sulit','Ribet','A','Praktis berarti mudah dan efisien dalam pemakaian.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata RELEVAN adalah...','Terpisah','Berkaitan','Menyimpang','Melenceng','Asing','B','Relevan berarti berkaitan atau bersangkut paut.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata SIGAP adalah...','Lamban','Malas','Tangkas','Lambat','Lengah','C','Sigap berarti tangkas dan cekatan.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata TANGGUH adalah...','Rapuh','Lemah','Ringkih','Kokoh','Goyah','D','Tangguh berarti kokoh, kuat, dan sukar dikalahkan.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata TELATEN adalah...','Malas','Ceroboh','Gegabah','Lalai','Tekun','E','Telaten berarti tekun, sabar, dan teliti.','hard'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata VITAL adalah...','Penting','Sepele','Remeh','Kecil','Tambahan','A','Vital berarti sangat penting atau amat perlu.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata WAJAR adalah...','Aneh','Lumrah','Janggal','Ganjil','Berlebihan','B','Wajar berarti lumrah atau sebagaimana biasa.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata AKURAT adalah...','Meleset','Keliru','Tepat','Kasar','Kabur','C','Akurat berarti tepat, saksama, dan teliti.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata BENIH adalah...','Buah','Batang','Daun','Bibit','Akar','D','Benih berarti bibit atau calon tumbuhan.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata CERMAT adalah...','Ceroboh','Sembrono','Lalai','Kasar','Teliti','E','Cermat berarti teliti dan penuh perhatian.','easy'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata DINAMIS adalah...','Selalu bergerak','Statis','Diam','Beku','Tetap','A','Dinamis berarti selalu bergerak atau berubah mengikuti keadaan.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata GIGIH adalah...','Malas','Ulet','Lemah','Menyerah','Ragu','B','Gigih berarti ulet dan tabah mempertahankan pendirian.','medium'),
('b0000000-0000-4000-8000-060100000000','Sinonim dari kata KREDIBEL adalah...','Meragukan','Palsu','Tepercaya','Bohong','Diragukan','C','Kredibel berarti dapat dipercaya.','hard'),

-- ============================ ANTONIM ============================
('b0000000-0000-4000-8000-060200000000','Antonim (lawan kata) dari GAGAL adalah...','Rugi','Berhasil','Jatuh','Kalah','Hancur','B','Lawan dari gagal adalah berhasil.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata CURAM adalah...','Terjal','Tinggi','Landai','Dalam','Miring','C','Lawan dari curam (terjal) adalah landai.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata FANA adalah...','Sementara','Rapuh','Sirna','Kekal','Lenyap','D','Fana berarti sementara; lawannya kekal atau abadi.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata STATIS adalah...','Diam','Tetap','Beku','Kaku','Dinamis','E','Lawan dari statis (tidak berubah) adalah dinamis.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata GERSANG adalah...','Subur','Tandus','Kering','Kerontang','Kosong','A','Lawan dari gersang adalah subur.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata CEROBOH adalah...','Lalai','Teliti','Sembrono','Gegabah','Lengah','B','Lawan dari ceroboh adalah teliti atau cermat.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata NISBI adalah...','Relatif','Semu','Mutlak','Bias','Samar','C','Nisbi berarti relatif; lawannya mutlak.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata PROGRESIF adalah...','Maju','Pesat','Dinamis','Regresif','Aktif','D','Progresif berarti ke arah maju; lawannya regresif (mundur).','hard'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata KOLEKTIF adalah...','Bersama','Kelompok','Massal','Gotong royong','Individual','E','Kolektif berarti bersama-sama; lawannya individual.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata ANTIPATI adalah...','Simpati','Benci','Acuh','Muak','Sinis','A','Antipati berarti perasaan tidak suka; lawannya simpati.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata MAYOR adalah...','Besar','Utama','Minor','Induk','Pokok','C','Lawan dari mayor adalah minor.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata SEKULER adalah...','Duniawi','Bebas','Netral','Religius','Awam','D','Sekuler berarti duniawi/tidak bersifat keagamaan; lawannya religius.','hard'),

('b0000000-0000-4000-8000-060200000000','Antonim dari kata AKTIF adalah...','Giat','Rajin','Sibuk','Pasif','Dinamis','D','Lawan dari aktif adalah pasif.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata BOROS adalah...','Royal','Hemat','Mubazir','Foya','Berlebihan','B','Lawan dari boros adalah hemat.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata CACAT adalah...','Rusak','Cela','Kurang','Sempurna','Buruk','D','Lawan dari cacat adalah sempurna.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata DANGKAL adalah...','Cetek','Tipis','Dalam','Sempit','Rendah','C','Lawan dari dangkal adalah dalam.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata EKSPOR adalah...','Kirim','Jual','Impor','Dagang','Antar','C','Lawan dari ekspor (mengirim ke luar negeri) adalah impor.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata FLEKSIBEL adalah...','Lentur','Luwes','Lunak','Kaku','Elastis','D','Lawan dari fleksibel adalah kaku.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata GANJIL adalah...','Aneh','Tunggal','Genap','Unik','Langka','C','Lawan dari ganjil (bilangan) adalah genap.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata KUAT adalah...','Kokoh','Tangguh','Lemah','Perkasa','Bugar','C','Lawan dari kuat adalah lemah.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata ILEGAL adalah...','Gelap','Terlarang','Legal','Haram','Liar','C','Lawan dari ilegal adalah legal (sah).','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata JUJUR adalah...','Tulus','Terbuka','Bohong','Ikhlas','Lugas','C','Lawan dari jujur adalah bohong atau dusta.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata KASAR adalah...','Keras','Halus','Kaku','Tajam','Bengis','B','Lawan dari kasar adalah halus.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata LUAS adalah...','Lebar','Sempit','Lapang','Besar','Panjang','B','Lawan dari luas adalah sempit.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata MAHIR adalah...','Terampil','Cakap','Canggung','Ahli','Piawai','C','Lawan dari mahir adalah canggung atau tidak terampil.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata NAIK adalah...','Melonjak','Meningkat','Turun','Mendaki','Melambung','C','Lawan dari naik adalah turun.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata PADAT adalah...','Rapat','Penuh','Longgar','Sesak','Padu','C','Lawan dari padat adalah longgar atau renggang.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata RAMAI adalah...','Riuh','Padat','Sepi','Bising','Gaduh','C','Lawan dari ramai adalah sepi.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata SEMENTARA adalah...','Sekejap','Sesaat','Permanen','Sebentar','Singkat','C','Lawan dari sementara adalah permanen atau tetap.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata TERANG adalah...','Benderang','Cerah','Gelap','Jelas','Cemerlang','C','Lawan dari terang adalah gelap.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata UNTUNG adalah...','Laba','Hasil','Rugi','Berkah','Beruntung','C','Lawan dari untung adalah rugi.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata VERTIKAL adalah...','Tegak','Lurus','Horizontal','Miring','Naik','C','Lawan dari vertikal (tegak) adalah horizontal (mendatar).','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata WAJIB adalah...','Harus','Kudu','Sukarela','Mesti','Perlu','C','Lawan dari wajib adalah sukarela (tidak diharuskan).','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata AWAL adalah...','Mula','Pangkal','Akhir','Permulaan','Perdana','C','Lawan dari awal adalah akhir.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata BERANI adalah...','Nekat','Gagah','Pengecut','Tegas','Nekad','C','Lawan dari berani adalah pengecut atau penakut.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata CEPAT adalah...','Kilat','Gesit','Lambat','Deras','Laju','C','Lawan dari cepat adalah lambat.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata DERMAWAN adalah...','Murah hati','Pemurah','Kikir','Baik','Ramah','C','Lawan dari dermawan adalah kikir atau pelit.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata ELASTIS adalah...','Lentur','Molor','Kaku','Fleksibel','Kenyal','C','Lawan dari elastis adalah kaku.','medium'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata GEMBIRA adalah...','Riang','Ceria','Sedih','Suka','Bahagia','C','Lawan dari gembira adalah sedih.','easy'),
('b0000000-0000-4000-8000-060200000000','Antonim dari kata TERBIT adalah...','Muncul','Timbul','Terbenam','Naik','Keluar','C','Lawan dari terbit (matahari) adalah terbenam.','medium'),

-- ============================ ANALOGI ============================
('b0000000-0000-4000-8000-060500000000','DOKTER : PASIEN = GURU : ...','Sekolah','Murid','Papan tulis','Buku','Kelas','B','Dokter menangani pasien, sebagaimana guru mengajar murid.','easy'),
('b0000000-0000-4000-8000-060500000000','PILOT : PESAWAT = MASINIS : ...','Rel','Stasiun','Kereta','Gerbong','Sinyal','C','Pilot mengemudikan pesawat, masinis mengemudikan kereta.','easy'),
('b0000000-0000-4000-8000-060500000000','TERMOMETER : SUHU = BAROMETER : ...','Cuaca','Angin','Ketinggian','Tekanan','Kelembapan','D','Termometer mengukur suhu, barometer mengukur tekanan udara.','medium'),
('b0000000-0000-4000-8000-060500000000','HAUS : MINUM = LAPAR : ...','Kenyang','Lelah','Makan','Tidur','Sakit','C','Haus diatasi dengan minum, lapar diatasi dengan makan.','easy'),
('b0000000-0000-4000-8000-060500000000','PADI : SAWAH = TEBU : ...','Pabrik','Gula','Ladang','Petani','Cangkul','C','Padi ditanam di sawah, tebu ditanam di ladang.','medium'),
('b0000000-0000-4000-8000-060500000000','SINGA : KARNIVORA = SAPI : ...','Mamalia','Ternak','Rumput','Herbivora','Omnivora','D','Singa termasuk karnivora (pemakan daging), sapi termasuk herbivora (pemakan tumbuhan).','medium'),
('b0000000-0000-4000-8000-060500000000','JARUM : JAHIT = PENA : ...','Kertas','Tinta','Buku','Tulis','Gambar','D','Jarum digunakan untuk menjahit, pena digunakan untuk menulis.','easy'),
('b0000000-0000-4000-8000-060500000000','IKAN : AKUARIUM = BURUNG : ...','Langit','Sayap','Sarang','Sangkar','Pohon','D','Ikan peliharaan ditempatkan di akuarium, burung peliharaan di sangkar.','medium'),
('b0000000-0000-4000-8000-060500000000','GURU : SEKOLAH = HAKIM : ...','Hukum','Palu','Perkara','Pengadilan','Jaksa','D','Guru bekerja di sekolah, hakim bekerja di pengadilan.','medium'),
('b0000000-0000-4000-8000-060500000000','DINGIN : ES = TERANG : ...','Bulan','Lampu','Gelap','Siang','Bayangan','B','Es memberi rasa dingin, lampu memberi terang.','medium'),
('b0000000-0000-4000-8000-060500000000','KAKI : SEPATU = TANGAN : ...','Jari','Cincin','Sarung tangan','Kaus kaki','Gelang','C','Sepatu dikenakan pada kaki, sarung tangan dikenakan pada tangan.','easy'),
('b0000000-0000-4000-8000-060500000000','BUKU : HALAMAN = RUMAH : ...','Atap','Dinding','Kamar','Pintu','Jendela','C','Buku tersusun atas halaman-halaman, rumah tersusun atas kamar-kamar (ruangan).','medium'),

('b0000000-0000-4000-8000-060500000000','PENULIS : BUKU = PELUKIS : ...','Kuas','Kanvas','Lukisan','Cat','Galeri','C','Penulis menghasilkan buku, pelukis menghasilkan lukisan.','easy'),
('b0000000-0000-4000-8000-060500000000','API : PANAS = ES : ...','Air','Beku','Dingin','Putih','Salju','C','Api menimbulkan rasa panas, es menimbulkan rasa dingin.','easy'),
('b0000000-0000-4000-8000-060500000000','GURU : MENGAJAR = PETANI : ...','Sawah','Padi','Bercocok tanam','Cangkul','Panen','C','Pekerjaan guru mengajar, pekerjaan petani bercocok tanam.','medium'),
('b0000000-0000-4000-8000-060500000000','RAJA : ISTANA = TAHANAN : ...','Pengadilan','Penjara','Polisi','Kejahatan','Borgol','B','Raja tinggal di istana, tahanan ditempatkan di penjara.','medium'),
('b0000000-0000-4000-8000-060500000000','BURUNG : SAYAP = IKAN : ...','Ekor','Insang','Sirip','Sisik','Air','C','Burung bergerak dengan sayap, ikan bergerak dengan sirip.','medium'),
('b0000000-0000-4000-8000-060500000000','MOBIL : BENSIN = MANUSIA : ...','Air','Darah','Udara','Makanan','Energi','D','Mobil membutuhkan bensin sebagai sumber tenaga, manusia membutuhkan makanan.','easy'),
('b0000000-0000-4000-8000-060500000000','DOKTER : STETOSKOP = PELUKIS : ...','Lukisan','Kuas','Kanvas','Cat','Warna','B','Dokter bekerja memakai stetoskop, pelukis bekerja memakai kuas.','medium'),
('b0000000-0000-4000-8000-060500000000','HUJAN : BANJIR = MALAS : ...','Rajin','Pintar','Sukses','Gagal','Lelah','D','Hujan (deras) menyebabkan banjir, malas menyebabkan gagal.','medium'),
('b0000000-0000-4000-8000-060500000000','BUNGA : TAMAN = BINTANG : ...','Bulan','Malam','Langit','Cahaya','Matahari','C','Bunga berada di taman, bintang berada di langit.','easy'),
('b0000000-0000-4000-8000-060500000000','TELINGA : MENDENGAR = HIDUNG : ...','Bernapas','Melihat','Mencium','Meraba','Berbicara','C','Telinga berfungsi untuk mendengar, hidung untuk mencium bau.','medium'),
('b0000000-0000-4000-8000-060500000000','PADI : BERAS = GANDUM : ...','Roti','Kue','Tepung','Mi','Biji','C','Padi diolah menjadi beras, gandum diolah menjadi tepung.','medium'),
('b0000000-0000-4000-8000-060500000000','SUTRADARA : FILM = ARSITEK : ...','Batu bata','Semen','Bangunan','Proyek','Desain','C','Sutradara menghasilkan film, arsitek menghasilkan rancangan bangunan.','medium'),
('b0000000-0000-4000-8000-060500000000','PENSIL : KERTAS = KAPUR : ...','Tinta','Buku','Papan tulis','Meja','Dinding','C','Pensil menulis pada kertas, kapur menulis pada papan tulis.','easy'),
('b0000000-0000-4000-8000-060500000000','KUCING : MENGEONG = ANJING : ...','Mengaum','Menggonggong','Mendengkur','Meringkik','Berkokok','B','Kucing mengeong, anjing menggonggong.','easy'),
('b0000000-0000-4000-8000-060500000000','GELAP : LAMPU = KOTOR : ...','Air','Sikat','Sabun','Bersih','Lap','C','Gelap diatasi dengan lampu, kotor diatasi dengan sabun.','medium'),
('b0000000-0000-4000-8000-060500000000','JAM : WAKTU = TIMBANGAN : ...','Panjang','Berat','Suhu','Tekanan','Volume','B','Jam mengukur waktu, timbangan mengukur berat.','medium'),
('b0000000-0000-4000-8000-060500000000','AYAH : ANAK = POHON : ...','Daun','Buah','Tunas','Akar','Ranting','C','Ayah menurunkan anak, pohon menumbuhkan tunas.','medium'),
('b0000000-0000-4000-8000-060500000000','NELAYAN : LAUT = PETANI : ...','Pasar','Gunung','Sawah','Hutan','Toko','C','Nelayan bekerja di laut, petani bekerja di sawah.','easy'),
('b0000000-0000-4000-8000-060500000000','RODA : MOBIL = LAYAR : ...','Angin','Laut','Kapal','Nakhoda','Jangkar','C','Roda menggerakkan mobil, layar menggerakkan kapal.','medium'),
('b0000000-0000-4000-8000-060500000000','GEMPA : SEISMOGRAF = SUHU : ...','Barometer','Higrometer','Termometer','Timbangan','Spidometer','C','Gempa diukur dengan seismograf, suhu diukur dengan termometer.','hard'),
('b0000000-0000-4000-8000-060500000000','SENDOK : MAKAN = GUNTING : ...','Menjahit','Menempel','Memotong','Mengukur','Melipat','C','Sendok untuk makan, gunting untuk memotong.','easy'),
('b0000000-0000-4000-8000-060500000000','SARANG : BURUNG = KANDANG : ...','Singa','Semut','Ayam','Lebah','Kelinci','C','Burung tinggal di sarang, ayam ternak tinggal di kandang.','medium'),
('b0000000-0000-4000-8000-060500000000','PANAS : GERAH = DINGIN : ...','Berkeringat','Lelah','Menggigil','Haus','Segar','C','Udara panas membuat gerah, udara dingin membuat menggigil.','medium'),
('b0000000-0000-4000-8000-060500000000','BAJU : LEMARI = MOBIL : ...','Jalan','Bengkel','Garasi','Pasar','Terminal','C','Baju disimpan di lemari, mobil disimpan di garasi.','easy'),
('b0000000-0000-4000-8000-060500000000','PERANG : DAMAI = SAKIT : ...','Obat','Dokter','Sehat','Lemah','Rumah sakit','C','Perang lawannya damai, sakit lawannya sehat.','easy'),
('b0000000-0000-4000-8000-060500000000','LILIN : CAHAYA = KIPAS : ...','Panas','Listrik','Angin','Dingin','Suara','C','Lilin menghasilkan cahaya, kipas menghasilkan angin.','medium'),
('b0000000-0000-4000-8000-060500000000','AKAR : POHON = FONDASI : ...','Atap','Dinding','Bangunan','Jendela','Pintu','C','Akar menopang pohon, fondasi menopang bangunan.','medium'),
('b0000000-0000-4000-8000-060500000000','DOKTER : RUMAH SAKIT = KOKI : ...','Menu','Kompor','Dapur','Restoran','Pisau','C','Dokter bekerja di rumah sakit, koki bekerja di dapur.','easy'),

-- ============================ PENARIKAN KESIMPULAN (paragraf informatif -> PASTI BENAR/SALAH) ============================
('b0000000-0000-4000-8000-060400000000','Koperasi Sejahtera hanya menerima anggota yang berusia minimal 17 tahun. Setiap anggota wajib menabung setiap bulan. Anggota yang menabung rutin selama satu tahun berhak mengajukan pinjaman. Tahun ini Rani baru saja diterima sebagai anggota koperasi tersebut.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Rani berusia minimal 17 tahun','Rani sudah dapat mengajukan pinjaman sekarang','Rani menabung setiap minggu','Semua anggota koperasi pernah meminjam','Rani adalah anggota termuda','A','Rani telah diterima sebagai anggota, sedangkan syarat menjadi anggota adalah minimal 17 tahun; maka Rani pasti berusia minimal 17 tahun. Hak meminjam baru muncul setelah menabung rutin satu tahun, sehingga opsi lain belum tentu benar.','hard'),
('b0000000-0000-4000-8000-060400000000','Kereta ekspres jurusan Kota A-Kota B hanya berhenti di dua stasiun, yaitu Stasiun Cempaka dan Stasiun Dahlia. Perjalanan ditempuh dalam waktu tiga jam. Kereta berangkat dari Kota A setiap pukul 07.00 dan tiba di Kota B pukul 10.00.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Kereta tiba di Kota B pukul 10.00','Kereta berhenti di lebih dari dua stasiun','Perjalanan ditempuh selama tiga jam','Stasiun Dahlia adalah salah satu tempat pemberhentian','Kereta berangkat pukul 07.00 dari Kota A','B','Teks menyatakan kereta hanya berhenti di dua stasiun, sehingga pernyataan kereta berhenti di lebih dari dua stasiun pasti salah.','medium'),
('b0000000-0000-4000-8000-060400000000','Dalam lomba menggambar tingkat sekolah, setiap peserta hanya boleh mengumpulkan satu karya. Karya yang mengandung unsur kekerasan otomatis didiskualifikasi. Juara ditentukan dari nilai tertinggi tiga juri. Doni mengikuti lomba dan karyanya tidak didiskualifikasi.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Karya Doni tidak mengandung unsur kekerasan','Doni menjadi juara lomba','Doni mengumpulkan dua karya','Karya Doni mendapat nilai tertinggi','Semua peserta karyanya didiskualifikasi','A','Karya berunsur kekerasan pasti didiskualifikasi; karena karya Doni tidak didiskualifikasi, karyanya pasti tidak mengandung unsur kekerasan (kontraposisi). Menjadi juara belum tentu.','hard'),
('b0000000-0000-4000-8000-060400000000','Di gedung perkantoran Mawar, mobil wajib parkir di lantai basement, sedangkan sepeda motor parkir di halaman depan. Parkir gratis untuk satu jam pertama, selebihnya dikenai tarif per jam. Karyawan tetap memperoleh kartu parkir bulanan.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Mobil diparkir di lantai basement','Sepeda motor diparkir di halaman depan','Parkir selalu gratis tanpa batas waktu','Satu jam pertama tidak dikenai tarif','Karyawan tetap memperoleh kartu parkir bulanan','C','Parkir gratis hanya berlaku satu jam pertama, selebihnya berbayar; jadi pernyataan parkir selalu gratis tanpa batas waktu pasti salah.','medium'),
('b0000000-0000-4000-8000-060400000000','Beasiswa Bhakti hanya diberikan kepada mahasiswa dengan indeks prestasi minimal 3,5 dan berasal dari keluarga kurang mampu. Penerima wajib mempertahankan indeks prestasinya agar beasiswa dilanjutkan. Sinta adalah penerima Beasiswa Bhakti tahun ini.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Sinta memiliki indeks prestasi minimal 3,5','Sinta pasti lulus tepat waktu','Sinta berasal dari keluarga mampu','Semua mahasiswa menerima beasiswa ini','Sinta tidak perlu mempertahankan indeks prestasinya','A','Syarat penerima adalah indeks prestasi minimal 3,5; karena Sinta menerima beasiswa, indeksnya pasti minimal 3,5. Ia justru berasal dari keluarga kurang mampu dan tetap wajib mempertahankan indeksnya.','medium'),
('b0000000-0000-4000-8000-060400000000','Taman Nasional Cendana melindungi berbagai satwa langka. Pengunjung dilarang memberi makan satwa dan membuang sampah sembarangan, dan setiap pelanggaran dikenai denda. Taman ini dibuka untuk umum hanya pada akhir pekan.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Taman Nasional Cendana dibuka untuk umum setiap hari','Pengunjung dilarang memberi makan satwa','Membuang sampah sembarangan dikenai denda','Taman melindungi satwa langka','Taman dibuka untuk umum pada akhir pekan','A','Taman hanya dibuka pada akhir pekan, sehingga pernyataan taman dibuka setiap hari pasti salah.','easy'),
('b0000000-0000-4000-8000-060400000000','Survei di sebuah sekolah menunjukkan bahwa sebagian besar siswa menyukai pelajaran olahraga. Sebagian siswa juga aktif dalam kegiatan pramuka. Tidak ada satu pun siswa yang mengikuti lebih dari tiga kegiatan ekstrakurikuler.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Semua siswa menyukai pelajaran olahraga','Tidak ada siswa yang mengikuti empat kegiatan ekstrakurikuler','Semua siswa aktif dalam pramuka','Setiap siswa mengikuti tepat tiga kegiatan','Sebagian siswa tidak menyukai kegiatan apa pun','B','Karena tidak ada siswa yang mengikuti lebih dari tiga kegiatan, pasti tidak ada yang mengikuti empat kegiatan. Kata "sebagian besar" dan "sebagian" tidak berarti "semua".','hard'),
('b0000000-0000-4000-8000-060400000000','Toko Buku Aksara memberikan diskon 20% untuk semua buku pelajaran. Buku novel tidak termasuk dalam program diskon ini. Pembelian di atas Rp200.000 mendapat bonus satu pembatas buku.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Buku novel mendapat diskon 20%','Buku pelajaran mendapat diskon 20%','Pembelian di atas Rp200.000 mendapat bonus pembatas buku','Diskon berlaku untuk buku pelajaran','Novel tidak termasuk program diskon','A','Novel dinyatakan tidak termasuk program diskon, sehingga pernyataan novel mendapat diskon 20% pasti salah.','easy'),
('b0000000-0000-4000-8000-060400000000','Klub renang Tirta hanya menerima anggota yang sudah bisa berenang. Latihan diadakan tiga kali seminggu. Anggota yang absen lebih dari tiga kali berturut-turut tanpa izin akan dikeluarkan. Bayu adalah anggota klub renang Tirta.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Bayu sudah bisa berenang','Bayu tidak pernah absen latihan','Bayu berlatih setiap hari','Bayu adalah perenang tercepat di klub','Bayu akan segera dikeluarkan','A','Syarat menjadi anggota adalah sudah bisa berenang; karena Bayu anggota, ia pasti sudah bisa berenang. Latihan hanya tiga kali seminggu, bukan setiap hari.','medium'),
('b0000000-0000-4000-8000-060400000000','Aplikasi Sehat mencatat langkah kaki pengguna setiap hari. Fitur pengingat minum air hanya tersedia pada versi berbayar. Semua pengguna dapat melihat riwayat langkah tujuh hari terakhir, sedangkan riwayat yang lebih lama hanya untuk pengguna berbayar.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Pengguna gratis dapat melihat riwayat langkah 30 hari terakhir','Fitur pengingat minum air tersedia pada versi berbayar','Aplikasi mencatat langkah kaki setiap hari','Pengguna berbayar dapat melihat riwayat lebih dari tujuh hari','Semua pengguna dapat melihat riwayat tujuh hari terakhir','A','Pengguna gratis hanya dapat melihat riwayat tujuh hari terakhir; riwayat lebih lama khusus pengguna berbayar. Jadi klaim pengguna gratis dapat melihat 30 hari pasti salah.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah jasa pengiriman menetapkan aturan bahwa setiap paket yang beratnya melebihi 5 kg akan dikenai biaya tambahan di luar ongkos kirim biasa. Aturan ini berlaku untuk semua jenis paket tanpa terkecuali. Pada suatu hari, paket yang dikirim oleh Pak Anton melalui jasa tersebut ternyata tidak dikenai biaya tambahan sama sekali.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Berat paket Pak Anton tidak melebihi 5 kg','Berat paket Pak Anton tepat 5 kg','Paket Pak Anton berisi barang yang sangat ringan','Semua paket dikenai biaya tambahan','Pak Anton tidak mengirim paket apa pun','A','Paket di atas 5 kg pasti kena biaya tambahan; karena paket Pak Anton tidak kena biaya tambahan, beratnya pasti tidak melebihi 5 kg (kontraposisi). Beratnya bisa kurang dari 5 kg, tidak harus tepat 5 kg.','hard'),
('b0000000-0000-4000-8000-060400000000','Kantin sekolah hanya menjual makanan dan minuman sehat. Semua gorengan telah dihapus dari menu sejak tahun lalu. Minuman bersoda juga tidak dijual. Kantin hanya menerima pembayaran nontunai.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Kantin masih menjual gorengan','Kantin tidak menjual minuman bersoda','Pembayaran di kantin dilakukan secara nontunai','Kantin menjual makanan sehat','Minuman bersoda tidak tersedia di kantin','A','Gorengan telah dihapus dari menu sejak tahun lalu, sehingga pernyataan kantin masih menjual gorengan pasti salah.','easy'),

-- --- MEMPERKUAT argumen ---
('b0000000-0000-4000-8000-060400000000','Sebuah sekolah dasar menerapkan program membaca buku selama 15 menit setiap pagi sebelum jam pelajaran pertama dimulai. Program ini wajib diikuti oleh seluruh siswa dari berbagai tingkat kelas tanpa terkecuali. Setelah berjalan selama satu semester, nilai rata-rata ujian bahasa Indonesia para siswa tercatat meningkat dibandingkan semester sebelumnya. Melihat hasil tersebut, kepala sekolah menyimpulkan bahwa program membaca pagilah yang telah meningkatkan nilai bahasa siswa.

Manakah pernyataan berikut yang MEMPERKUAT kesimpulan kepala sekolah?','Sekolah lain yang tidak menerapkan program membaca pagi tidak mengalami kenaikan nilai bahasa pada periode yang sama','Nilai ujian matematika siswa juga meningkat pada semester itu','Sebagian siswa mengaku tidak menyukai program membaca pagi','Program membaca pagi hanya berlangsung selama 15 menit','Guru bahasa mengganti metode mengajarnya pada semester yang sama','A','Fakta bahwa sekolah tanpa program itu tidak naik nilainya menyingkirkan penjelasan lain, sehingga memperkuat bahwa program membacalah penyebab kenaikan. Opsi tentang guru mengganti metode justru melemahkan.','hard'),
('b0000000-0000-4000-8000-060400000000','Sebuah perusahaan teknologi meyakini bahwa memberi karyawan waktu istirahat yang lebih panjang pada siang hari akan membuat mereka lebih segar dan pada akhirnya meningkatkan produktivitas kerja. Selama ini karyawan hanya memperoleh waktu istirahat selama satu jam. Berdasarkan keyakinan tersebut, manajemen berencana menambah durasi jam istirahat siang menjadi satu setengah jam mulai bulan depan.

Manakah pernyataan berikut yang MEMPERKUAT keyakinan perusahaan?','Penelitian menunjukkan karyawan yang cukup beristirahat membuat lebih sedikit kesalahan dan bekerja lebih cepat','Menambah jam istirahat akan mengurangi jam kerja efektif','Sebagian karyawan lebih suka pulang lebih awal','Ruang istirahat perusahaan berukuran kecil','Produktivitas dipengaruhi oleh banyak faktor','A','Bukti bahwa istirahat cukup menurunkan kesalahan dan mempercepat kerja mendukung langsung keyakinan bahwa istirahat lebih panjang meningkatkan produktivitas.','medium'),
('b0000000-0000-4000-8000-060400000000','Pemerintah sebuah kota membangun jalur sepeda baru di sepanjang jalan-jalan utama dengan tujuan mengurangi kemacetan yang selama ini terjadi pada jam sibuk pagi dan sore. Pembangunan ini disertai kampanye untuk mengajak warga beralih ke sepeda. Pemerintah kota yakin bahwa semakin banyak warga yang bersepeda ke tempat kerja, semakin sedikit pula kendaraan bermotor yang memenuhi jalan raya.

Manakah pernyataan berikut yang MEMPERKUAT keyakinan pemerintah kota?','Setelah jalur sepeda dibangun, jumlah warga yang beralih dari mobil ke sepeda untuk bekerja meningkat tajam','Pembangunan jalur sepeda menghabiskan anggaran yang cukup besar','Sebagian warga menganggap bersepeda cukup melelahkan','Kota tersebut memiliki banyak taman kota','Harga sepeda di pasaran semakin mahal','A','Meningkatnya warga yang berpindah dari mobil ke sepeda menunjukkan berkurangnya kendaraan bermotor, sehingga memperkuat keyakinan pemerintah.','medium'),

-- --- MEMPERLEMAH argumen ---
('b0000000-0000-4000-8000-060400000000','Sebuah iklan di televisi menyatakan bahwa pasta gigi merek X adalah yang paling ampuh mencegah gigi berlubang karena mengandung fluoride. Iklan itu menampilkan seorang dokter gigi yang menjelaskan manfaat fluoride bagi kesehatan gigi. Dengan alasan kandungan fluoride tersebut, iklan menyimpulkan bahwa pasta gigi merek X lebih baik daripada semua pasta gigi merek lain yang beredar di pasaran.

Manakah pernyataan berikut yang MEMPERLEMAH kesimpulan iklan tersebut?','Hampir semua pasta gigi merek lain juga mengandung fluoride dengan kadar yang sama','Merek X dijual dengan harga yang terjangkau','Banyak orang sudah menggunakan pasta gigi merek X','Fluoride memang terbukti membantu mencegah gigi berlubang','Merek X tersedia di hampir semua toko','A','Jika merek lain juga mengandung fluoride berkadar sama, keunggulan yang diklaim merek X hilang; ini melemahkan kesimpulan bahwa X lebih baik.','hard'),
('b0000000-0000-4000-8000-060400000000','Seorang pelatih sepak bola berpendapat bahwa tim yang berlatih paling lama sudah pasti akan memenangkan pertandingan. Menurutnya, durasi latihan adalah faktor penentu utama kemenangan sebuah tim. Untuk mendukung pendapatnya, ia menunjuk timnya sendiri yang menjalani latihan hingga enam jam setiap hari sebagai calon juara pada musim ini.

Manakah pernyataan berikut yang MEMPERLEMAH pendapat pelatih?','Juara musim lalu adalah tim yang hanya berlatih tiga jam sehari namun dengan metode yang efektif','Tim pelatih memiliki lapangan latihan yang luas','Berlatih lebih lama membuat pemain semakin terbiasa','Tim pelatih memiliki banyak pendukung setia','Pertandingan akan diadakan bulan depan','A','Contoh juara yang justru berlatih lebih singkat membantah klaim bahwa durasi latihan terlama pasti menang, sehingga melemahkan pendapat pelatih.','hard'),
('b0000000-0000-4000-8000-060400000000','Harga beras di pasar naik hingga dua kali lipat dari harga semula dalam beberapa bulan terakhir. Menanggapi hal itu, seorang pakar ekonomi menyatakan bahwa kenaikan harga beras tersebut pasti menurunkan daya beli seluruh masyarakat terhadap beras. Ia bahkan menyimpulkan bahwa tidak akan ada satu pun kelompok masyarakat yang mampu mempertahankan konsumsi berasnya seperti sebelumnya.

Manakah pernyataan berikut yang MEMPERLEMAH pendapat pakar tersebut?','Sebagian besar masyarakat di daerah itu menanam padi sendiri sehingga tidak bergantung pada harga beras di pasar','Harga beras memang naik cukup tajam pada tahun ini','Beras merupakan makanan pokok bagi masyarakat','Kenaikan harga beras membuat sebagian pedagang memperoleh keuntungan','Masyarakat mulai mengurangi jumlah konsumsi berasnya','A','Jika sebagian besar masyarakat menanam padi sendiri, daya beli mereka terhadap beras di pasar tidak terpengaruh; ini membantah kata "seluruh masyarakat" dan melemahkan pendapat pakar.','hard'),

-- --- ASUMSI yang mendasari ---
('b0000000-0000-4000-8000-060400000000','Sebuah restoran yang cukup terkenal di kotanya memutuskan untuk merenovasi ruang makan dan menambah jumlah kursi yang tersedia bagi pengunjung. Renovasi ini memerlukan biaya yang tidak sedikit dan menutup restoran selama beberapa hari. Meski demikian, pemilik restoran tetap yakin dan berharap langkah tersebut dapat meningkatkan pendapatan restoran pada bulan-bulan mendatang.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari keputusan restoran?','Selama ini ada calon pelanggan yang tidak jadi makan karena kehabisan tempat duduk','Restoran akan mengganti seluruh menu makanannya','Restoran memiliki banyak pesaing di sekitarnya','Harga makanan di restoran akan dinaikkan','Restoran perlu menambah jumlah karyawan','A','Menambah kursi hanya menaikkan pendapatan bila memang ada permintaan yang selama ini tertolak karena kehabisan tempat; itulah asumsi yang mendasari keputusan.','hard'),
('b0000000-0000-4000-8000-060400000000','Sebuah aplikasi belajar daring menambahkan fitur kuis harian yang dapat dikerjakan pengguna setiap hari dengan hadiah berupa poin. Fitur ini dikembangkan setelah tim melihat banyak pengguna yang jarang kembali membuka aplikasi setelah mengunduhnya. Pengembang berharap kehadiran fitur kuis harian membuat pengguna semakin sering membuka dan menggunakan aplikasi tersebut.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari langkah tersebut?','Pengguna tertarik untuk mengerjakan kuis harian','Aplikasi belajar tersebut merupakan aplikasi berbayar','Kuis harian dirancang dengan tingkat kesulitan tinggi','Pengguna selama ini tidak pernah membuka aplikasi','Fitur kuis harian menghabiskan banyak kuota data','A','Langkah itu hanya berhasil jika pengguna memang tertarik mengerjakan kuis; ketertarikan itu adalah asumsi yang belum dinyatakan namun mendasari keputusan.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah toko pakaian yang selama ini hanya berjualan di gerai fisik memutuskan untuk mulai memasarkan produknya melalui media sosial. Pemilik toko menyewa seorang pegawai khusus untuk mengelola akun dan mengunggah foto produk setiap hari. Ia berharap langkah ini membuat produk tokonya dikenal oleh lebih banyak orang di berbagai daerah.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari keputusan toko?','Banyak calon pembeli yang aktif menggunakan media sosial','Toko tersebut akan tutup jika tidak berjualan secara daring','Produk yang dijual toko berkualitas tinggi','Media sosial dapat digunakan tanpa biaya','Toko pesaing juga sudah berjualan lewat media sosial','A','Berjualan lewat media sosial hanya memperluas jangkauan bila calon pembeli memang aktif di media sosial; itulah asumsi yang mendasarinya.','medium'),

-- --- PASTI BENAR/SALAH (tambahan) ---
('b0000000-0000-4000-8000-060400000000','Perpustakaan Kota Melati buka setiap hari kecuali hari Senin. Pada Sabtu dan Minggu perpustakaan buka sampai pukul 20.00, sedangkan pada hari kerja hanya sampai pukul 16.00. Koleksi referensi hanya boleh dibaca di tempat, sementara koleksi lainnya boleh dipinjam untuk dibawa pulang.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Perpustakaan buka pada hari Senin','Koleksi referensi tidak dapat dibawa pulang','Semua koleksi dapat dipinjam','Pada hari Jumat perpustakaan buka sampai pukul 20.00','Perpustakaan tutup pada hari Minggu','B','Koleksi referensi hanya boleh dibaca di tempat, sehingga pasti tidak dapat dibawa pulang. Perpustakaan tutup Senin dan buka sampai 20.00 hanya pada akhir pekan.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah maskapai hanya mengizinkan setiap penumpang membawa satu bagasi kabin dengan berat maksimal 7 kg. Bagasi yang lebih dari 7 kg harus dimasukkan ke bagasi tercatat yang dikenai biaya. Pak Rudi terbang dengan membawa satu tas kabin dan tidak membayar biaya bagasi apa pun.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Tas kabin Pak Rudi tidak lebih dari 7 kg','Tas kabin Pak Rudi tepat 7 kg','Pak Rudi membawa dua tas kabin','Pak Rudi membayar biaya bagasi tercatat','Tas kabin Pak Rudi dalam keadaan kosong','A','Bagasi di atas 7 kg pasti dikenai biaya; karena Pak Rudi tidak membayar, tas kabinnya pasti tidak lebih dari 7 kg (bisa kurang, tidak harus tepat 7 kg).','hard'),
('b0000000-0000-4000-8000-060400000000','Dalam sebuah lomba cerdas cermat, tim yang menjawab benar mendapat tambahan 10 poin, menjawab salah dikurangi 5 poin, dan tidak menjawab tidak mengubah poin. Setelah beberapa soal, poin Tim Merah lebih tinggi daripada poin awalnya.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Tim Merah pernah menjawab benar setidaknya satu kali','Tim Merah tidak pernah menjawab salah','Tim Merah menjawab semua soal','Tim Merah menjadi juara lomba','Tim Merah tidak pernah melewatkan soal','A','Poin hanya bisa bertambah melalui jawaban benar (+10). Karena poin akhir lebih tinggi, Tim Merah pasti pernah menjawab benar minimal sekali.','hard'),
('b0000000-0000-4000-8000-060400000000','Sebuah toko elektronik memberikan garansi satu tahun untuk semua produk yang dijual. Namun, kerusakan yang diakibatkan oleh kelalaian pengguna tidak ditanggung oleh garansi. Toko juga menyediakan layanan antar gratis untuk pembelian di atas Rp1.000.000.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Semua produk memperoleh garansi satu tahun','Kerusakan akibat kelalaian pengguna ditanggung garansi','Pembelian senilai Rp2.000.000 mendapat layanan antar gratis','Garansi produk berlaku selama satu tahun','Kelalaian pengguna berada di luar tanggungan garansi','B','Teks menegaskan kerusakan akibat kelalaian pengguna TIDAK ditanggung garansi, sehingga pernyataan sebaliknya pasti salah.','easy'),
('b0000000-0000-4000-8000-060400000000','Kolam renang umum Tirtasari hanya menerima pengunjung yang memakai baju renang. Anak berusia di bawah lima tahun wajib didampingi orang dewasa. Loket tiket ditutup pukul 17.00 setiap hari.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Pengunjung boleh berenang tanpa memakai baju renang','Anak berusia empat tahun harus didampingi orang dewasa','Loket tiket ditutup pukul 17.00','Baju renang wajib dikenakan pengunjung','Anak balita memerlukan pendamping dewasa','A','Kolam hanya menerima pengunjung yang memakai baju renang, sehingga pernyataan boleh berenang tanpa baju renang pasti salah.','easy'),
('b0000000-0000-4000-8000-060400000000','Di sebuah kelas, semua siswa yang lulus ujian mendapat sertifikat. Tidak ada siswa yang memperoleh sertifikat tanpa hadir pada hari pembagian. Dina adalah salah satu siswa yang memperoleh sertifikat.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI BENAR?','Dina lulus ujian dan hadir pada hari pembagian','Dina tidak lulus ujian','Dina tidak hadir pada hari pembagian','Semua siswa di kelas itu mendapat sertifikat','Dina memperoleh nilai tertinggi','A','Sertifikat hanya diberikan kepada yang lulus dan hanya kepada yang hadir. Karena Dina memperoleh sertifikat, ia pasti lulus sekaligus hadir.','hard'),
('b0000000-0000-4000-8000-060400000000','Kebun binatang Satwaloka buka setiap hari pukul 08.00 sampai 16.00. Harga tiket masuk untuk anak adalah setengah dari harga tiket dewasa. Pengunjung dilarang memberi makan satwa di dalam area kebun binatang.

Berdasarkan informasi di atas, manakah pernyataan berikut yang PASTI SALAH?','Kebun binatang mulai buka pukul 08.00','Harga tiket anak sama dengan harga tiket dewasa','Pengunjung dilarang memberi makan satwa','Kebun binatang tutup pukul 16.00','Tiket anak lebih murah daripada tiket dewasa','B','Tiket anak adalah setengah harga tiket dewasa, sehingga pernyataan harga tiket anak sama dengan dewasa pasti salah.','easy'),

-- --- MEMPERKUAT argumen (tambahan) ---
('b0000000-0000-4000-8000-060400000000','Sebuah kafe mengganti alunan musik keras dengan musik yang lebih lembut. Pemilik kafe berharap pelanggan menjadi lebih betah berlama-lama sehingga memesan lebih banyak. Setelah perubahan itu, rata-rata lama kunjungan pelanggan tercatat meningkat, dan pemilik menyimpulkan musik lembutlah penyebabnya.

Manakah pernyataan berikut yang MEMPERKUAT kesimpulan pemilik kafe?','Kafe pesaing yang tetap memakai musik keras tidak mengalami kenaikan lama kunjungan pada periode yang sama','Harga menu di kafe tergolong murah','Kafe berada di lokasi yang strategis','Sebagian pelanggan tidak menyukai musik lembut','Kafe juga menambah jumlah kursi pada waktu yang sama','A','Fakta bahwa kafe pesaing dengan musik keras tidak naik lama kunjungannya menyingkirkan penyebab lain, sehingga memperkuat bahwa musik lembutlah penyebabnya. Penambahan kursi justru memberi penjelasan lain.','hard'),
('b0000000-0000-4000-8000-060400000000','Sebuah sekolah mewajibkan seluruh siswa sarapan bersama sebelum jam pelajaran dimulai. Pihak sekolah meyakini kebiasaan ini akan membuat siswa lebih fokus dalam belajar sepanjang hari.

Manakah pernyataan berikut yang MEMPERKUAT keyakinan sekolah?','Penelitian menunjukkan siswa yang sarapan memiliki konsentrasi yang lebih baik saat belajar','Program sarapan bersama menambah biaya operasional sekolah','Sebagian siswa tidak menyukai menu sarapan yang disediakan','Kegiatan sarapan bersama memakan waktu sekitar 30 menit','Beberapa guru kadang datang terlambat ke sekolah','A','Bukti bahwa siswa yang sarapan lebih berkonsentrasi mendukung langsung keyakinan bahwa sarapan bersama membuat siswa lebih fokus.','medium'),
('b0000000-0000-4000-8000-060400000000','Pemerintah menaikkan cukai rokok secara signifikan. Kebijakan ini diambil dengan keyakinan bahwa harga rokok yang lebih mahal akan menurunkan jumlah perokok di masyarakat.

Manakah pernyataan berikut yang MEMPERKUAT keyakinan pemerintah?','Di beberapa negara lain, kenaikan harga rokok terbukti menurunkan jumlah perokok','Cukai rokok menambah pemasukan bagi negara','Rokok diketahui berbahaya bagi kesehatan','Banyak orang tetap merokok meskipun harganya mahal','Rokok dapat dibeli di banyak tempat','A','Pengalaman negara lain bahwa harga rokok mahal menurunkan jumlah perokok memperkuat keyakinan pemerintah. Opsi bahwa orang tetap merokok justru melemahkan.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah toko daring mengganti seluruh foto produknya dengan foto beresolusi tinggi yang lebih jelas dan detail. Pemilik toko yakin langkah ini akan menaikkan penjualan karena pembeli menjadi lebih percaya terhadap produk.

Manakah pernyataan berikut yang MEMPERKUAT keyakinan pemilik toko?','Survei menunjukkan pembeli lebih yakin membeli produk yang fotonya jelas dan detail','Foto beresolusi tinggi memperlambat pemuatan halaman toko','Toko daring tersebut sudah berdiri cukup lama','Harga produk di toko tidak mengalami perubahan','Sebagian pembeli tidak memperhatikan foto produk','A','Survei bahwa pembeli lebih yakin pada produk berfoto jelas mendukung langsung keyakinan bahwa foto detail menaikkan penjualan.','medium'),

-- --- MEMPERLEMAH argumen (tambahan) ---
('b0000000-0000-4000-8000-060400000000','Seorang penjual jamu mengklaim bahwa jamu buatannya dapat menyembuhkan segala macam penyakit. Ia beralasan bahwa banyak pembeli merasa lebih sehat setelah rutin meminum jamunya.

Manakah pernyataan berikut yang MEMPERLEMAH klaim penjual jamu?','Sebagian besar pembeli juga menjalani pengobatan dokter pada waktu yang sama','Jamu itu dijual dengan harga yang murah','Banyak orang menyukai rasa jamu tersebut','Jamu itu terbuat dari bahan-bahan alami','Penjual jamu dikenal ramah kepada pembeli','A','Jika pembeli juga berobat ke dokter, kesembuhan bisa jadi disebabkan pengobatan dokter, bukan jamu; ini melemahkan klaim penjual.','hard'),
('b0000000-0000-4000-8000-060400000000','Kepala desa menyatakan bahwa pembangunan jembatan baru pasti akan membuat seluruh warga desa menjadi lebih sejahtera karena akses menjadi lebih mudah.

Manakah pernyataan berikut yang MEMPERLEMAH pernyataan kepala desa?','Sebagian warga tinggal jauh dari jembatan dan tidak pernah melintasinya','Jembatan baru itu dibangun dengan kokoh dan lebar','Pembangunan jembatan didanai sepenuhnya oleh pemerintah','Warga desa menyambut baik pembangunan jembatan','Jembatan mempersingkat waktu tempuh antarwilayah','A','Jika sebagian warga tidak pernah melintasi jembatan, mereka tidak memperoleh manfaat; ini membantah kata "seluruh warga" dan melemahkan pernyataan.','medium'),
('b0000000-0000-4000-8000-060400000000','Seorang manajer berpendapat bahwa karyawan yang datang paling pagi ke kantor adalah karyawan yang paling rajin bekerja.

Manakah pernyataan berikut yang MEMPERLEMAH pendapat manajer?','Beberapa karyawan datang pagi hanya untuk sarapan, lalu bekerja santai sepanjang hari','Datang pagi membantu karyawan menghindari kemacetan','Kantor mulai beroperasi pukul tujuh pagi','Karyawan yang rajin umumnya juga disiplin','Manajer biasanya datang lebih pagi daripada karyawan','A','Contoh karyawan yang datang pagi tetapi bekerja santai menunjukkan datang pagi tidak selalu berarti paling rajin, sehingga melemahkan pendapat manajer.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah artikel menyimpulkan bahwa kota yang memiliki lebih banyak kedai kopi pasti memiliki penduduk yang lebih produktif.

Manakah pernyataan berikut yang MEMPERLEMAH kesimpulan artikel tersebut?','Kota dengan banyak kedai kopi ternyata memiliki tingkat produktivitas kerja yang sama dengan kota lain','Kopi mengandung kafein yang membuat orang lebih terjaga','Kedai kopi umumnya ramai pada pagi hari','Banyak orang di kota tersebut menyukai kopi','Kedai kopi biasanya menyediakan akses internet','A','Jika kota berkedai kopi banyak ternyata produktivitasnya sama saja, hubungan yang diklaim artikel gugur; ini melemahkan kesimpulan.','hard'),

-- --- ASUMSI yang mendasari (tambahan) ---
('b0000000-0000-4000-8000-060400000000','Sebuah bioskop menambah jumlah studio pertunjukannya. Pihak pengelola berharap langkah ini membuat jumlah penonton bertambah.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari keputusan bioskop?','Ada calon penonton yang selama ini tidak kebagian tiket karena studio penuh','Harga tiket bioskop akan diturunkan','Film yang diputar selalu berkualitas bagus','Bioskop akan beroperasi selama 24 jam','Studio baru berukuran lebih besar','A','Menambah studio hanya menambah penonton bila memang ada permintaan yang selama ini tidak tertampung; itulah asumsinya.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah penerbit menerjemahkan salah satu bukunya ke dalam bahasa Inggris. Penerbit berharap langkah ini akan meningkatkan penjualan buku tersebut.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari keputusan penerbit?','Ada pembaca berbahasa Inggris yang berminat terhadap buku tersebut','Buku itu termasuk buku bergenre fiksi','Proses penerjemahan dilakukan dengan cepat','Harga buku akan dinaikkan setelah diterjemahkan','Penulis buku itu adalah orang terkenal','A','Penerjemahan menaikkan penjualan hanya jika ada pembaca berbahasa Inggris yang berminat; itulah asumsi yang mendasarinya.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah sekolah memasang kamera CCTV di setiap ruang kelas. Pihak sekolah berharap kehadiran kamera membuat siswa menjadi lebih tertib.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari langkah sekolah?','Siswa cenderung lebih tertib ketika merasa diawasi','Kamera CCTV memiliki kualitas gambar yang tinggi','Guru tidak mampu menertibkan siswa','Sekolah memiliki dana yang besar','Siswa merasa takut kepada kepala sekolah','A','Pemasangan CCTV menertibkan siswa hanya jika siswa memang lebih tertib saat merasa diawasi; itulah asumsinya.','medium'),
('b0000000-0000-4000-8000-060400000000','Sebuah restoran cepat saji meluncurkan menu vegetarian baru. Pihak restoran berharap langkah ini dapat menjangkau lebih banyak pelanggan.

Manakah pernyataan berikut yang merupakan ASUMSI yang mendasari keputusan restoran?','Ada sejumlah calon pelanggan yang menginginkan pilihan menu vegetarian','Menu vegetarian dijual lebih murah daripada menu lain','Restoran akan menghapus seluruh menu berbahan daging','Semua orang pada dasarnya menyukai sayuran','Menu vegetarian lebih mudah dan cepat dimasak','A','Menu vegetarian menambah pelanggan hanya jika ada orang yang menginginkannya; keberadaan minat itu adalah asumsi yang mendasari.','medium'),

-- ============================ WACANA (1 bacaan = 5 soal) ============================
-- --- BACAAN 1 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Gagasan utama bacaan tersebut adalah...','Perpustakaan adalah satu-satunya cara meningkatkan literasi','Meningkatkan literasi memerlukan akses buku sekaligus budaya membaca','Minat baca masyarakat sudah sangat tinggi','Membaca hanya berguna untuk memperoleh informasi','Anak tidak terpengaruh lingkungan dalam membaca','B','Bacaan menekankan bahwa literasi perlu akses buku dan penciptaan budaya membaca, bukan sekadar perpustakaan.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Kata KETELADANAN pada bacaan tersebut berarti...','Hal yang dapat dijadikan contoh','Hukuman bagi yang malas','Bantuan berupa dana','Aturan yang mengikat','Hadiah bagi pembaca','A','Keteladanan berarti sesuatu (perilaku) yang patut dicontoh atau diteladani.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Pernyataan yang SESUAI dengan bacaan adalah...','Minat baca di banyak daerah sudah tinggi','Anak cenderung meniru kebiasaan membaca di lingkungannya','Membaca tidak memengaruhi cara berpikir','Buku bermutu tersedia melimpah dan murah','Keteladanan tidak diperlukan dalam menumbuhkan minat baca','B','Bacaan menyatakan anak yang tumbuh di lingkungan gemar membaca cenderung meniru kebiasaan itu.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Rendahnya minat baca antara lain disebabkan akses buku yang terbatas','Membangun perpustakaan saja sudah cukup meningkatkan literasi','Membaca membantu menimbang berbagai sudut pandang','Menumbuhkan minat baca memerlukan keteladanan','Budaya membaca perlu diciptakan dalam keluarga','B','Bacaan justru menegaskan membangun perpustakaan saja TIDAK cukup; perlu budaya membaca.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Kebiasaan membaca berperan penting dalam membentuk cara berpikir seseorang. Melalui bacaan, seseorang tidak hanya memperoleh informasi baru, tetapi juga belajar menimbang berbagai sudut pandang sebelum mengambil kesimpulan. Sayangnya, minat baca di banyak daerah masih tergolong rendah. Salah satu penyebabnya adalah terbatasnya akses terhadap buku yang bermutu dan terjangkau. Selain menyediakan bahan bacaan, menumbuhkan minat baca juga memerlukan keteladanan. Anak yang tumbuh di lingkungan yang gemar membaca cenderung meniru kebiasaan itu. Oleh karena itu, upaya meningkatkan literasi tidak cukup hanya dengan membangun perpustakaan, melainkan juga menciptakan budaya membaca dalam keluarga dan masyarakat.

Simpulan yang tepat dari bacaan tersebut adalah...','Perpustakaan tidak diperlukan sama sekali','Meningkatkan literasi menuntut akses buku dan pembiasaan membaca yang diteladankan','Membaca hanya penting bagi anak-anak','Minat baca tidak dapat ditingkatkan','Informasi baru hanya diperoleh dari buku','B','Simpulan menggabungkan dua hal: akses buku dan penciptaan budaya membaca lewat keteladanan.','medium'),

-- --- BACAAN 2 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Gagasan utama bacaan tersebut adalah...','Toko fisik lebih baik daripada toko daring','Digitalisasi usaha kecil membuka peluang sekaligus memerlukan pendampingan','Pelaku usaha tidak membutuhkan pelatihan','Media sosial hanya untuk hiburan','Perekonomian daerah tidak terpengaruh teknologi','B','Bacaan membahas peluang digitalisasi usaha kecil dan perlunya pendampingan agar dimanfaatkan.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Kata LOKAPASAR pada bacaan tersebut paling dekat maknanya dengan...','Pasar tradisional','Tempat jual beli daring','Gudang penyimpanan','Kantor pemerintah','Toko fisik besar','B','Lokapasar merujuk pada pasar daring (marketplace), tempat jual beli melalui internet.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Menurut bacaan, penyebab pelaku usaha ragu beralih ke ranah digital adalah...','Tidak ada pembeli daring','Keterbatasan keterampilan dan modal','Larangan dari pemerintah','Harga internet yang gratis','Produk yang terlalu banyak','B','Bacaan menyebutkan keraguan itu disebabkan keterbatasan keterampilan dan modal.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Tujuan penulis menulis bacaan tersebut adalah...','Melarang usaha kecil memakai teknologi','Menjelaskan pentingnya pendampingan dalam digitalisasi usaha kecil','Mengkritik pemerintah yang tidak peduli','Menyatakan bahwa toko daring pasti gagal','Menghibur pembaca dengan cerita','B','Penulis memaparkan manfaat digitalisasi dan menekankan pendampingan sebagai kuncinya.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Perkembangan teknologi digital membuka peluang besar bagi usaha mikro, kecil, dan menengah. Dengan memanfaatkan lokapasar dan media sosial, pelaku usaha dapat menjangkau pembeli dari berbagai daerah tanpa harus membuka toko fisik. Namun, peluang ini belum sepenuhnya dimanfaatkan. Banyak pelaku usaha yang masih ragu beralih ke ranah digital karena keterbatasan keterampilan dan modal. Pendampingan menjadi kunci agar mereka mampu mengelola toko daring, memotret produk secara menarik, hingga melayani pembeli dengan cepat. Pemerintah dan berbagai lembaga pun mulai menggencarkan pelatihan digital. Jika didukung secara berkelanjutan, digitalisasi usaha kecil diyakini dapat memperkuat perekonomian daerah.

Simpulan yang tepat dari bacaan tersebut adalah...','Digitalisasi usaha kecil merugikan perekonomian','Digitalisasi usaha kecil yang didampingi berkelanjutan dapat memperkuat ekonomi daerah','Pelaku usaha sebaiknya menutup toko daring','Teknologi digital tidak berguna bagi usaha kecil','Pelatihan digital hanya membuang waktu','B','Bacaan menyimpulkan digitalisasi yang didukung berkelanjutan dapat memperkuat perekonomian daerah.','medium'),

-- --- BACAAN 3 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Gagasan utama bacaan tersebut adalah...','Air di bumi jumlahnya tidak terbatas','Menjaga dan menghemat air bersih adalah tanggung jawab bersama','Sungai yang tercemar mudah dipulihkan','Air hujan tidak berguna','Pencemaran tidak memengaruhi ketersediaan air','B','Bacaan menekankan bahwa menjaga dan menghemat air bersih menjadi tanggung jawab bersama.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Kata DIPULIHKAN pada bacaan tersebut berarti...','Dikembalikan ke keadaan semula','Dibiarkan begitu saja','Diperjualbelikan','Dicemari kembali','Dipindahkan tempatnya','A','Dipulihkan berarti dikembalikan ke keadaan semula (sehat/bersih).','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Pernyataan yang SESUAI dengan bacaan adalah...','Seluruh air di bumi layak dikonsumsi','Hanya sebagian kecil air di bumi yang layak dikonsumsi','Membuang limbah ke sungai tidak berbahaya','Menghemat air adalah tugas pemerintah saja','Menampung air hujan merugikan','B','Bacaan menyatakan hanya sebagian kecil air di bumi yang layak dikonsumsi manusia.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Ketersediaan air bersih semakin menipis di banyak wilayah','Sungai yang tercemar dapat dipulihkan dengan cepat dan mudah','Menutup keran saat tidak digunakan menghemat air','Pencemaran memperparah ketersediaan air bersih','Melestarikan air berarti menjaga keberlangsungan hidup','B','Bacaan menyatakan sungai tercemar SULIT dipulihkan dalam waktu singkat, bukan mudah dan cepat.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Air bersih merupakan kebutuhan pokok yang tidak tergantikan. Meski permukaan bumi didominasi air, hanya sebagian kecil yang layak dikonsumsi manusia. Pertumbuhan penduduk dan pencemaran membuat ketersediaan air bersih semakin menipis di banyak wilayah. Kebiasaan membuang limbah ke sungai memperparah keadaan, sebab sungai yang tercemar sulit dipulihkan dalam waktu singkat. Menghemat air dan menjaga sumbernya karena itu menjadi tanggung jawab bersama. Langkah sederhana seperti menutup keran saat tidak digunakan, menampung air hujan, dan tidak membuang sampah ke saluran air dapat memberi dampak besar bila dilakukan banyak orang. Melestarikan air pada hakikatnya adalah menjaga keberlangsungan hidup itu sendiri.

Simpulan yang tepat dari bacaan tersebut adalah...','Air bersih tidak perlu dihemat','Menjaga dan menghemat air bersih penting demi keberlangsungan hidup dan menjadi tanggung jawab bersama','Sampah boleh dibuang ke saluran air','Air bersih tersedia tanpa batas','Hanya pemerintah yang wajib menjaga air','B','Simpulan bacaan: menjaga dan menghemat air adalah tanggung jawab bersama demi keberlangsungan hidup.','medium'),

-- --- BACAAN 4 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Aktivitas fisik yang teratur memberikan banyak manfaat bagi tubuh. Selain menjaga berat badan tetap ideal, olahraga rutin memperkuat jantung dan melancarkan peredaran darah. Tidak hanya bagi fisik, berolahraga juga bermanfaat bagi kesehatan mental karena dapat mengurangi stres. Sayangnya, banyak orang beralasan tidak memiliki cukup waktu untuk berolahraga. Padahal, aktivitas ringan seperti berjalan kaki atau menaiki tangga pun sudah tergolong olahraga. Yang terpenting bukanlah beratnya latihan, melainkan keteraturannya. Dengan menjadikan olahraga sebagai kebiasaan, tubuh yang sehat bukanlah hal yang sulit dicapai.

Gagasan utama bacaan tersebut adalah...','Olahraga hanya bermanfaat bagi fisik','Olahraga yang teratur bermanfaat bagi kesehatan fisik dan mental','Berjalan kaki bukan termasuk olahraga','Semua orang tidak memiliki waktu berolahraga','Olahraga berat wajib dilakukan setiap hari','B','Bacaan menekankan bahwa olahraga teratur bermanfaat bagi fisik sekaligus mental.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Aktivitas fisik yang teratur memberikan banyak manfaat bagi tubuh. Selain menjaga berat badan tetap ideal, olahraga rutin memperkuat jantung dan melancarkan peredaran darah. Tidak hanya bagi fisik, berolahraga juga bermanfaat bagi kesehatan mental karena dapat mengurangi stres. Sayangnya, banyak orang beralasan tidak memiliki cukup waktu untuk berolahraga. Padahal, aktivitas ringan seperti berjalan kaki atau menaiki tangga pun sudah tergolong olahraga. Yang terpenting bukanlah beratnya latihan, melainkan keteraturannya. Dengan menjadikan olahraga sebagai kebiasaan, tubuh yang sehat bukanlah hal yang sulit dicapai.

Kata KETERATURANNYA pada bacaan tersebut berkaitan dengan sesuatu yang...','dilakukan secara rutin dan berkala','dilakukan dengan berat','dilakukan hanya sekali','dilakukan tanpa jadwal','dilakukan beramai-ramai','A','Keteraturan merujuk pada kegiatan yang dilakukan secara rutin dan berkala.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Aktivitas fisik yang teratur memberikan banyak manfaat bagi tubuh. Selain menjaga berat badan tetap ideal, olahraga rutin memperkuat jantung dan melancarkan peredaran darah. Tidak hanya bagi fisik, berolahraga juga bermanfaat bagi kesehatan mental karena dapat mengurangi stres. Sayangnya, banyak orang beralasan tidak memiliki cukup waktu untuk berolahraga. Padahal, aktivitas ringan seperti berjalan kaki atau menaiki tangga pun sudah tergolong olahraga. Yang terpenting bukanlah beratnya latihan, melainkan keteraturannya. Dengan menjadikan olahraga sebagai kebiasaan, tubuh yang sehat bukanlah hal yang sulit dicapai.

Pernyataan yang SESUAI dengan bacaan adalah...','Olahraga tidak bermanfaat bagi mental','Aktivitas ringan seperti berjalan kaki termasuk olahraga','Olahraga harus selalu berat','Berat badan tidak dipengaruhi olahraga','Berolahraga justru menambah stres','B','Bacaan menyebutkan aktivitas ringan seperti berjalan kaki dan menaiki tangga tergolong olahraga.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Aktivitas fisik yang teratur memberikan banyak manfaat bagi tubuh. Selain menjaga berat badan tetap ideal, olahraga rutin memperkuat jantung dan melancarkan peredaran darah. Tidak hanya bagi fisik, berolahraga juga bermanfaat bagi kesehatan mental karena dapat mengurangi stres. Sayangnya, banyak orang beralasan tidak memiliki cukup waktu untuk berolahraga. Padahal, aktivitas ringan seperti berjalan kaki atau menaiki tangga pun sudah tergolong olahraga. Yang terpenting bukanlah beratnya latihan, melainkan keteraturannya. Dengan menjadikan olahraga sebagai kebiasaan, tubuh yang sehat bukanlah hal yang sulit dicapai.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Olahraga rutin memperkuat jantung','Manfaat olahraga hanya dirasakan oleh fisik','Olahraga dapat mengurangi stres','Keteraturan lebih penting daripada beratnya latihan','Menaiki tangga tergolong aktivitas fisik','B','Bacaan justru menyatakan olahraga bermanfaat bagi fisik dan mental, sehingga pernyataan manfaatnya hanya untuk fisik tidak sesuai.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Aktivitas fisik yang teratur memberikan banyak manfaat bagi tubuh. Selain menjaga berat badan tetap ideal, olahraga rutin memperkuat jantung dan melancarkan peredaran darah. Tidak hanya bagi fisik, berolahraga juga bermanfaat bagi kesehatan mental karena dapat mengurangi stres. Sayangnya, banyak orang beralasan tidak memiliki cukup waktu untuk berolahraga. Padahal, aktivitas ringan seperti berjalan kaki atau menaiki tangga pun sudah tergolong olahraga. Yang terpenting bukanlah beratnya latihan, melainkan keteraturannya. Dengan menjadikan olahraga sebagai kebiasaan, tubuh yang sehat bukanlah hal yang sulit dicapai.

Simpulan yang tepat dari bacaan tersebut adalah...','Tubuh sehat mustahil dicapai','Menjadikan olahraga sebagai kebiasaan membuat tubuh sehat mudah dicapai','Olahraga hanya cocok untuk atlet','Kesibukan membuat olahraga mustahil dilakukan','Kesehatan mental tidak berkaitan dengan olahraga','B','Simpulan bacaan: dengan membiasakan olahraga, tubuh yang sehat bukanlah hal yang sulit dicapai.','medium'),

-- --- BACAAN 5 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Sampah plastik menjadi salah satu masalah lingkungan yang paling serius saat ini. Plastik membutuhkan waktu ratusan tahun untuk dapat terurai secara alami. Selama waktu itu, plastik yang menumpuk mencemari tanah, sungai, hingga lautan. Tidak sedikit hewan laut yang mati karena mengira plastik sebagai makanan. Mengurangi penggunaan plastik sekali pakai adalah langkah yang dapat dilakukan oleh setiap orang. Membawa tas belanja sendiri dan menggunakan botol minum isi ulang merupakan contoh yang sederhana. Jika kebiasaan ini dilakukan secara luas, jumlah sampah plastik dapat ditekan secara berarti.

Gagasan utama bacaan tersebut adalah...','Plastik tidak berbahaya bagi lingkungan','Sampah plastik adalah masalah serius yang dapat dikurangi dengan mengurangi plastik sekali pakai','Hewan laut menyukai plastik','Plastik mudah terurai secara alami','Mengurangi plastik adalah tugas pemerintah saja','B','Bacaan membahas seriusnya sampah plastik dan cara menguranginya lewat pengurangan plastik sekali pakai.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Sampah plastik menjadi salah satu masalah lingkungan yang paling serius saat ini. Plastik membutuhkan waktu ratusan tahun untuk dapat terurai secara alami. Selama waktu itu, plastik yang menumpuk mencemari tanah, sungai, hingga lautan. Tidak sedikit hewan laut yang mati karena mengira plastik sebagai makanan. Mengurangi penggunaan plastik sekali pakai adalah langkah yang dapat dilakukan oleh setiap orang. Membawa tas belanja sendiri dan menggunakan botol minum isi ulang merupakan contoh yang sederhana. Jika kebiasaan ini dilakukan secara luas, jumlah sampah plastik dapat ditekan secara berarti.

Kata TERURAI pada bacaan tersebut berarti...','hancur menjadi bagian-bagian kecil secara alami','berubah menjadi plastik baru','dijual kembali kepada pembeli','dikumpulkan di satu tempat','dibakar hingga habis','A','Terurai berarti hancur atau terpecah menjadi bagian-bagian kecil secara alami.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Sampah plastik menjadi salah satu masalah lingkungan yang paling serius saat ini. Plastik membutuhkan waktu ratusan tahun untuk dapat terurai secara alami. Selama waktu itu, plastik yang menumpuk mencemari tanah, sungai, hingga lautan. Tidak sedikit hewan laut yang mati karena mengira plastik sebagai makanan. Mengurangi penggunaan plastik sekali pakai adalah langkah yang dapat dilakukan oleh setiap orang. Membawa tas belanja sendiri dan menggunakan botol minum isi ulang merupakan contoh yang sederhana. Jika kebiasaan ini dilakukan secara luas, jumlah sampah plastik dapat ditekan secara berarti.

Pernyataan yang SESUAI dengan bacaan adalah...','Plastik dapat terurai dalam hitungan hari','Plastik membutuhkan waktu ratusan tahun untuk terurai','Plastik tidak mencemari lautan','Tidak ada hewan yang terganggu oleh plastik','Botol minum isi ulang menambah sampah plastik','B','Bacaan menyatakan plastik membutuhkan ratusan tahun untuk terurai secara alami.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Sampah plastik menjadi salah satu masalah lingkungan yang paling serius saat ini. Plastik membutuhkan waktu ratusan tahun untuk dapat terurai secara alami. Selama waktu itu, plastik yang menumpuk mencemari tanah, sungai, hingga lautan. Tidak sedikit hewan laut yang mati karena mengira plastik sebagai makanan. Mengurangi penggunaan plastik sekali pakai adalah langkah yang dapat dilakukan oleh setiap orang. Membawa tas belanja sendiri dan menggunakan botol minum isi ulang merupakan contoh yang sederhana. Jika kebiasaan ini dilakukan secara luas, jumlah sampah plastik dapat ditekan secara berarti.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Plastik yang menumpuk mencemari tanah dan sungai','Plastik dapat terurai dengan cepat dalam beberapa hari','Membawa tas belanja sendiri dapat mengurangi plastik','Hewan laut dapat mati karena plastik','Plastik sekali pakai sebaiknya dikurangi','B','Bacaan menyebut plastik butuh ratusan tahun untuk terurai, sehingga pernyataan terurai dalam beberapa hari tidak sesuai.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Sampah plastik menjadi salah satu masalah lingkungan yang paling serius saat ini. Plastik membutuhkan waktu ratusan tahun untuk dapat terurai secara alami. Selama waktu itu, plastik yang menumpuk mencemari tanah, sungai, hingga lautan. Tidak sedikit hewan laut yang mati karena mengira plastik sebagai makanan. Mengurangi penggunaan plastik sekali pakai adalah langkah yang dapat dilakukan oleh setiap orang. Membawa tas belanja sendiri dan menggunakan botol minum isi ulang merupakan contoh yang sederhana. Jika kebiasaan ini dilakukan secara luas, jumlah sampah plastik dapat ditekan secara berarti.

Simpulan yang tepat dari bacaan tersebut adalah...','Sampah plastik tidak mungkin dikurangi','Kebiasaan mengurangi plastik sekali pakai secara luas dapat menekan jumlah sampah plastik','Plastik sebaiknya digunakan sebanyak-banyaknya','Hanya ilmuwan yang dapat mengatasi sampah plastik','Tas belanja sendiri tidak ada gunanya','B','Simpulan bacaan: bila kebiasaan mengurangi plastik dilakukan luas, sampah plastik dapat ditekan.','medium'),

-- --- BACAAN 6 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Tidur yang cukup merupakan kebutuhan penting yang sering diabaikan. Saat tidur, tubuh memperbaiki sel-sel yang rusak dan otak menyimpan berbagai informasi yang diperoleh sepanjang hari. Orang dewasa pada umumnya membutuhkan tujuh hingga delapan jam tidur setiap malam. Kurang tidur dapat menurunkan konsentrasi, memperlemah daya ingat, bahkan melemahkan daya tahan tubuh. Kebiasaan menatap layar gawai hingga larut malam menjadi salah satu penyebab utama berkurangnya waktu tidur. Oleh karena itu, mengatur jadwal tidur dan mengurangi penggunaan gawai menjelang tidur sangat dianjurkan.

Gagasan utama bacaan tersebut adalah...','Tidur adalah kegiatan yang membuang waktu','Tidur yang cukup penting bagi kesehatan tubuh dan otak','Gawai membantu tidur menjadi lebih nyenyak','Orang dewasa tidak membutuhkan tidur','Kurang tidur tidak berbahaya bagi tubuh','B','Bacaan menekankan pentingnya tidur cukup bagi tubuh dan otak.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Tidur yang cukup merupakan kebutuhan penting yang sering diabaikan. Saat tidur, tubuh memperbaiki sel-sel yang rusak dan otak menyimpan berbagai informasi yang diperoleh sepanjang hari. Orang dewasa pada umumnya membutuhkan tujuh hingga delapan jam tidur setiap malam. Kurang tidur dapat menurunkan konsentrasi, memperlemah daya ingat, bahkan melemahkan daya tahan tubuh. Kebiasaan menatap layar gawai hingga larut malam menjadi salah satu penyebab utama berkurangnya waktu tidur. Oleh karena itu, mengatur jadwal tidur dan mengurangi penggunaan gawai menjelang tidur sangat dianjurkan.

Frasa DAYA TAHAN TUBUH pada bacaan tersebut berarti...','kemampuan tubuh melawan penyakit','kekuatan otot tubuh','kecepatan seseorang berlari','berat badan seseorang','tinggi badan seseorang','A','Daya tahan tubuh adalah kemampuan tubuh menahan atau melawan penyakit.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Tidur yang cukup merupakan kebutuhan penting yang sering diabaikan. Saat tidur, tubuh memperbaiki sel-sel yang rusak dan otak menyimpan berbagai informasi yang diperoleh sepanjang hari. Orang dewasa pada umumnya membutuhkan tujuh hingga delapan jam tidur setiap malam. Kurang tidur dapat menurunkan konsentrasi, memperlemah daya ingat, bahkan melemahkan daya tahan tubuh. Kebiasaan menatap layar gawai hingga larut malam menjadi salah satu penyebab utama berkurangnya waktu tidur. Oleh karena itu, mengatur jadwal tidur dan mengurangi penggunaan gawai menjelang tidur sangat dianjurkan.

Pernyataan yang SESUAI dengan bacaan adalah...','Orang dewasa cukup tidur dua jam semalam','Orang dewasa umumnya membutuhkan tujuh hingga delapan jam tidur','Tidur tidak memengaruhi daya ingat','Gawai tidak berhubungan dengan waktu tidur','Sel tubuh justru rusak saat tidur','B','Bacaan menyebut orang dewasa umumnya membutuhkan tujuh hingga delapan jam tidur setiap malam.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Tidur yang cukup merupakan kebutuhan penting yang sering diabaikan. Saat tidur, tubuh memperbaiki sel-sel yang rusak dan otak menyimpan berbagai informasi yang diperoleh sepanjang hari. Orang dewasa pada umumnya membutuhkan tujuh hingga delapan jam tidur setiap malam. Kurang tidur dapat menurunkan konsentrasi, memperlemah daya ingat, bahkan melemahkan daya tahan tubuh. Kebiasaan menatap layar gawai hingga larut malam menjadi salah satu penyebab utama berkurangnya waktu tidur. Oleh karena itu, mengatur jadwal tidur dan mengurangi penggunaan gawai menjelang tidur sangat dianjurkan.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Saat tidur tubuh memperbaiki sel yang rusak','Kurang tidur tidak berpengaruh terhadap daya ingat','Menatap gawai hingga larut mengurangi waktu tidur','Kurang tidur dapat menurunkan konsentrasi','Tidur cukup baik bagi daya tahan tubuh','B','Bacaan menyatakan kurang tidur memperlemah daya ingat, sehingga pernyataan tidak berpengaruh tidak sesuai.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Tidur yang cukup merupakan kebutuhan penting yang sering diabaikan. Saat tidur, tubuh memperbaiki sel-sel yang rusak dan otak menyimpan berbagai informasi yang diperoleh sepanjang hari. Orang dewasa pada umumnya membutuhkan tujuh hingga delapan jam tidur setiap malam. Kurang tidur dapat menurunkan konsentrasi, memperlemah daya ingat, bahkan melemahkan daya tahan tubuh. Kebiasaan menatap layar gawai hingga larut malam menjadi salah satu penyebab utama berkurangnya waktu tidur. Oleh karena itu, mengatur jadwal tidur dan mengurangi penggunaan gawai menjelang tidur sangat dianjurkan.

Simpulan yang tepat dari bacaan tersebut adalah...','Sebaiknya begadang setiap malam','Mengatur jadwal tidur dan mengurangi penggunaan gawai menjelang tidur sangat dianjurkan','Gawai sebaiknya digunakan sampai larut malam','Tidur cukup tidak perlu diperhatikan','Konsentrasi tidak dipengaruhi oleh tidur','B','Simpulan bacaan: aturlah jadwal tidur dan kurangi gawai menjelang tidur.','medium'),

-- --- BACAAN 7 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Gotong royong merupakan nilai luhur yang telah lama mengakar dalam masyarakat Indonesia. Melalui gotong royong, pekerjaan yang berat menjadi terasa ringan karena dikerjakan bersama-sama. Membersihkan lingkungan, membangun rumah ibadah, hingga membantu tetangga yang tertimpa musibah sering dilakukan secara bergotong royong. Selain meringankan pekerjaan, kebiasaan ini juga mempererat hubungan antarwarga. Namun, di kota-kota besar, semangat gotong royong mulai memudar seiring kesibukan masing-masing individu. Menjaga dan menghidupkan kembali budaya gotong royong menjadi penting agar kebersamaan dalam masyarakat tetap terpelihara.

Gagasan utama bacaan tersebut adalah...','Gotong royong hanya membuang-buang waktu','Gotong royong meringankan pekerjaan dan mempererat kebersamaan sehingga perlu dijaga','Gotong royong hanya ada di kota besar','Pekerjaan berat sebaiknya dikerjakan sendiri','Kebersamaan tidak penting bagi masyarakat','B','Bacaan menekankan manfaat gotong royong dan pentingnya menjaga budaya tersebut.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Gotong royong merupakan nilai luhur yang telah lama mengakar dalam masyarakat Indonesia. Melalui gotong royong, pekerjaan yang berat menjadi terasa ringan karena dikerjakan bersama-sama. Membersihkan lingkungan, membangun rumah ibadah, hingga membantu tetangga yang tertimpa musibah sering dilakukan secara bergotong royong. Selain meringankan pekerjaan, kebiasaan ini juga mempererat hubungan antarwarga. Namun, di kota-kota besar, semangat gotong royong mulai memudar seiring kesibukan masing-masing individu. Menjaga dan menghidupkan kembali budaya gotong royong menjadi penting agar kebersamaan dalam masyarakat tetap terpelihara.

Kata MEMUDAR pada bacaan tersebut berarti...','berangsur berkurang atau melemah','semakin menguat','berubah warna','menghilang seketika','tumbuh dengan subur','A','Memudar berarti berangsur berkurang atau melemah.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Gotong royong merupakan nilai luhur yang telah lama mengakar dalam masyarakat Indonesia. Melalui gotong royong, pekerjaan yang berat menjadi terasa ringan karena dikerjakan bersama-sama. Membersihkan lingkungan, membangun rumah ibadah, hingga membantu tetangga yang tertimpa musibah sering dilakukan secara bergotong royong. Selain meringankan pekerjaan, kebiasaan ini juga mempererat hubungan antarwarga. Namun, di kota-kota besar, semangat gotong royong mulai memudar seiring kesibukan masing-masing individu. Menjaga dan menghidupkan kembali budaya gotong royong menjadi penting agar kebersamaan dalam masyarakat tetap terpelihara.

Pernyataan yang SESUAI dengan bacaan adalah...','Gotong royong memperberat pekerjaan','Gotong royong mempererat hubungan antarwarga','Gotong royong tidak dikenal di Indonesia','Membantu tetangga dilarang dalam gotong royong','Gotong royong hanya untuk membangun jalan','B','Bacaan menyatakan gotong royong mempererat hubungan antarwarga.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Gotong royong merupakan nilai luhur yang telah lama mengakar dalam masyarakat Indonesia. Melalui gotong royong, pekerjaan yang berat menjadi terasa ringan karena dikerjakan bersama-sama. Membersihkan lingkungan, membangun rumah ibadah, hingga membantu tetangga yang tertimpa musibah sering dilakukan secara bergotong royong. Selain meringankan pekerjaan, kebiasaan ini juga mempererat hubungan antarwarga. Namun, di kota-kota besar, semangat gotong royong mulai memudar seiring kesibukan masing-masing individu. Menjaga dan menghidupkan kembali budaya gotong royong menjadi penting agar kebersamaan dalam masyarakat tetap terpelihara.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Gotong royong merupakan nilai luhur masyarakat Indonesia','Semangat gotong royong di kota besar semakin menguat','Gotong royong membuat pekerjaan berat terasa ringan','Gotong royong mempererat hubungan antarwarga','Budaya gotong royong perlu dijaga','B','Bacaan menyatakan di kota besar semangat gotong royong justru memudar, bukan menguat.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Gotong royong merupakan nilai luhur yang telah lama mengakar dalam masyarakat Indonesia. Melalui gotong royong, pekerjaan yang berat menjadi terasa ringan karena dikerjakan bersama-sama. Membersihkan lingkungan, membangun rumah ibadah, hingga membantu tetangga yang tertimpa musibah sering dilakukan secara bergotong royong. Selain meringankan pekerjaan, kebiasaan ini juga mempererat hubungan antarwarga. Namun, di kota-kota besar, semangat gotong royong mulai memudar seiring kesibukan masing-masing individu. Menjaga dan menghidupkan kembali budaya gotong royong menjadi penting agar kebersamaan dalam masyarakat tetap terpelihara.

Simpulan yang tepat dari bacaan tersebut adalah...','Gotong royong sebaiknya ditinggalkan','Budaya gotong royong perlu dijaga agar kebersamaan masyarakat tetap terpelihara','Kesibukan membuat gotong royong tidak diperlukan','Gotong royong hanya untuk masyarakat desa','Kebersamaan tidak berhubungan dengan gotong royong','B','Simpulan bacaan: budaya gotong royong perlu dijaga demi kebersamaan masyarakat.','medium'),

-- --- BACAAN 8 ---
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Menghemat energi listrik tidak hanya menguntungkan secara ekonomi, tetapi juga baik bagi lingkungan. Sebagian besar listrik saat ini masih dihasilkan dari pembakaran bahan bakar fosil yang menghasilkan gas rumah kaca. Semakin banyak listrik yang digunakan, semakin besar pula emisi yang dihasilkan. Kebiasaan sederhana seperti mematikan lampu yang tidak terpakai dan mencabut alat elektronik yang tidak digunakan dapat mengurangi pemborosan. Menggunakan peralatan yang hemat energi juga membantu menekan tagihan listrik. Dengan demikian, menghemat listrik merupakan langkah kecil yang berdampak besar bagi bumi.

Gagasan utama bacaan tersebut adalah...','Menghemat listrik hanya menguntungkan ekonomi','Menghemat listrik menguntungkan secara ekonomi sekaligus baik bagi lingkungan','Listrik tidak berhubungan dengan lingkungan','Pemborosan listrik tidak berdampak apa pun','Peralatan hemat energi tidak berguna','B','Bacaan menekankan menghemat listrik menguntungkan ekonomi sekaligus lingkungan.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Menghemat energi listrik tidak hanya menguntungkan secara ekonomi, tetapi juga baik bagi lingkungan. Sebagian besar listrik saat ini masih dihasilkan dari pembakaran bahan bakar fosil yang menghasilkan gas rumah kaca. Semakin banyak listrik yang digunakan, semakin besar pula emisi yang dihasilkan. Kebiasaan sederhana seperti mematikan lampu yang tidak terpakai dan mencabut alat elektronik yang tidak digunakan dapat mengurangi pemborosan. Menggunakan peralatan yang hemat energi juga membantu menekan tagihan listrik. Dengan demikian, menghemat listrik merupakan langkah kecil yang berdampak besar bagi bumi.

Kata EMISI pada bacaan tersebut berarti...','gas yang dilepaskan ke udara','cahaya yang dipancarkan lampu','energi yang tersimpan dalam baterai','air yang menguap ke udara','suara yang dihasilkan mesin','A','Emisi berarti gas (buangan) yang dilepaskan atau dikeluarkan ke udara.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Menghemat energi listrik tidak hanya menguntungkan secara ekonomi, tetapi juga baik bagi lingkungan. Sebagian besar listrik saat ini masih dihasilkan dari pembakaran bahan bakar fosil yang menghasilkan gas rumah kaca. Semakin banyak listrik yang digunakan, semakin besar pula emisi yang dihasilkan. Kebiasaan sederhana seperti mematikan lampu yang tidak terpakai dan mencabut alat elektronik yang tidak digunakan dapat mengurangi pemborosan. Menggunakan peralatan yang hemat energi juga membantu menekan tagihan listrik. Dengan demikian, menghemat listrik merupakan langkah kecil yang berdampak besar bagi bumi.

Pernyataan yang SESUAI dengan bacaan adalah...','Semua listrik berasal dari tenaga surya','Sebagian besar listrik masih dihasilkan dari pembakaran bahan bakar fosil','Menghemat listrik tidak menekan tagihan','Emisi tidak dipengaruhi oleh pemakaian listrik','Mematikan lampu justru menambah pemborosan','B','Bacaan menyatakan sebagian besar listrik masih dihasilkan dari pembakaran bahan bakar fosil.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Menghemat energi listrik tidak hanya menguntungkan secara ekonomi, tetapi juga baik bagi lingkungan. Sebagian besar listrik saat ini masih dihasilkan dari pembakaran bahan bakar fosil yang menghasilkan gas rumah kaca. Semakin banyak listrik yang digunakan, semakin besar pula emisi yang dihasilkan. Kebiasaan sederhana seperti mematikan lampu yang tidak terpakai dan mencabut alat elektronik yang tidak digunakan dapat mengurangi pemborosan. Menggunakan peralatan yang hemat energi juga membantu menekan tagihan listrik. Dengan demikian, menghemat listrik merupakan langkah kecil yang berdampak besar bagi bumi.

Pernyataan yang TIDAK SESUAI dengan bacaan adalah...','Pembakaran bahan bakar fosil menghasilkan gas rumah kaca','Menghemat listrik tidak berpengaruh terhadap lingkungan','Mencabut alat elektronik yang tidak dipakai mengurangi pemborosan','Peralatan hemat energi menekan tagihan listrik','Semakin banyak listrik dipakai, semakin besar emisinya','B','Bacaan menyatakan menghemat listrik baik bagi lingkungan, sehingga pernyataan tidak berpengaruh terhadap lingkungan tidak sesuai.','medium'),
('b0000000-0000-4000-8000-060300000000','Bacalah bacaan berikut untuk menjawab soal.

Menghemat energi listrik tidak hanya menguntungkan secara ekonomi, tetapi juga baik bagi lingkungan. Sebagian besar listrik saat ini masih dihasilkan dari pembakaran bahan bakar fosil yang menghasilkan gas rumah kaca. Semakin banyak listrik yang digunakan, semakin besar pula emisi yang dihasilkan. Kebiasaan sederhana seperti mematikan lampu yang tidak terpakai dan mencabut alat elektronik yang tidak digunakan dapat mengurangi pemborosan. Menggunakan peralatan yang hemat energi juga membantu menekan tagihan listrik. Dengan demikian, menghemat listrik merupakan langkah kecil yang berdampak besar bagi bumi.

Simpulan yang tepat dari bacaan tersebut adalah...','Menghemat listrik tidak ada manfaatnya','Menghemat listrik merupakan langkah kecil yang berdampak besar bagi bumi','Listrik sebaiknya digunakan sebanyak mungkin','Tagihan listrik tidak dapat ditekan','Lingkungan tidak terpengaruh oleh pemakaian listrik','B','Simpulan bacaan: menghemat listrik adalah langkah kecil yang berdampak besar bagi bumi.','medium'),

-- ============================ LOGIKA POSISI (8 teka-teki = 40 soal) ============================
-- --- TEKA-TEKI 1: tempat duduk (urutan benar: R, Q, U, S, T, P) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Orang yang duduk di posisi ke-4 adalah...','P','S','U','Q','T','B','Urutan yang memenuhi semua ketentuan: R, Q, U, S, T, P. Posisi ke-4 ditempati S.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Orang yang duduk di ujung paling kanan (posisi ke-6) adalah...','U','S','P','T','Q','C','Urutan: R, Q, U, S, T, P. Posisi ke-6 (paling kanan) ditempati P.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Orang yang duduk tepat di antara U dan T adalah...','Q','P','R','S','U','D','Urutan: R, Q, U, S, T, P. Di antara U (posisi 3) dan T (posisi 5) terdapat S (posisi 4).','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Posisi yang ditempati U adalah...','Posisi ke-2','Posisi ke-3','Posisi ke-4','Posisi ke-5','Posisi ke-6','B','Urutan: R, Q, U, S, T, P. U menempati posisi ke-3.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Enam orang — P, Q, R, S, T, dan U — duduk berjajar menghadap ke depan pada posisi ke-1 (paling kiri) sampai ke-6 (paling kanan) dengan ketentuan:
- R duduk di posisi paling kiri.
- Q duduk tepat di sebelah kanan R.
- T duduk di posisi ke-5.
- U duduk tepat di sebelah kiri S.
- S berada di antara Q dan T.

Pernyataan yang BENAR adalah...','Q duduk di posisi ke-3','S duduk di sebelah kiri U','P duduk di posisi paling kanan','T duduk di posisi ke-4','R duduk di posisi ke-2','C','Urutan: R, Q, U, S, T, P. Maka P duduk di posisi paling kanan (ke-6).','hard'),

-- --- TEKA-TEKI 2: tinggi badan (urutan tertinggi->terpendek: Doni, Andi, Budi, Cici, Eka) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Siswa yang paling tinggi adalah...','Andi','Budi','Cici','Doni','Eka','D','Urutan tertinggi ke terpendek: Doni, Andi, Budi, Cici, Eka. Yang tertinggi adalah Doni.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Siswa yang paling pendek adalah...','Andi','Budi','Cici','Doni','Eka','E','Urutan: Doni, Andi, Budi, Cici, Eka. Yang paling pendek adalah Eka.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Siswa yang lebih tinggi daripada Budi tetapi lebih pendek daripada Doni adalah...','Andi','Budi','Cici','Eka','Doni','A','Urutan: Doni, Andi, Budi, Cici, Eka. Yang berada di antara Doni dan Budi adalah Andi.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Urutan siswa dari yang tertinggi ke terpendek adalah...','Doni, Andi, Budi, Cici, Eka','Andi, Doni, Budi, Cici, Eka','Doni, Budi, Andi, Cici, Eka','Eka, Cici, Budi, Andi, Doni','Doni, Andi, Cici, Budi, Eka','A','Dari ketentuan diperoleh Doni > Andi > Budi > Cici > Eka.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Andi, Budi, Cici, Doni, dan Eka — dibandingkan tinggi badannya dengan ketentuan:
- Andi lebih tinggi daripada Budi.
- Cici lebih pendek daripada Budi.
- Doni lebih tinggi daripada Andi.
- Eka lebih pendek daripada Cici.

Pernyataan yang BENAR adalah...','Budi lebih tinggi daripada Andi','Cici lebih tinggi daripada Eka','Eka lebih tinggi daripada Cici','Budi adalah yang paling pendek','Andi lebih tinggi daripada Doni','B','Urutan: Doni, Andi, Budi, Cici, Eka. Maka Cici lebih tinggi daripada Eka.','medium'),

-- --- TEKA-TEKI 3: urutan finis lari (urutan benar: Hadi, Fajar, Galih, Ilham, Joni) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima pelari — Fajar, Galih, Hadi, Ilham, dan Joni — mencapai garis finis pada urutan ke-1 (pertama) sampai ke-5 (terakhir) dengan ketentuan:
- Joni finis paling akhir.
- Fajar finis tepat sebelum Galih.
- Ilham finis tepat setelah Galih.
- Hadi finis lebih dulu daripada Fajar.

Pelari yang finis pertama adalah...','Hadi','Fajar','Galih','Ilham','Joni','A','Fajar-Galih-Ilham berurutan; Hadi sebelum Fajar; Joni terakhir. Urutan: Hadi, Fajar, Galih, Ilham, Joni. Yang pertama adalah Hadi.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima pelari — Fajar, Galih, Hadi, Ilham, dan Joni — mencapai garis finis pada urutan ke-1 (pertama) sampai ke-5 (terakhir) dengan ketentuan:
- Joni finis paling akhir.
- Fajar finis tepat sebelum Galih.
- Ilham finis tepat setelah Galih.
- Hadi finis lebih dulu daripada Fajar.

Pelari yang finis pada urutan ketiga adalah...','Hadi','Fajar','Galih','Ilham','Joni','C','Urutan: Hadi, Fajar, Galih, Ilham, Joni. Urutan ketiga adalah Galih.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima pelari — Fajar, Galih, Hadi, Ilham, dan Joni — mencapai garis finis pada urutan ke-1 (pertama) sampai ke-5 (terakhir) dengan ketentuan:
- Joni finis paling akhir.
- Fajar finis tepat sebelum Galih.
- Ilham finis tepat setelah Galih.
- Hadi finis lebih dulu daripada Fajar.

Pelari yang finis tepat sebelum Joni adalah...','Hadi','Fajar','Galih','Ilham','Joni','D','Urutan: Hadi, Fajar, Galih, Ilham, Joni. Tepat sebelum Joni adalah Ilham.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima pelari — Fajar, Galih, Hadi, Ilham, dan Joni — mencapai garis finis pada urutan ke-1 (pertama) sampai ke-5 (terakhir) dengan ketentuan:
- Joni finis paling akhir.
- Fajar finis tepat sebelum Galih.
- Ilham finis tepat setelah Galih.
- Hadi finis lebih dulu daripada Fajar.

Urutan finis dari yang pertama sampai terakhir adalah...','Hadi, Fajar, Galih, Ilham, Joni','Fajar, Galih, Hadi, Ilham, Joni','Hadi, Galih, Fajar, Ilham, Joni','Joni, Ilham, Galih, Fajar, Hadi','Hadi, Fajar, Ilham, Galih, Joni','A','Dari ketentuan diperoleh urutan Hadi, Fajar, Galih, Ilham, Joni.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima pelari — Fajar, Galih, Hadi, Ilham, dan Joni — mencapai garis finis pada urutan ke-1 (pertama) sampai ke-5 (terakhir) dengan ketentuan:
- Joni finis paling akhir.
- Fajar finis tepat sebelum Galih.
- Ilham finis tepat setelah Galih.
- Hadi finis lebih dulu daripada Fajar.

Pernyataan yang BENAR adalah...','Galih finis sebelum Fajar','Ilham finis lebih dulu daripada Joni','Hadi finis paling akhir','Fajar finis pada urutan pertama','Joni finis sebelum Galih','B','Urutan: Hadi, Fajar, Galih, Ilham, Joni. Ilham (ke-4) finis lebih dulu daripada Joni (ke-5).','hard'),

-- --- TEKA-TEKI 4: jadwal piket (Senin=Puti, Selasa=Oki, Rabu=Nina, Kamis=Rian, Jumat=Sari) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Nina, Oki, Puti, Rian, dan Sari — mendapat jadwal piket, satu orang setiap hari dari Senin sampai Jumat, dengan ketentuan:
- Nina piket pada hari Rabu.
- Oki piket tepat sehari sebelum Nina.
- Sari piket pada hari Jumat.
- Puti piket lebih dulu daripada Oki.

Siswa yang piket pada hari Senin adalah...','Nina','Oki','Puti','Rian','Sari','C','Nina=Rabu, Oki=Selasa, Sari=Jumat, Puti sebelum Oki maka Puti=Senin, Rian=Kamis. Hari Senin adalah Puti.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Nina, Oki, Puti, Rian, dan Sari — mendapat jadwal piket, satu orang setiap hari dari Senin sampai Jumat, dengan ketentuan:
- Nina piket pada hari Rabu.
- Oki piket tepat sehari sebelum Nina.
- Sari piket pada hari Jumat.
- Puti piket lebih dulu daripada Oki.

Siswa yang piket pada hari Kamis adalah...','Nina','Oki','Puti','Rian','Sari','D','Jadwal: Senin Puti, Selasa Oki, Rabu Nina, Kamis Rian, Jumat Sari. Hari Kamis adalah Rian.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Nina, Oki, Puti, Rian, dan Sari — mendapat jadwal piket, satu orang setiap hari dari Senin sampai Jumat, dengan ketentuan:
- Nina piket pada hari Rabu.
- Oki piket tepat sehari sebelum Nina.
- Sari piket pada hari Jumat.
- Puti piket lebih dulu daripada Oki.

Oki mendapat jadwal piket pada hari...','Senin','Selasa','Rabu','Kamis','Jumat','B','Oki piket tepat sehari sebelum Nina (Rabu), jadi Oki piket pada hari Selasa.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Nina, Oki, Puti, Rian, dan Sari — mendapat jadwal piket, satu orang setiap hari dari Senin sampai Jumat, dengan ketentuan:
- Nina piket pada hari Rabu.
- Oki piket tepat sehari sebelum Nina.
- Sari piket pada hari Jumat.
- Puti piket lebih dulu daripada Oki.

Siswa yang piket tepat sehari setelah Nina adalah...','Puti','Oki','Sari','Rian','Nina','D','Nina piket Rabu; sehari setelahnya (Kamis) adalah Rian.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Nina, Oki, Puti, Rian, dan Sari — mendapat jadwal piket, satu orang setiap hari dari Senin sampai Jumat, dengan ketentuan:
- Nina piket pada hari Rabu.
- Oki piket tepat sehari sebelum Nina.
- Sari piket pada hari Jumat.
- Puti piket lebih dulu daripada Oki.

Pernyataan yang BENAR adalah...','Sari piket pada hari Kamis','Puti mendapat jadwal piket paling awal','Oki piket pada hari Rabu','Rian piket pada hari Senin','Nina piket pada hari Jumat','B','Jadwal: Senin Puti, Selasa Oki, Rabu Nina, Kamis Rian, Jumat Sari. Puti piket paling awal (Senin).','hard'),

-- --- TEKA-TEKI 5: susunan buku (kiri->kanan: Merah, Hijau, Biru, Kuning, Ungu) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima buku berwarna Merah, Biru, Hijau, Kuning, dan Ungu disusun berjajar di rak dari posisi ke-1 (paling kiri) sampai ke-5 (paling kanan) dengan ketentuan:
- Buku Merah berada di ujung paling kiri.
- Buku Ungu berada di ujung paling kanan.
- Buku Hijau berada tepat di sebelah kanan buku Merah.
- Buku Biru berada di antara buku Hijau dan buku Kuning.

Buku yang berada di posisi ke-3 adalah...','Merah','Hijau','Biru','Kuning','Ungu','C','Merah=1, Hijau=2, lalu Hijau-Biru-Kuning berurutan sehingga Biru=3, Kuning=4, Ungu=5. Posisi ke-3 adalah Biru.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima buku berwarna Merah, Biru, Hijau, Kuning, dan Ungu disusun berjajar di rak dari posisi ke-1 (paling kiri) sampai ke-5 (paling kanan) dengan ketentuan:
- Buku Merah berada di ujung paling kiri.
- Buku Ungu berada di ujung paling kanan.
- Buku Hijau berada tepat di sebelah kanan buku Merah.
- Buku Biru berada di antara buku Hijau dan buku Kuning.

Buku yang berada di posisi ke-4 adalah...','Merah','Hijau','Biru','Kuning','Ungu','D','Susunan: Merah, Hijau, Biru, Kuning, Ungu. Posisi ke-4 adalah Kuning.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima buku berwarna Merah, Biru, Hijau, Kuning, dan Ungu disusun berjajar di rak dari posisi ke-1 (paling kiri) sampai ke-5 (paling kanan) dengan ketentuan:
- Buku Merah berada di ujung paling kiri.
- Buku Ungu berada di ujung paling kanan.
- Buku Hijau berada tepat di sebelah kanan buku Merah.
- Buku Biru berada di antara buku Hijau dan buku Kuning.

Buku yang berada tepat di sebelah kiri buku Ungu adalah...','Merah','Biru','Kuning','Hijau','Ungu','C','Susunan: Merah, Hijau, Biru, Kuning, Ungu. Tepat di kiri Ungu adalah Kuning.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima buku berwarna Merah, Biru, Hijau, Kuning, dan Ungu disusun berjajar di rak dari posisi ke-1 (paling kiri) sampai ke-5 (paling kanan) dengan ketentuan:
- Buku Merah berada di ujung paling kiri.
- Buku Ungu berada di ujung paling kanan.
- Buku Hijau berada tepat di sebelah kanan buku Merah.
- Buku Biru berada di antara buku Hijau dan buku Kuning.

Susunan buku dari kiri ke kanan adalah...','Merah, Hijau, Biru, Kuning, Ungu','Merah, Biru, Hijau, Kuning, Ungu','Ungu, Kuning, Biru, Hijau, Merah','Merah, Hijau, Kuning, Biru, Ungu','Hijau, Merah, Biru, Kuning, Ungu','A','Dari ketentuan diperoleh susunan Merah, Hijau, Biru, Kuning, Ungu.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima buku berwarna Merah, Biru, Hijau, Kuning, dan Ungu disusun berjajar di rak dari posisi ke-1 (paling kiri) sampai ke-5 (paling kanan) dengan ketentuan:
- Buku Merah berada di ujung paling kiri.
- Buku Ungu berada di ujung paling kanan.
- Buku Hijau berada tepat di sebelah kanan buku Merah.
- Buku Biru berada di antara buku Hijau dan buku Kuning.

Pernyataan yang BENAR adalah...','Buku Biru berada di ujung kanan','Buku Hijau berada di posisi kedua','Buku Kuning berada di posisi pertama','Buku Merah berada di posisi ketiga','Buku Ungu berada di posisi kedua','B','Susunan: Merah, Hijau, Biru, Kuning, Ungu. Buku Hijau berada di posisi kedua.','hard'),

-- --- TEKA-TEKI 6: perbandingan usia (tertua->termuda: Erna, Fikri, Bagas, Cinta, Deni) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Bagas, Cinta, Deni, Erna, dan Fikri — dibandingkan usianya dengan ketentuan:
- Bagas lebih tua daripada Cinta.
- Deni lebih muda daripada Cinta.
- Erna adalah yang paling tua.
- Fikri lebih tua daripada Bagas tetapi lebih muda daripada Erna.

Orang yang paling tua adalah...','Bagas','Cinta','Deni','Erna','Fikri','D','Urutan tertua ke termuda: Erna, Fikri, Bagas, Cinta, Deni. Yang paling tua adalah Erna.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Bagas, Cinta, Deni, Erna, dan Fikri — dibandingkan usianya dengan ketentuan:
- Bagas lebih tua daripada Cinta.
- Deni lebih muda daripada Cinta.
- Erna adalah yang paling tua.
- Fikri lebih tua daripada Bagas tetapi lebih muda daripada Erna.

Orang yang paling muda adalah...','Bagas','Cinta','Deni','Erna','Fikri','C','Urutan: Erna, Fikri, Bagas, Cinta, Deni. Yang paling muda adalah Deni.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Bagas, Cinta, Deni, Erna, dan Fikri — dibandingkan usianya dengan ketentuan:
- Bagas lebih tua daripada Cinta.
- Deni lebih muda daripada Cinta.
- Erna adalah yang paling tua.
- Fikri lebih tua daripada Bagas tetapi lebih muda daripada Erna.

Orang yang lebih tua daripada Bagas tetapi lebih muda daripada Erna adalah...','Cinta','Deni','Fikri','Bagas','Erna','C','Urutan: Erna, Fikri, Bagas, Cinta, Deni. Di antara Erna dan Bagas terdapat Fikri.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Bagas, Cinta, Deni, Erna, dan Fikri — dibandingkan usianya dengan ketentuan:
- Bagas lebih tua daripada Cinta.
- Deni lebih muda daripada Cinta.
- Erna adalah yang paling tua.
- Fikri lebih tua daripada Bagas tetapi lebih muda daripada Erna.

Urutan dari yang paling tua sampai paling muda adalah...','Erna, Fikri, Bagas, Cinta, Deni','Erna, Bagas, Fikri, Cinta, Deni','Erna, Fikri, Bagas, Deni, Cinta','Deni, Cinta, Bagas, Fikri, Erna','Fikri, Erna, Bagas, Cinta, Deni','A','Dari ketentuan diperoleh urutan Erna, Fikri, Bagas, Cinta, Deni.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Bagas, Cinta, Deni, Erna, dan Fikri — dibandingkan usianya dengan ketentuan:
- Bagas lebih tua daripada Cinta.
- Deni lebih muda daripada Cinta.
- Erna adalah yang paling tua.
- Fikri lebih tua daripada Bagas tetapi lebih muda daripada Erna.

Pernyataan yang BENAR adalah...','Deni lebih tua daripada Cinta','Cinta lebih tua daripada Deni','Bagas lebih tua daripada Fikri','Erna lebih muda daripada Fikri','Bagas adalah yang paling tua','B','Urutan: Erna, Fikri, Bagas, Cinta, Deni. Maka Cinta lebih tua daripada Deni.','medium'),

-- --- TEKA-TEKI 7: peringkat nilai ujian (tertinggi->terendah: Indra, Gita, Kiki, Hana, Jaka) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Gita, Hana, Indra, Jaka, dan Kiki — memperoleh nilai ujian yang berbeda-beda dengan ketentuan:
- Indra memperoleh nilai tertinggi.
- Gita memperoleh nilai lebih tinggi daripada Hana.
- Jaka memperoleh nilai lebih rendah daripada Hana.
- Kiki memperoleh nilai di antara Gita dan Hana.

Siswa yang memperoleh nilai tertinggi adalah...','Gita','Hana','Indra','Jaka','Kiki','C','Urutan tertinggi ke terendah: Indra, Gita, Kiki, Hana, Jaka. Nilai tertinggi adalah Indra.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Gita, Hana, Indra, Jaka, dan Kiki — memperoleh nilai ujian yang berbeda-beda dengan ketentuan:
- Indra memperoleh nilai tertinggi.
- Gita memperoleh nilai lebih tinggi daripada Hana.
- Jaka memperoleh nilai lebih rendah daripada Hana.
- Kiki memperoleh nilai di antara Gita dan Hana.

Siswa yang memperoleh nilai terendah adalah...','Gita','Hana','Indra','Jaka','Kiki','D','Urutan: Indra, Gita, Kiki, Hana, Jaka. Nilai terendah adalah Jaka.','medium'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Gita, Hana, Indra, Jaka, dan Kiki — memperoleh nilai ujian yang berbeda-beda dengan ketentuan:
- Indra memperoleh nilai tertinggi.
- Gita memperoleh nilai lebih tinggi daripada Hana.
- Jaka memperoleh nilai lebih rendah daripada Hana.
- Kiki memperoleh nilai di antara Gita dan Hana.

Siswa yang nilainya berada di antara Gita dan Hana adalah...','Indra','Jaka','Kiki','Gita','Hana','C','Kiki memperoleh nilai di antara Gita dan Hana, yaitu Gita, Kiki, lalu Hana.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Gita, Hana, Indra, Jaka, dan Kiki — memperoleh nilai ujian yang berbeda-beda dengan ketentuan:
- Indra memperoleh nilai tertinggi.
- Gita memperoleh nilai lebih tinggi daripada Hana.
- Jaka memperoleh nilai lebih rendah daripada Hana.
- Kiki memperoleh nilai di antara Gita dan Hana.

Urutan nilai dari yang tertinggi sampai terendah adalah...','Indra, Gita, Kiki, Hana, Jaka','Indra, Kiki, Gita, Hana, Jaka','Gita, Indra, Kiki, Hana, Jaka','Jaka, Hana, Kiki, Gita, Indra','Indra, Gita, Hana, Kiki, Jaka','A','Dari ketentuan diperoleh urutan Indra, Gita, Kiki, Hana, Jaka.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima siswa — Gita, Hana, Indra, Jaka, dan Kiki — memperoleh nilai ujian yang berbeda-beda dengan ketentuan:
- Indra memperoleh nilai tertinggi.
- Gita memperoleh nilai lebih tinggi daripada Hana.
- Jaka memperoleh nilai lebih rendah daripada Hana.
- Kiki memperoleh nilai di antara Gita dan Hana.

Pernyataan yang BENAR adalah...','Jaka memperoleh nilai tertinggi','Hana memperoleh nilai lebih tinggi daripada Jaka','Kiki memperoleh nilai lebih tinggi daripada Gita','Indra memperoleh nilai terendah','Gita memperoleh nilai lebih rendah daripada Hana','B','Urutan: Indra, Gita, Kiki, Hana, Jaka. Hana lebih tinggi daripada Jaka.','medium'),

-- --- TEKA-TEKI 8: antrean loket (depan->belakang: Nardi, Maya, Lina, Oscar, Pandu) ---
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Lina, Maya, Nardi, Oscar, dan Pandu — mengantre di sebuah loket pada posisi ke-1 (paling depan) sampai ke-5 (paling belakang) dengan ketentuan:
- Nardi berada di posisi paling depan.
- Pandu berada di posisi paling belakang.
- Maya berada tepat di depan Lina.
- Oscar berada tepat di belakang Lina.

Orang yang berada di posisi paling depan adalah...','Lina','Maya','Nardi','Oscar','Pandu','C','Maya-Lina-Oscar berurutan mengisi posisi 2-4; Nardi=1, Pandu=5. Posisi paling depan adalah Nardi.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Lina, Maya, Nardi, Oscar, dan Pandu — mengantre di sebuah loket pada posisi ke-1 (paling depan) sampai ke-5 (paling belakang) dengan ketentuan:
- Nardi berada di posisi paling depan.
- Pandu berada di posisi paling belakang.
- Maya berada tepat di depan Lina.
- Oscar berada tepat di belakang Lina.

Orang yang berada di posisi ke-3 adalah...','Lina','Maya','Nardi','Oscar','Pandu','A','Antrean: Nardi, Maya, Lina, Oscar, Pandu. Posisi ke-3 adalah Lina.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Lina, Maya, Nardi, Oscar, dan Pandu — mengantre di sebuah loket pada posisi ke-1 (paling depan) sampai ke-5 (paling belakang) dengan ketentuan:
- Nardi berada di posisi paling depan.
- Pandu berada di posisi paling belakang.
- Maya berada tepat di depan Lina.
- Oscar berada tepat di belakang Lina.

Orang yang berada tepat di belakang Lina adalah...','Maya','Nardi','Oscar','Pandu','Lina','C','Antrean: Nardi, Maya, Lina, Oscar, Pandu. Tepat di belakang Lina adalah Oscar.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Lina, Maya, Nardi, Oscar, dan Pandu — mengantre di sebuah loket pada posisi ke-1 (paling depan) sampai ke-5 (paling belakang) dengan ketentuan:
- Nardi berada di posisi paling depan.
- Pandu berada di posisi paling belakang.
- Maya berada tepat di depan Lina.
- Oscar berada tepat di belakang Lina.

Urutan antrean dari paling depan sampai paling belakang adalah...','Nardi, Maya, Lina, Oscar, Pandu','Nardi, Lina, Maya, Oscar, Pandu','Nardi, Oscar, Lina, Maya, Pandu','Pandu, Oscar, Lina, Maya, Nardi','Nardi, Maya, Oscar, Lina, Pandu','A','Dari ketentuan diperoleh urutan Nardi, Maya, Lina, Oscar, Pandu.','hard'),
('b0000000-0000-4000-8000-060600000000','Bacalah ketentuan berikut untuk menjawab soal.

Lima orang — Lina, Maya, Nardi, Oscar, dan Pandu — mengantre di sebuah loket pada posisi ke-1 (paling depan) sampai ke-5 (paling belakang) dengan ketentuan:
- Nardi berada di posisi paling depan.
- Pandu berada di posisi paling belakang.
- Maya berada tepat di depan Lina.
- Oscar berada tepat di belakang Lina.

Pernyataan yang BENAR adalah...','Lina berada di posisi paling depan','Maya berada di depan Oscar','Pandu berada tepat di belakang Nardi','Oscar berada di posisi kedua','Nardi berada di posisi paling belakang','B','Antrean: Nardi, Maya, Lina, Oscar, Pandu. Maya (ke-2) berada di depan Oscar (ke-4).','medium')
;
