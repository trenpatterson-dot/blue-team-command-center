# SOC-023 ELI10 Summary

Imagine a building where most people have both a key and a security code. That sounds safe, but some doors do not ask for the code, a large exception list lets certain people skip the rule, and the emergency keys are not all monitored.

This simulated Azure identity review found similar concerns:

- MFA was widely registered, but not every sign-in was clearly required to use it.
- One administrator role was not covered by any reviewed policy requiring strong authentication.
- Some excluded accounts did not have a current reason for the exception.
- Risky sign-ins were being observed but not yet challenged or blocked.
- An older sign-in method might avoid modern protections.
- One emergency account did not have documented sign-in alerting.

The analyst recommended reviewing every exception, testing policy changes before enforcement, protecting privileged roles, retiring older authentication methods safely, and monitoring emergency accounts.

This is a lab-based portfolio case. It does not claim access to a real company tenant or authority to change production policies.
