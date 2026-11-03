# Design Handover: TORQUE Command Center

**For:** Claude Design · **From:** the Chairman (CHR), prepared by the Chief of Staff (SH-COS) · **Date:** 3 Nov 2026
**Live page:** https://claude.ai/artifact/LEkY4Ec5AZvRhg5uFr71tB (version 15) · **Source:** `source/command-center.html`

## 1. What this is

A one-page command center for one person, the Chairman, who runs four desks:

| Desk | CEO (AI) | Colour hue |
|---|---|---|
| The Merc Lab (Mercedes repair workshop) | Kazumi | green, 140 |
| Takaful Practice (PRUBSN takaful agent) | Gabby | pink, 330 |
| Software Studio (builds his apps) | George | blue, 215 |
| Asbenz Desk (his employer, OSH duties) | Assistant | amber, 45 |

He uses it **mostly on his phone**, in short moments between jobs. He prefers **simple English**. Time zone Asia/Kuala_Lumpur; day job 9 to 5; evenings are split: Mon/Wed takaful, Tue/Thu workshop, Fri catch-up, Sat workshop and coding, Sun rest and weekly plan.

## 2. What he does on it (in order of frequency)

1. **See what needs him today:** overdue items, posts waiting for approval, the next thing per desk.
2. **Approve or send back** social media posts (opens a dialog, writes to Airtable).
3. **Talk to a CEO or a department** (chat, streams answers).
4. **Open his live apps** (OSH-C Portal, Merc Lab DMS) from the Live apps panel.
5. Glance at the week plan, people and promises, projects and departments.

## 3. Current page, top to bottom

See `screenshots/`. Desktop has a 230px sidebar; on phone the sidebar becomes a sheet behind a **Menu** button.

1. Greeting headline (serif) + one-line summary + data stamp ("Showing the 31 Oct snapshot / Live from Airtable"), with **Talk to a CEO** and **Review posts** buttons
2. **CEO board:** 4 cards, one per desk (open tasks, next item, briefing schedule); tapping one selects that CEO for the chat
3. **Live apps:** 4 app cards with status pill, note, **Open app** and **Code**
4. **The week, by company:** 7-day grid (rows = desks, columns = days, evening label per day) + overdue / undated line
5. **Needs your approval:** post cards with Read / Approve / Add details, and a pipeline count
6. **CEO briefing** (Cars / Promises / Tonight / Growth / Decision for the selected CEO) beside **Chat** (department tabs, thread, starter chips, composer with Send / Stop)
7. **People and promises** beside **Projects, in priority order**
8. **Departments** of the selected CEO, each with an Agent ID tag and a Talk button
9. Footer note on how data and permissions work

## 4. What to refine (the brief)

The page works and is correct; it is **too long and too even on a phone**. The full phone screenshot is about 9 screens tall, and chat (his second most frequent action) sits around screen 5.

Please refine the front end so that:

1. **Phone first.** The first screen answers "what needs me now": overdue count, approvals, tonight's focus. Consider a bottom tab bar (for example Today · Chat · Apps · Week) or collapsible sections, rather than one long scroll.
2. **Chat is one tap away** from anywhere, with the composer reachable by thumb and safe from the on-screen keyboard.
3. **Clear priority.** Overdue and "needs your approval" stand out; everything else is calmer. Today the panels all carry the same weight.
4. **The week grid reads on a phone** (today it is a cramped 7-column table at 390px). A vertical day list on phone is fine.
5. **Fewer words in the chrome.** Shorter labels, less helper text, simple English.
6. **Keep the identity:** the TORQUE hexagon mark, the editorial serif greeting, one tint per desk, calm neutrals, the teal accent. Refine, don't rebrand.
7. **Dark mode stays first-class** (he checks it at night).
8. **Accessible:** 44px touch targets on phone, visible focus, WCAG AA contrast in both themes, respects reduced motion.

## 5. What must not change (functional contract)

The page talks to his real data. Please keep these so it can be wired back in without rewriting the logic:

- **Element IDs** used by the script:
  `appr apprCount apprPanel apps appsNote board briefH briefList briefState briefWho chatH chatNew chatNote chatPanel clock closeBtn composer deptH deptNote depts dlg dlgApprove dlgBack dlgClose dlgFields dlgH dlgMeta dlgNote dlgReason dlgRev dlgText goInstruct goReview hello menuBtn msg navPosts people pipe pplNote prjNote projects sendBtn sidebar stamp starters stopBtn sub team thread undated week weekList`
  If you move, merge or rename one, list it in your notes so the studio can follow.
- **Runtime:** `window.claude.use("mcp")` (Airtable list/update/create) and `window.claude.use("sample")` (chat). The page must render fully **without** them (snapshot fallback), then light up live data when they resolve.
- **Approve / Send back** stays a deliberate action inside the dialog, never a single accidental tap. It writes the post status, signs it "CHR" and adds a Change Log row.
- **Data is rendered by script** from the constants `CO`, `TABLES`, `PERSONA`, `TEAM`, `SYSTEMS`, `LIVE`, `AID` and the live Airtable records. Design the containers and the row/card templates; don't hard-code content.
- **Agent ID tags** (for example `ML-CEO`, `SS-QA`) stay visible next to department names; they are how changes are traced.
- **Technical limits** of the hosting: one self-contained HTML file; fonts from Google Fonts only; scripts only from cdnjs.cloudflare.com, cdn.jsdelivr.net/npm, unpkg.com (exact versions); no localStorage for anything important; works at 390px with no horizontal scroll.

## 6. Current design tokens

From `:root` in the source (light / dark):

| Token | Light | Dark |
|---|---|---|
| ground | #ffffff | #000000 |
| surface | #f9f9f9 | #111111 |
| text | #1f201d | #ffffff |
| muted | #5f5f5c | #b4b4b4 |
| accent | #1b6e66 | #4fb3a8 |
| pill positive | #dcfae5 / #04250e | #172a1d / #5fd08f |
| pill warning | #fffbeb / #92400e | #2a2110 / #f0b860 |
| radius | card 22, inner 14, control 999, chip 6 | same |
| type | Instrument Sans 400/500/600; Instrument Serif for the greeting | same |
| desk tints | `hsl(<hue> 42% 92%)` light, `hsl(<hue> 30% 18%)` dark | |

## 7. What to send back

Either of these works; the first is best:

1. **An updated `command-center.html`** that keeps the IDs and script, with the new layout and styles, plus a short list of what changed, or
2. **A design** (phone and desktop, light and dark) with tokens and component specs, which the Software Studio will build into the page.

Send it back in the Chairman's Claude chat. The studio checks it against section 5, tests it at 390px and 1280px in both themes, and republishes to the same link so his home-screen icon keeps working.

## 8. Privacy note

The screenshots and the source contain the Chairman's real working records (first names of a customer and colleagues, task titles). Use them only for this design work; don't place them in public examples.

## 9. Prompt to paste into Claude Design

> Refine the front-end UI of my personal command center. Attached: the current single-file HTML page, screenshots (desktop and phone, light and dark, approval dialog) and HANDOVER.md. Read HANDOVER.md first. Goal: make it phone-first and calmer: the first screen shows what needs me now (overdue, approvals, tonight), chat is one tap away, the week reads well on a phone, and dark mode stays first-class. Keep the identity (TORQUE mark, serif greeting, one tint per desk, teal accent) and keep everything in section 5 (element IDs, runtime calls, approve flow, Agent ID tags). Show me the phone version first, then desktop. Return an updated command-center.html plus a short list of what you changed.
