-- Revises Trading/Finance resources: drops CFI (paywalled real courses despite
-- "free resources" framing), adds Khan Academy Finance and Capital Markets and MIT
-- OpenCourseWare Finance Theory I (both verified real, free, full courses), and
-- reframes tool-like resources (TradingView, SEC EDGAR) as practice rather than
-- primary teaching content. Run after 006.

update resources set title = 'Babypips — School of Pipsology, free and thorough', url = 'https://www.babypips.com/learn/forex', type = 'course', roadmap_label = 'babypips.com — School of Pipsology, free' where id = 's12-0-0';
update resources set title = 'Investopedia — Technical Analysis, full guide', url = 'https://www.investopedia.com/technical-analysis-4689657', type = 'doc', roadmap_label = 'investopedia.com — Technical Analysis guide' where id = 's12-0-1';
update resources set title = 'Investor.gov — SEC guide to markets', url = 'https://www.investor.gov', type = 'doc', roadmap_label = 'investor.gov — SEC markets guide' where id = 's12-0-2';
update resources set title = 'Investopedia — Stock Investing Essentials', url = 'https://www.investopedia.com/stocks-4427785', type = 'doc', roadmap_label = 'investopedia.com — Stock Investing Essentials' where id = 's12-1-0';
update resources set title = 'TradingView — free charting, backtest a strategy', url = 'https://www.tradingview.com', type = 'practice', roadmap_label = 'tradingview.com — free charting, backtesting' where id = 's12-1-1';
update resources set title = 'SEC EDGAR — read real company filings, free', url = 'https://www.sec.gov/edgar/search/', type = 'practice', roadmap_label = 'sec.gov/edgar — read real filings, free' where id = 's12-1-2';
update resources set title = 'CBOE Options Institute — free options education', url = 'https://www.cboe.com/optionsinstitute/', type = 'course', roadmap_label = 'cboe.com/optionsinstitute — free options education' where id = 's12-2-0';
update resources set title = 'QuantConnect — free-tier algorithmic trading and backtesting', url = 'https://www.quantconnect.com', type = 'practice', roadmap_label = 'quantconnect.com — free algo trading' where id = 's12-2-1';
update resources set title = 'Van Tharp Institute — free position sizing and risk articles', url = 'https://www.vantharp.com/free-articles/', type = 'site', roadmap_label = 'vantharp.com — free risk articles' where id = 's12-2-2';
update resources set title = 'Khan Academy — personal finance course, free', url = 'https://www.khanacademy.org/college-careers-more/personal-finance', type = 'course', roadmap_label = 'khanacademy.org — personal finance, free' where id = 's13-0-0';
update resources set title = 'Investopedia — financial basics explained', url = 'https://www.investopedia.com', type = 'site', roadmap_label = 'investopedia.com — financial basics' where id = 's13-0-1';
update resources set title = 'MoneySense — Singapore''s national financial literacy programme', url = 'https://www.moneysense.gov.sg', type = 'site', roadmap_label = 'moneysense.gov.sg — SG financial literacy' where id = 's13-0-2';
update resources set title = 'Khan Academy — Finance and Capital Markets, full free course', url = 'https://www.khanacademy.org/economics-finance-domain/core-finance', type = 'course', roadmap_label = 'khanacademy.org — Finance and Capital Markets, free course' where id = 's13-1-0';
update resources set title = 'Bogleheads wiki — free index investing guide', url = 'https://www.bogleheads.org/wiki/Main_Page', type = 'book', roadmap_label = 'bogleheads.org — free index investing wiki' where id = 's13-1-1';
update resources set title = 'Investor.gov — SEC free investing basics', url = 'https://www.investor.gov', type = 'doc', roadmap_label = 'investor.gov — SEC investing basics' where id = 's13-1-2';
update resources set title = 'MIT OpenCourseWare — Finance Theory I, full free course', url = 'https://ocw.mit.edu/courses/15-401-finance-theory-i-fall-2008/', type = 'course', roadmap_label = 'ocw.mit.edu — Finance Theory I, free MIT course' where id = 's13-2-0';
update resources set title = 'Damodaran Online — free valuation courses and spreadsheets', url = 'http://pages.stern.nyu.edu/~adamodar/', type = 'course', roadmap_label = 'pages.stern.nyu.edu/~adamodar — free valuation courses' where id = 's13-2-1';
update resources set title = 'CFA Institute Research Foundation — free publications', url = 'https://rpc.cfainstitute.org/research/foundation', type = 'book', roadmap_label = 'rpc.cfainstitute.org — free research' where id = 's13-2-2';
