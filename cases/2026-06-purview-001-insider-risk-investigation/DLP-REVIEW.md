# DLP Review

## Review Objective

Assess whether the simulated insider-risk alert supports a data-loss concern and identify DLP controls that should be reviewed.

## Evidence Considered

- Simulated Purview insider-risk alert
- Recently modified file context
- Active user context
- Running process review
- Risk register for sensitive data transfer and personal cloud storage

## Findings

- The alert scenario involved possible sensitive file transfer to personal cloud storage.
- Available local review did not identify confirmed sensitive corporate information.
- Running process review did not identify obvious unauthorized transfer tooling.
- The evidence supports low-risk closure in the simulation, not a confirmed data-loss incident.

## DLP Recommendations

- Validate sensitivity labels and DLP policy coverage for business-critical data.
- Review personal cloud storage upload controls.
- Ensure alert evidence includes file classification, destination, user, timestamp, and policy match.
- Require owner approval before user action, discipline, or account restriction.

## Evidence Boundary

This is simulated portfolio analysis. No real Purview tenant, customer data, or production DLP policy was accessed.
