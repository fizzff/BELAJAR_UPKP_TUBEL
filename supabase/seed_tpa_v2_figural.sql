-- Placeholder: Bab "Figural / Logika Gambar (Spasial)" (Modul TPA v2)
-- Coming soon - belum ada materi rinci/mindmap/soal karena butuh representasi visual
-- yang belum didukung skema saat ini (klasifikasi gambar, jaring-jaring, bayangan cermin).
-- (dipecah dari seed_tpa_v2_numerikal2.sql supaya 1 file = 1 bab)

delete from questions where chapter_id = 'b0000000-0000-4000-8000-061500000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-061500000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-061500000000', null, '> Materi dan latihan soal Figural/Logika Gambar (klasifikasi gambar, jaring-jaring bangun ruang, bayangan cermin) sedang disiapkan dan akan segera hadir. Nantikan update berikutnya!', 1);
