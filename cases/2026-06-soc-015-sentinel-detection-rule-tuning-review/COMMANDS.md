# Command History / Query Notes

Review detection summary:
Get-Content .\evidence\detection-rule-summary.md

Review simulated alert evidence:
Import-Csv .\evidence\signin-alert-review.csv | Format-Table

Filter likely false positives:
Import-Csv .\evidence\signin-alert-review.csv | Where-Object {$_.Assessment -eq "Likely false positive"}

Filter suspicious alerts:
Import-Csv .\evidence\signin-alert-review.csv | Where-Object {$_.Assessment -eq "Suspicious"}

Review original KQL-style rule:
Get-Content .\queries\original-failed-signin-rule.kql

Review tuned KQL-style rule:
Get-Content .\queries\tuned-failed-signin-rule.kql
