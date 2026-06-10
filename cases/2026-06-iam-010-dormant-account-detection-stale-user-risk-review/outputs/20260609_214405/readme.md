# 2026 06 Iam 010 Dormant Account Detection Stale User Risk Review

## Overview
This lab is a detection engineering exercise focused on identifying dormant accounts with long periods of inactivity, accounts with privileged group membership, contractor or temporary accounts that require review, and accounts requiring owner validation, disabling, or privilege removal. The investigation was conducted using PowerShell within a standalone environment.

## Objective
The objective of this lab is to enhance the organization's security posture by identifying dormant accounts that pose a potential risk and taking necessary actions to secure them.

## Tools Used
- PowerShell

## Environment / Lab Setup
This investigation was conducted in a standalone environment, with no specific IP addresses, hostnames, or usernames mentioned in the evidence_map.

## Investigation Steps
1. Reviewed account list or simulated account review data.
2. Identified stale enabled accounts with long periods of inactivity.
3. Checked last logon/sign-in fields for dormant accounts.
4. Verified group membership or privilege levels for identified accounts.
5. Documented findings and recommendations.

## Key Findings
- Enabled accounts with long periods of inactivity.
- Dormant accounts with privileged group membership.
- Contractor or temporary accounts that should be reviewed.
- Accounts that require owner validation, disabling, or privilege removal.

## Security Impact
The presence of dormant accounts with extended periods of inactivity and elevated privileges can pose a significant security risk. These accounts may provide an entry point for attackers, potentially leading to unauthorized access, data breaches, and other malicious activities.

## MITRE ATT&CK Mapping
No MITRE ATT&CK techniques could be mapped based on the
