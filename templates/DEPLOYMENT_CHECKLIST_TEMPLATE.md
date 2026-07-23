# Deployment Checklist: {Version}

Reference: [docs/DEPLOYMENT_WORKFLOW.md](../docs/DEPLOYMENT_WORKFLOW.md)

## Pre-Deployment

- [ ] [Release Checklist](RELEASE_CHECKLIST_TEMPLATE.md) approved
- [ ] Migrations reviewed for backward compatibility
- [ ] Rollback plan confirmed

## Deployment

- [ ] Version tagged
- [ ] Migrations run (if additive-first)
- [ ] Application deployed
- [ ] Migrations run (if dependent on new code, run after)

## Post-Deployment

- [ ] Smoke test: {critical path(s) verified in production}
- [ ] Monitoring/error tracking shows no new errors
- [ ] Rollback executed if smoke test fails, per rollback plan

## Sign-off

**Deployed by:** {who}
**Date/time:** {when}
