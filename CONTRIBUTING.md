# Contributing

This repository is the master engineering handbook for AI Software Company projects. Contributions here affect every project built on top of it, so changes are held to a higher bar than a typical project repo.

## Before You Change Anything

1. Read [docs/PROJECT_CONSTITUTION.md](docs/PROJECT_CONSTITUTION.md), [docs/ENGINEERING_PRINCIPLES.md](docs/ENGINEERING_PRINCIPLES.md), and [docs/DECISION_FRAMEWORK.md](docs/DECISION_FRAMEWORK.md).
2. Check whether what you want already exists in `docs/`, `templates/`, `prompts/`, or `agents/` before adding something new.
3. Classify your change per [docs/decision-framework/IMPROVEMENT_CLASSIFICATION.md](docs/decision-framework/IMPROVEMENT_CLASSIFICATION.md).

## Making a Change

1. Branch from `main` (`feature/`, `fix/`, or `chore/` prefix).
2. Follow [docs/IMPLEMENTATION_STANDARDS.md](docs/IMPLEMENTATION_STANDARDS.md) for the workflow and [docs/DOCUMENTATION_STANDARDS.md](docs/DOCUMENTATION_STANDARDS.md) for doc style.
3. Update cross-references in any file that links to something you moved or renamed.
4. Run `scripts/validate_structure.sh` before opening a PR.
5. Commit using [Conventional Commits](https://www.conventionalcommits.org/) (`docs:`, `feat:`, `fix:`, `refactor:`, `chore:`, `test:`, `style:`).
6. Open a PR using the repository's PR template.

## What Belongs Here vs. in a Project Repository

- **Here:** standards, templates, prompts, agent definitions, and example project structures that apply across projects.
- **Project repositories:** actual application code, project-specific architecture docs, and project-specific ADRs.

If you're not sure which, it probably belongs in the project repository until a second project needs the same thing — see [docs/ENGINEERING_PRINCIPLES.md](docs/ENGINEERING_PRINCIPLES.md).

## Keeping This Repository Lean

Don't add a new core document, template, or agent definition speculatively. Add it when a real, repeated need shows up — see the "keeping this repository lean" section of [docs/DOCUMENTATION_STANDARDS.md](docs/DOCUMENTATION_STANDARDS.md).
