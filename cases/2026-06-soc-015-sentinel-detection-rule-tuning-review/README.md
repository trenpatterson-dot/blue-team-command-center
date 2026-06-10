# SOC-015 Sentinel Detection Rule Tuning Review

## Overview
This case documents a simulated Microsoft Sentinel detection rule tuning review. The scenario focuses on a failed sign-in detection rule that is generating noisy alerts and needs to be adjusted to improve alert quality.

The purpose of this case is to demonstrate SOC analyst and detection engineering skills: reviewing alert noise, identifying false positives, comparing noisy and suspicious activity, adjusting KQL-style thresholds, and documenting tuning recommendations.

## Objective
The objective is to review a noisy Sentinel-style detection rule, determine why it is creating low-value alerts, and recommend a tuned version of the rule that better identifies suspicious authentication activity.

This case specifically reviews:
- Failed sign-in alert volume
- False positive patterns
- Suspicious source IP behavior
- Threshold tuning
- KQL-style detection logic
- Analyst recommendation notes
- MITRE ATT&CK mapping

## Tools Used
- Microsoft Sentinel concepts
- KQL-style detection logic
- Simulated sign-in alert evidence
- CSV evidence review
- False positive review methodology
- MITRE ATT&CK mapping
- Blue Team Command Center documentation workflow

## Environment / Lab Setup
This was a simulated Microsoft Sentinel detection tuning case. No real Microsoft Sentinel workspace was accessed. The evidence was created to model the type of alert and sign-in activity a SOC analyst may review when tuning a noisy authentication detection.

Evidence reviewed:
- evidence/detection-rule-summary.md
- evidence/signin-alert-review.csv
- evidence/command-history.md
- queries/original-failed-signin-rule.kql
- queries/tuned-failed-signin-rule.kql
- notes/investigation-notes.md

## Investigation Steps
1. Reviewed the original Sentinel-style failed sign-in detection rule.
2. Reviewed alert evidence to identify noisy patterns.
3. Compared low-value failed sign-in activity against suspicious patterns.
4. Identified source IP and account patterns that should increase alert confidence.
5. Recommended a tuned KQL-style rule with better thresholding.
6. Documented false-positive reasoning.
7. Mapped the detection scenario to MITRE ATT&CK.
8. Documented security impact and recommendations.

## Key Findings
- The original rule alerted on a low threshold of failed sign-ins.
- Several alerts were created from expected user behavior or isolated failures.
- A suspicious source IP generated repeated failed sign-ins across multiple accounts.
- The original rule lacked enough grouping logic to separate noise from higher-risk behavior.
- A tuned rule using thresholds by IP address and account count would reduce noise and improve signal quality.

## Security Impact
Noisy detection rules can cause alert fatigue and make real attacks easier to miss. If analysts receive too many low-value alerts, suspicious activity such as password spraying or credential stuffing may blend into normal noise.

Tuning detection logic improves SOC efficiency by reducing false positives while keeping meaningful suspicious activity visible.

## MITRE ATT&CK Mapping
- T1110 - Brute Force
- T1110.003 - Password Spraying
- T1110.004 - Credential Stuffing
- T1078 - Valid Accounts

## Recommendations
- Increase the failed sign-in threshold to reduce low-value alerts.
- Group failed sign-ins by source IP and affected account count.
- Prioritize alerts where one IP targets multiple users.
- Exclude known expected source locations where appropriate.
- Keep a separate watchlist for known approved IPs.
- Review detection performance after tuning.
- Document false-positive patterns and tuning rationale.
- Escalate alerts where failed sign-ins are followed by successful authentication.

## Portfolio Note
This case demonstrates SOC analyst skills including Sentinel-style detection tuning, KQL review, false-positive analysis, alert quality improvement, MITRE ATT&CK mapping, and detection documentation.
