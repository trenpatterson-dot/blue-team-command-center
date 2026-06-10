## Overview

The investigation focuses on the detection engineering lab, "2026 06 Iam 010 Dormant Account Detection Stale User Risk Review," which is a standalone project. The goal of this exercise is to identify dormant accounts with long periods of inactivity, privileged group membership, and potential contractor or temporary accounts that require review.

## Tools & Environment

The tools used in this investigation include PowerShell. The environment for this lab is not specified in the provided evidence_map.

## What Triggered The Investigation

The trigger for this investigation was the need to detect and review dormant accounts with potential security risks, such as long periods of inactivity, privileged group membership, and contractor or temporary accounts.

## What Was Observed

During the investigation, several findings were observed:
1. Enabled accounts with long periods of inactivity.
2. Dormant accounts with privileged group membership.
3. Contractor or temporary accounts that should be reviewed.
4. Accounts that require owner validation, disabling, or privilege removal.
5. PowerShell command history.
6. A simulated Active Directory review.

## Evidence That Confirmed It

The findings were confirmed through various pieces of evidence:
1. CSV evidence review (evidence/dormant-account-review.csv)
2. Evidence notes (evidence/evidence-notes.md)
3. Commands used during the investigation (evidence/commands/commands-used.txt)
4. Documentation of the Blue Team Command Center case (Blue Team Command Center case documentation)

## Findings

The findings from this investigation are as follows:
1. Enabled accounts with long periods of inactivity: These accounts have not been used for an extended period, potentially posing a security risk.
2. Dormant accounts with privileged group membership: Accounts with access to sensitive resources that have not been used for a significant amount of time may pose a security risk.
3. Contractor or temporary accounts that should be reviewed: These accounts might need further investigation due to their temporary nature and potential access to sensitive resources.
4. Accounts that require owner validation, disabling, or privilege removal: These accounts have been identified as potentially posing a security risk and may require action from the account owners or administrators.
5. PowerShell command history: The PowerShell command history provides insights into the actions taken during the investigation.
6. Simulated Active Directory review: The simulated Active Directory review was conducted to identify dormant accounts with potential security risks.

## Security Significance

Identifying and addressing dormant accounts with long periods of inactivity, privileged group membership, and contractor or temporary accounts is crucial for maintaining the security posture of an organization. These accounts can potentially be exploited by malicious actors if left unattended. By reviewing and remediating these accounts, organizations can reduce their attack surface and improve their overall security.