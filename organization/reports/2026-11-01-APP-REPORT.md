# App Report: 1 November 2026 (first report)

Facts from George's team's baseline check on 1 November; improvements are in the Ideas table, signed by the proposer.

## Kazumi (ML-CEO): Merc Lab DMS and Workshop Datahub

**Merc Lab DMS: amber.** The screens are there (job cards, customers, vehicles, invoices, parts), but the repository appears to be a screen design exported from a design tool: no code that saves data was found. **Improvement:** turn it into a working app that saves job cards, customers and invoices, then add fault-case recording. **Decision:** confirm the DMS becomes the workshop's next build after the portals are stable.

**Workshop Datahub: amber.** Working prototype; starts and serves its pages. Not online yet, billing is manual. **Improvement:** add a `.gitignore` now, because the repository is public and running the app writes admin credentials and a database file into the folder. **Decision:** none yet.

## Gabby (TK-CEO): PRUBSN Agent Portal

**Amber.** All 50 tests pass and the quotation review works on a computer. The PDF reader inside it has a high security advisory. **Improvement:** fix the PDF reader, then put the tool online so it works on a phone with clients. **Decision:** ask the upline on Monday which products to add after AnugerahMax and Asas360.

## Asbenz Assistant (AD-AST): OSH-C Portal

**Amber.** Live and the most advanced app (v2.7). Three add-on packages have security advisories (1 critical), fixable with a routine update. Noise Management stage 2 waits for review (pull request #8). **Improvement:** automatic tests and a release check, then due-date reminders for certificates and inspections. **Decision:** approve the security update, and review pull request #8.

## George (SS-CEO): technical summary

| App | Status | Most urgent |
|---|---|---|
| OSH-C Portal | Amber | Dependency security update (critical advisory) |
| Agent Portal | Amber | pdf.js update to 6.2.108+ |
| Merc Lab DMS | Amber | No data storage yet; needs a real build |
| Workshop Datahub | Amber | `.gitignore` for credentials and database |

Live uptime checks are blocked by the environment's network settings. Order I recommend: OSH-C security update, Datahub `.gitignore`, Agent Portal pdf.js, then the DMS build.
