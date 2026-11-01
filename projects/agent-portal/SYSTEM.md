# System: PRUBSN Agent Portal

**For:** the Takaful Practice · **Used by:** Gabby's team (Client CRM, Compliance) · **Built by:** Software Studio (George)

| | |
|---|---|
| Repository | [syakirbadry-tech/Agent_Portal](https://github.com/syakirbadry-tech/Agent_Portal) (private) |
| Related | [syakirbadry-tech/pru-bsn-client-form](https://github.com/syakirbadry-tech/pru-bsn-client-form), a one-page client form (private) |
| Stack | JavaScript, PDF.js in the browser, esbuild bundle, Node's built-in test runner |
| Stage | Phase 1: agent review screen, internal preview only |

## What it does today

A quotation generator for agents. An agent uploads 1 to 3 PruBSN Product Illustration PDFs; the app reads them in the browser (files are never uploaded), parses each plan, checks that all documents belong to the same client, lets the agent review and correct every field, and generates one combined internal-preview quotation.

- Supports PruBSN AnugerahMax and PruBSN Asas360.
- Scanned PDFs without a text layer are not supported (no OCR).
- Publishing is mocked: nothing contacts the production backend yet.

## Next steps (from the repository)

1. Tidy the two stray files noted in `docs/OVERNIGHT_WORK_REPORT.md`, then merge the review branch.
2. Add a browser test for the same-client mismatch case.
3. Phase 2: wire real publishing, only after PRUBSN confirms what client data may leave the browser.

## Rules for the team

- Product Illustrations contain client personal data. Keep processing in the browser, and never store or send client data anywhere until PRUBSN approves it in writing (Malaysia PDPA).
- No PRUBSN logo or branding on anything public without permission.
- Quotations are internal previews; the Chairman checks every figure before a client sees it.

## Questions for the upline (Mon 2 Nov evening)

1. Would other agents in the team use this quotation tool? How many?
2. Which products should it support next after AnugerahMax and Asas360?
3. Is there a deadline, or anyone in the agency waiting for it?

## Questions for PRUBSN (by Wed 4 Nov)

1. May an agent use their own tool to prepare quotations from Product Illustrations? What approval is needed?
2. May client data from those documents be stored or shared outside PRUBSN systems, and on what terms?
3. May the tool use the PRUBSN name or logo?
4. Please share the agent social media guidelines (needed for the Takaful social media team).
