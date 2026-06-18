# Executive Summary

A **Microsoft Defender for Identity** alert (ID DI‑1001) flagged potentially suspicious lateral movement. The investigation reviewed host‑level evidence, including local administrators, enabled local accounts, recent logon events, and running processes. No unexpected administrators or rogue processes were identified, and the alert was determined to be a false positive in a lab setting.

While no compromise was confirmed, the case study demonstrates a structured approach to identity threat investigations: reviewing privileged users, capturing logon activity, correlating with MITRE ATT&CK, and recommending controls to mitigate future risks.

**Key Recommendations:**

- Enforce multi‑factor authentication for all privileged accounts.
- Rotate and monitor service account credentials; reduce SPN exposure.
- Enable threat‑specific alerts (Kerberoasting, Pass‑the‑Hash) in Defender for Identity.
- Apply conditional access policies to block or challenge risky sign‑ins.
- Maintain network segmentation and least‑privilege access to limit lateral movement.

*This document describes a lab‑based portfolio investigation, not a production security incident. All data and systems involved are simulated for training purposes.*