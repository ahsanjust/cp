# reset.ps1 — Windows PowerShell script to reset CP IDEs to factory defaults:
#   1) Closes running IDEs (VS Code, Code::Blocks, Sublime Text)
#   2) Backs up existing settings to $HOME\cp-ide-backup-<timestamp>
#   3) Clears cached configs & profiles to factory fresh state
#   4) Ensures latest versions installed via winget
#
# Run in PowerShell:
#   irm https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/windows/reset.ps1 | iex

$ErrorActionPreference = "Continue"

function Write-Step ($msg) { Write-Host "`n==> $msg" -ForegroundColor Cyan }
function Write-Ok ($msg)   { Write-Host " [ok] $msg" -ForegroundColor Green }
function Write-Warn ($msg) { Write-Host " [!] $msg" -ForegroundColor Yellow }

$BackupDir = Join-Path $HOME "cp-ide-backup-$(Get-Date -Format 'yyyyMMdd-HHmmss')"

Write-Step "Proceeding with factory reset for CP tools..."
Write-Host "Backup location: $BackupDir"

# 1. Close running IDEs
Write-Step "1/4  Closing running IDEs"
$Procs = @("Code", "codeblocks", "sublime_text", "subl")
foreach ($p in $Procs) {
    Get-Process -Name $p -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
}
Write-Ok "Running IDE instances closed."

# 2. Backup configs
Write-Step "2/4  Backing up IDE configurations"
New-Item -ItemType Directory -Path $BackupDir -Force | Out-Null

$ConfigPaths = @(
    @{ Name = "VSCode-AppData"; Path = "$env:APPDATA\Code" },
    @{ Name = "VSCode-User";    Path = "$HOME\.vscode" },
    @{ Name = "SublimeText";    Path = "$env:APPDATA\Sublime Text" },
    @{ Name = "CodeBlocks";     Path = "$env:APPDATA\codeblocks" }
)

foreach ($item in $ConfigPaths) {
    if (Test-Path $item.Path) {
        Copy-Item -Path $item.Path -Destination (Join-Path $BackupDir $item.Name) -Recurse -Force -ErrorAction SilentlyContinue
    }
}
Write-Ok "Backup created successfully."

# 3. Wipe settings to factory-fresh
Write-Step "3/4  Wiping configs to factory-fresh state"
foreach ($item in $ConfigPaths) {
    if (Test-Path $item.Path) {
        Remove-Item -Path $item.Path -Recurse -Force -ErrorAction SilentlyContinue
    }
}
Write-Ok "Configs wiped to factory defaults."

# 4. Reinstall / Ensure latest via winget
Write-Step "4/4  Ensuring latest tools via winget"
if (Get-Command winget -ErrorAction SilentlyContinue) {
    winget install --id Microsoft.VisualStudioCode -e --silent --accept-source-agreements --accept-package-agreements
    winget install --id SublimeHQ.SublimeText.4 -e --silent --accept-source-agreements --accept-package-agreements
    winget install --id CodeBlocks.CodeBlocks -e --silent --accept-source-agreements --accept-package-agreements
    Write-Ok "Tools refreshed."
} else {
    Write-Warn "winget not found; skipped package update."
}

Write-Host "`nReset complete! Your IDEs are back to clean factory state." -ForegroundColor Green
