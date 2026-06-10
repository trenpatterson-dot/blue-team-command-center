## Overview
The investigation focused on the detection engineering lab named "2026 06 Iam 010 Dormant Account Detection Stale User Risk Review". This standalone project aimed to identify dormant accounts, contractor or temporary accounts requiring review, and accounts with long periods of inactivity.

## Tools & Environment
The primary tool used was PowerShell. The investigation was carried out on a standalone platform. No specific hostnames, source IPs, target IPs, ports, protocols, scan types, rule IDs, or MITRE techniques were documented within the evidence provided.

## What Triggered The Investigation
The trigger for this investigation is not explicitly stated in the provided evidence. However, it can be inferred that the investigation was initiated as part of a routine review process to identify dormant accounts and potential security risks.

## What Was Observed
During the investigation, several findings were observed:
1. Enabled accounts with long periods of inactivity.
2. Dormant accounts with privileged group membership.
3. Contractor or temporary accounts that should be reviewed.
4. Accounts that require owner validation, disabling, or privilege removal.
5. PowerShell command history.
6. A simulated Active Directory review was conducted.
7. A CSV evidence review was performed using the file "evidence/dormant-account-review.csv".
8. Manual IAM access review methodology was followed.
9. Documentation related to this case can be found in "evidence/evidence-notes.md".
10. A list of commands used during the investigation is available in "evidence/commands/commands-used.txt".

## Evidence That Confirmed It
The findings were confirmed through a manual IAM access review methodology, simulated Active Directory review, and evidence reviews using CSV files and documentation. However, command history and screenshots are missing from the provided evidence.

## Findings
- Enabled accounts with long periods of inactivity: These accounts have not been used for a significant amount of time and pose potential security risks.
- Dormant accounts with privileged group membership: These accounts, even if not actively used, still possess elevated permissions that could be exploited.
- Contractor or temporary accounts that should be reviewed: These accounts may need to be audited due to their temporary nature and potential for misuse.
- Accounts that require owner validation, disabling, or privilege removal: These accounts pose a security risk due to their current state and should be addressed accordingly.

## Security Significance
The findings of this investigation highlight the importance of regularly reviewing and managing user accounts, especially those with elevated privileges or long periods of inactivity. Failing to do so can lead to potential security breaches and unauthorized access. The provided evidence serves as a starting point for such reviews and can be further expanded upon by incorporating command history and screenshots.