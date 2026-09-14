-- Adds 9 more verified-free, global (non-country-specific) sources to Trading and
-- Finance, per request for more depth -- all newly verified via actual browser
-- navigation (checking for a real "Audit course" free-access button on edX, or
-- confirming MIT OCW's no-paywall course-materials page). Positions 0-N from prior
-- migrations are untouched; these are new positions appended to each level. Run
-- after 012. Brings Trading to 2/4/4 (10 total) and Finance to 4/6/7 (17 total).

insert into resources (id, track_id, level, position, title, url, type, roadmap_label) values
  ('s13-1-3', 13, 1, 3, 'University of Oxford — Finance Fundamentals: Classical and Behavioural Finance, free audit on edX', 'https://www.edx.org/learn/economics-finance/university-of-oxford-finance-fundamentals-classical-and-behavioural-finance', 'course', 'edX/Oxford — Finance Fundamentals, free audit'),
  ('s13-2-3', 13, 2, 3, 'MIT OpenCourseWare — Analytics of Finance, full free graduate course', 'https://ocw.mit.edu/courses/15-450-analytics-of-finance-fall-2010/', 'course', 'ocw.mit.edu — Analytics of Finance, free MIT course'),
  ('s14-0-3', 14, 0, 3, 'University of Michigan — Finance for Everyone: Smart Tools for Decision-Making, free audit on edX', 'https://www.edx.org/learn/financial-literacy/the-university-of-michigan-finance-for-everyone-smart-tools-for-decision-making', 'course', 'edX/Michigan — Finance for Everyone, free audit'),
  ('s14-1-3', 14, 1, 3, 'IIM Bangalore — Accounting and Finance, free audit on edX', 'https://www.edx.org/learn/financial-accounting/indian-institute-of-management-bangalore-accounting-and-finance', 'course', 'edX/IIM Bangalore — Accounting and Finance, free audit'),
  ('s14-1-4', 14, 1, 4, 'MIT OpenCourseWare — Consumer Finance: Markets, Product Design, and FinTech, full free course', 'https://ocw.mit.edu/courses/15-483-consumer-finance-markets-product-design-and-fintech-spring-2018/', 'course', 'ocw.mit.edu — Consumer Finance, free MIT course'),
  ('s14-1-5', 14, 1, 5, 'IMFx — Local Currency Bond Market, free audit on edX', 'https://www.edx.org/learn/economics-finance/the-international-monetary-fund-local-currency-bond-market', 'course', 'edX/IMFx — Local Currency Bond Market, free audit'),
  ('s14-2-4', 14, 2, 4, 'Columbia University — Risk & Return, free audit on edX', 'https://www.edx.org/learn/business-administration/columbia-university-risk-return', 'course', 'edX/Columbia — Risk & Return, free audit'),
  ('s14-2-5', 14, 2, 5, 'MIT OpenCourseWare — Finance Theory II, full free graduate course', 'https://ocw.mit.edu/courses/15-402-finance-theory-ii-spring-2003/', 'course', 'ocw.mit.edu — Finance Theory II, free MIT course'),
  ('s14-2-6', 14, 2, 6, 'MIT OpenCourseWare — Practice of Finance: Advanced Corporate Risk Management, full free graduate course', 'https://ocw.mit.edu/courses/15-997-practice-of-finance-advanced-corporate-risk-management-spring-2009/', 'course', 'ocw.mit.edu — Advanced Corporate Risk Management, free MIT course');
