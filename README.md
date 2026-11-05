# cp

Competitive Programming setup guides & AI Upsolving tools:

- 🚀 **AI CP Mentor & Upsolving Prompt:** See [prompt.md](prompt.md) for the raw master prompt (ready to copy & paste) designed for deep learning, formal proofs, sample dry-runs, and zero-rating intimidation.
- ⚡ **Workspace Setup (Install All):** Downloads & installs **g++**, **Code::Blocks**, **VS Code**, **Sublime Text** (Ubuntu/Debian):

```bash
curl -fsSL https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/install-all/install.sh | bash
```

- 🔄 **Workspace Reset (Reset All):** Wipes IDE caches/settings to fresh factory defaults and installs the latest versions (no confirmation prompt required):

```bash
curl -fsSL https://raw.githubusercontent.com/ahsanjust/cp/main/workspace-setup/reset-all/reset.sh | bash
```

Or clone and run locally:

```bash
git clone https://github.com/ahsanjust/cp.git && cd cp
bash workspace-setup/install-all/install.sh
# or to reset:
bash workspace-setup/reset-all/reset.sh
```

## What it installs

| Tool | Source |
|------|--------|
| g++ + gdb | `apt` → `build-essential` |
| Code::Blocks | `apt` → `codeblocks` |
| VS Code | snap (fallback: Microsoft apt repo) |
| Sublime Text | official Sublime apt repo |

Windows: install manually from [msys2.org](https://www.msys2.org/) (g++), [codeblocks.org](https://www.codeblocks.org/downloads/binaries/), [code.visualstudio.com/download](https://code.visualstudio.com/download), [sublimetext.com/download](https://www.sublimetext.com/download).
