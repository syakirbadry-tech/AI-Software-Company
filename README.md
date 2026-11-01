# AI Software Company

The master engineering repository for every software project in the AI Software Company project family — currently the OSH-C Portal, Workshop Management System, CRM, Quotation Generator, and Inventory System, plus any future SaaS product. It holds the standards, templates, prompts, and agent definitions that every project starts from, so projects stay consistent without each one reinventing its own conventions.

This is a documentation and standards repository. It does not contain application code — each project lives in its own repository and references this one for how to build.

## Start Here

1. [docs/PROJECT_CONSTITUTION.md](docs/PROJECT_CONSTITUTION.md) — why this exists, mission, values (15 min)
2. [docs/ENGINEERING_PRINCIPLES.md](docs/ENGINEERING_PRINCIPLES.md) — how we build (10 min)
3. [docs/DECISION_FRAMEWORK.md](docs/DECISION_FRAMEWORK.md) — how to choose between options and classify recommendations (10 min)
4. [docs/CLAUDE_OPERATING_INSTRUCTIONS.md](docs/CLAUDE_OPERATING_INSTRUCTIONS.md) — if you're working with an AI assistant on any project, this is its operating protocol

## Repository Structure

```
AI-Software-Company/
├── docs/                  Standards and governance (read docs/README.md for the full index)
├── templates/             Copy-ready templates (ADRs, checklists, proposals, reports, ...)
├── prompts/               Ready-to-use prompts for directing an AI assistant through a role
├── agents/                Role definitions (Solution Architect, Backend Engineer, QA, Docs)
├── organization/          The AI business team: CEOs, departments, group rules
├── projects/              The group's own systems: OSH-C Portal, Agent Portal, Merc Lab DMS, Datahub
├── examples/              Reference project layouts (Portal, Workshop, CRM, Quotation, Inventory)
├── scripts/               Repository automation (structure validation, project scaffolding)
└── .github/               PR/issue templates, CODEOWNERS, CI workflow
```

Each folder has its own `README.md` explaining what belongs there.

## Starting a New Project

```
1. Read docs/PROJECT_CONSTITUTION.md and docs/ENGINEERING_PRINCIPLES.md
2. Pick the closest match in examples/ and copy its structure
   (or run scripts/new_project.sh <name> <example> [destination])
3. Copy templates/PROJECT_README_TEMPLATE.md as your new project's README
4. Reference docs/ standards as you build; don't duplicate them into the project
```

## Working on This Repository Itself

See [CONTRIBUTING.md](CONTRIBUTING.md). In short: read the constitution and decision framework first, check whether what you want already exists before adding something new, and run `scripts/validate_structure.sh` before opening a PR.

## Governance Model

This repository is governed by four layers, explained in full in [docs/GOVERNANCE_FRAMEWORK_SUMMARY.md](docs/GOVERNANCE_FRAMEWORK_SUMMARY.md):

| Layer | Answers | Document |
|---|---|---|
| Constitution | Why does this exist? | [docs/PROJECT_CONSTITUTION.md](docs/PROJECT_CONSTITUTION.md) |
| Principles | How do we build? | [docs/ENGINEERING_PRINCIPLES.md](docs/ENGINEERING_PRINCIPLES.md) |
| Decision Framework | Which option is best? | [docs/DECISION_FRAMEWORK.md](docs/DECISION_FRAMEWORK.md) |
| Operating Instructions | What's the process? | [docs/CLAUDE_OPERATING_INSTRUCTIONS.md](docs/CLAUDE_OPERATING_INSTRUCTIONS.md) |

## License

See [LICENSE](LICENSE). No license has been formally chosen yet — this defaults to all-rights-reserved until the repository owner decides otherwise.

## History

This structure was established by an audit-and-reorganize pass — see [docs/REPOSITORY_AUDIT.md](docs/REPOSITORY_AUDIT.md) for the starting state and [IMPLEMENTATION_REPORT.md](IMPLEMENTATION_REPORT.md) for everything that was done.
