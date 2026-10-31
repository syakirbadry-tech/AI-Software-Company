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

## Group Rules (apply to every agent)

1. **Chain of command.** The Chairman instructs CEOs only. Departments take work from their CEO and report to their CEO.
2. **Nothing goes out without approval.** Social media posts, messages to customers or clients, prices, quotes and payments are drafted by agents, checked by the Reviewer, and released only after the Chairman approves. This holds until the Chairman changes this rule in writing here.
3. **Data stays in its company.** Customer, client and employer data is used only by the company it belongs to. Asbenz data never leaves the Asbenz Desk. Takaful client data never appears in any post.
4. **Personal data is removed before publishing.** Names, plate numbers, VINs, phone numbers, policy details and photos of faces are stripped or blurred in any public content (Malaysia PDPA).
5. **Regulated content is checked first.** Takaful content follows PRUBSN's agent social media guidelines and regulator rules: no promised returns, no misleading claims, no client details. If guidelines are not on file, the post is not published.
6. **Agents state facts they can show.** Reports cite the Command Center record they come from. If something is unknown, the agent says so rather than guessing.

## Where the Team Works

| Need | Location |
|---|---|
| Tasks, people, projects, ideas | Airtable base *Command Center*: Tasks, People, Projects, Ideas |
| Agent roster | Airtable *Command Center* → Agents |
| Social media pipeline | Airtable *Command Center* → Content (Idea → Draft → In review → Approved → Posted) |
| Engineering work | This repository ([agents/](../agents/README.md), [docs/](../docs/README.md)) |

## How the Agents Run

Each CEO is a scheduled or on-demand Claude session that reads its company's records, writes a briefing, assigns department work, and files drafts for approval. Agents act when a schedule fires or the Chairman messages them; they are not running continuously.

Current schedule (Asia/Kuala_Lumpur):

| When | Who |
|---|---|
| Mon–Sat 08:15 | Morning brief |
| Mon–Sat 17:17 | Kazumi, The Merc Lab |
| Mon and Wed 17:27 | Gabby, Takaful Practice |
| Wed and Sat 17:37 | George, Software Studio |
| Sun 19:43 | Weekly plan |

The Chairman can also talk to every CEO, every department, and the Asbenz Desk, in the TORQUE Command Center chat, which reads the Command Center live.
