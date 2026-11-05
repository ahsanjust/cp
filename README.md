# cp

Competitive Programming setup guides & AI Upsolving tools:

- 🚀 **AI CP Mentor & Upsolving Prompt:** See [PROMPT.md](PROMPT.md) for the master prompt designed for deep learning, formal proofs, sample dry-runs, and zero-rating intimidation.
- ⚡ **One folder, one command** — downloads & installs **g++**, **Code::Blocks**, **VS Code**, **Sublime Text** (Ubuntu/Debian):

```bash
curl -fsSL https://raw.githubusercontent.com/ahsanjust/cp/main/install-all/install.sh | bash
```

Or clone and run locally:

```bash
git clone https://github.com/ahsanjust/cp.git && cd cp && bash install-all/install.sh
```

## What it installs

| Tool | Source |
|------|--------|
| g++ + gdb | `apt` → `build-essential` |
| Code::Blocks | `apt` → `codeblocks` |
| VS Code | snap (fallback: Microsoft apt repo) |
| Sublime Text | official Sublime apt repo |

Windows: install manually from [msys2.org](https://www.msys2.org/) (g++), [codeblocks.org](https://www.codeblocks.org/downloads/binaries/), [code.visualstudio.com/download](https://code.visualstudio.com/download), [sublimetext.com/download](https://www.sublimetext.com/download).
