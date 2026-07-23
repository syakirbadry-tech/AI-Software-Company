# Architecture Standards

System design conventions that apply across all projects. Project-specific architecture (e.g., a portal's actual component diagram) lives in that project's own `docs/ARCHITECTURE.md`, using [templates/ARCHITECTURE_TEMPLATE.md](../templates/ARCHITECTURE_TEMPLATE.md), and should reference these standards rather than repeat them.

## Layering

Every project separates, at minimum:
- **API layer** — request/response handling, validation, auth checks (see [API_STANDARDS.md](API_STANDARDS.md))
- **Business logic layer** — the actual rules, independent of transport or storage
- **Data access layer** — schema and queries (see [DATABASE_STANDARDS.md](DATABASE_STANDARDS.md))

Business logic must not import request/response objects directly, and API handlers must not embed business rules — this keeps logic testable without spinning up a server.

## Platform Services vs. Project Services

Before building something inside a single project, check whether it's genuinely project-specific or whether a second project already needs (not "might need") the same thing. If a second project needs it now, it belongs in a shared/platform location, not duplicated. If only one project needs it, build it there — don't pre-extract for a hypothetical second consumer (see [decision-framework/DECISION_HIERARCHY.md](decision-framework/DECISION_HIERARCHY.md)).

## Evolving Architecture

Any change to a stable, working component follows [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md): justify with a specific measured problem, propose a migration strategy with rollback, and get approval before starting.

## Documenting Decisions

Any non-trivial architectural decision gets an ADR using [templates/ADR_TEMPLATE.md](../templates/ADR_TEMPLATE.md), stored in the project's own `docs/adr/` folder. Don't rely on chat history or commit messages alone to explain *why* a structural decision was made.

## Known-Good Patterns

- REST APIs following [API_STANDARDS.md](API_STANDARDS.md) for anything synchronous and request/response-shaped.
- Relational storage with explicit migrations (see [DATABASE_STANDARDS.md](DATABASE_STANDARDS.md)) as the default; introduce other storage only for a measured need (e.g., full-text search, caching).
- Append-only/event-log tables for anything that must be auditable (stock movements, quote versions, pipeline stage changes) rather than mutable running totals — see the relevant [examples/](../examples/) project for concrete instances of this.
