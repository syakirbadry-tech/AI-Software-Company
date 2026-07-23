# Implementation Standards

The lifecycle a feature or fix goes through, from request to merged code. This is the "how we work" companion to [CODING_STANDARDS.md](CODING_STANDARDS.md), which covers "how code looks."

## Task Lifecycle

1. **Request** — a feature, bug, or improvement is described (use [templates/FEATURE_PROPOSAL_TEMPLATE.md](../templates/FEATURE_PROPOSAL_TEMPLATE.md) or [templates/BUG_REPORT_TEMPLATE.md](../templates/BUG_REPORT_TEMPLATE.md)).
2. **Analysis** — classify it per [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md) and check it against [ARCHITECTURE_STANDARDS.md](ARCHITECTURE_STANDARDS.md).
3. **Plan** — for anything non-trivial, write a short implementation plan using [templates/IMPLEMENTATION_PLAN_TEMPLATE.md](../templates/IMPLEMENTATION_PLAN_TEMPLATE.md) and get it approved per [CLAUDE_OPERATING_INSTRUCTIONS.md](CLAUDE_OPERATING_INSTRUCTIONS.md).
4. **Implement** — on a feature branch, following [CODING_STANDARDS.md](CODING_STANDARDS.md), with tests per [TESTING_STANDARDS.md](TESTING_STANDARDS.md).
5. **Review** — a pull request using the repository's PR template; at least one review pass (human or AI via [prompts/CODE_REVIEWER_PROMPT.md](../prompts/CODE_REVIEWER_PROMPT.md)) before merge.
6. **Merge** — squash or merge per the project's own convention, with a Conventional Commit message.
7. **Deploy** — per [DEPLOYMENT_WORKFLOW.md](DEPLOYMENT_WORKFLOW.md).

## Git Workflow

- `main` is always deployable.
- Work happens on short-lived feature branches (`feature/`, `fix/`, `chore/` prefixes) branched from `main`.
- Commit messages follow [Conventional Commits](https://www.conventionalcommits.org/) (`feat:`, `fix:`, `docs:`, `refactor:`, `chore:`, `test:`, `style:`).
- Rebase or merge from `main` before opening a PR, to catch conflicts early — don't let a branch drift for weeks.

## Definition of Done

A task is done when: code is merged to `main`, tests pass, documentation affected by the change is updated, and — if the change was classified Required or Recommended — the classification is closed out, not left open indefinitely.

## Scope Discipline

Implement what was asked. A bug fix doesn't bundle a refactor; a small feature doesn't bundle speculative extensibility. Extra work discovered along the way is logged as a new, separately classified item, not silently folded into the current change.
