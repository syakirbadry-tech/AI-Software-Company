# Documentation Standards

## What Gets Documented

- Every project has a `README.md` using [templates/PROJECT_README_TEMPLATE.md](../templates/PROJECT_README_TEMPLATE.md).
- Every non-trivial architectural decision gets an ADR using [templates/ADR_TEMPLATE.md](../templates/ADR_TEMPLATE.md).
- Every major folder in this repository (`docs/`, `templates/`, `prompts/`, `agents/`, `examples/`, `scripts/`) has its own `README.md` explaining what belongs there.
- Code is documented through naming and structure first; comments only where they explain something the code itself can't (see [CODING_STANDARDS.md](CODING_STANDARDS.md)).

## Keeping This Repository Lean

This repository's own documentation set is intentionally bounded. Before adding a new top-level `docs/` file, check whether the content belongs in an existing document instead. If a document exceeds roughly 2,000 words, split it by concern rather than letting it keep growing. If the active `docs/` count grows past ~20, that's a signal to consolidate, not a hard stop — the goal is a set that stays genuinely readable, not an arbitrary ceiling.

## Style

- Write for someone who has not seen this conversation or project before: state what exists, not "we just changed X to Y."
- Prefer tables and short lists over long prose paragraphs for reference material (standards, conventions); prose is fine for explaining *why* something exists (constitution, principles).
- Cross-reference with relative Markdown links rather than restating another document's content.
- Keep examples concrete and specific to this organization's actual projects (OSH-C Portal, Workshop System, CRM, Quotation Generator, Inventory System) rather than generic placeholders, wherever a concrete example is clearer.

## Updating Documentation

Documentation is updated in the same change that makes it inaccurate — not filed as a follow-up task. A stale doc is treated the same as a bug: fix it or explicitly archive it (see how `docs/archive/` is used in this repository) with a note explaining why it's superseded.

## Ownership

Cross-cutting documentation consistency is the responsibility of [agents/DOCUMENTATION_ENGINEER_AGENT.md](../agents/DOCUMENTATION_ENGINEER_AGENT.md).
