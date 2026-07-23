# Prompts

Ready-to-use prompts for directing an AI assistant (Claude or otherwise) through a specific engineering role on any project built from this repository.

Each prompt assumes the assistant has already read [docs/PROJECT_CONSTITUTION.md](../docs/PROJECT_CONSTITUTION.md), [docs/ENGINEERING_PRINCIPLES.md](../docs/ENGINEERING_PRINCIPLES.md), and [docs/DECISION_FRAMEWORK.md](../docs/DECISION_FRAMEWORK.md), and layers role-specific instructions on top.

| Prompt | Use When |
|---|---|
| [SOLUTION_ARCHITECT_PROMPT.md](SOLUTION_ARCHITECT_PROMPT.md) | Designing or evaluating system architecture |
| [BACKEND_ENGINEER_PROMPT.md](BACKEND_ENGINEER_PROMPT.md) | Implementing a feature end-to-end |
| [CODE_REVIEWER_PROMPT.md](CODE_REVIEWER_PROMPT.md) | Reviewing a pull request or diff |

To add a new prompt, copy the structure of an existing one (role, context to read first, operating rules, output format) rather than inventing a new format.
