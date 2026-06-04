# Analyst Summary — IAM-008

## What I did
Prepared a Wazuh investigation case for privileged Windows group membership changes.

## Why it matters
Administrator group changes are high-risk because they can grant elevated access to a user. Unauthorized changes may indicate privilege escalation or account misuse.

## What I am looking for
- Event ID 4732
- Event ID 4733
- Group name
- Added or removed member
- Account that performed the change
- Endpoint/agent name
- Time of change
