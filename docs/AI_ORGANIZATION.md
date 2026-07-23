# AI Organization

How AI assistants are structured and used across projects built from this repository.

## Current Model (Now)

A single AI assistant (Claude Code or equivalent) is used per session, adopting one role at a time from [agents/](../agents/) via the matching prompt in [prompts/](../prompts/). There is no persistent multi-agent orchestration yet — a human directs which role is active and reviews its output.

Roles currently defined:
- [Solution Architect](../agents/SOLUTION_ARCHITECT_AGENT.md)
- [Backend Engineer](../agents/BACKEND_ENGINEER_AGENT.md)
- [QA Engineer](../agents/QA_ENGINEER_AGENT.md)
- [Documentation Engineer](../agents/DOCUMENTATION_ENGINEER_AGENT.md)

## Operating Rules for Any AI Session

All roles operate under [CLAUDE_OPERATING_INSTRUCTIONS.md](CLAUDE_OPERATING_INSTRUCTIONS.md): read the constitution and relevant standards first, explain reasoning before implementing, classify every recommendation, and wait for approval on significant or architecture-affecting changes.

## Logging and Traceability

Until dedicated AI-operations tooling exists (see Future Model below), traceability comes from:
- Git history and commit messages (Conventional Commits)
- ADRs for architectural decisions (see [templates/ADR_TEMPLATE.md](../templates/ADR_TEMPLATE.md))
- Session summaries at the end of significant work (per CLAUDE_OPERATING_INSTRUCTIONS.md Part 4)

## Future Model (Enhancement, Not Current Need)

Additional specialized agent roles, automated multi-agent orchestration, or an "AI Operations Center" dashboard are all 🔵 Future Enhancement per [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md) — they depend on business decisions not yet made (e.g., team size, number of concurrent projects) and should not be built ahead of that need.

## Model Selection

Use the most capable available model for architecture, security, and database-schema work, since mistakes there are expensive to unwind. Faster/cheaper models are acceptable for mechanical tasks (formatting, boilerplate, straightforward CRUD) once a pattern is established.
