# IAM-009 Analyst Handoff

## Case Status

Portfolio case complete with documented README, findings, timeline, command notes, screenshots, and generated output summaries.

## Scenario

This lab reviewed a controlled account lifecycle sequence: local account creation, addition to Administrators, removal from Administrators, and account deletion. Wazuh and Windows Security events were used to correlate the activity.

## Key Evidence

- Event ID 4720: account creation
- Event ID 4732: account added to Administrators
- Event ID 4733: account removed from Administrators
- Event ID 4726: account deletion
- Final correlated lifecycle view

## Analyst Determination

The simulated activity demonstrates how account creation plus privileged group membership change creates a higher-risk pattern than a single IAM event alone. The test account was controlled and later deleted as part of the lab.

## Reviewer Notes

- Treat this as a lab-based portfolio investigation, not production SOC work.
- Do not imply unauthorized access or real compromise.
- Existing `reports` files are blank and appear to be duplicate placeholders; populated summaries already exist under `outputs`.
