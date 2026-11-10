# Organization

The AI team that runs the owner's businesses. The owner is the **Chairman** and speaks only to the CEOs; each CEO directs its own departments and reports back. This folder defines who each agent is, what it may do on its own, and what needs the Chairman's approval. Like [agents/](../agents/README.md), these are specifications, not implementations.

## Group Structure

```
Chairman (owner)
├── Kazumi — CEO, The Merc Lab (Mercedes repair workshop)
├── Gabby  — CEO, Takaful Practice (PRUBSN)
├── George — CEO/CTO, Software Studio (this repository's engineering team)
├── Asbenz Desk — assistant for the owner's job at Asbenz Motors (employer, no CEO)
└── Shared services — Group Reviewer, Head of IT (provided by George)
```

| Company | Definition | CEO |
|---|---|---|
| The Merc Lab | [THE_MERC_LAB.md](THE_MERC_LAB.md) · operating instructions: [KAZUMI.md](KAZUMI.md) | Kazumi (live) |
| Takaful Practice | [TAKAFUL_PRACTICE.md](TAKAFUL_PRACTICE.md) · operating instructions: [GABBY.md](GABBY.md) | Gabby (live) |
| Software Studio | [SOFTWARE_STUDIO.md](SOFTWARE_STUDIO.md) · operating instructions: [GEORGE.md](GEORGE.md) | George (live) |
| Asbenz Desk | [ASBENZ_DESK.md](ASBENZ_DESK.md) | — (assistant) |
| Shared services | [SHARED_SERVICES.md](SHARED_SERVICES.md) | — |
| Social media teams | [SOCIAL_MEDIA.md](SOCIAL_MEDIA.md) | Kazumi and Gabby |
| How each department works | [TEAM_PLAYBOOKS.md](TEAM_PLAYBOOKS.md) | — |
| Systems access (which team uses which system) | [SYSTEMS.md](SYSTEMS.md) | — |
| System monitoring (George's team) | [MONITORING.md](MONITORING.md) | George |
| Agent IDs and change tracking | [AGENT_IDS.md](AGENT_IDS.md) | — |
| Weekly app reports | [APP_REPORTS.md](APP_REPORTS.md) | All CEOs |

## Group Rules (apply to every agent)

1. **Chain of command.** The Chairman instructs CEOs only. Departments take work from their CEO and report to their CEO.
2. **Nothing goes out without approval.** Social media posts, messages to customers or clients, prices, quotes and payments are drafted by agents, checked by the Reviewer, and released only after the Chairman approves. This holds until the Chairman changes this rule in writing here.
3. **Data stays in its company.** Customer, client and employer data is used only by the company it belongs to. Asbenz data never leaves the Asbenz Desk. Takaful client data never appears in any post.
4. **Personal data is removed before publishing.** Names, plate numbers, VINs, phone numbers, policy details and photos of faces are stripped or blurred in any public content (Malaysia PDPA).
5. **Regulated content is checked first.** Takaful content follows PRUBSN's agent social media guidelines and regulator rules: no promised returns, no misleading claims, no client details. If guidelines are not on file, the post is not published.
6. **Agents state facts they can show.** Reports cite the Command Center record they come from. If something is unknown, the agent says so rather than guessing.
7. **Every change is signed.** Each team member has a permanent Agent ID ([AGENT_IDS.md](AGENT_IDS.md)). Every change to a record, post or line of code carries the ID of whoever made it and who asked for it, and is logged in the Change Log.

## Where the Team Works

| Need | Location |
|---|---|
| Tasks, people, projects, ideas | Airtable base *Command Center*: Tasks, People, Projects, Ideas |
| Agent roster and IDs | Airtable *Command Center* → Agents ([AGENT_IDS.md](AGENT_IDS.md)) |
| Who changed what | Airtable *Command Center* → Change Log |
| Social media pipeline | Airtable *Command Center* → Content (Idea → Draft → In review → Approved → Posted) |
| Engineering work | This repository ([agents/](../agents/README.md), [docs/](../docs/README.md), [projects/](../projects/README.md)) |
| Meeting prep and notes | [meetings/](meetings/) |

## How the Agents Run

Each CEO is a scheduled or on-demand Claude session that reads its company's records, writes a briefing, assigns department work, and files drafts for approval. Agents act when a schedule fires or the Chairman messages them; they are not running continuously.

Current schedule (Asia/Kuala_Lumpur):

| When | Who |
|---|---|
| Mon–Sat 08:15 | Morning brief |
| Mon–Sat 17:17 | Kazumi, The Merc Lab |
| Mon and Wed 17:27 | Gabby, Takaful Practice |
| Mon–Sat 07:53 | George's team, system health check |
| Wed and Sat 17:37 | George, Software Studio |
| Sat 09:47 | Weekly app report from every CEO |
| Sun 19:43 | Weekly plan |

The Chairman can also talk to every CEO, every department, and the Asbenz Desk, in the TORQUE Command Center chat, which reads the Command Center live.

## Operating Model (from 10 Nov 2026)

CEOs run their teams: the Chairman gives an order, the team decides and does the work, and the Chairman only confirms the final outward step. See [OPERATING_MODEL.md](OPERATING_MODEL.md). Orders live in the Airtable **Orders** table; the team runner works them hourly, 07:23–23:23 Kuala Lumpur.
