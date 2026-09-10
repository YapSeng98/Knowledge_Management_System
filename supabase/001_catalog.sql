-- Knowledge Management System: resource catalog schema + data
-- Generated from library.html SEED/CATS -- run once in the Supabase SQL editor.

create table if not exists categories (
  id smallint primary key,
  name text not null,
  note text not null,
  accent text not null,
  line text not null,
  text_color text not null
);

create table if not exists tracks (
  id smallint primary key,
  n smallint not null,
  name text not null,
  sub text not null,
  category_id smallint not null references categories(id)
);

create table if not exists resources (
  id text primary key,
  track_id smallint not null references tracks(id),
  level smallint not null check (level between 0 and 2),
  position smallint not null,
  title text not null,
  url text,
  type text not null
);

alter table categories enable row level security;
alter table tracks enable row level security;
alter table resources enable row level security;

drop policy if exists "public read categories" on categories;
drop policy if exists "public read tracks" on tracks;
drop policy if exists "public read resources" on resources;
create policy "public read categories" on categories for select using (true);
create policy "public read tracks" on tracks for select using (true);
create policy "public read resources" on resources for select using (true);

truncate table resources, tracks, categories restart identity cascade;

insert into categories (id, name, note, accent, line, text_color) values
  (0, 'BUILD SKILLS', 'you make the thing', '#8F86F0', 'rgba(143,134,240,0.30)', '#B4ADF7'),
  (1, 'DATA AND ARCHITECTURE', 'you shape how it works', '#2CBE8F', 'rgba(44,190,143,0.30)', '#5FD5AF'),
  (2, 'DELIVERY SKILLS', 'you get it shipped, with people', '#E2703F', 'rgba(226,112,63,0.30)', '#F09166'),
  (3, 'CROSS-CUTTING', 'multiplies every track above', '#DE6392', 'rgba(222,99,146,0.30)', '#EE8CB0');

insert into tracks (id, n, name, sub, category_id) values
  (0, 1, 'ServiceNow', 'platform development', 0),
  (1, 2, 'JavaScript and TypeScript', 'the language of the web', 0),
  (2, 3, 'Python', 'scripting and data', 0),
  (3, 4, '.NET and C#', 'enterprise backend', 0),
  (4, 5, 'Cloud and DevOps', 'where it actually runs', 0),
  (5, 6, 'SQL and data', 'query and model data', 1),
  (6, 7, 'System design', 'architecture, trade-offs', 1),
  (7, 8, 'Security and identity', 'no longer specialist', 1),
  (8, 9, 'Business analysis', 'requirements and process', 2),
  (9, 10, 'Project management', 'delivery and governance', 2),
  (10, 11, 'Technical writing', 'the invisible multiplier', 2),
  (11, 12, 'AI', 'working with models', 3);

insert into resources (id, track_id, level, position, title, url, type) values
  ('s0-0-0', 0, 0, 0, 'ServiceNow University — CSA learning path', 'https://learning.servicenow.com', 'course'),
  ('s0-0-1', 0, 0, 1, 'Personal Developer Instance — free', 'https://developer.servicenow.com', 'practice'),
  ('s0-0-2', 0, 0, 2, 'ServiceNow product documentation', 'https://docs.servicenow.com', 'doc'),
  ('s0-1-0', 0, 1, 0, 'ServiceNow University — CAD learning path', 'https://learning.servicenow.com', 'course'),
  ('s0-1-1', 0, 1, 1, 'Chuck Tomasi — JavaScript on the Now Platform', null, 'video'),
  ('s0-1-2', 0, 1, 2, 'SAASWITHSERVICENOW on YouTube', null, 'video'),
  ('s0-2-0', 0, 2, 0, 'Technical best practices documentation', 'https://docs.servicenow.com', 'doc'),
  ('s0-2-1', 0, 2, 1, 'Developer Advocate blog on the Community', 'https://www.servicenow.com/community', 'site'),
  ('s0-2-2', 0, 2, 2, 'SN Pro Tips', 'https://snprotips.com', 'site'),
  ('s1-0-0', 1, 0, 0, 'javascript.info — free full course', 'https://javascript.info', 'course'),
  ('s1-0-1', 1, 0, 1, 'MDN JavaScript reference', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript', 'doc'),
  ('s1-0-2', 1, 0, 2, 'freeCodeCamp and Net Ninja on YouTube', null, 'video'),
  ('s1-1-0', 1, 1, 0, 'TypeScript handbook', 'https://www.typescriptlang.org/docs/handbook/intro.html', 'doc'),
  ('s1-1-1', 1, 1, 1, 'The Odin Project — free curriculum', 'https://www.theodinproject.com', 'course'),
  ('s1-1-2', 1, 1, 2, 'Node.js documentation', 'https://nodejs.org/docs/latest/api/', 'doc'),
  ('s1-2-0', 1, 2, 0, 'TypeScript Deep Dive — free book', 'https://basarat.gitbook.io/typescript', 'book'),
  ('s1-2-1', 1, 2, 1, 'react.dev learn section', 'https://react.dev/learn', 'doc'),
  ('s1-2-2', 1, 2, 2, 'web.dev performance guides', 'https://web.dev/performance', 'site'),
  ('s2-0-0', 2, 0, 0, 'Automate the Boring Stuff — full book, free', 'https://automatetheboringstuff.com', 'book'),
  ('s2-0-1', 2, 0, 1, 'Official Python tutorial', 'https://docs.python.org/3/tutorial/', 'doc'),
  ('s2-0-2', 2, 0, 2, 'Corey Schafer and freeCodeCamp on YouTube', null, 'video'),
  ('s2-1-0', 2, 1, 0, 'Real Python tutorials', 'https://realpython.com', 'site'),
  ('s2-1-1', 2, 1, 1, 'pandas documentation', 'https://pandas.pydata.org/docs/', 'doc'),
  ('s2-1-2', 2, 1, 2, 'pytest documentation', 'https://docs.pytest.org', 'doc'),
  ('s2-2-0', 2, 2, 0, 'Architecture Patterns with Python — free', 'https://www.cosmicpython.com', 'book'),
  ('s2-2-1', 2, 2, 1, 'FastAPI documentation', 'https://fastapi.tiangolo.com', 'doc'),
  ('s2-2-2', 2, 2, 2, 'Python packaging guide', 'https://packaging.python.org', 'doc'),
  ('s3-0-0', 3, 0, 0, 'Microsoft Learn — C# guide', 'https://learn.microsoft.com/en-us/dotnet/csharp/', 'course'),
  ('s3-0-1', 3, 0, 1, 'A tour of C#', 'https://learn.microsoft.com/en-us/dotnet/csharp/tour-of-csharp/', 'doc'),
  ('s3-0-2', 3, 0, 2, 'Tim Corey and Nick Chapsas on YouTube', null, 'video'),
  ('s3-1-0', 3, 1, 0, 'ASP.NET Core documentation', 'https://learn.microsoft.com/en-us/aspnet/core/', 'doc'),
  ('s3-1-1', 3, 1, 1, 'EF Core documentation', 'https://learn.microsoft.com/en-us/ef/core/', 'doc'),
  ('s3-1-2', 3, 1, 2, 'xUnit documentation', 'https://xunit.net', 'doc'),
  ('s3-2-0', 3, 2, 0, '.NET architecture guides — free ebooks', 'https://learn.microsoft.com/en-us/dotnet/architecture/', 'book'),
  ('s3-2-1', 3, 2, 1, '.NET diagnostics documentation', 'https://learn.microsoft.com/en-us/dotnet/core/diagnostics/', 'doc'),
  ('s3-2-2', 3, 2, 2, 'Nick Chapsas performance series', null, 'video'),
  ('s4-0-0', 4, 0, 0, 'Microsoft Learn — Azure training', 'https://learn.microsoft.com/en-us/training/azure/', 'course'),
  ('s4-0-1', 4, 0, 1, 'AWS Skill Builder — digital training', 'https://aws.amazon.com/training/digital/', 'course'),
  ('s4-0-2', 4, 0, 2, 'roadmap.sh DevOps roadmap', 'https://roadmap.sh/devops', 'site'),
  ('s4-1-0', 4, 1, 0, 'GitHub Actions documentation', 'https://docs.github.com/en/actions', 'doc'),
  ('s4-1-1', 4, 1, 1, 'Terraform tutorials', 'https://developer.hashicorp.com/terraform/tutorials', 'course'),
  ('s4-1-2', 4, 1, 2, 'Kubernetes tutorials', 'https://kubernetes.io/docs/tutorials/', 'doc'),
  ('s4-2-0', 4, 2, 0, 'Google SRE books — free online', 'https://sre.google/books/', 'book'),
  ('s4-2-1', 4, 2, 1, 'Azure Well-Architected Framework', 'https://learn.microsoft.com/en-us/azure/well-architected/', 'doc'),
  ('s4-2-2', 4, 2, 2, 'AWS Well-Architected Framework', 'https://aws.amazon.com/architecture/well-architected/', 'doc'),
  ('s5-0-0', 5, 0, 0, 'SQLBolt — one evening, start to finish', 'https://sqlbolt.com', 'practice'),
  ('s5-0-1', 5, 0, 1, 'Mode SQL tutorial', 'https://mode.com/sql-tutorial/', 'course'),
  ('s5-0-2', 5, 0, 2, 'techTFQ and Alex The Analyst on YouTube', null, 'video'),
  ('s5-1-0', 5, 1, 0, 'PostgreSQL Exercises', 'https://pgexercises.com', 'practice'),
  ('s5-1-1', 5, 1, 1, 'PostgreSQL documentation', 'https://www.postgresql.org/docs/current/', 'doc'),
  ('s5-1-2', 5, 1, 2, 'SQLZoo', 'https://sqlzoo.net', 'practice'),
  ('s5-2-0', 5, 2, 0, 'Use The Index, Luke — free web book', 'https://use-the-index-luke.com', 'book'),
  ('s5-2-1', 5, 2, 1, 'PostgreSQL EXPLAIN chapter', 'https://www.postgresql.org/docs/current/using-explain.html', 'doc'),
  ('s5-2-2', 5, 2, 2, 'Kimball Group dimensional techniques', 'https://www.kimballgroup.com', 'site'),
  ('s6-0-0', 6, 0, 0, 'MDN HTTP reference', 'https://developer.mozilla.org/en-US/docs/Web/HTTP', 'doc'),
  ('s6-0-1', 6, 0, 1, 'roadmap.sh system design', 'https://roadmap.sh/system-design', 'site'),
  ('s6-0-2', 6, 0, 2, 'ByteByteGo on YouTube', 'https://www.youtube.com/@ByteByteGo', 'video'),
  ('s6-1-0', 6, 1, 0, 'Microservices patterns catalogue', 'https://microservices.io/patterns/', 'site'),
  ('s6-1-1', 6, 1, 1, 'Enterprise Integration Patterns', 'https://www.enterpriseintegrationpatterns.com', 'site'),
  ('s6-1-2', 6, 1, 2, 'Azure cloud design patterns', 'https://learn.microsoft.com/en-us/azure/architecture/patterns/', 'doc'),
  ('s6-2-0', 6, 2, 0, 'System Design Primer', 'https://github.com/donnemartin/system-design-primer', 'site'),
  ('s6-2-1', 6, 2, 1, 'Google SRE books — free online', 'https://sre.google/books/', 'book'),
  ('s6-2-2', 6, 2, 2, 'martinfowler.com architecture', 'https://martinfowler.com/architecture/', 'site'),
  ('s7-0-0', 7, 0, 0, 'OWASP Top 10', 'https://owasp.org/www-project-top-ten/', 'doc'),
  ('s7-0-1', 7, 0, 1, 'PortSwigger Web Security Academy — free labs', 'https://portswigger.net/web-security', 'practice'),
  ('s7-0-2', 7, 0, 2, 'OWASP and PortSwigger on YouTube', null, 'video'),
  ('s7-1-0', 7, 1, 0, 'OAuth 2.0 specifications and guides', 'https://oauth.net/2/', 'doc'),
  ('s7-1-1', 7, 1, 1, 'OpenID Connect for developers', 'https://openid.net/developers/', 'doc'),
  ('s7-1-2', 7, 1, 2, 'OWASP Cheat Sheet Series', 'https://cheatsheetseries.owasp.org', 'doc'),
  ('s7-2-0', 7, 2, 0, 'PDPC — PDPA guidelines', 'https://www.pdpc.gov.sg', 'doc'),
  ('s7-2-1', 7, 2, 1, 'NIST Cybersecurity Framework', 'https://www.nist.gov/cyberframework', 'doc'),
  ('s7-2-2', 7, 2, 2, 'OWASP SAMM', 'https://owasp.org/www-project-samm/', 'site'),
  ('s8-0-0', 8, 0, 0, 'Modern Analyst — articles and templates', 'https://www.modernanalyst.com', 'site'),
  ('s8-0-1', 8, 0, 1, 'IIBA free resources', 'https://www.iiba.org', 'site'),
  ('s8-0-2', 8, 0, 2, 'Modern Analyst and IIBA on YouTube', null, 'video'),
  ('s8-1-0', 8, 1, 0, 'Camunda BPMN tutorial', 'https://camunda.com/bpmn/', 'course'),
  ('s8-1-1', 8, 1, 1, 'Jeff Patton — story mapping', 'https://www.jpattonassociates.com', 'site'),
  ('s8-1-2', 8, 1, 2, 'Mountain Goat Software — user stories', 'https://www.mountaingoatsoftware.com', 'site'),
  ('s8-2-0', 8, 2, 0, 'gojko.net — specification by example', 'https://gojko.net', 'site'),
  ('s8-2-1', 8, 2, 1, 'martinfowler.com bliki', 'https://martinfowler.com/bliki/', 'site'),
  ('s8-2-2', 8, 2, 2, 'Modern Analyst — advanced templates', 'https://www.modernanalyst.com', 'site'),
  ('s9-0-0', 9, 0, 0, 'projectmanagement.com free resources', 'https://www.projectmanagement.com', 'site'),
  ('s9-0-1', 9, 0, 1, 'APM learning resources', 'https://www.apm.org.uk', 'site'),
  ('s9-0-2', 9, 0, 2, 'PMBasics101 and Adriana Girdler on YouTube', null, 'video'),
  ('s9-1-0', 9, 1, 0, 'The Scrum Guide — free, under 20 pages', 'https://scrumguides.org', 'doc'),
  ('s9-1-1', 9, 1, 1, 'The Kanban Guide', 'https://kanbanguides.org', 'doc'),
  ('s9-1-2', 9, 1, 2, 'Atlassian Agile Coach', 'https://www.atlassian.com/agile', 'course'),
  ('s9-2-0', 9, 2, 0, 'Scrum.org resources and open assessments', 'https://www.scrum.org', 'practice'),
  ('s9-2-1', 9, 2, 1, 'LeSS framework material', 'https://less.works', 'site'),
  ('s9-2-2', 9, 2, 2, 'David McLachlan on YouTube', null, 'video'),
  ('s10-0-0', 10, 0, 0, 'Google technical writing courses — free', 'https://developers.google.com/tech-writing', 'course'),
  ('s10-0-1', 10, 0, 1, 'plainlanguage.gov', 'https://www.plainlanguage.gov', 'site'),
  ('s10-0-2', 10, 0, 2, 'Write the Docs guides', 'https://www.writethedocs.org', 'site'),
  ('s10-1-0', 10, 1, 0, 'Architecture decision records', 'https://adr.github.io', 'site'),
  ('s10-1-1', 10, 1, 1, 'Diátaxis documentation framework', 'https://diataxis.fr', 'doc'),
  ('s10-1-2', 10, 1, 2, 'Google developer documentation style guide', 'https://developers.google.com/style', 'doc'),
  ('s10-2-0', 10, 2, 0, 'Google SRE — postmortem chapters', 'https://sre.google/books/', 'book'),
  ('s10-2-1', 10, 2, 1, 'Diátaxis — the four modes', 'https://diataxis.fr', 'doc'),
  ('s10-2-2', 10, 2, 2, 'Write the Docs conference talks', 'https://www.writethedocs.org', 'video'),
  ('s11-0-0', 11, 0, 0, 'Claude documentation — prompt engineering', 'https://docs.claude.com', 'doc'),
  ('s11-0-1', 11, 0, 1, 'Anthropic engineering blog', 'https://www.anthropic.com/engineering', 'site'),
  ('s11-0-2', 11, 0, 2, 'Practice on your own documents first', null, 'practice'),
  ('s11-1-0', 11, 1, 0, 'Claude prompt engineering guide', 'https://docs.claude.com', 'doc'),
  ('s11-1-1', 11, 1, 1, 'Anthropic cookbook', 'https://github.com/anthropics/anthropic-cookbook', 'practice'),
  ('s11-1-2', 11, 1, 2, 'Your own saved prompts, refined over time', null, 'practice'),
  ('s11-2-0', 11, 2, 0, 'Claude API documentation', 'https://docs.claude.com', 'doc'),
  ('s11-2-1', 11, 2, 1, 'Model Context Protocol', 'https://modelcontextprotocol.io', 'doc'),
  ('s11-2-2', 11, 2, 2, 'Anthropic cookbook', 'https://github.com/anthropics/anthropic-cookbook', 'practice');
