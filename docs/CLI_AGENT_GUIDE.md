# Rubii Card Architect V2.2.7 — CLI & Agent Integration Guide

This guide details how to install, configure, and execute **Rubii Card Architect V2.2.7** via **Command-Line Interface (CLI)**, **PowerShell Shortcuts**, and **AI Coding Agents** (Antigravity `agy`, Claude Code, OpenAI, Google Gemini).

---

## 1. PowerShell CLI Quick Installation

You can register the `rubii` command globally in your Windows PowerShell environment with a single command:

```powershell
# Run installer from repository root:
.\tools\install_cli.ps1
```

Or execute directly with the built-in `--install` flag:
```powershell
powershell -ExecutionPolicy Bypass -File .\tools\rubii.ps1 --install
```

After installing, reload your PowerShell profile:
```powershell
. $PROFILE
```

Now you can run `rubii` from any terminal directory.

---

## 2. CLI Commands Reference

| Command | Action / Description |
| :--- | :--- |
| `rubii --help` / `rubii -h` | Display the interactive CLI help menu and command list. |
| `rubii --copy` / `rubii -c` | Copy the entire V2.2.7 Master System Prompt directly into the Windows clipboard. |
| `rubii /turbo [details]` | Copy System Prompt + `/turbo` shortcut command prefilled with character synopsis. |
| `rubii /express [details]`| Copy System Prompt + `/express` fast-blueprint command. |
| `rubii /recommend` | Copy System Prompt + `/recommend_theme` selector command. |
| `rubii --preview` / `rubii -p` | Launch the Live Mobile Viewport Previewer (`tools/card_previewer.html`) in default browser. |
| `rubii --studio` / `rubii -s` | Launch the complete SVG Web Studio (`index.html`) in default browser. |
| `rubii --check` | Run configuration and asset diagnostics (Palettes, Typography, Prompts, HTML). |
| `rubii --agent` / `rubii -a` | Print the full system prompt text to standard output for CLI piping. |

### CLI Usage Examples:

```powershell
# 1. Quick turbo card generation for an agent chat:
rubii /turbo Valentina Cross, Cyber-Gothic Vampire, Neon Crimson and Cyan

# 2. Open Live Mobile Previewer immediately:
rubii --preview

# 3. Check repo file integrity:
rubii --check
```

---

## 3. AI Agent Integrations (Antigravity, Claude Code, Gemini)

### A. Google Antigravity IDE & Antigravity CLI (`agy`)

To install Rubii Card Architect as a native skill for Antigravity AI agent:

1. **Workspace-level Skill (Current Project):**
   ```powershell
   New-Item -ItemType Directory -Path .agents\skills\rubii-card-architect -Force
   Copy-Item core\system_prompt_v2.2.7_express.md .agents\skills\rubii-card-architect\SKILL.md -Force
   ```

2. **Global Skill (All Projects):**
   ```powershell
   $GlobalSkillPath = "$env:USERPROFILE\.gemini\config\skills\rubii-card-architect"
   New-Item -ItemType Directory -Path $GlobalSkillPath -Force
   Copy-Item core\system_prompt_v2.2.7_express.md "$GlobalSkillPath\SKILL.md" -Force
   ```

3. **Usage in Agent Conversation:**
   - Type `/turbo` or mention the character description in your prompt.
   - The agent reads `SKILL.md` and generates 100% Zero-JS minified HTML/CSS character cards automatically.

---

### B. Claude Code CLI (`claude`)

Pipe the standalone prompt directly into Claude Code CLI:

```powershell
# Pipe system instruction to Claude CLI
Get-Content -Raw .\standalone\rubii_architect_v2.2.7_standalone.txt | claude "Create a character card for Valentina Cross with /turbo"
```

Or save prompt as a custom project instruction in `.claude/config.json`.

---

### C. Gemini CLI & Custom API Scripts

```powershell
# Pipe prompt to Gemini CLI or curl API
$SystemPrompt = Get-Content -Raw .\standalone\rubii_architect_v2.2.7_standalone.txt
$UserQuery = "/turbo Character: Valentina Cross | Genre: Cyber-Gothic"
# Combine and send to your LLM script or terminal tool
```

---

## 4. Manual PowerShell Profile Setup (Alternative)

If you prefer adding the function manually to your `$PROFILE`:

```powershell
# Open profile in notepad
notepad $PROFILE
```

Add the following block:
```powershell
function rubii {
    & "C:\Path\To\Your\Card-Charactor-for-Rubii-Purrpaw-etc\tools\rubii.ps1" @args
}
```

Save and run `. $PROFILE`.
