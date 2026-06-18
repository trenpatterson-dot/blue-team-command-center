# Attack Path Review

The following scenarios illustrate how an adversary could reach the alert condition observed in this case.

## Path 1: Compromised Privileged Account

1. Attacker harvests credentials for a domain administrator.
2. Uses RDP/SMB to connect to multiple servers in quick succession.
3. Performs reconnaissance on sensitive file shares.
4. Moves laterally to domain controllers to prepare for further privilege escalation.

**Detection/Mitigation:** Enforce MFA for privileged accounts, enable Defender for Identity’s privileged activity alerts, and monitor for abnormal admin logon patterns.

## Path 2: Service Account Abuse and Pass‑the‑Hash

1. A service account’s NTLM hash is stolen (via credential dumping).
2. The attacker reuses the hash to authenticate to other machines (Pass‑the‑Hash).
3. Lateral movement continues while the account’s normal activity hides malicious behavior.

**Detection/Mitigation:** Rotate service account credentials regularly, use managed service accounts, audit SPN usage, and enable LSA Protection to block credential dumping.

## Path 3: Kerberoasting Attack

1. Attacker requests service tickets for accounts with SPNs.
2. Extracts encrypted service tickets and cracks them offline.
3. Obtains service account credentials to elevate privileges and traverse the network.

**Detection/Mitigation:** Restrict SPN assignments, monitor for abnormal ticket requests, and disable RC4‑HMAC encryption to increase cracking difficulty.

These paths demonstrate how legitimate credentials can be abused for lateral movement, which is why alerts like DI‑1001 warrant a thorough investigation.