-- Migration: add Trading and Finance tracks (MONEY AND MARKETS category)
-- Run after 001-005.

-- Adds two new tracks (Trading, Finance) under a new MONEY AND MARKETS category.
-- Track ids continue from 001_catalog.sql: 12=Trading, 13=Finance. Category id 4.

insert into categories (id, name, note, accent, line, text_color) values
  (4, 'MONEY AND MARKETS', 'you understand it, grow it, protect it', '#D9A036', 'rgba(217,160,54,0.30)', '#F0C169');

insert into tracks (id, n, name, sub, category_id) values
  (12, 13, 'Trading', 'reading markets, managing risk', 4),
  (13, 14, 'Finance', 'money, understood and grown', 4);

insert into resources (id, track_id, level, position, title, url, type) values
  ('s12-0-0', 12, 0, 0, 'Investopedia — how the stock market works', 'https://www.investopedia.com/trading-4427765', 'course'),
  ('s12-0-1', 12, 0, 1, 'Babypips — School of Pipsology, free and thorough', 'https://www.babypips.com/learn/forex', 'course'),
  ('s12-0-2', 12, 0, 2, 'Investor.gov — SEC guide to markets', 'https://www.investor.gov', 'doc'),
  ('s12-1-0', 12, 1, 0, 'TradingView — free charting and strategy scripts', 'https://www.tradingview.com', 'practice'),
  ('s12-1-1', 12, 1, 1, 'Investopedia Simulator — free paper trading', 'https://www.investopedia.com/simulator/', 'practice'),
  ('s12-1-2', 12, 1, 2, 'SEC EDGAR — free company filings, straight from source', 'https://www.sec.gov/edgar/search/', 'doc'),
  ('s12-2-0', 12, 2, 0, 'CBOE Options Institute — free options education', 'https://www.cboe.com/optionsinstitute/', 'course'),
  ('s12-2-1', 12, 2, 1, 'QuantConnect — free algorithmic trading and backtesting', 'https://www.quantconnect.com', 'practice'),
  ('s12-2-2', 12, 2, 2, 'Van Tharp Institute — free position sizing and risk articles', 'https://www.vantharp.com/free-articles/', 'site'),
  ('s13-0-0', 13, 0, 0, 'Khan Academy — personal finance course, free', 'https://www.khanacademy.org/college-careers-more/personal-finance', 'course'),
  ('s13-0-1', 13, 0, 1, 'Investopedia — financial basics explained', 'https://www.investopedia.com', 'site'),
  ('s13-0-2', 13, 0, 2, 'MoneySense — Singapore''s national financial literacy programme', 'https://www.moneysense.gov.sg', 'site'),
  ('s13-1-0', 13, 1, 0, 'Bogleheads wiki — free index investing guide', 'https://www.bogleheads.org/wiki/Main_Page', 'book'),
  ('s13-1-1', 13, 1, 1, 'Corporate Finance Institute — free resources and guides', 'https://corporatefinanceinstitute.com/resources/', 'site'),
  ('s13-1-2', 13, 1, 2, 'Investor.gov — SEC free investing basics', 'https://www.investor.gov', 'doc'),
  ('s13-2-0', 13, 2, 0, 'Damodaran Online — free valuation courses and spreadsheets', 'http://pages.stern.nyu.edu/~adamodar/', 'course'),
  ('s13-2-1', 13, 2, 1, 'CFA Institute Research Foundation — free publications', 'https://rpc.cfainstitute.org/research/foundation', 'book'),
  ('s13-2-2', 13, 2, 2, 'Corporate Finance Institute — free courses', 'https://corporatefinanceinstitute.com/resources/', 'course');

insert into level_topics (id, track_id, level, position, topic) values
  ('t12-0-0', 12, 0, 0, 'Order types, bid/ask spread, market mechanics'),
  ('t12-0-1', 12, 0, 1, 'Candlestick charts, support/resistance, volume'),
  ('t12-0-2', 12, 0, 2, 'Risk per trade, position sizing, stop-losses'),
  ('t12-1-0', 12, 1, 0, 'Technical analysis: trend lines, moving averages, RSI/MACD'),
  ('t12-1-1', 12, 1, 1, 'Reading earnings reports, sector rotation, macro calendar'),
  ('t12-1-2', 12, 1, 2, 'Backtesting a strategy; trading journal discipline'),
  ('t12-2-0', 12, 2, 0, 'Options basics: calls, puts, the Greeks, hedging'),
  ('t12-2-1', 12, 2, 1, 'Market microstructure, order flow, liquidity'),
  ('t12-2-2', 12, 2, 2, 'Portfolio-level risk: correlation, drawdown, Kelly criterion'),
  ('t13-0-0', 13, 0, 0, 'Budgeting, emergency funds, debt payoff order'),
  ('t13-0-1', 13, 0, 1, 'Compound interest, inflation, time value of money'),
  ('t13-0-2', 13, 0, 2, 'Reading a payslip, taxes, basic insurance'),
  ('t13-1-0', 13, 1, 0, 'Stocks, bonds, ETFs, diversification, asset allocation'),
  ('t13-1-1', 13, 1, 1, 'Reading financial statements: income, balance sheet, cash flow'),
  ('t13-1-2', 13, 1, 2, 'Retirement accounts, compounding growth, dollar-cost averaging'),
  ('t13-2-0', 13, 2, 0, 'Valuation: DCF, comparable companies, precedent transactions'),
  ('t13-2-1', 13, 2, 1, 'Financial modeling in Excel; FP&A and budgeting cycles'),
  ('t13-2-2', 13, 2, 2, 'CFA-level topics: portfolio theory, risk-adjusted returns');

update resources set roadmap_label = 'investopedia.com — how the market works' where id = 's12-0-0';
update resources set roadmap_label = 'babypips.com — School of Pipsology, free' where id = 's12-0-1';
update resources set roadmap_label = 'investor.gov — SEC markets guide' where id = 's12-0-2';
update resources set roadmap_label = 'tradingview.com — free charting' where id = 's12-1-0';
update resources set roadmap_label = 'investopedia.com — free simulator' where id = 's12-1-1';
update resources set roadmap_label = 'sec.gov/edgar — company filings' where id = 's12-1-2';
update resources set roadmap_label = 'cboe.com/optionsinstitute — free options education' where id = 's12-2-0';
update resources set roadmap_label = 'quantconnect.com — free algo trading' where id = 's12-2-1';
update resources set roadmap_label = 'vantharp.com — free risk articles' where id = 's12-2-2';
update resources set roadmap_label = 'khanacademy.org — personal finance, free' where id = 's13-0-0';
update resources set roadmap_label = 'investopedia.com — financial basics' where id = 's13-0-1';
update resources set roadmap_label = 'moneysense.gov.sg — SG financial literacy' where id = 's13-0-2';
update resources set roadmap_label = 'bogleheads.org — free index investing wiki' where id = 's13-1-0';
update resources set roadmap_label = 'corporatefinanceinstitute.com — free resources' where id = 's13-1-1';
update resources set roadmap_label = 'investor.gov — SEC investing basics' where id = 's13-1-2';
update resources set roadmap_label = 'pages.stern.nyu.edu/~adamodar — free valuation courses' where id = 's13-2-0';
update resources set roadmap_label = 'rpc.cfainstitute.org — free research' where id = 's13-2-1';
update resources set roadmap_label = 'corporatefinanceinstitute.com — free courses' where id = 's13-2-2';
