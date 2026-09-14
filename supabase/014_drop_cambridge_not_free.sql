-- Cleanup after 013 was run before its Cambridge-removal fix landed: the version
-- that ran still had Cambridge in place and inserted Michigan as a new row rather
-- than shifting it into Cambridge's slot. This closes the gap so the live DB
-- matches index.html/library.html exactly (Finance/Foundation: Khan Academy,
-- Indiana Kelley, Michigan -- 3 sources, no Cambridge).

update resources set title = 'Indiana University Kelley — Personal Financial Planning, free audit', url = 'https://www.edx.org/learn/personal-finance/indiana-university-introduction-to-personal-financial-planning', type = 'course', roadmap_label = 'edX — Indiana Kelley: Personal Financial Planning, free' where id = 's13-0-1';
update resources set title = 'University of Michigan — Finance for Everyone: Smart Tools for Decision-Making, free audit on edX', url = 'https://www.edx.org/learn/financial-literacy/the-university-of-michigan-finance-for-everyone-smart-tools-for-decision-making', type = 'course', roadmap_label = 'edX/Michigan — Finance for Everyone, free audit' where id = 's13-0-2';
delete from resources where id = 's13-0-3';
