-- Swaps MoneySense out of Finance/Foundation (dropped -- not the caliber wanted)
-- for two US federal agency programs, and adds a 4th source to this level.
-- Positions 0-2 update in place; position 3 is new (previously deleted in 009).
-- Run after 009.

update resources set title = 'Khan Academy — personal finance course, free', url = 'https://www.khanacademy.org/college-careers-more/personal-finance', type = 'course', roadmap_label = 'khanacademy.org — personal finance, free course' where id = 's13-0-0';  -- position 0
update resources set title = 'Federal Reserve Education — free economics and finance resources', url = 'https://www.federalreserveeducation.org', type = 'site', roadmap_label = 'federalreserveeducation.org — free resources' where id = 's13-0-1';  -- position 1
update resources set title = 'FDIC — Money Smart, official US financial education program', url = 'https://www.fdic.gov/consumer-resource-center/money-smart', type = 'course', roadmap_label = 'fdic.gov — Money Smart, official free program' where id = 's13-0-2';  -- position 2

insert into resources (id, track_id, level, position, title, url, type, roadmap_label) values
  ('s13-0-3', 13, 0, 3, 'Consumer Financial Protection Bureau — free consumer finance resources', 'https://www.consumerfinance.gov/consumer-tools/', 'site', 'consumerfinance.gov — free consumer finance resources');
