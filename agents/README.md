# Agents

Role definitions for specialized AI agents that can be assigned to work on projects built from this repository. Each definition describes one role's responsibilities, authority, inputs, outputs, and the standards it must follow — it is a specification, not an implementation.

| Agent | Responsibility |
|---|---|
| [SOLUTION_ARCHITECT_AGENT.md](SOLUTION_ARCHITECT_AGENT.md) | System design, ADRs, architecture review |
| [BACKEND_ENGINEER_AGENT.md](BACKEND_ENGINEER_AGENT.md) | Feature implementation, API and database work |
| [QA_ENGINEER_AGENT.md](QA_ENGINEER_AGENT.md) | Test strategy, coverage, release verification |
| [DOCUMENTATION_ENGINEER_AGENT.md](DOCUMENTATION_ENGINEER_AGENT.md) | Keeping docs/, templates/, and READMEs accurate |

## Relationship to `prompts/`

`agents/` defines *who* (a persistent role, its authority, and its boundaries). `prompts/` defines *how to invoke that role for one task* (a prompt you paste into a session). An agent definition can back multiple prompts; a prompt should not contradict its agent's definition.
