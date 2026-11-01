# App Reports

Every Saturday at 09:47 (Asia/Kuala_Lumpur) the owner of each system tells the Chairman how their app is doing and what should improve. Group rules in [README.md](README.md), access in [SYSTEMS.md](SYSTEMS.md) and signing in [AGENT_IDS.md](AGENT_IDS.md) apply.

## Who Reports on What

| Order | Reporter | App |
|---|---|---|
| 1 | Kazumi (ML-CEO) | Merc Lab DMS, Workshop Datahub |
| 2 | Gabby (TK-CEO) | PRUBSN Agent Portal |
| 3 | Asbenz Assistant (AD-AST) | OSH-C Portal (app status only, never Asbenz company data) |
| 4 | George (SS-CEO) | Technical summary of all four |

## Each Report

Under 80 words per app, in the reporter's voice:

1. **Status:** green (working, no open problems), amber (works, with problems or gaps), red (down, insecure or unusable)
2. **What changed this week:** commits, pull requests, health-check findings
3. **Top improvement needed now:** one, the most valuable
4. **Decision for the Chairman:** one, or "none"

Sources: George's daily health checks, the Change Log, Software tasks, each repository, and the Ideas table.

## Improvements

Each new improvement goes into the **Ideas** table with *Related project* set to the system and *Notes* starting "Proposed by <Agent ID>", plus a Change Log row. The Chairman moves an idea to Tasks when it should be built; George's team then builds it on a branch with a pull request.

Reports are kept in [reports/](reports/).
