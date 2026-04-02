-- Ejecuta este SQL en Supabase > SQL Editor

create table if not exists submissions (
  id uuid default gen_random_uuid() primary key,
  created_at timestamptz default now(),
  team_name text not null,
  rep_name text not null,
  member1 text, member2 text, member3 text, member4 text, member5 text,
  problema text, sector text, amenaza text,
  nombre_proyecto text,
  como_ataque text,
  por_que text,
  impacto_social text,
  solucion text,
  impacto_esperado text,
  score_j1 jsonb default null,
  score_j2 jsonb default null
);

-- Permitir lectura y escritura pública (para el hackathon)
alter table submissions enable row level security;

create policy "allow_all" on submissions
  for all using (true) with check (true);
