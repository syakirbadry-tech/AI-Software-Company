# Deployment Workflow

How code reaches production, once [IMPLEMENTATION_STANDARDS.md](IMPLEMENTATION_STANDARDS.md)'s task lifecycle reaches "merged to `main`."

## Pre-Deployment

- All tests pass on `main` (see [TESTING_STANDARDS.md](TESTING_STANDARDS.md)).
- Database migrations, if any, are backward-compatible per [DATABASE_STANDARDS.md](DATABASE_STANDARDS.md) and have been run against a staging/copy environment first.
- [templates/DEPLOYMENT_CHECKLIST_TEMPLATE.md](../templates/DEPLOYMENT_CHECKLIST_TEMPLATE.md) is completed for anything beyond a trivial change.

## Deployment Steps

1. Tag or version the release per [VERSIONING_STANDARDS.md](VERSIONING_STANDARDS.md).
2. Run database migrations before deploying the new application version, if the migration is additive; run them after, if the migration depends on the new code no longer using the old shape.
3. Deploy to production using the project's chosen hosting/CI mechanism.
4. Verify the deployed version against the checklist's smoke-test section.

## Rollback

- Every deployment must have a known rollback path (redeploy the previous version) before it ships — this is decided at deployment-setup time for each project, not improvised during an incident.
- A migration that can't be trivially rolled back (e.g., a destructive schema change) is only deployed after the checklist confirms there's no dependency left on the old shape.

## Monitoring

- Errors and key business events are logged so an incident can be diagnosed after the fact; what exactly is logged is defined per-project, but "we have no way to tell what happened" is not an acceptable state for a production system.
- A production incident found post-deploy is classified 🔴 Required immediately per [decision-framework/IMPROVEMENT_CLASSIFICATION.md](decision-framework/IMPROVEMENT_CLASSIFICATION.md).

## Environments

At minimum: a local/dev environment and production. A staging environment is added once a project has real users depending on production uptime — introducing one earlier is not wrong, just not required by this standard.
