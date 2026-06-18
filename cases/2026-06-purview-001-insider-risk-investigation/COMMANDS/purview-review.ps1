Write-Host "=== Recently Modified Files ==="

Get-ChildItem $env:USERPROFILE\Documents -Recurse -ErrorAction SilentlyContinue |
Sort-Object LastWriteTime -Descending |
Select-Object -First 20 Name, LastWriteTime

Write-Host ""

Write-Host "=== Running Processes ==="

Get-Process |
Sort-Object CPU -Descending |
Select-Object -First 20

Write-Host ""

Write-Host "=== Current User ==="

whoami