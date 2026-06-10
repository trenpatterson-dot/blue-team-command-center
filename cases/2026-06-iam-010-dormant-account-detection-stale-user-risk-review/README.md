# IAM-010 Dormant Account Detection and Stale User Risk Review

## Overview
This case reviews dormant or stale user accounts that remain enabled in a simulated enterprise identity environment. The investigation focuses on identifying inactive accounts, checking whether any accounts still have privileged access, and documenting remediation recommendations.

Dormant accounts are a common identity and access management risk because they may still provide access even when the user, contractor, or service need is no longer active.

## Objective
The objective of this case is to identify enabled accounts with stale logon activity, review privilege exposure, and recommend safe account lifecycle actions.

The investigation specifically looks for:
- Enabled accounts with long periods of inactivity
- Dormant accounts with privileged group membership
- Contractor or temporary accounts that should be reviewed
- Accounts that require owner validation, disabling, or privilege removal

## Tools Used
- PowerShell command history
- Simulated Active Directory review
- CSV evidence review
- Manual IAM access review methodology
- Blue Team Command Center case documentation

## Environment / Lab Setup
This was a simulated IAM review based on an enterprise Active Directory-style environment. The evidence was created to model a real-world account lifecycle review where analysts inspect account status, last logon activity, and group membership.

Evidence files used:
- evidence/dormant-account-review.csv
- evidence/evidence-notes.md
- evidence/commands/commands-used.txt

## Investigation Steps
1. Reviewed the simulated account inventory.
2. Checked account status for enabled users.
3. Compared last logon activity against stale-account thresholds.
4. Identified dormant accounts with no recent activity.
5. Reviewed privileged group membership for elevated access exposure.
6. Documented findings, risk, and recommended remediation actions.

## Key Findings
- The account analyst3 was enabled and had not logged in for 142 days.
- The account svc_backup was enabled, had not logged in for 211 days, and belonged to Backup Operators.
- The account temp.contractor was enabled and had not logged in for 97 days.
- The account j.smith showed recent activity and did not require action.
- The account admin.review belonged to Domain Admins but showed recent activity, making it a privileged account that should continue to be monitored.

## Security Impact
Dormant enabled accounts increase the attack surface because they may still allow access even when there is no current business need. If credentials for a dormant account are compromised, an attacker could use the account to access systems without immediately standing out as suspicious.

The highest-risk finding was svc_backup because it was both dormant and associated with privileged access. Dormant privileged accounts create greater risk because they may allow broader access, system changes, backup access, or lateral movement opportunities.

## Recommendations
- Validate account ownership for all stale accounts.
- Disable dormant accounts that no longer have a business need.
- Remove unnecessary privileged group membership.
- Review service accounts separately before disabling to avoid business disruption.
- Confirm contractor account expiration dates and disable stale contractor access.
- Implement recurring stale-account reviews on a monthly or quarterly schedule.
- Document exceptions for accounts that must remain enabled.

## Portfolio Note
This case demonstrates IAM analyst skills including account lifecycle review, stale-account detection, privilege review, risk documentation, and remediation planning.
