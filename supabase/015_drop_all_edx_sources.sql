-- Drops every edX-hosted source from Trading and Finance, per explicit request
-- after Cambridge's "Audit course" button turned out not to actually be free in
-- practice. edX's audit button isn't a reliable enough signal on its own, and
-- account creation isn't something this assistant can complete to verify further,
-- so edX is dropped entirely rather than kept selectively. Replaced two of the
-- resulting gaps with OpenLearn (Open University) courses, confirmed to load
-- without any account or sign-in step ("Enter course" is separate from the
-- optional "Create account to get more" progress-tracking extras).
--
-- Positions are kept contiguous (0,1,2...) within each level by shifting
-- surviving content into the gaps left by deleted rows via UPDATE, rather than
-- just deleting and leaving holes -- a hole wouldn't break rendering (sort order
-- is preserved either way) but would leave position numbers inconsistent with
-- index.html/library.html, which don't have gaps.
--
-- Trading ends at 2/2/4 (8 total), Finance at 2/4/5 (11 total).

-- Trading / Working level: drop both edX rows (2 remain, already contiguous).
delete from resources where id in ('s12-1-2','s12-1-3');

-- Finance / Foundation: drop both edX rows, replace one slot with OpenLearn
-- Managing My Money (2 remain, already contiguous).
update resources set title = 'OpenLearn (Open University) — Managing My Money, free course, no login required', url = 'https://www.open.edu/openlearn/money-business/managing-my-money', type = 'course', roadmap_label = 'OpenLearn — Managing My Money, free course, no login' where id = 's13-0-1';
delete from resources where id = 's13-0-2';

-- Finance / Working level: drop the three edX rows. Shift MIT Consumer Finance
-- (was position 4) into the gap left by Columbia (position 2), put OpenLearn
-- Managing My Investments in position 3, then delete the two now-emptied tail rows.
update resources set title = 'MIT OpenCourseWare — Consumer Finance: Markets, Product Design, and FinTech, full free course', url = 'https://ocw.mit.edu/courses/15-483-consumer-finance-markets-product-design-and-fintech-spring-2018/', type = 'course', roadmap_label = 'ocw.mit.edu — Consumer Finance, free MIT course' where id = 's13-1-2';
update resources set title = 'OpenLearn (Open University) — Managing My Investments, free course, no login required', url = 'https://www.open.edu/openlearn/money-business/managing-my-investments', type = 'course', roadmap_label = 'OpenLearn — Managing My Investments, free course, no login' where id = 's13-1-3';
delete from resources where id in ('s13-1-4','s13-1-5');

-- Finance / Expert: drop the two edX rows. Shift MIT Finance Theory II and
-- Practice of Finance (were positions 5, 6) into the gap left by IMFx and
-- Columbia (positions 3, 4), then delete the two now-emptied tail rows.
update resources set title = 'MIT OpenCourseWare — Finance Theory II, full free graduate course', url = 'https://ocw.mit.edu/courses/15-402-finance-theory-ii-spring-2003/', type = 'course', roadmap_label = 'ocw.mit.edu — Finance Theory II, free MIT course' where id = 's13-2-3';
update resources set title = 'MIT OpenCourseWare — Practice of Finance: Advanced Corporate Risk Management, full free graduate course', url = 'https://ocw.mit.edu/courses/15-997-practice-of-finance-advanced-corporate-risk-management-spring-2009/', type = 'course', roadmap_label = 'ocw.mit.edu — Advanced Corporate Risk Management, free MIT course' where id = 's13-2-4';
delete from resources where id in ('s13-2-5','s13-2-6');
