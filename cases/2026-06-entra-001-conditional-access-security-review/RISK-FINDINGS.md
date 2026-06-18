# Risk Findings

## Finding 1: MFA Enforcement Gap

Privileged accounts should require multi-factor authentication.

Risk: If MFA is not enforced, a stolen password could allow unauthorized access to administrative resources.

Severity: High

Recommendation: Require MFA for all privileged and administrative users.

---

## Finding 2: Legacy Authentication Risk

Legacy authentication should be blocked because it may bypass modern security controls.

Risk: Attackers may attempt password spray or brute-force attacks against older authentication methods.

Severity: High

Recommendation: Block legacy authentication using Conditional Access policy.

---

## Finding 3: Risk-Based Sign-In Controls Needed

Risk-based sign-in policies help detect unusual login behavior.

Risk: Suspicious sign-ins may not trigger additional verification or blocking.

Severity: Medium

Recommendation: Enable risk-based Conditional Access policies for suspicious sign-in behavior.

---

## Finding 4: Privileged User Access Review Needed

Administrative accounts should be reviewed regularly.

Risk: Over-permissioned accounts increase the impact of credential compromise.

Severity: High

Recommendation: Review privileged users and remove unnecessary administrator access.

---

## Finding 5: Logging and Monitoring Gap

Identity activity should be monitored for failed logons, suspicious sign-ins, and privilege changes.

Risk: Without monitoring, account compromise may go undetected.

Severity: Medium

Recommendation: Monitor sign-in activity, privileged account changes, and Conditional Access policy changes.