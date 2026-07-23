# Database Standards

## Schema Design

- Every table has a primary key; prefer surrogate keys (UUID or auto-increment) over natural keys for anything referenced by other tables.
- Foreign keys are enforced at the database level, not just in application code.
- Nullable columns must have a documented reason a value can be absent — "just in case" is not a reason.
- Money is stored as an integer (smallest currency unit) or a fixed-precision decimal type — never a floating-point type.
- Timestamps are stored in UTC; convert to local time only at display time.

## Auditability

Data that represents a business event that's already happened (a sent quote, a stock movement, a completed booking) is modeled as an **append-only record**, not a mutable field that gets overwritten. Compute current state (current stock, current quote version) as a derived value/view. This is non-negotiable for anything used in a dispute, audit, or compliance context.

## Migrations

- Every schema change is a versioned migration file, checked into the project repository, never a manual change against a live database.
- Migrations are backward-compatible with the currently deployed application version where feasible (add-then-backfill-then-remove, not add-and-remove-in-one-step), so deploys and migrations can run independently.
- Destructive migrations (dropping a column/table) require a prior migration that stops using it, deployed and verified first.

## Performance

- Add an index when a query pattern is known to need it (a foreign key that's frequently filtered/joined on, a column used in `WHERE`/`ORDER BY` on a large table) — not preemptively on every column.
- Don't optimize for scale you don't have. If a query is slow, measure it, then index or restructure — per the Decision Hierarchy in [decision-framework/DECISION_HIERARCHY.md](decision-framework/DECISION_HIERARCHY.md), performance work happens after a measured problem, not speculatively.

## Data Retention & Sensitive Data

- Personal or customer data is retained only as long as the relevant project's stated retention need requires, and access to it follows [SECURITY_STANDARDS.md](SECURITY_STANDARDS.md).
- Backups are the responsibility of the hosting/infrastructure setup for each project; this document does not prescribe a specific backup tool, only that a backup and restore procedure must exist and be documented in the project's own `docs/ARCHITECTURE.md` before it handles real user data.

## Using the Template

Document a new schema with [templates/DATABASE_TEMPLATE.md](../templates/DATABASE_TEMPLATE.md) before implementing it, not after.
