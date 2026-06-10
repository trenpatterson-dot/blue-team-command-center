# Command History / Review Notes

Review security alert summary:
Get-Content .\evidence\security-alert-summary.md

Review correlated events:
Import-Csv .\evidence\correlated-events.csv | Format-Table

Review correlation query:
Get-Content .\queries\correlation-review.kql

Review AI-assisted summary:
Get-Content .\ai-review\ai-assisted-summary-draft.md

Review analyst validation checklist:
Get-Content .\ai-review\analyst-validation-checklist.md

Review AI limitations:
Get-Content .\ai-review\ai-limitations.md

Review final analyst determination:
Get-Content .\report\final-analyst-determination.md

Review incident report draft:
Get-Content .\report\incident-report-draft.md
