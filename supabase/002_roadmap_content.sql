-- Adds index.html-specific content to the shared catalog: a compact roadmap label
-- per resource, and the curriculum topic bullets used on the roadmap page.
-- Run after 001_catalog.sql.

alter table resources add column if not exists roadmap_label text;

update resources set roadmap_label = 'learning.servicenow.com — CSA path, free' where id = 's0-0-0';
update resources set roadmap_label = 'developer.servicenow.com — free instance' where id = 's0-0-1';
update resources set roadmap_label = 'docs.servicenow.com' where id = 's0-0-2';
update resources set roadmap_label = 'learning.servicenow.com — CAD path, free' where id = 's0-1-0';
update resources set roadmap_label = 'YouTube: Chuck Tomasi, JS on the Now Platform' where id = 's0-1-1';
update resources set roadmap_label = 'YouTube: SAASWITHSERVICENOW' where id = 's0-1-2';
update resources set roadmap_label = 'docs.servicenow.com — technical best practices' where id = 's0-2-0';
update resources set roadmap_label = 'servicenow.com/community — Developer Advocate' where id = 's0-2-1';
update resources set roadmap_label = 'snprotips.com' where id = 's0-2-2';
update resources set roadmap_label = 'javascript.info — free full course' where id = 's1-0-0';
update resources set roadmap_label = 'developer.mozilla.org — JavaScript reference' where id = 's1-0-1';
update resources set roadmap_label = 'YouTube: freeCodeCamp, Net Ninja' where id = 's1-0-2';
update resources set roadmap_label = 'typescriptlang.org/docs/handbook' where id = 's1-1-0';
update resources set roadmap_label = 'theodinproject.com — free curriculum' where id = 's1-1-1';
update resources set roadmap_label = 'nodejs.org/docs' where id = 's1-1-2';
update resources set roadmap_label = 'basarat.gitbook.io/typescript — free book' where id = 's1-2-0';
update resources set roadmap_label = 'react.dev/learn' where id = 's1-2-1';
update resources set roadmap_label = 'web.dev — performance guides' where id = 's1-2-2';
update resources set roadmap_label = 'automatetheboringstuff.com — full book, free' where id = 's2-0-0';
update resources set roadmap_label = 'docs.python.org/3/tutorial' where id = 's2-0-1';
update resources set roadmap_label = 'YouTube: Corey Schafer, freeCodeCamp' where id = 's2-0-2';
update resources set roadmap_label = 'realpython.com' where id = 's2-1-0';
update resources set roadmap_label = 'pandas.pydata.org/docs' where id = 's2-1-1';
update resources set roadmap_label = 'docs.pytest.org' where id = 's2-1-2';
update resources set roadmap_label = 'cosmicpython.com — full book, free' where id = 's2-2-0';
update resources set roadmap_label = 'fastapi.tiangolo.com' where id = 's2-2-1';
update resources set roadmap_label = 'packaging.python.org' where id = 's2-2-2';
update resources set roadmap_label = 'learn.microsoft.com/dotnet/csharp' where id = 's3-0-0';
update resources set roadmap_label = 'Interactive C# tutorials on MS Learn' where id = 's3-0-1';
update resources set roadmap_label = 'YouTube: Tim Corey, Nick Chapsas' where id = 's3-0-2';
update resources set roadmap_label = 'learn.microsoft.com/aspnet/core' where id = 's3-1-0';
update resources set roadmap_label = 'learn.microsoft.com/ef/core' where id = 's3-1-1';
update resources set roadmap_label = 'xunit.net documentation' where id = 's3-1-2';
update resources set roadmap_label = 'learn.microsoft.com/dotnet/architecture — free ebooks' where id = 's3-2-0';
update resources set roadmap_label = 'learn.microsoft.com/dotnet/core/diagnostics' where id = 's3-2-1';
update resources set roadmap_label = 'YouTube: Nick Chapsas performance series' where id = 's3-2-2';
update resources set roadmap_label = 'learn.microsoft.com/training/azure' where id = 's4-0-0';
update resources set roadmap_label = 'aws.amazon.com/training/digital' where id = 's4-0-1';
update resources set roadmap_label = 'roadmap.sh/devops' where id = 's4-0-2';
update resources set roadmap_label = 'docs.github.com/actions' where id = 's4-1-0';
update resources set roadmap_label = 'developer.hashicorp.com/terraform/tutorials' where id = 's4-1-1';
update resources set roadmap_label = 'kubernetes.io/docs/tutorials' where id = 's4-1-2';
update resources set roadmap_label = 'sre.google/books — free SRE books' where id = 's4-2-0';
update resources set roadmap_label = 'learn.microsoft.com/azure/well-architected' where id = 's4-2-1';
update resources set roadmap_label = 'aws.amazon.com/architecture/well-architected' where id = 's4-2-2';
update resources set roadmap_label = 'sqlbolt.com — one evening, start to finish' where id = 's5-0-0';
update resources set roadmap_label = 'mode.com/sql-tutorial' where id = 's5-0-1';
update resources set roadmap_label = 'YouTube: techTFQ, Alex The Analyst' where id = 's5-0-2';
update resources set roadmap_label = 'pgexercises.com — free practice' where id = 's5-1-0';
update resources set roadmap_label = 'postgresql.org/docs' where id = 's5-1-1';
update resources set roadmap_label = 'sqlzoo.net' where id = 's5-1-2';
update resources set roadmap_label = 'use-the-index-luke.com — free web book' where id = 's5-2-0';
update resources set roadmap_label = 'postgresql.org/docs — the EXPLAIN chapter' where id = 's5-2-1';
update resources set roadmap_label = 'kimballgroup.com — dimensional techniques' where id = 's5-2-2';
update resources set roadmap_label = 'developer.mozilla.org — HTTP reference' where id = 's6-0-0';
update resources set roadmap_label = 'roadmap.sh/system-design' where id = 's6-0-1';
update resources set roadmap_label = 'YouTube: ByteByteGo, Gaurav Sen' where id = 's6-0-2';
update resources set roadmap_label = 'microservices.io/patterns' where id = 's6-1-0';
update resources set roadmap_label = 'enterpriseintegrationpatterns.com' where id = 's6-1-1';
update resources set roadmap_label = 'learn.microsoft.com/azure/architecture/patterns' where id = 's6-1-2';
update resources set roadmap_label = 'github.com/donnemartin/system-design-primer' where id = 's6-2-0';
update resources set roadmap_label = 'sre.google/books — free Google SRE books' where id = 's6-2-1';
update resources set roadmap_label = 'martinfowler.com/architecture' where id = 's6-2-2';
update resources set roadmap_label = 'owasp.org/www-project-top-ten' where id = 's7-0-0';
update resources set roadmap_label = 'portswigger.net/web-security — free labs' where id = 's7-0-1';
update resources set roadmap_label = 'YouTube: OWASP, PortSwigger' where id = 's7-0-2';
update resources set roadmap_label = 'oauth.net/2' where id = 's7-1-0';
update resources set roadmap_label = 'openid.net/developers' where id = 's7-1-1';
update resources set roadmap_label = 'cheatsheetseries.owasp.org' where id = 's7-1-2';
update resources set roadmap_label = 'pdpc.gov.sg — PDPA guidelines' where id = 's7-2-0';
update resources set roadmap_label = 'nist.gov — CSF and the SP 800 series' where id = 's7-2-1';
update resources set roadmap_label = 'owasp.org/www-project-samm' where id = 's7-2-2';
update resources set roadmap_label = 'modernanalyst.com — articles and templates' where id = 's8-0-0';
update resources set roadmap_label = 'iiba.org — free resources section' where id = 's8-0-1';
update resources set roadmap_label = 'YouTube: Modern Analyst, IIBA' where id = 's8-0-2';
update resources set roadmap_label = 'camunda.com/bpmn — free BPMN tutorial' where id = 's8-1-0';
update resources set roadmap_label = 'jpattonassociates.com — story mapping essay' where id = 's8-1-1';
update resources set roadmap_label = 'mountaingoatsoftware.com — user stories' where id = 's8-1-2';
update resources set roadmap_label = 'gojko.net — specification by example articles' where id = 's8-2-0';
update resources set roadmap_label = 'martinfowler.com/bliki' where id = 's8-2-1';
update resources set roadmap_label = 'modernanalyst.com — advanced templates' where id = 's8-2-2';
update resources set roadmap_label = 'projectmanagement.com — free resources' where id = 's9-0-0';
update resources set roadmap_label = 'apm.org.uk — free learning resources' where id = 's9-0-1';
update resources set roadmap_label = 'YouTube: PMBasics101, Adriana Girdler' where id = 's9-0-2';
update resources set roadmap_label = 'scrumguides.org — free, under 20 pages' where id = 's9-1-0';
update resources set roadmap_label = 'kanbanguides.org — free' where id = 's9-1-1';
update resources set roadmap_label = 'atlassian.com/agile — Agile Coach, free' where id = 's9-1-2';
update resources set roadmap_label = 'scrum.org — free resources and assessments' where id = 's9-2-0';
update resources set roadmap_label = 'less.works — free LeSS framework material' where id = 's9-2-1';
update resources set roadmap_label = 'YouTube: David McLachlan' where id = 's9-2-2';
update resources set roadmap_label = 'developers.google.com/tech-writing — free course' where id = 's10-0-0';
update resources set roadmap_label = 'plainlanguage.gov' where id = 's10-0-1';
update resources set roadmap_label = 'writethedocs.org — free guides' where id = 's10-0-2';
update resources set roadmap_label = 'adr.github.io — decision record patterns' where id = 's10-1-0';
update resources set roadmap_label = 'diataxis.fr — documentation framework' where id = 's10-1-1';
update resources set roadmap_label = 'developers.google.com/style' where id = 's10-1-2';
update resources set roadmap_label = 'sre.google/books — postmortem chapters' where id = 's10-2-0';
update resources set roadmap_label = 'diataxis.fr — the four documentation modes' where id = 's10-2-1';
update resources set roadmap_label = 'writethedocs.org — conference talks, free' where id = 's10-2-2';
update resources set roadmap_label = 'docs.claude.com — prompt engineering overview' where id = 's11-0-0';
update resources set roadmap_label = 'anthropic.com/engineering' where id = 's11-0-1';
update resources set roadmap_label = 'Practice on your own documents first' where id = 's11-0-2';
update resources set roadmap_label = 'docs.claude.com — prompt engineering guide' where id = 's11-1-0';
update resources set roadmap_label = 'github.com/anthropics/anthropic-cookbook' where id = 's11-1-1';
update resources set roadmap_label = 'Your own saved prompts, refined over time' where id = 's11-1-2';
update resources set roadmap_label = 'docs.claude.com — API documentation' where id = 's11-2-0';
update resources set roadmap_label = 'modelcontextprotocol.io' where id = 's11-2-1';
update resources set roadmap_label = 'github.com/anthropics/anthropic-cookbook' where id = 's11-2-2';

create table if not exists level_topics (
  id text primary key,
  track_id smallint not null references tracks(id),
  level smallint not null check (level between 0 and 2),
  position smallint not null,
  topic text not null
);

alter table level_topics enable row level security;
drop policy if exists "public read level_topics" on level_topics;
create policy "public read level_topics" on level_topics for select using (true);

truncate table level_topics restart identity cascade;

insert into level_topics (id, track_id, level, position, topic) values
  ('t0-0-0', 0, 0, 0, 'Tables, dictionary, extension, task table'),
  ('t0-0-1', 0, 0, 1, 'Forms, lists, catalog, roles, notifications'),
  ('t0-0-2', 0, 0, 2, 'Import sets, transform maps, update sets'),
  ('t0-1-0', 0, 1, 0, 'Scoped apps, cross-scope, data modelling'),
  ('t0-1-1', 0, 1, 1, 'GlideRecord, script includes, business rules'),
  ('t0-1-2', 0, 1, 2, 'ACLs, GlideAjax, UI policies, Flow Designer'),
  ('t0-2-0', 0, 2, 0, 'Source control, ATF, instance strategy'),
  ('t0-2-1', 0, 2, 1, 'Performance tuning, upgrade safety'),
  ('t0-2-2', 0, 2, 2, 'Integrations, Now Assist, one CIS'),
  ('t1-0-0', 1, 0, 0, 'Types, scope, closures, the event loop'),
  ('t1-0-1', 1, 0, 1, 'Promises, async/await, fetch'),
  ('t1-0-2', 1, 0, 2, 'DOM, modules, npm'),
  ('t1-1-0', 1, 1, 0, 'TypeScript: types, generics, narrowing'),
  ('t1-1-1', 1, 1, 1, 'Node basics; building a small API'),
  ('t1-1-2', 1, 1, 2, 'Testing with Vitest or Jest'),
  ('t1-2-0', 1, 2, 0, 'Type-level design; strict configs'),
  ('t1-2-1', 1, 2, 1, 'Bundling, tooling, runtime performance'),
  ('t1-2-2', 1, 2, 2, 'Depth in one framework'),
  ('t2-0-0', 2, 0, 0, 'Syntax, data structures, comprehensions'),
  ('t2-0-1', 2, 0, 1, 'Files, JSON, CSV, error handling'),
  ('t2-0-2', 2, 0, 2, 'pip and virtual environments'),
  ('t2-1-0', 2, 1, 0, 'requests: auth, pagination, retries'),
  ('t2-1-1', 2, 1, 1, 'pandas, pytest, type hints, logging'),
  ('t2-1-2', 2, 1, 2, 'Command line tools with argparse'),
  ('t2-2-0', 2, 2, 0, 'async/await, concurrency, the GIL'),
  ('t2-2-1', 2, 2, 1, 'Profiling, packaging, SQLAlchemy'),
  ('t2-2-2', 2, 2, 2, 'FastAPI services; structuring codebases'),
  ('t3-0-0', 3, 0, 0, 'Syntax, types, collections, generics'),
  ('t3-0-1', 3, 0, 1, 'LINQ; solution structure, NuGet'),
  ('t3-0-2', 3, 0, 2, 'async/await basics, exceptions, disposal'),
  ('t3-1-0', 3, 1, 0, 'ASP.NET Core Web API, DI, middleware'),
  ('t3-1-1', 3, 1, 1, 'EF Core: modelling, migrations, queries'),
  ('t3-1-2', 3, 1, 2, 'Auth, xUnit testing, background workers'),
  ('t3-2-0', 3, 2, 0, 'Memory, spans, GC behaviour'),
  ('t3-2-1', 3, 2, 1, 'Clean architecture, DDD, CQRS'),
  ('t3-2-2', 3, 2, 2, 'Containers, CI/CD, profiling, diagnostics'),
  ('t4-0-0', 4, 0, 0, 'One provider: compute, storage, IAM'),
  ('t4-0-1', 4, 0, 1, 'Containers: images, registries, Docker'),
  ('t4-0-2', 4, 0, 2, 'Git branching and pull request flow'),
  ('t4-1-0', 4, 1, 0, 'CI/CD: build, test, deploy stages'),
  ('t4-1-1', 4, 1, 1, 'Infrastructure as code: Terraform or Bicep'),
  ('t4-1-2', 4, 1, 2, 'Kubernetes basics; secrets and config'),
  ('t4-2-0', 4, 2, 0, 'Observability, SLOs, incident response'),
  ('t4-2-1', 4, 2, 1, 'Cost management and rightsizing'),
  ('t4-2-2', 4, 2, 2, 'Multi-environment release strategy'),
  ('t5-0-0', 5, 0, 0, 'SELECT, WHERE, ORDER BY, aggregates'),
  ('t5-0-1', 5, 0, 1, 'Joins: inner, left, self'),
  ('t5-0-2', 5, 0, 2, 'NULL semantics and the bugs they cause'),
  ('t5-1-0', 5, 1, 0, 'Subqueries, CTEs, window functions'),
  ('t5-1-1', 5, 1, 1, 'Dates, time zones, set operations'),
  ('t5-1-2', 5, 1, 2, 'Normalisation and schema design'),
  ('t5-2-0', 5, 2, 0, 'Indexes, execution plans, tuning'),
  ('t5-2-1', 5, 2, 1, 'Transactions, isolation, partitioning'),
  ('t5-2-2', 5, 2, 2, 'Migration and dimensional modelling'),
  ('t6-0-0', 6, 0, 0, 'HTTP, REST, status codes, idempotency'),
  ('t6-0-1', 6, 0, 1, 'OAuth 2.0, tokens, mutual TLS'),
  ('t6-0-2', 6, 0, 2, 'Sync versus async, queues, caching'),
  ('t6-1-0', 6, 1, 0, 'Requirements to constraints to trade-offs'),
  ('t6-1-1', 6, 1, 1, 'Retries, backoff, DLQs, circuit breakers'),
  ('t6-1-2', 6, 1, 2, 'API design, integration patterns, tracing'),
  ('t6-2-0', 6, 2, 0, 'Replication, partitioning, consistency'),
  ('t6-2-1', 6, 2, 1, 'Resilience, capacity and cost modelling'),
  ('t6-2-2', 6, 2, 2, 'Migration strategy, decision records'),
  ('t7-0-0', 7, 0, 0, 'OWASP Top 10 and how each one happens'),
  ('t7-0-1', 7, 0, 1, 'Authentication versus authorisation'),
  ('t7-0-2', 7, 0, 2, 'Secrets handling; never in source control'),
  ('t7-1-0', 7, 1, 0, 'OAuth 2.0 and OIDC flows, properly'),
  ('t7-1-1', 7, 1, 1, 'Session, token and certificate handling'),
  ('t7-1-2', 7, 1, 2, 'Threat modelling; secure code review'),
  ('t7-2-0', 7, 2, 0, 'Zero trust and least privilege at scale'),
  ('t7-2-1', 7, 2, 1, 'Data protection law: PDPA, GDPR'),
  ('t7-2-2', 7, 2, 2, 'Incident response and forensics basics'),
  ('t8-0-0', 8, 0, 0, 'Requirement types, elicitation methods'),
  ('t8-0-1', 8, 0, 1, 'Non-leading interviews, the five whys'),
  ('t8-0-2', 8, 0, 2, 'Stakeholder mapping, RACI, as-is capture'),
  ('t8-1-0', 8, 1, 0, 'BPMN core set and entity modelling'),
  ('t8-1-1', 8, 1, 1, 'Given/when/then acceptance criteria'),
  ('t8-1-2', 8, 1, 2, 'Story mapping, slicing, MoSCoW'),
  ('t8-2-0', 8, 2, 0, 'Scope control and impact assessment'),
  ('t8-2-1', 8, 2, 1, 'Facilitation, principled pushback'),
  ('t8-2-2', 8, 2, 2, 'Benefits case, UAT, decision records'),
  ('t9-0-0', 9, 0, 0, 'Scope, schedule, cost, quality trade-offs'),
  ('t9-0-1', 9, 0, 1, 'WBS, estimation, critical path, milestones'),
  ('t9-0-2', 9, 0, 2, 'RAID logs, status reporting, comms plan'),
  ('t9-1-0', 9, 1, 0, 'Scrum, Kanban, WIP limits, flow metrics'),
  ('t9-1-1', 9, 1, 1, 'Backlog, release planning, forecasting'),
  ('t9-1-2', 9, 1, 2, 'Budget, vendors, risk, change control'),
  ('t9-2-0', 9, 2, 0, 'Programme and portfolio sequencing'),
  ('t9-2-1', 9, 2, 1, 'Recovering a failing project'),
  ('t9-2-2', 9, 2, 2, 'Commercial models, adoption, benefits'),
  ('t10-0-0', 10, 0, 0, 'Audience, purpose, one-sentence summary'),
  ('t10-0-1', 10, 0, 1, 'Plain language; cutting a third of it'),
  ('t10-0-2', 10, 0, 2, 'Structure: lead with the conclusion'),
  ('t10-1-0', 10, 1, 0, 'Design documents and specifications'),
  ('t10-1-1', 10, 1, 1, 'Decision records that age well'),
  ('t10-1-2', 10, 1, 2, 'Diagrams that carry the argument'),
  ('t10-2-0', 10, 2, 0, 'Incident write-ups and postmortems'),
  ('t10-2-1', 10, 2, 1, 'Editing other people''s writing'),
  ('t10-2-2', 10, 2, 2, 'Documentation that stays current'),
  ('t11-0-0', 11, 0, 0, 'Prompt shape: context, task, constraints'),
  ('t11-0-1', 11, 0, 1, 'Feed real artefacts, don''t describe them'),
  ('t11-0-2', 11, 0, 2, 'Where models fail; what not to paste'),
  ('t11-1-0', 11, 1, 0, 'Structured output; long documents'),
  ('t11-1-1', 11, 1, 1, 'Code review and test generation'),
  ('t11-1-2', 11, 1, 2, 'Judging quality, not first answers'),
  ('t11-2-0', 11, 2, 0, 'API and SDK; batch workflows'),
  ('t11-2-1', 11, 2, 1, 'Tool use, MCP, retrieval over your docs'),
  ('t11-2-2', 11, 2, 2, 'Evaluation; where automation does not belong');
