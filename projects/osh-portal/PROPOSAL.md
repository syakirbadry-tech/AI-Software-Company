# Project Proposal: OSH Portal

**For:** Asbenz Motors (the Chairman's employer) · **Prepared by:** George, Software Studio · **Status:** Draft, waiting for the manager's answers on Mon 2 Nov

## Problem / Opportunity

As OSH coordinator, the Chairman tracks inspections, findings, corrective actions, signage and reports by hand. Items get missed, evidence is scattered, and there is no quick view for management or an audit. A small portal can hold the checklists, the evidence and the follow-ups in one place, usable from a phone on the workshop floor.

## Proposed Scope

**First release: one complete working module, Inspections and Corrective Actions.**

1. Run a checklist inspection on a phone (for example, the monthly workshop inspection or a fire extinguisher check), with a photo for each failed item.
2. Every failed item becomes a corrective action with an owner, a due date and a status.
3. A simple list of open actions, overdue first, and a one-page inspection report to print or share as PDF.

**Later modules, in a suggested order** (to be ranked by the manager):

| Module | What it does |
|---|---|
| Incidents and near misses | Report on a phone, investigate, link to corrective actions |
| HIRARC register | Hazards, risk scores and controls per work area |
| Training and PPE | Who is trained on what, when it expires, PPE issued |
| Documents and signage | Required signage per area, permits, documents with expiry dates |
| Dashboard | Open actions, overdue items, inspections done this month |

**Out of scope for the first release:** payroll, HR records, anything that needs other company systems.

## Closest Existing Example

None in this repository yet. The Command Center's Airtable base is the nearest pattern: tables plus a phone-friendly view.

## Technology Choices

Decide after Monday's answers, following [docs/DECISION_FRAMEWORK.md](../../docs/DECISION_FRAMEWORK.md): choose the simplest option that meets the must-haves and Asbenz's IT rules.

| Option | Good when | Watch out for |
|---|---|---|
| A. No-code on a tool Asbenz already uses (Microsoft 365 Lists/Forms/Power Apps, or Google AppSheet) | Asbenz has one of these, few users, deadline is close | Limits on custom reports; licence per user |
| B. Small web app (for example Next.js with a hosted Postgres database) | Several branches or roles, custom reports, longer timeline | More to build and maintain; hosting cost |

Recommendation: **A if Asbenz already pays for Microsoft 365 or Google Workspace and the deadline is within 6 weeks; otherwise B.**

## Standards That Apply

[SECURITY_STANDARDS.md](../../docs/SECURITY_STANDARDS.md) (company data, logins), [DATABASE_STANDARDS.md](../../docs/DATABASE_STANDARDS.md) (audit trail on inspections and actions), [UI_STANDARDS.md](../../docs/UI_STANDARDS.md) (phone first), [TESTING_STANDARDS.md](../../docs/TESTING_STANDARDS.md).

Legal content (checklist items, HIRARC method, report formats) must be checked against the OSH Act 1994 as amended in 2022 and DOSH guidance, and confirmed by Asbenz's safety officer or management. The studio builds the tool; it does not decide what the law requires.

## Risks

- **Company data:** Asbenz data must stay where Asbenz allows. No real data in development until the manager approves.
- **Unclear owner:** someone at Asbenz must own the portal after it is built.
- **Scope creep:** finish one module end to end before starting the next.
- **Evening capacity:** the Chairman builds on Saturday evenings; plan about 4 hours a week.

## Classification & Timeline

Internal tool for the employer. The timeline is set after the deadline is confirmed. With about 4 hours a week: option A first module in about 3 to 4 Saturdays; option B in about 6 to 8.

## Questions for the Manager (Mon 2 Nov)

1. What is the deadline, and who signs off that the portal is ready?
2. Who will use it, and how many people? On phones, PCs, or both?
3. Which 3 features matter most for the first release?
4. Which paper or Excel forms do we use now? (Get a copy of each.)
5. Does Asbenz use Microsoft 365 or Google Workspace? Can company data be stored there, or in another cloud service?
6. How should people log in: company email accounts, or something else?
7. What reports does management or an auditor need, and in what format?
8. One branch or several?
9. Is there a budget for licences or hosting? Who maintains it after launch?
10. May I test with real company data, and who must approve that?
