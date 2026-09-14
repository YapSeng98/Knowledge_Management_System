-- Adds a 4th/5th resource to several Trading/Finance levels, per request for
-- more depth per level. All new URLs verified via actual browser navigation
-- (not just curl, which several of these sites block outright) before inclusion.
-- Existing positions 0-2 are untouched. Run after 007.

insert into resources (id, track_id, level, position, title, url, type, roadmap_label) values
  ('s12-0-3', 12, 0, 3, 'YouTube: Rayner Teo — price action and technical analysis', null, 'video', 'YouTube: Rayner Teo — price action & TA'),
  ('s12-1-3', 12, 1, 3, 'Yahoo Finance — free market data and news', 'https://finance.yahoo.com', 'site', 'finance.yahoo.com — free market data'),
  ('s12-1-4', 12, 1, 4, 'Finviz — free stock screener', 'https://finviz.com', 'practice', 'finviz.com — free stock screener'),
  ('s12-2-3', 12, 2, 3, 'Options Industry Council — free options education', 'https://www.optionseducation.org', 'course', 'optionseducation.org — free options education'),
  ('s12-2-4', 12, 2, 4, 'CME Group — free futures and derivatives education', 'https://www.cmegroup.com/education', 'course', 'cmegroup.com/education — free futures education'),
  ('s13-0-3', 13, 0, 3, 'r/personalfinance wiki — free, comprehensive community guide', 'https://www.reddit.com/r/personalfinance/wiki/index', 'site', 'reddit.com/r/personalfinance — free wiki'),
  ('s13-0-4', 13, 0, 4, 'Federal Reserve Education — free economics and finance resources', 'https://www.federalreserveeducation.org', 'site', 'federalreserveeducation.org — free resources'),
  ('s13-1-3', 13, 1, 3, 'Morningstar — investing terms and definitions, free', 'https://www.morningstar.com/investing-terms', 'doc', 'morningstar.com — free investing glossary'),
  ('s13-2-3', 13, 2, 3, 'Wall Street Oasis — free corporate finance and modeling resources', 'https://www.wallstreetoasis.com/resources', 'site', 'wallstreetoasis.com — free modeling resources');
