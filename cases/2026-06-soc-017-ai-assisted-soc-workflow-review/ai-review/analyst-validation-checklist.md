# Analyst Validation Checklist

## AI Output Validation

Claim:
Failed sign-ins occurred from 203.0.113.88.
Validation:
Supported by correlated-events.csv.

Claim:
MFA was not satisfied during failed attempts.
Validation:
Supported by correlated-events.csv.

Claim:
PowerShell executed on WIN-WS-022.
Validation:
Supported by correlated-events.csv.

Claim:
PowerShell used ExecutionPolicy Bypass.
Validation:
Supported by correlated-events.csv.

Claim:
A web request to 203.0.113.77 occurred.
Validation:
Supported by correlated-events.csv.

Claim:
The user account was compromised.
Validation:
Not confirmed. Do not state as fact.

Claim:
Data loss occurred.
Validation:
Not supported by evidence. Do not state as fact.

Claim:
The event should be escalated.
Validation:
Supported as an analyst recommendation based on suspicious identity and endpoint activity.

## Human Approval Boundary
AI provided drafting assistance only. The analyst reviewed the evidence, removed unsupported conclusions, and made the final determination.
