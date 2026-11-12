# Operating Model: Teams Decide, the Chairman Confirms

From 10 November 2026 the CEOs run their teams. The Chairman gives an order, the team decides how and does the work, and the Chairman only confirms the final result.

## How an order flows

```
Chairman → CEO (Command Center chat or this Claude chat)
   → Order saved in Airtable "Orders" (Status: New)
   → Team runner picks it up (hourly, 07:23–23:23 Kuala Lumpur, or at once when the Chairman asks in the Claude chat)
   → CEO plans, assigns departments by Agent ID, departments do the work (Status: Working)
   → CEO checks the work against the order (see "CEO check" below); if it falls short, back to the department
   → Final result, links and the one step that needs the Chairman (Status: Waiting for you)
   → Chairman taps Approve or Send back in the Command Center
   → Approved: the team takes the final step, then Done.  Sent back: the team revises.
```

## CEO check before handover

Nothing reaches the Chairman until the CEO has checked it. The CEO signs the check in the order's Result as "Checked by <CEO Agent ID>" and confirms:

1. **It answers the order.** The result does what the Chairman asked, in the reading written in the Plan.
2. **It works.** Code: tests pass and the reviewer (SS-CR) has read the pull request. Posts: the reviewer (SH-REV, or TK-CMP for takaful) passed it. Records: they open and read correctly.
3. **It follows the rules.** No personal data in public content, no data copied between companies, no prices or promises the Chairman has not given.
4. **One clear step is left.** "Needs your OK for" names a single outward step, or "Nothing - for your information".

If any point fails, the CEO sends the work back to the department with the reason, and the order stays Working until it passes.

## What a team decides and does alone

- How to do the work: plan, priorities inside its company, which department does what
- Research and reading: repositories, Airtable records, the Command Center files, public web pages
- Drafts of anything: posts, messages, quotations, reports, documents, meeting notes
- Airtable records in its own company: create and update Tasks, People, Projects, Content and Ideas, always signed with its Agent ID and logged in the Change Log
- Code: branches, commits, tests and pull requests in the four system repositories (branch `claude/<agent-id>-<topic>`, `Agent-ID` and `Requested-by` trailers)
- Merging into `main`, which updates the live app (decided by the Chairman, 12 Nov 2026), once all of these hold: the tests pass, the Code Reviewer (SS-CR) has reviewed the pull request, and the CEO check has passed. Changes that touch live data, delete data or change how people log in stay behind a feature flag that is off, or wait for the Chairman. The order then closes as Done with a short "what changed and how to undo it" note, so the Chairman is told afterwards instead of asked first.
- Choosing between options when the Chairman has not stated a preference, with the reason written in the order's Plan

## What waits for the Chairman's final OK

One tap on Approve covers the step written in "Needs your OK for":

- Anything that goes outside: publishing a post, sending a WhatsApp, email or message, contacting a customer, client, upline, manager or supplier
- Money: prices, quotations sent to a customer, spending, payments
- Deleting records or data, or changing a project's deadline
- Anything a group rule marks as needing approval (takaful posts also wait for PRUBSN's guidelines)

The team never takes these steps before Approve, and never takes a step that was not written in "Needs your OK for".

## Limits that do not change

- Each company's data stays in that company. Asbenz data never leaves the Asbenz Desk and the OSH-C Portal.
- No personal data in public posts.
- The Chairman posts on social media and sends personal messages himself; there is no connector for Threads or WhatsApp.
- If an order is unclear, the CEO picks the most sensible reading, says which in the Plan, and carries on. The CEO asks the Chairman only when every reading would be risky.

## Who runs the work

The departments are roles played by Claude with real tools (Airtable, GitHub, the repositories, the web), each signing with its Agent ID. The chat inside the Command Center page is for talking and giving orders. The work itself runs in the Claude chat where the scheduled tasks live, so an order sent from the page is picked up within the hour.
