# CTI-001 ELI10 Summary

This case is about tracking a pretend cyber threat group called `Silver Orchard`.

The group is fictional. The evidence is simulated. The point is to show how a security analyst thinks through a threat intelligence problem without pretending to have secret data or live company access.

In the scenario, `Silver Orchard` sends fake cloud document emails. The emails try to trick people into entering their login information. The group also tests passwords against cloud identity accounts, which is called password spraying. Instead of trying one account over and over, they try a few common passwords across many accounts so the activity looks quieter.

The analyst reviews the clues: phishing themes, sign-in failures, cloud service access, suspicious domain patterns, and possible follow-up activity in email or document tools. Then the analyst separates what was actually observed from what is only a judgment.

The main takeaway: this looks like an identity attack against cloud services, not a malware case.

Defenders should watch for phishing, credential abuse, unusual Microsoft Entra ID sign-ins, suspicious MFA prompts, new mailbox forwarding rules, and strange document access after failed login attempts.

No real victims, real malicious infrastructure, private data, or production systems were used.
