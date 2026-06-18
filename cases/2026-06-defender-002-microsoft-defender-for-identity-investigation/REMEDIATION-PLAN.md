# Remediation Plan

## Priority 1 – Enforce Strong Authentication

- Require multi‑factor authentication (MFA) for all privileged accounts and sensitive sign‑ins.
- Review and remove any legacy or weaker authentication methods.
- Ensure administrative accounts cannot bypass MFA.

## Priority 2 – Harden Service and Local Accounts

- Rotate service account passwords regularly or convert them to managed service accounts.
- Disable or remove unused local accounts, especially those with elevated rights.
- Audit Service Principal Names (SPNs) and remove any unnecessary assignments.

## Priority 3 – Monitor and Alert on Identity Threats

- Enable additional Defender for Identity alert rules for Kerberoasting, Pass‑the‑Hash, and suspicious LDAP queries.
- Implement conditional access policies that block or restrict risky sign‑ins (e.g., unfamiliar locations or devices).
- Centralize and review log data for unusual authentication patterns.

## Priority 4 – Strengthen Network Segmentation

- Limit lateral movement by segmenting network zones and applying least‑privilege access controls.
- Restrict administrative shares and remove default shares where possible.
- Use Just‑Enough‑Administration (JEA) or Just‑In‑Time (JIT) access models.
