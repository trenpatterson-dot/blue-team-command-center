# SOC-022 ELI10 Summary

Imagine a company has many rooms in a large office. Some people have master keys even though they only need access to one room. A few old keys still work, some doors may be open to the public, and the security cameras do not cover every hallway.

This simulated Microsoft Azure review found the cloud version of those problems:

- Too many people had powerful Owner or Contributor permissions.
- Old user and application access had not been reviewed.
- Privileged access stayed active all the time.
- A storage account and network rule may allow broader access than intended.
- Some diagnostic logs and alerts were missing.
- No clear schedule existed for reviewing access.
- Defender for Cloud-style recommendations had not all been addressed.

The analyst recommended least privilege, narrower Azure RBAC assignments, stronger privileged access controls, Conditional Access and MFA review, better audit logs, and assigned owners for remediation.

This is a lab case using simulated evidence. It does not claim access to a real Azure tenant or authority to make production changes.
