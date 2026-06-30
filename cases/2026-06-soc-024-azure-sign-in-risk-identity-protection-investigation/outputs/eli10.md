# SOC-024 ELI10 Summary

This case is about checking whether someone may have tried to break into a work account.

In the simulated case, a finance user normally signs in from Florida on a managed work laptop. A few minutes later, the same account gets failed sign-ins from an unfamiliar country. Then another sign-in from a different unfamiliar country gets far enough to trigger MFA, which is the phone approval step many accounts use.

That is suspicious. It does not prove the attacker got in, because conditional access blocked the risky sign-in after MFA failed. But it does suggest the password may have been guessed, stolen, or reused somewhere else.

The SOC analyst reviews the Azure sign-in logs, Microsoft Entra ID risk alert, MFA behavior, device details, location pattern, and conditional access result. The decision is to escalate the case as possible credential exposure with blocked access.

The recommended response is practical: reset the password, revoke sessions, make the user re-register MFA, review recent account activity, and monitor for more attempts.

This is simulated portfolio work. It does not use real tenant data, real customer data, employer screenshots, or production access.
