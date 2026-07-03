-- Tambahan skema: urutan tampil soal per bab, supaya "Latihan Soal Bab Ini"
-- mengikuti urutan sub-materi dan tidak lompat-lompat antar topik.
-- (created_at tidak cukup karena semua baris dalam satu statement INSERT
-- berbagi timestamp yang sama persis.)

alter table questions add column if not exists order_index int;
