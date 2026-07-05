---
title: Claude Code Skills & Plugins
slug: alirezarezvani-claude-skills
created: 2026-07-05
updated: 2026-07-05
stars: 20.2k
language: Python
topics: agent-skills, claude-code, claude-skills, coding-agent-plugins, prompt-engineering
---

# Claude Code Skills & Plugins

> ⭐20.2k · 354 個生產級 Claude Code Skills + Agent Plugins，支援 13 個 AI 編碼工具

## 快速導航

- 🛠 **AI Skills 生態系** → [[AI-Skills\|AI Skills]]
- 🧠 **Coding Agent CLI** → [[Coding-Agent-CLI\|Coding Agent CLI]]
- 🔧 **Hermes Agent** → [[hermes-agent\|Hermes Agent]]
- 📦 **Skill 安全** → [[NVIDIA-SkillSpector\|SkillSpector]]

## 是什麼

Claude Code Skills & Plugins 是目前最全面的開源 Agent Skills 庫，由 Alireza Rezvani 維護。它包含 354 個生產級 Skills、96 個 Agents、7 個 Personas、102 個 Custom Commands，覆蓋工程、產品、行銷、研究、合規、C-Level 顧問等 18 個領域。

最大特色是跨平台相容：一套 Skills 同時支援 Claude Code、OpenAI Codex、Gemini CLI、OpenClaw、Hermes Agent、Mistral Vibe、Cursor、Aider、Windsurf、Kilo Code、OpenCode、Augment、Antigravity 等 13 個工具。透過 `scripts/convert.sh --tool all` 一鍵轉換格式。

所有 593 個 Python 工具腳本都是 stdlib-only（零 pip 安裝），711 個 reference docs 提供模板、清單和領域知識。Skills 採用 [[AI-Skills|agentskills.io SKILL.md 標準]]，與 [[agentskills-agentskills|Agent Skills 開放標準]] 一致。

## 核心特色

- **354 Skills 跨 18 領域** — 工程（Core 52 + POWERFUL 80）、產品（17）、行銷（48 含 AEO）、研究（14）、C-Level（68 完整 C-suite）等
- **13 工具統一格式** — Claude Code / Codex / Gemini CLI / OpenClaw / Hermes / Cursor / Aider / Windsurf / Kilo Code / OpenCode / Augment / Antigravity / Mistral Vibe
- **593 Python 腳本** — 全 stdlib-only，零依賴，任何有 Python 的地方都能跑
- **711 Reference Docs** — 模板、清單、領域知識
- **96 Agents + 7 Personas** — 含 Startup CTO、Growth Marketer、Solo Founder 等角色
- **Hermes Agent 原生支援** — 內建 `scripts/sync-hermes-skills.py` 一鍵安裝到 `~/.hermes/skills/`
- **SkillCheck 驗證** — 每個 Skill 通過 SkillCheck 品質驗證

## 怎麼用

### Claude Code（推薦）

```bash
# 加入 marketplace
/plugin marketplace add alirezarezvani/claude-skills

# 按領域安裝
/plugin install engineering-skills@claude-code-skills
/plugin install marketing-skills@claude-code-skills
/plugin install c-level-skills@claude-code-skills

# 或安裝單一 skill
/plugin install skill-security-auditor@claude-code-skills
```

### Hermes Agent

```bash
git clone https://github.com/alirezarezvani/claude-skills.git
cd claude-skills
python scripts/sync-hermes-skills.py --verbose
```

### 一鍵轉換全部工具

```bash
./scripts/convert.sh --tool all
./scripts/install.sh --tool cursor --target /path/to/project
```

### OpenAI Codex

```bash
npx agent-skills-cli add alirezarezvani/claude-skills --agent codex
```

## 跟其他方案的關係

| 庫 | Skills 數 | 工具數 | 跨平台 | 特色 |
|-----|-----------|--------|--------|------|
| **claude-skills** | 354 | 13 | ✅ | 最全面，C-suite + 研究 + 合規 |
| [[ComposioHQ-awesome-claude-skills\|Awesome Claude Skills]] | 1000+ | 策展 | ❌ | 策展列表，非單一庫 |
| [[obra-superpowers\|Superpowers]] | — | — | Claude Code | 方法論導向 |
| [[wshobson-agents\|wshobson/agents]] | 158 | 5 | ✅ | 插件市場 + Agent |
| [[agentskills-agentskills\|Agent Skills]] | 標準 | — | ✅ | SKILL.md 開放標準 |

← [[AI-Skills|AI Skills]] · [[Coding-Agent-CLI|Coding Agent CLI]]

## 來源

- GitHub: https://github.com/alirezarezvani/claude-skills
- raw/2026-07-05-alirezarezvani-claude-skills.md

---

| 欄位 | 值 |
|------|-----|
| **GitHub** | https://github.com/alirezarezvani/claude-skills |
| **Stars** | ⭐ 20,163 |
| **License** | MIT |
| **Language** | Python |
| **收錄日期** | 2026-07-05 |