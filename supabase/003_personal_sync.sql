-- Backing table for the "Cloud sync" personal progress feature in library.html
-- (ticks, stars, notes, your own added resources). One row per signed-in user,
-- readable/writable only by that user. Independent of the catalog tables in
-- 001/002 -- this one was never actually run, unlike those.

create table if not exists library_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null,
  updated_at timestamptz not null default now()
);

alter table library_state enable row level security;

drop policy if exists "select own state" on library_state;
drop policy if exists "insert own state" on library_state;
drop policy if exists "update own state" on library_state;

create policy "select own state" on library_state
  for select using (auth.uid() = user_id);
create policy "insert own state" on library_state
  for insert with check (auth.uid() = user_id);
create policy "update own state" on library_state
  for update using (auth.uid() = user_id);
