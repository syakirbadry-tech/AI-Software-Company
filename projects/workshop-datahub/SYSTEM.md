# System: Workshop Datahub (Workshop Diagnostic Network)

**For:** The Merc Lab · **Used by:** Kazumi's Technical team · **Built by:** Software Studio (George)

| | |
|---|---|
| Repository | [syakirbadry-tech/workshop-diagnostic-network](https://github.com/syakirbadry-tech/workshop-diagnostic-network) (public) |
| Stack | Python 3 standard library (`app.py`), SQLite schema (`schema.sql`), static front end |
| Stage | Working prototype |

## What it does today

A subscription platform for independent Mercedes-Benz workshops: a shared diagnostic tips library, a private case log per workshop (VIN required), promotion of resolved cases into the shared library with a pending-review step, Free / Basic / Premium tiers, and an admin area to activate workshops and answer support tickets.

## Next steps

1. Add a `.gitignore` (the repository is public; running the app writes `ADMIN_CREDENTIALS.txt` and a SQLite file into the folder).
2. Feed it real fault cases from the Merc Lab DMS once fault-case recording exists there.
3. Before any outside workshop signs up: hosting, payments, terms of use and PDPA review (VINs and case notes).
4. Pricing for the tiers is the Chairman's decision.

## Technical notes for the studio

- Runs with `python3 app.py`; the port comes from `PORT` (default 5000). On first run it writes admin credentials to `ADMIN_CREDENTIALS.txt`: never commit that file.
- No automated tests yet; the daily check compiles `app.py` and smoke-tests `/`, `/login` and `/signup` locally.
- Health checks: [organization/MONITORING.md](../../organization/MONITORING.md).

## Rules for the team

- No customer names or plates in shared tips; VINs stay in the private case log.
- Nothing is offered to other workshops until the Chairman approves pricing and terms.
