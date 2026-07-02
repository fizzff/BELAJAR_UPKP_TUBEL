-- Tambahan skema: mind map per bab untuk membantu belajar
-- mindmap disimpan sebagai outline markdown (heading/bullet berjenjang),
-- dirender jadi diagram interaktif di frontend pakai Markmap.

alter table chapters add column if not exists mindmap text;
