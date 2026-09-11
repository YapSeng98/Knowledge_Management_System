-- Per-email content restriction: which tracks a given email is allowed to
-- see. Deliberately read-only from the page (select policy only) -- unlike
-- library_state, this one controls WHO SEES WHAT, so if it were publicly
-- writable anyone could just grant themselves everything, defeating the
-- point. Manage grants yourself, directly in the SQL editor or Table
-- Editor: insert one row per (email, track_id) you want that email limited
-- to. An email with zero rows here is unrestricted (sees the full catalog,
-- today's behaviour) -- this is opt-in restriction, not opt-in access.
--
-- track_id values match supabase/001_catalog.sql's tracks.id (0=ServiceNow,
-- 1=JavaScript and TypeScript, 2=Python, 3=.NET and C#, 4=Cloud and DevOps,
-- 5=SQL and data, 6=System design, 7=Security and identity,
-- 8=Business analysis, 9=Project management, 10=Technical writing, 11=AI).
--
-- Example: restrict someone to just ServiceNow and SQL:
--   insert into access_grants (email, track_id) values
--     ('someone@example.com', 0), ('someone@example.com', 5);

create table if not exists access_grants (
  email text not null,
  track_id smallint not null references tracks(id),
  primary key (email, track_id)
);

alter table access_grants enable row level security;

drop policy if exists "public read access_grants" on access_grants;
create policy "public read access_grants" on access_grants for select using (true);
-- no insert/update/delete policy -- admin-only, via the dashboard.
