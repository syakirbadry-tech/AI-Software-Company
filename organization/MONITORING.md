# System Monitoring

How George's Software Studio watches the group's four systems. The Chairman sees one short line each morning when everything is fine, and details only when something needs attention. Group rules in [README.md](README.md) and access rules in [SYSTEMS.md](SYSTEMS.md) apply.

## Who Watches What

| Role | Watches, on every system |
|---|---|
| George (CEO/CTO) | Owns the daily check and decides what reaches the Chairman |
| QA Engineer | Automated tests, local smoke tests, live app uptime (once allowed) |
| Backend Engineer | Dependency security audits, server syntax, configuration and staging |
| Code Reviewer | New commits and open pull requests: what changed, what is waiting for review |
| Documentation Engineer | Keeps each system profile in [projects/](../projects/README.md) up to date |
| Solution Architect | Roadmap risks, outdated platforms, anything that threatens the next module |

## Checks per System

| System | Code checks (run now) | Live check (needs network access) |
|---|---|---|
| OSH-C Portal | Syntax check of all server and front-end JavaScript; the 16 `server/scripts/test-*.js` scripts; `npm audit --omit=dev`; open pull requests; new commits on `main` | The live Render address answers (address to be confirmed by the Chairman) |
| PRUBSN Agent Portal | `npm ci && npm test` (50 tests); `npm audit`; vendored `vendor/pdf.min.js` version; open pull requests | Not deployed yet |
| Merc Lab DMS | `manifest.json` is valid JSON; `service-worker.js` syntax; icons present; open pull requests; no personal data committed (public repository) | GitHub Pages address answers |
| Workshop Datahub | `python3 -m py_compile app.py`; start locally on a spare port and request `/`, `/login`, `/signup`; open pull requests | Not deployed yet |

## Schedule and Reporting

| When (Asia/Kuala_Lumpur) | What |
|---|---|
| Mon–Sat 07:53 | Daily health check. All clear: one line. Problem: what, which system, how serious, suggested fix |
| Wed and Sat 17:37 | George's studio briefing includes a Systems line for each app |

A problem that is new and real becomes one task in the Command Center (Type *Software*, the system's business Area, a clear title and next step). The team never fixes, merges or deploys on its own: fixes happen on a branch with a pull request when the Chairman asks.

Severity: **Critical** (app down, data exposed, critical security advisory), **High** (high advisory, failing tests), **Medium** (moderate advisory, stale pull request), **Low** (housekeeping).

## Fixes Merged (1 November 2026)

All three were merged by the Chairman on 1 November and re-checked on `main`.

| System | Pull request | Fix |
|---|---|---|
| OSH-C Portal | [#9](https://github.com/syakirbadry-tech/Safety-and-Health-Asbenz-Motors/pull/9) | Dependency update: 0 vulnerabilities, 16/16 test scripts |
| Workshop Datahub | [#1](https://github.com/syakirbadry-tech/workshop-diagnostic-network/pull/1) | `.gitignore` for admin credentials and database |
| Agent Portal | [#3](https://github.com/syakirbadry-tech/Agent_Portal/pull/3) | pdf.js 6.4.299 (GHSA-hq66-cqwq-w95j): 0 vulnerabilities, 50/50 tests |

Current baseline after the merges: OSH-C and Agent Portal audits report 0 vulnerabilities; the Datahub ignores its credentials and database files.

## Known Limit

The cloud environment's network policy blocks outside websites such as Render and GitHub Pages, so live uptime checks are skipped until those hosts are added under the environment's allowed domains. The OSH-C Portal's real Render address is not recorded yet.

## Baseline, 1 November 2026

| System | Result |
|---|---|
| OSH-C Portal | 121 JavaScript files pass syntax check. Security audit: 1 critical (`proxy-addr`), 1 high (`body-parser`), 1 moderate (`qs`), all fixable with a routine dependency update. Open pull request [#8](https://github.com/syakirbadry-tech/Safety-and-Health-Asbenz-Motors/pull/8): Noise Management stage 2 (behind the `noise.stage2` flag, off). 16 test scripts in `server/scripts/` pass, but no CI runs them. |
| PRUBSN Agent Portal | 50 of 50 tests pass. Security audit: 1 high, `pdfjs-dist` 6.1.200, also the version of the shipped `vendor/pdf.min.js`; fixed in 6.2.108 or later. No open pull requests. |
| Merc Lab DMS | Manifest valid, service worker passes syntax check, 11 icon files. No open pull requests. No automated tests. |
| Workshop Datahub | `app.py` compiles; local start answers 200 on `/`, `/login` and `/signup`. No open pull requests. No automated tests. |
