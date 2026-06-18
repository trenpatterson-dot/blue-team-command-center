# AI-SEC-001 simulated AI assistant audit log review helper
# Review-only script. It parses an exported JSON audit log and flags AI governance events.

[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$Path = "..\EVIDENCE\ai-assistant-risk-register.json"
)

Write-Host "=== AI Assistant Audit Log Review ==="
Write-Host "Input path: $Path"
Write-Host ""

if (-not (Test-Path -LiteralPath $Path)) {
    Write-Host "Input file was not found. Provide an exported AI audit log JSON file with -Path."
    Write-Host "Example:"
    Write-Host "  .\ai-audit-log-review.ps1 -Path ..\EVIDENCE\simulated-ai-audit-log.json"
    exit 1
}

$raw = Get-Content -LiteralPath $Path -Raw
$json = $raw | ConvertFrom-Json

if ($null -eq $json) {
    Write-Host "No JSON content could be parsed."
    exit 1
}

$events = @()

if ($json.events) {
    $events = @($json.events)
}
elseif ($json.risks) {
    Write-Host "Risk-register file detected. Showing open risk summary instead of event telemetry."
    $json.risks |
        Select-Object id, title, likelihood, impact, rating, owner, status |
        Format-Table -AutoSize
    Write-Host ""
    Write-Host "For event review, provide JSON with an 'events' array containing timestamp, user, event_type, tool_name, action_status, approval_required, approval_user, and risk_flags."
    exit 0
}
else {
    Write-Host "JSON parsed, but no 'events' or 'risks' array was found."
    exit 1
}

Write-Host "Total events reviewed: $($events.Count)"
Write-Host ""

Write-Host "=== Events Requiring Attention ==="
$events |
    Where-Object {
        $_.approval_required -eq $true -or
        $_.action_status -in @("denied", "blocked", "failed") -or
        ($_.risk_flags -and @($_.risk_flags).Count -gt 0)
    } |
    Select-Object timestamp, user, event_type, tool_name, action_status, approval_required, approval_user, risk_flags |
    Format-Table -AutoSize

Write-Host ""
Write-Host "=== Tool Call Summary ==="
$events |
    Where-Object { $_.tool_name } |
    Group-Object tool_name, action_status |
    Sort-Object Count -Descending |
    Select-Object Count, Name |
    Format-Table -AutoSize

Write-Host ""
Write-Host "=== Human Approval Gaps ==="
$events |
    Where-Object { $_.approval_required -eq $true -and -not $_.approval_user } |
    Select-Object timestamp, user, event_type, tool_name, action_status |
    Format-Table -AutoSize

Write-Host ""
Write-Host "=== Risk Flag Counts ==="
$events |
    ForEach-Object { @($_.risk_flags) } |
    Where-Object { $_ } |
    Group-Object |
    Sort-Object Count -Descending |
    Select-Object Count, Name |
    Format-Table -AutoSize

Write-Host ""
Write-Host "Review notes:"
Write-Host "- Confirm prompt injection attempts are logged and not followed."
Write-Host "- Confirm write actions have named human approval."
Write-Host "- Confirm denied tool calls and policy overrides are reviewed."
Write-Host "- Confirm logs do not expose secrets or unnecessary sensitive data."
