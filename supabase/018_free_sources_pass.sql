-- Source-quality pass across every track (all 132 sources re-checked).
--
-- 1. Drops sources that need money or a paid membership, replacing each in place
--    (same id/position) with a verified free source:
--      Real Python (paid membership)           -> Requests docs          (Python, L1)
--      IIBA (member-only content)              -> NN/g User Interviews   (BA, L0)
--      APM (articles for paying members only)  -> PM² open methodology   (PM, L0)
--      projectmanagement.com (Premium/PMI)     -> free open PM textbook  (PM, L0)
--    Modern Analyst returns HTTP 500 in a real browser (site down), so its two slots
--    (BA L0 and L2) and the "Modern Analyst and IIBA" YouTube slot are replaced too.
-- 2. Points Jeff Patton and Mountain Goat at their actual free content pages instead
--    of consulting/sales homepages.
-- 3. Follows permanent moves: mode.com SQL tutorial -> thoughtspot.com,
--    plainlanguage.gov -> digital.gov, anthropic-cookbook -> claude-cookbooks.
-- 4. Adds real channel URLs to YouTube entries that previously had no link.
--
-- Updates only; no inserts/deletes, so per-level counts and positions are unchanged.
-- track_id values are real tracks.id (queried live), not the display number n.

update resources set title = 'Requests documentation', url = 'https://requests.readthedocs.io/en/latest/', type = 'doc', roadmap_label = 'requests.readthedocs.io — HTTP for Python' where id = 's2-1-0';
update resources set title = 'Bridging the Gap — free business analysis articles', url = 'https://www.bridging-the-gap.com/blog/', type = 'site', roadmap_label = 'bridging-the-gap.com — free BA articles' where id = 's8-0-0';
update resources set title = 'Nielsen Norman Group — User Interviews 101', url = 'https://www.nngroup.com/articles/user-interviews/', type = 'site', roadmap_label = 'nngroup.com — user interviews, free article' where id = 's8-0-1';
update resources set title = 'The BA Guide (Jeremy Aschenbrenner) on YouTube', url = 'https://www.youtube.com/@TheBAGuide', type = 'video', roadmap_label = 'YouTube: The BA Guide' where id = 's8-0-2';
update resources set title = 'Liberating Structures — free facilitation patterns', url = 'https://www.liberatingstructures.com/', type = 'site', roadmap_label = 'liberatingstructures.com — facilitation patterns, free' where id = 's8-2-2';
update resources set title = 'Project Management (Adrienne Watt) — free open textbook', url = 'https://opentextbc.ca/projectmanagement/', type = 'book', roadmap_label = 'opentextbc.ca — free project management textbook' where id = 's9-0-0';
update resources set title = 'PM² — free open project management methodology', url = 'https://pm2.europa.eu/', type = 'doc', roadmap_label = 'pm2.europa.eu — free open PM methodology' where id = 's9-0-1';
update resources set title = 'Adriana Girdler on YouTube', url = 'https://www.youtube.com/@AdrianaGirdler', type = 'video', roadmap_label = 'YouTube: Adriana Girdler' where id = 's9-0-2';
update resources set title = 'Jeff Patton — story mapping', url = 'https://jpattonassociates.com/story-mapping/', type = 'site', roadmap_label = 'jpattonassociates.com — story mapping essay' where id = 's8-1-1';
update resources set title = 'Mountain Goat Software — user stories', url = 'https://www.mountaingoatsoftware.com/agile/user-stories', type = 'site', roadmap_label = 'mountaingoatsoftware.com — user stories' where id = 's8-1-2';
update resources set title = 'Mode SQL tutorial (now at ThoughtSpot)', url = 'https://www.thoughtspot.com/sql-tutorial', type = 'course', roadmap_label = 'thoughtspot.com/sql-tutorial — ex-Mode, free' where id = 's5-0-1';
update resources set title = 'Plain language guide (digital.gov)', url = 'https://digital.gov/guides/plain-language', type = 'site', roadmap_label = 'digital.gov — plain language guide' where id = 's10-0-1';
update resources set title = 'Claude cookbooks', url = 'https://github.com/anthropics/claude-cookbooks', type = 'practice', roadmap_label = 'github.com/anthropics/claude-cookbooks' where id = 's11-1-1';
update resources set title = 'Claude cookbooks', url = 'https://github.com/anthropics/claude-cookbooks', type = 'practice', roadmap_label = 'github.com/anthropics/claude-cookbooks' where id = 's11-2-2';
update resources set title = 'Chuck Tomasi — JavaScript on the Now Platform', url = 'https://www.youtube.com/@ServiceNowDevProgram', type = 'video', roadmap_label = 'YouTube: Chuck Tomasi, JS on the Now Platform' where id = 's0-1-1';
update resources set title = 'SAASWITHSERVICENOW on YouTube', url = 'https://www.youtube.com/@saaswithservicenow', type = 'video', roadmap_label = 'YouTube: SAASWITHSERVICENOW' where id = 's0-1-2';
update resources set title = 'freeCodeCamp and Net Ninja on YouTube', url = 'https://www.youtube.com/@freecodecamp', type = 'video', roadmap_label = 'YouTube: freeCodeCamp, Net Ninja' where id = 's1-0-2';
update resources set title = 'Corey Schafer and freeCodeCamp on YouTube', url = 'https://www.youtube.com/@coreyms', type = 'video', roadmap_label = 'YouTube: Corey Schafer, freeCodeCamp' where id = 's2-0-2';
update resources set title = 'Tim Corey and Nick Chapsas on YouTube', url = 'https://www.youtube.com/@IAmTimCorey', type = 'video', roadmap_label = 'YouTube: Tim Corey, Nick Chapsas' where id = 's3-0-2';
update resources set title = 'Nick Chapsas performance series', url = 'https://www.youtube.com/@nickchapsas', type = 'video', roadmap_label = 'YouTube: Nick Chapsas performance series' where id = 's3-2-2';
update resources set title = 'techTFQ and Alex The Analyst on YouTube', url = 'https://www.youtube.com/@techTFQ', type = 'video', roadmap_label = 'YouTube: techTFQ, Alex The Analyst' where id = 's5-0-2';
update resources set title = 'OWASP and PortSwigger on YouTube', url = 'https://www.youtube.com/@PortSwiggerTV', type = 'video', roadmap_label = 'YouTube: OWASP, PortSwigger' where id = 's7-0-2';
update resources set title = 'David McLachlan on YouTube', url = 'https://www.youtube.com/@davidmclachlanproject', type = 'video', roadmap_label = 'YouTube: David McLachlan' where id = 's9-2-2';
