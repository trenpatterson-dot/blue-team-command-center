# HANDOFF - SOC-015 Sentinel Detection Rule Tuning Review

## Case
2026-06-soc-015-sentinel-detection-rule-tuning-review

## Status
Evidence collection started.

## Scenario
A simulated Microsoft Sentinel failed sign-in detection rule is producing too many low-value alerts. The analyst reviews alert evidence, identifies false-positive patterns, and recommends a tuned KQL-style rule.

## Analyst Goal
Review the noisy rule, compare noisy and suspicious activity, tune the threshold logic, map the detection scenario to MITRE ATT&CK, and document recommendations.

## Evidence To Review
- Detection rule summary
- Simulated sign-in alert review CSV
- Original KQL-style rule
- Tuned KQL-style rule
- Command history
- Investigation notes
- Screenshot evidence

## Supervisor Instruction
Generate documentation only from the provided evidence. Treat this as a simulated Sentinel detection tuning case. Do not claim access to a real Sentinel workspace or production identity system.
