-- Adds more verified global (non-single-country) sources: IMF courses on edX
-- (a multilateral institution, not one country), plus University of Cambridge,
-- Columbia, and Indiana Kelley courses on edX -- all confirmed genuinely free
-- to audit (edX explicitly documents this: "you dont have to pay to review
-- online edX courses"), verified per-course via their actual audit buttons,
-- not just the platform-wide claim. Two guessed candidate URLs were checked
-- and dropped as 404s rather than included on a guess.
-- Uses upsert since these ids may or may not already exist depending on
-- what position count a level previously had. Run after 011.

insert into resources (id, track_id, level, position, title, url, type, roadmap_label) values
  ('s12-0-0', 12, 0, 0, 'Babypips — School of Pipsology, full free structured course', 'https://www.babypips.com/learn/forex', 'course', 'babypips.com — School of Pipsology, free course'),
  ('s12-0-1', 12, 0, 1, 'CME Group — free futures and derivatives education', 'https://www.cmegroup.com/education', 'course', 'cmegroup.com/education — free futures education'),
  ('s12-1-0', 12, 1, 0, 'TradingView — free charting, backtest a strategy', 'https://www.tradingview.com', 'practice', 'tradingview.com — free charting, backtesting'),
  ('s12-1-1', 12, 1, 1, 'Khan Academy — Finance and Capital Markets, full free course', 'https://www.khanacademy.org/economics-finance-domain/core-finance', 'course', 'khanacademy.org — Finance and Capital Markets, free course'),
  ('s12-1-2', 12, 1, 2, 'IMFx — Financial Market Analysis, free audit on edX', 'https://www.edx.org/learn/finance/the-international-monetary-fund-financial-market-analysis', 'course', 'edX/IMFx — Financial Market Analysis, free audit'),
  ('s12-2-0', 12, 2, 0, 'CBOE Options Institute — free options education', 'https://www.cboe.com/optionsinstitute/', 'course', 'cboe.com/optionsinstitute — free options education'),
  ('s12-2-1', 12, 2, 1, 'Options Industry Council — free options education', 'https://www.optionseducation.org', 'course', 'optionseducation.org — free options education'),
  ('s12-2-2', 12, 2, 2, 'Damodaran Online — free Corporate Finance course, NYU Stern', 'https://pages.stern.nyu.edu/~adamodar/New_Home_Page/webcastcfspr25.htm', 'course', 'Damodaran — free Corporate Finance course, NYU Stern'),
  ('s13-0-0', 13, 0, 0, 'Khan Academy — personal finance course, free', 'https://www.khanacademy.org/college-careers-more/personal-finance', 'course', 'khanacademy.org — personal finance, free course'),
  ('s13-0-1', 13, 0, 1, 'University of Cambridge — Foundations of Finance, free audit on edX', 'https://www.edx.org/learn/finance/university-of-cambridge-foundations-of-finance', 'course', 'edX — Cambridge: Foundations of Finance, free audit'),
  ('s13-0-2', 13, 0, 2, 'Indiana University Kelley — Personal Financial Planning, free audit', 'https://www.edx.org/learn/personal-finance/indiana-university-introduction-to-personal-financial-planning', 'course', 'edX — Indiana Kelley: Personal Financial Planning, free'),
  ('s13-1-0', 13, 1, 0, 'MIT OpenCourseWare — Investments, full free course', 'https://ocw.mit.edu/courses/15-433-investments-spring-2003/', 'course', 'ocw.mit.edu — Investments, free MIT course'),
  ('s13-1-1', 13, 1, 1, 'Damodaran Online — free accounting course, reading financial statements', 'https://pages.stern.nyu.edu/~adamodar/New_Home_Page/webcastacctg.htm', 'course', 'Damodaran — free accounting course, NYU Stern'),
  ('s13-1-2', 13, 1, 2, 'Columbia University — Introduction to Corporate Finance, free audit', 'https://www.edx.org/learn/corporate-finance/columbia-university-introduction-to-corporate-finance', 'course', 'edX — Columbia: Introduction to Corporate Finance, free'),
  ('s13-2-0', 13, 2, 0, 'MIT OpenCourseWare — Finance Theory I, full free course', 'https://ocw.mit.edu/courses/15-401-finance-theory-i-fall-2008/', 'course', 'ocw.mit.edu — Finance Theory I, free MIT course'),
  ('s13-2-1', 13, 2, 1, 'Damodaran Online — free Valuation course, NYU Stern', 'https://pages.stern.nyu.edu/~adamodar/New_Home_Page/webcasteqspr25.htm', 'course', 'Damodaran — free Valuation course, NYU Stern'),
  ('s13-2-2', 13, 2, 2, 'CFA Institute Research Foundation — free publications', 'https://rpc.cfainstitute.org/research/foundation', 'book', 'rpc.cfainstitute.org — free research'),
  ('s13-2-3', 13, 2, 3, 'IMFx — Macroeconomic Diagnostics, free audit on edX', 'https://www.edx.org/learn/macroeconomics/the-international-monetary-fund-macroeconomic-diagnostics', 'course', 'edX/IMFx — Macroeconomic Diagnostics, free audit')
on conflict (id) do update set
  title = excluded.title, url = excluded.url, type = excluded.type, roadmap_label = excluded.roadmap_label;
