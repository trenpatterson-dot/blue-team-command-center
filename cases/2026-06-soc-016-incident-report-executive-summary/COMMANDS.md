# Command History / Review Notes

Review incident summary:
Get-Content .\evidence\incident-summary.md

Review timeline:
Import-Csv .\evidence\timeline.csv | Format-Table

Review key evidence:
Get-Content .\evidence\key-evidence.md

Filter suspicious timeline events:
Import-Csv .\evidence\timeline.csv | Where-Object {$_.Assessment -eq "Suspicious"}

Review analyst notes:
Get-Content .\notes\analyst-notes.md

Review incident report:
Get-Content .\report\incident-report.md

Review executive summary:
Get-Content .\report\executive-summary.md
