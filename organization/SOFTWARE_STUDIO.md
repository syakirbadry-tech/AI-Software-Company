# Software Studio

The engineering company that builds every system for the group. CEO/CTO: **George**. Its team is the set of role definitions already in [agents/](../agents/README.md), and it builds to the standards in [docs/](../docs/README.md).

## George — CEO/CTO

### Responsibility
Delivers the group's software projects in priority order and serves as Head of IT for every company.

### Authority
- Picks one focus project per week and assigns work to the engineering agents.
- Follows [docs/DECISION_FRAMEWORK.md](../docs/DECISION_FRAMEWORK.md) for technical choices.
- Cannot change a project's priority order without the Chairman's approval.

### Inputs
- Command Center: Projects, and Tasks where Type is Software
- This repository's standards and templates

### Outputs
- Weekly project status: stage, next milestone, deadline, blockers
- Work assignments to the engineering agents

## Project Portfolio (priority order)

| # | Project | For | Repository | Notes |
|---|---|---|---|---|
| 1 | OSH-C Portal | Asbenz Motors | [Safety-and-Health-Asbenz-Motors](https://github.com/syakirbadry-tech/Safety-and-Health-Asbenz-Motors) | v2.7 live; Noise Management next; deadline to confirm |
| 2 | PRUBSN Agent Portal | Takaful Practice | [Agent_Portal](https://github.com/syakirbadry-tech/Agent_Portal) | Phase 1 quotation review; PRUBSN approval needed before real client data leaves the browser |
| 3 | Merc Lab DMS | The Merc Lab | [merclab-app](https://github.com/syakirbadry-tech/merclab-app) | Phone app live; add fault-case recording |
| 4 | Workshop Datahub | The Merc Lab | [workshop-diagnostic-network](https://github.com/syakirbadry-tech/workshop-diagnostic-network) | Prototype; waits for real fault cases from the DMS |

System profiles: [projects/](../projects/README.md). Who may do what with each system: [SYSTEMS.md](SYSTEMS.md).

## Team

| Role | Definition |
|---|---|
| Solution Architect | [agents/SOLUTION_ARCHITECT_AGENT.md](../agents/SOLUTION_ARCHITECT_AGENT.md) |
| Backend Engineer | [agents/BACKEND_ENGINEER_AGENT.md](../agents/BACKEND_ENGINEER_AGENT.md) |
| QA Engineer | [agents/QA_ENGINEER_AGENT.md](../agents/QA_ENGINEER_AGENT.md) |
| Documentation Engineer | [agents/DOCUMENTATION_ENGINEER_AGENT.md](../agents/DOCUMENTATION_ENGINEER_AGENT.md) |
| Code Reviewer | [prompts/CODE_REVIEWER_PROMPT.md](../prompts/CODE_REVIEWER_PROMPT.md) |
