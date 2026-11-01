# Agent IDs and Change Tracking

Every team member has a permanent Agent ID. Every change anyone makes is signed with an ID, so the Chairman can always see who changed what, when, and who asked for it. IDs are never reused or renamed; a retired role keeps its ID with Status *Retired* in the Agents table. Group rules in [README.md](README.md) apply.

## ID Format

`COMPANY-ROLE`, with a third part for members of a team: `ML-SOC-WRT` is The Merc Lab, social media team, content writer.

| Prefix | Company |
|---|---|
| `CHR` | The Chairman (you) |
| `SH` | Shared services |
| `ML` | The Merc Lab |
| `TK` | Takaful Practice |
| `SS` | Software Studio |
| `AD` | Asbenz Desk |

## Register

| ID | Name | Reports to |
|---|---|---|
| CHR | Chairman | — |
| SH-COS | Claude, Chief of Staff (carries out the Chairman's instructions in the Claude chat) | CHR |
| SH-REV | Group Reviewer | CHR |
| SH-IT | Head of IT (provided by George) | SS-CEO |
| ML-CEO | Kazumi, CEO, The Merc Lab | CHR |
| ML-COO | COO, Operations | ML-CEO |
| ML-CRM | CRM, Customers | ML-CEO |
| ML-CFO | CFO, Finance | ML-CEO |
| ML-TEC | Technical Knowledge | ML-CEO |
| ML-MKT | Marketing and Social lead (CMO) | ML-CEO |
| ML-SOC-WRT | Social media, Content Writer | ML-MKT |
| ML-SOC-VIS | Social media, Visual and Video Planner | ML-MKT |
| ML-SOC-COM | Social media, Community Assistant | ML-MKT |
| TK-CEO | Gabby, CEO, Takaful Practice | CHR |
| TK-CRM | CRM, Clients and Prospects | TK-CEO |
| TK-CFO | CFO, Commission and Targets | TK-CEO |
| TK-CMP | Compliance Reviewer | TK-CEO |
| TK-MKT | Marketing and Social lead (CMO) | TK-CEO |
| TK-SOC-WRT | Social media, Content Writer | TK-MKT |
| TK-SOC-VIS | Social media, Visual Planner | TK-MKT |
| TK-SOC-COM | Social media, Community Assistant | TK-MKT |
| SS-CEO | George, CEO/CTO, Software Studio | CHR |
| SS-ARC | Solution Architect | SS-CEO |
| SS-BE | Backend Engineer | SS-CEO |
| SS-QA | QA Engineer | SS-CEO |
| SS-DOC | Documentation Engineer | SS-CEO |
| SS-CR | Code Reviewer | SS-CEO |
| AD-AST | Asbenz Desk, Personal Assistant | CHR |
| AD-OSH | Asbenz Desk, OSH Tracker | AD-AST |

The Agents table in the Command Center holds the same IDs in its *Agent ID* field.

## How Changes Are Signed

| Where the change happens | How it is signed |
|---|---|
| Any Command Center record (Tasks, People, Projects, Content) | *Last changed by* = the ID, plus one row in the **Change Log** table |
| Reviewer notes on a post | Start with the reviewer's ID in brackets, e.g. `[SH-REV] PASS ...` or `[TK-CMP] BLOCK ...` |
| Approve or Send back on the Command Center page | Signed `CHR` automatically, with a Change Log row |
| A "For Claude" line from the chat | Starts with the speaker's ID, e.g. `For Claude (ML-CRM): ...`; Claude (SH-COS) saves it and logs it with that ID under *Requested by* |
| Code in any of the four systems | Branch `claude/<id>-<topic>` (lower case), and commit trailers `Agent-ID: SS-BE` and `Requested-by: CHR`; the pull request description names both |
| Scheduled runs | The role that does the work signs; *Requested by* = `Schedule` |

## The Change Log

One row per change, added and never edited or deleted: **Change** (one line), **Agent ID**, **Action** (Create, Update, Delete, Approve, Send back, Review, Code change, Check), **Where**, **Record** (record ID, commit or pull request), **Details**, **Requested by**, **Link**, and **When** (set automatically).

To see everything one team member did, filter the Change Log by Agent ID. To see the history of one record, filter by Record.
