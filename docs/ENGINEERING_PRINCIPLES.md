# Engineering Principles

How we build, once the constitution has established why.

## How We Build

1. Build reusable platform services before project-specific solutions — but only once a second project actually needs the same thing.
2. Prefer additive, incremental changes over rewrites (see [decision-framework/ARCHITECTURE_EVOLUTION_RULE.md](decision-framework/ARCHITECTURE_EVOLUTION_RULE.md)).
3. Configuration over hardcoding for anything that legitimately varies per environment or project.
4. Modular design: a component should be understandable and testable without loading the entire system into your head.
5. Human approval before production-impacting changes.
6. Event-driven patterns where they reduce coupling — not by default, and not until there's an actual asynchronous or multi-consumer need.

## Trade-off Philosophy

When in doubt, choose simplicity over abstraction. Specifically:

| Trade-off | Default |
|---|---|
| Simple solution vs. highly abstract solution | Simple |
| Current needs vs. hypothetical future needs | Current |
| Quick implementation vs. maximal design | Whatever fits the scope of the actual task |

This is operationalized as the Decision Hierarchy in [DECISION_FRAMEWORK.md](DECISION_FRAMEWORK.md) — consult it whenever more than one approach is viable.

## What "Good" Looks Like

- A new engineer (or a fresh AI session) can read a project's `README.md` and the relevant `docs/` standards and understand how to contribute without asking someone to explain "how we actually do things here."
- The same kind of problem is solved the same way across projects (same auth pattern, same API error shape, same migration approach) unless there's a documented, approved reason it differs.
- Nobody says "I didn't know we had a standard for that" — if a pattern is expected, it's written down in `docs/`.

## Related

- [DECISION_FRAMEWORK.md](DECISION_FRAMEWORK.md) — how to choose between options
- [ARCHITECTURE_STANDARDS.md](ARCHITECTURE_STANDARDS.md) — system design conventions
- [CLAUDE_OPERATING_INSTRUCTIONS.md](CLAUDE_OPERATING_INSTRUCTIONS.md) — how AI assistants apply these principles day-to-day
