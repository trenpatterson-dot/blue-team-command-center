# Sign-In Risk Scenarios

## Scenario 1: Privileged User Without MFA

A privileged user signs in without MFA enforcement.

Risk: Stolen credentials could allow unauthorized administrative access.

Recommended Control: Require MFA for all privileged accounts.

---

## Scenario 2: Legacy Authentication Attempt

A sign-in attempt uses a legacy authentication protocol.

Risk: Legacy authentication may bypass modern security controls.

Recommended Control: Block legacy authentication through Conditional Access.

---

## Scenario 3: Risky Sign-In From Unusual Location

A user signs in from an unfamiliar location or device.

Risk: The sign-in may represent account compromise.

Recommended Control: Require additional verification or block access based on sign-in risk.