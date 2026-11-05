# cp

Competitive Programming setup guides & AI Upsolving tools:

- 🚀 **AI CP Mentor & Upsolving Prompt:** See [prompt.md](prompt.md) for the streamlined master prompt (ready to copy & paste) designed for deep learning, formal proofs, sample verification, and zero-rating intimidation.

---

## ⚡ Workspace Setup (Install All)

### Linux (Ubuntu / Debian):
```bash
curl -fsSL https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/install-all/install.sh | bash
```

### Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/install-all/install.ps1 | iex
```

---

## 🔄 Workspace Reset (Reset All)

Wipes IDE caches/settings to fresh factory defaults and ensures the latest versions:

### Linux (Ubuntu / Debian):
```bash
curl -fsSL https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/reset-all/reset.sh | bash
```

### Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/reset-all/reset.ps1 | iex
```

---

## 📦 What it installs

| Tool | Linux Source | Windows Source |
|------|--------------|----------------|
| g++ + gdb | `apt` → `build-essential` | `winget` → WinLibs MinGW-w64 |
| Code::Blocks | `apt` → `codeblocks` | `winget` → `CodeBlocks.CodeBlocks` |
| VS Code | `snap` / Microsoft apt repo | `winget` → `Microsoft.VisualStudioCode` |
| Sublime Text | official Sublime apt repo | `winget` → `SublimeHQ.SublimeText.4` |
