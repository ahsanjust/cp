# install.ps1 — Windows PowerShell script to install CP tools:
#   1) g++ (WinLibs GCC / MinGW-w64)
#   2) Code::Blocks
#   3) VS Code
#   4) Sublime Text
#
# Run in PowerShell (Run as Administrator recommended):
#   irm https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/install-all/install.ps1 | iex

$ErrorActionPreference = "Continue"

function Write-Step ($msg) { Write-Host "`n==> $msg" -ForegroundColor Cyan }
function Write-Ok ($msg)   { Write-Host " [ok] $msg" -ForegroundColor Green }
function Write-Warn ($msg) { Write-Host " [!] $msg" -ForegroundColor Yellow }

# Check for winget
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Warn "winget (Windows Package Manager) was not found."
    Write-Host "Please install 'App Installer' from Microsoft Store or update Windows 10/11."
    exit 1
}

Write-Step "1/4  GCC / G++ (WinLibs MinGW-w64)"
if (Get-Command g++ -ErrorAction SilentlyContinue) {
    Write-Ok "g++ already installed: $((g++ --version)[0])"
} else {
    winget install --id BrechtSanders.WinLibs.POSIX.UCRT -e --silent --accept-source-agreements --accept-package-agreements
    if (-not (Get-Command g++ -ErrorAction SilentlyContinue)) {
        # Fallback to MSYS2
        winget install --id MSYS2.MSYS2 -e --silent --accept-source-agreements --accept-package-agreements
    }
}

Write-Step "2/4  Code::Blocks"
if (Get-Command codeblocks -ErrorAction SilentlyContinue) {
    Write-Ok "Code::Blocks is already installed."
} else {
    winget install --id CodeBlocks.CodeBlocks -e --silent --accept-source-agreements --accept-package-agreements
}

Write-Step "3/4  VS Code"
if (Get-Command code -ErrorAction SilentlyContinue) {
    Write-Ok "VS Code is already installed."
} else {
    winget install --id Microsoft.VisualStudioCode -e --silent --accept-source-agreements --accept-package-agreements
}

Write-Step "4/4  Sublime Text"
if (Get-Command subl -ErrorAction SilentlyContinue) {
    Write-Ok "Sublime Text is already installed."
} else {
    winget install --id SublimeHQ.SublimeText.4 -e --silent --accept-source-agreements --accept-package-agreements
}

Write-Step "Verifying Installations"
if (Get-Command g++ -ErrorAction SilentlyContinue) { Write-Ok "g++      : $((g++ --version)[0])" } else { Write-Warn "g++ missing from PATH (may need a terminal restart)" }
if (Get-Command code -ErrorAction SilentlyContinue) { Write-Ok "VS Code  : $((code --version)[0])" } else { Write-Warn "VS Code not yet in PATH" }
if (Get-Command subl -ErrorAction SilentlyContinue) { Write-Ok "Sublime  : Ready" } else { Write-Warn "Sublime Text not yet in PATH" }

Write-Host "`nInstallation routine complete! Please restart PowerShell/terminal so PATH updates take effect." -ForegroundColor Green
