-- Adds 5 more sources to Trading and Finance, all verified with no account or
-- login step required at all (MIT OpenCourseWare has never needed one; OpenLearn
-- separates free content access ("Enter course") from optional account perks
-- ("Create account to get more" -- progress tracking, certificates)). Continues
-- filling out the levels thinned by dropping every edX source in 015/016.
--
-- Trading ends at 3/3/5 (11 total). Finance ends at 3/5/5 (13 total).

insert into resources (id, track_id, level, position, title, url, type, roadmap_label) values
  ('s12-0-2', 12, 0, 2, 'MIT OpenCourseWare — Principles of Microeconomics, full free course', 'https://ocw.mit.edu/courses/14-01sc-principles-of-microeconomics-fall-2011/', 'course', 'ocw.mit.edu — Principles of Microeconomics, free MIT course'),
  ('s12-1-2', 12, 1, 2, 'MIT OpenCourseWare — Adaptive Markets: Financial Market Dynamics and Human Behavior, full free graduate course', 'https://ocw.mit.edu/courses/15-481x-adaptive-markets-financial-market-dynamics-and-human-behavior-fall-2022/', 'course', 'ocw.mit.edu — Adaptive Markets, free MIT course'),
  ('s12-2-4', 12, 2, 4, 'MIT OpenCourseWare — FinTech: Shaping the Financial World, full free graduate course', 'https://ocw.mit.edu/courses/15-s08-fintech-shaping-the-financial-world-spring-2020/', 'course', 'ocw.mit.edu — FinTech: Shaping the Financial World, free MIT course'),
  ('s13-0-2', 13, 0, 2, 'OpenLearn (Open University) — MSE''s Academy of Money, free course, no login required', 'https://www.open.edu/openlearn/money-business/mses-academy-money', 'course', 'OpenLearn — MSE''s Academy of Money, free course, no login'),
  ('s13-1-4', 13, 1, 4, 'OpenLearn (Open University) — Organisations and the Financial System, free course, no login required', 'https://www.open.edu/openlearn/money-business/organisations-and-the-financial-system', 'course', 'OpenLearn — Organisations and the Financial System, free course, no login');
