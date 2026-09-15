# Knowledge Management System

A static two-page site: `index.html` (Roadmap) and `library.html` (Library), both reading
the same catalog from Supabase with a baked-in offline fallback.

## Architecture

- Each HTML file hardcodes a full copy of the catalog as JS fallback arrays:
  `CATS_FALLBACK` in index.html, `SEED_FALLBACK` in library.html. On load, the page paints
  instantly from the fallback, then fetches live data from Supabase and calls `refreshView()`
  to swap it in.
- **The two fallback arrays must always be kept in exact sync** (same resources, same URLs,
  same order) — they are two independent hand-maintained copies of the same data, and nothing
  enforces that automatically. After editing either file, cross-check with a script that
  extracts both arrays (see "Verifying a change" below) and diffs them; do not eyeball it.
- Supabase project: `jhhzdnyjusufyhevczcr`. Anon/publishable key
  `sb_publishable_03adw4CdXbkDmuLibVu_Zg_OIWne7gU` is public and safe to embed client-side —
  RLS restricts the anon role to SELECT-only on catalog tables (`categories`, `tracks`,
  `resources`, `level_topics`). There is no client-side write path for the catalog.

## Supabase migrations

- All schema/data changes live as sequential `.sql` files in `supabase/`, each one a
  standalone migration. **Nothing runs them automatically** — the user pastes each file into
  Supabase's web SQL editor and clicks Run, by hand, every time. Never assume a migration you
  wrote has been applied; confirm with the user, and independently verify via the REST API
  before building the next migration on top of it (see below).
- Generate migrations programmatically from the actual HTML source (parse the real
  `CATS_FALLBACK`/`SEED_FALLBACK` arrays out of the file text), not by hand-transcribing —
  this is what makes the cross-file-sync check meaningful.

### `track_id` is NOT the frontend's display number — this caused real bugs

The `tracks` table has two different id-like fields:
- `tracks.id` — the real primary key, 0-indexed in insertion order (e.g. Trading = 12,
  Finance = 13). This is what `resources.track_id` must reference.
- `tracks.n` — the display/roadmap number shown in the UI and used as `n:` in
  `CATS_FALLBACK` (e.g. Trading = 13, Finance = 14, both 1-indexed).

These are offset by one and easy to conflate. Writing a migration using `n` instead of the
real `tracks.id` either targets a track_id that doesn't exist (silently orphaning the rows —
they never join to anything) or silently targets the *wrong* track. Before writing any new
migration that touches `resources` or `level_topics`, query the live `tracks` table
(`select id, n, name from tracks order by id`) and confirm the real id — don't infer it from
`n` or from an older migration's ids without checking.

### id encoding

`resources.id` = `"s" + track_id + "-" + level + "-" + position` (e.g. `s12-0-0`).
`level_topics.id` = `"t" + track_id + "-" + level + "-" + position`. `track_id` here is the
real `tracks.id` (see above), not `n`. `position` should stay contiguous (0, 1, 2, ...) within
each `(track_id, level)` — when removing a row from the middle, shift the surviving rows up
via `UPDATE` rather than leaving a gap, so the live DB's position ordering matches the
fallback arrays' array order exactly (a gap doesn't break rendering, since sort-by-position
still comes out in the same relative order, but it does make the DB and the HTML fallbacks
inconsistent, which defeats the whole point of cross-checking them).

## Verifying a "free" source before adding it

Curl/HTTP status codes are **not** reliable evidence a source is dead or paywalled — many
legitimate free sites (Investopedia, edX) return 401/402/403/429 to bot-like requests while
working fine for a real browser. Verify by actually navigating there in a real browser
session and reading the page.

Beyond that: **a page displaying "Audit" or "free" is not proof the content is actually
reachable without payment.** edX in particular shows an "Audit course" button on essentially
every course page, but at least one course (Cambridge's "Foundations of Finance") required
payment in practice despite this. This assistant cannot create an account to verify past the
signup wall, so edX-hosted courses (and anything with an equivalent audit/trial-tier model)
carry residual risk that can't be fully closed out short of the user testing it directly. Per
explicit decision, **all edX sources were removed from Trading/Finance** (see migrations
015-016) rather than re-litigated one by one.

Prefer sources with **no account or login step of any kind**:
- MIT OpenCourseWare — never requires an account, ever.
- Khan Academy — free to view without an account.
- OpenLearn (Open University) — has a clear "Enter course" path for free content access,
  separate from an optional "Create account to get more" (progress tracking, certificates).
  Confirmed reliable across multiple courses this session.
- Static institutional pages (Damodaran/NYU Stern, CBOE, CME, Options Industry Council, CFA
  Institute Research Foundation) — no login mechanism exists at all.

Also avoid country/jurisdiction-specific sources (e.g. a single nation's securities regulator
or government financial-literacy site) for tracks meant to be globally applicable — this was
an explicit, separate correction from the sourcing-quality one above.

## Local testing

`python3 -m http.server 8765` from the repo root, then open `index.html`/`library.html` via
Chrome automation. Because the page fetches live Supabase data asynchronously and it can
arrive *after* a manual test tweak, force the fallback to display with
`refreshView(CATS_FALLBACK)` (index.html) in the console — but be aware a live fetch
completing afterward will silently overwrite it again, so re-check counts after any wait
rather than trusting a single snapshot.

## Tracks reference (Trading & Finance, category "Money and markets")

- Trading: `tracks.id` 12, `n` 13. Finance: `tracks.id` 13, `n` 14.
- Both are "beginner to expert as professional" depth, non-country-specific, zero-login
  sources only (see above). Current per-level source counts and full source-to-topic mapping
  are not duplicated here since they drift — check the live files/DB directly.
