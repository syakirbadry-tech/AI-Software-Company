# System: Merc Lab DMS

**For:** The Merc Lab · **Used by:** Kazumi's team (COO, Customer CRM, CFO, Technical) · **Built by:** Software Studio (George)

| | |
|---|---|
| Repository | [syakirbadry-tech/merclab-app](https://github.com/syakirbadry-tech/merclab-app) (public) |
| Live app | https://syakirbadry-tech.github.io/merclab-app/ (GitHub Pages, installable on a phone; answered 1 Nov 2026) |
| Stack | Progressive web app: one bundled `index.html`, `manifest.json`, `service-worker.js` for offline use |

## What it does today

Screens for the workshop's job and customer system: job cards, customers, vehicles, vehicle check-in, quotations, invoices, parts and inventory, and fault notes, installable on a phone and available offline.

**Important (1 Nov review):** the bundled `index.html` appears to be a screen design exported from a design tool (it contains a design-tool starter scaffold and a static page template). No code that saves data (local storage, a database or an online service) was found, so it is a clickable design rather than a working system yet.

## Next steps

1. Build the working app behind the design: save job cards, customers, vehicles, quotations and invoices, with backup across devices.
2. Add fault-case recording (model and engine, symptom, fault codes, tests, root cause, fix, verified), the open task in the Command Center. These cases feed the Workshop Datahub.
3. Because the repository is public, keep customer data out of it and check that nothing personal is committed.

## Technical notes for the studio

- No automated tests yet; the daily check validates `manifest.json`, `service-worker.js` and the icons.
- `index.html` is a single bundled file (about 1.3 MB); keep a readable source alongside any rebuild.
- Health checks: [organization/MONITORING.md](../../organization/MONITORING.md).

## Rules for the team

- Customer names, phone numbers and plates stay in the app, never in posts or other companies' records.
- Prices and invoices are drafted by the CFO team and confirmed by the Chairman.
