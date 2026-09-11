-- Replaces the auth.users-keyed library_state table with a plain
-- email-keyed one, by explicit request: no password, no confirmation
-- email, no Supabase Auth account at all. Whoever enters a given email
-- in the Cloud sync dialog reads and writes that email's row -- there is
-- no verification step. Deliberately open; fine for a personal,
-- low-stakes reading-list app. Do not reuse this pattern anywhere the
-- data or the "who can write it" question actually matters.
--
-- The table was empty (never signed into) under the old schema, so this
-- drops and recreates it rather than migrating rows.

drop table if exists library_state;

create table library_state (
  email text primary key,
  state jsonb not null,
  updated_at timestamptz not null default now()
);

alter table library_state enable row level security;

drop policy if exists "anyone can read" on library_state;
drop policy if exists "anyone can insert" on library_state;
drop policy if exists "anyone can update" on library_state;

create policy "anyone can read" on library_state for select using (true);
create policy "anyone can insert" on library_state for insert with check (true);
create policy "anyone can update" on library_state for update using (true);
