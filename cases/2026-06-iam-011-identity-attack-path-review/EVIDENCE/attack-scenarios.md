# Attack Scenarios

## Scenario 1: Compromised User to Privileged Access

1. User credentials are stolen through phishing or password reuse.
2. MFA is not enforced for the sign-in path.
3. The account has access to sensitive groups or applications.
4. The attacker reaches privileged resources or cloud data.

Primary controls: MFA, Conditional Access, least privilege, risky sign-in monitoring.

## Scenario 2: Service Account Abuse

1. A service account has excessive permissions.
2. The credential is exposed or reused.
3. The account is used for lateral movement or administrative access.

Primary controls: service account ownership, credential rotation, scoped permissions, monitoring.

## Scenario 3: Stale Account Reuse

1. An inactive account remains enabled.
2. Credentials are guessed, reused, or recovered by an attacker.
3. The account is used to access data or systems after business need ended.

Primary controls: lifecycle review, stale-account detection, access recertification.

## Evidence Boundary

These are simulated attack paths for portfolio review. They are not claims that exploitation occurred.
