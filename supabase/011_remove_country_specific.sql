-- Removes country-specific (US government/regulatory) sources entirely:
-- Investor.gov/SEC (both instances), SEC EDGAR, FDIC, CFPB, Federal Reserve
-- Education. Kept: university courses (MIT OCW, NYU Stern/Damodaran), CFA
-- Institute (global professional body), and industry (not government) bodies
-- CBOE/OIC/CME -- their content (options/futures mechanics) is universal even
-- though the exchanges themselves are US-based. Some levels are now thinner
-- (1-2 sources) since verified non-government global alternatives for a couple
-- of gaps (personal finance basics specifically) could not be found -- two
-- candidates were checked and dropped (one dead link, one ambiguously freemium).
-- Run after 010.

update resources set title = 'Babypips — School of Pipsology, full free structured course', url = 'https://www.babypips.com/learn/forex', type = 'course', roadmap_label = 'babypips.com — School of Pipsology, free course' where id = 's12-0-0';
update resources set title = 'CME Group — free futures and derivatives education', url = 'https://www.cmegroup.com/education', type = 'course', roadmap_label = 'cmegroup.com/education — free futures education' where id = 's12-0-1';
update resources set title = 'TradingView — free charting, backtest a strategy', url = 'https://www.tradingview.com', type = 'practice', roadmap_label = 'tradingview.com — free charting, backtesting' where id = 's12-1-0';
update resources set title = 'Khan Academy — Finance and Capital Markets, full free course', url = 'https://www.khanacademy.org/economics-finance-domain/core-finance', type = 'course', roadmap_label = 'khanacademy.org — Finance and Capital Markets, free course' where id = 's12-1-1';
update resources set title = 'CBOE Options Institute — free options education', url = 'https://www.cboe.com/optionsinstitute/', type = 'course', roadmap_label = 'cboe.com/optionsinstitute — free options education' where id = 's12-2-0';
update resources set title = 'Options Industry Council — free options education', url = 'https://www.optionseducation.org', type = 'course', roadmap_label = 'optionseducation.org — free options education' where id = 's12-2-1';
update resources set title = 'Damodaran Online — free Corporate Finance course, NYU Stern', url = 'https://pages.stern.nyu.edu/~adamodar/New_Home_Page/webcastcfspr25.htm', type = 'course', roadmap_label = 'Damodaran — free Corporate Finance course, NYU Stern' where id = 's12-2-2';
update resources set title = 'Khan Academy — personal finance course, free', url = 'https://www.khanacademy.org/college-careers-more/personal-finance', type = 'course', roadmap_label = 'khanacademy.org — personal finance, free course' where id = 's13-0-0';
update resources set title = 'MIT OpenCourseWare — Investments, full free course', url = 'https://ocw.mit.edu/courses/15-433-investments-spring-2003/', type = 'course', roadmap_label = 'ocw.mit.edu — Investments, free MIT course' where id = 's13-1-0';
update resources set title = 'Damodaran Online — free accounting course, reading financial statements', url = 'https://pages.stern.nyu.edu/~adamodar/New_Home_Page/webcastacctg.htm', type = 'course', roadmap_label = 'Damodaran — free accounting course, NYU Stern' where id = 's13-1-1';
update resources set title = 'MIT OpenCourseWare — Finance Theory I, full free course', url = 'https://ocw.mit.edu/courses/15-401-finance-theory-i-fall-2008/', type = 'course', roadmap_label = 'ocw.mit.edu — Finance Theory I, free MIT course' where id = 's13-2-0';
update resources set title = 'Damodaran Online — free Valuation course, NYU Stern', url = 'https://pages.stern.nyu.edu/~adamodar/New_Home_Page/webcasteqspr25.htm', type = 'course', roadmap_label = 'Damodaran — free Valuation course, NYU Stern' where id = 's13-2-1';
update resources set title = 'CFA Institute Research Foundation — free publications', url = 'https://rpc.cfainstitute.org/research/foundation', type = 'book', roadmap_label = 'rpc.cfainstitute.org — free research' where id = 's13-2-2';

delete from resources where id in (
  's12-0-2',
  's12-0-3',
  's12-0-4',
  's12-1-2',
  's12-1-3',
  's12-1-4',
  's12-2-3',
  's12-2-4',
  's13-0-1',
  's13-0-2',
  's13-0-3',
  's13-0-4',
  's13-1-2',
  's13-1-3',
  's13-1-4',
  's13-2-3',
  's13-2-4'
);
