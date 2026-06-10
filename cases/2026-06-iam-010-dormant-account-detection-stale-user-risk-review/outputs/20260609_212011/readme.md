# IAM-010 Dormant Account Detection and Stale User Risk Review

## Overview

This case documents a simulated IAM access review focused on identifying dormant or stale user accounts that remain enabled. The investigation reviews account activity, last logon age, account status, and privileged group membership to determine which accounts require validation, disabling, or privilege removal.

Dormant enabled accounts are a security risk because they may still provide access even when the user, contractor, or service need is no longer active.

## Objective

The objective of this case is to identify enabled accounts with stale logon activity, determine whether any dormant accounts still have elevated access, and document recommended remediation actions.

This case demonstrates IAM analyst skills including account lifecycle review, stale-account detection, privilege review, risk documentation, and remediation planning.

## Tools Used

* PowerShell command history
* Simulated Active Directory review
* CSV evidence review
* Manual IAM access review methodology
* Blue Team Command Center documentation workflow

## Environment / Lab Setup

This was a simulated enterprise Active Directory-style IAM review. The evidence was created to model a real account lifecycle review where an analyst reviews account status, last logon activity, and group membership.

Evidence reviewed:

* `evidence/dormant-account-review.csv`
* `evidence/evidence-notes.md`
* `evidence/commands/commands-used.txt`

## Investigation Steps

1. Reviewed the simulated account inventory.
2. Identified enabled accounts with stale or inactive logon activity.
3. Checked whether dormant accounts had privileged group membership.
4. Compared account activity against stale-account risk indicators.
5. Documented findings, security impact, and remediation recommendations.

## Key Findings

* `analyst3` was enabled and had not logged in for 142 days.
* `svc_backup` was enabled, had not logged in for 211 days, and belonged to `Backup Operators`.
* `temp.contractor` was enabled and had not logged in for 97 days.
* `j.smith` showed recent activity and did not require action.
* `admin.review` belonged to `Domain Admins` but showed recent activity, making it an active privileged account that should continue to be monitored.

## Security Impact

Dormant enabled accounts increase attack surface because they may still allow access even when there is no current business need. If credentials for a dormant account are compromised, an attacker could use the account to access systems without immediately standing out as suspicious.

The highest-risk finding was `svc_backup` because it was both dormant and associated with privileged access. Dormant privileged accounts create greater risk because they may allow broader access to systems, backups, or administrative functions.

## MITRE ATT&CK Mapping

This case is primarily an IAM hygiene and access review exercise, not a direct malware or intrusion investigation. The most relevant ATT&CK context is:

* `T1087.002 — Account Discovery: Domain Account`
* `T1078 — Valid Accounts`

These techniques are relevant because stale or dormant accounts can support adversary account discovery, credential abuse, persistence, and unauthorized access if the account credentials are compromised.

## Recommendations

* Validate account ownership for all stale accounts.
* Disable dormant accounts that no longer have a business need.
* Remove unnecessary privileged group membership.
* Review service accounts separately before disabling to avoid business disruption.
* Confirm contractor account expiration dates and disable stale contractor access.
* Implement monthly or quarterly stale-account reviews.
* Document exceptions for accounts that must remain enabled.
