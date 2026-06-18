# Legacy Authentication Review

## Objective

Evaluate risks associated with older authentication protocols that may bypass modern security controls.

## Risks

Legacy authentication protocols often:

* Do not support MFA
* Are frequently targeted by password spray attacks
* Increase exposure to credential-based attacks

## Findings

Legacy authentication should be blocked whenever operationally possible.

Any remaining legacy applications should be reviewed and documented.

## Recommendations

* Block legacy authentication using Conditional Access.
* Identify applications still dependent on legacy protocols.
* Migrate remaining applications to modern authentication methods.
* Monitor authentication logs for legacy protocol usage.

## Risk Rating

High
