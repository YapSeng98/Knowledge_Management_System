-- Adds more verified-free, global (non-country-specific) sources to Trading and
-- Finance, per request for more depth -- all newly verified via actual browser
-- navigation (checking for a real "Audit course" free-access button on edX, or
-- confirming MIT OCW's no-paywall course-materials page). Also drops University
-- of Cambridge's "Foundations of Finance" (s13-0-1) -- despite showing an "Audit"
-- button on the page, the user found it actually requires payment to access, so
-- it's being pulled and the two remaining Finance/Foundation sources are shifted
-- up to fill the gap. Run after 012.
--
-- NOTE: track_id here is the tracks table's real primary key, NOT the display
-- number ("n") used in the frontend fallback arrays -- Trading's real track_id
-- is 12 (n=13) and Finance's real track_id is 13 (n=14), confirmed against the
-- live tracks table and matching every prior migration's convention.

-- Finance / Foundation: drop Cambridge (was position 1), shift Indiana Kelley into
-- its slot, and put the new Michigan course where Indiana Kelley used to be.
update resources set title = 'Indiana University Kelley — Personal Financial Planning, free audit', url = 'https://www.edx.org/learn/personal-finance/indiana-university-introduction-to-personal-financial-planning', type = 'course', roadmap_label = 'edX — Indiana Kelley: Personal Financial Planning, free' where id = 's13-0-1';
update resources set title = 'University of Michigan — Finance for Everyone: Smart Tools for Decision-Making, free audit on edX', url = 'https://www.edx.org/learn/financial-literacy/the-university-of-michigan-finance-for-everyone-smart-tools-for-decision-making', type = 'course', roadmap_label = 'edX/Michigan — Finance for Everyone, free audit' where id = 's13-0-2';

insert into resources (id, track_id, level, position, title, url, type, roadmap_label) values
  ('s12-1-3', 12, 1, 3, 'University of Oxford — Finance Fundamentals: Classical and Behavioural Finance, free audit on edX', 'https://www.edx.org/learn/economics-finance/university-of-oxford-finance-fundamentals-classical-and-behavioural-finance', 'course', 'edX/Oxford — Finance Fundamentals, free audit'),
  ('s12-2-3', 12, 2, 3, 'MIT OpenCourseWare — Analytics of Finance, full free graduate course', 'https://ocw.mit.edu/courses/15-450-analytics-of-finance-fall-2010/', 'course', 'ocw.mit.edu — Analytics of Finance, free MIT course'),
  ('s13-1-3', 13, 1, 3, 'IIM Bangalore — Accounting and Finance, free audit on edX', 'https://www.edx.org/learn/financial-accounting/indian-institute-of-management-bangalore-accounting-and-finance', 'course', 'edX/IIM Bangalore — Accounting and Finance, free audit'),
  ('s13-1-4', 13, 1, 4, 'MIT OpenCourseWare — Consumer Finance: Markets, Product Design, and FinTech, full free course', 'https://ocw.mit.edu/courses/15-483-consumer-finance-markets-product-design-and-fintech-spring-2018/', 'course', 'ocw.mit.edu — Consumer Finance, free MIT course'),
  ('s13-1-5', 13, 1, 5, 'IMFx — Local Currency Bond Market, free audit on edX', 'https://www.edx.org/learn/economics-finance/the-international-monetary-fund-local-currency-bond-market', 'course', 'edX/IMFx — Local Currency Bond Market, free audit'),
  ('s13-2-4', 13, 2, 4, 'Columbia University — Risk & Return, free audit on edX', 'https://www.edx.org/learn/business-administration/columbia-university-risk-return', 'course', 'edX/Columbia — Risk & Return, free audit'),
  ('s13-2-5', 13, 2, 5, 'MIT OpenCourseWare — Finance Theory II, full free graduate course', 'https://ocw.mit.edu/courses/15-402-finance-theory-ii-spring-2003/', 'course', 'ocw.mit.edu — Finance Theory II, free MIT course'),
  ('s13-2-6', 13, 2, 6, 'MIT OpenCourseWare — Practice of Finance: Advanced Corporate Risk Management, full free graduate course', 'https://ocw.mit.edu/courses/15-997-practice-of-finance-advanced-corporate-risk-management-spring-2009/', 'course', 'ocw.mit.edu — Advanced Corporate Risk Management, free MIT course');
