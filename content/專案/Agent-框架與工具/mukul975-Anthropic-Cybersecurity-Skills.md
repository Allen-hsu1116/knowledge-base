---


title: Anthropic Cybersecurity Skills
slug: mukul975-Anthropic-Cybersecurity-Skills
date: 2026-05-24
stars: 7418
repo: mukul975/Anthropic-Cybersecurity-Skills
url: https://github.com/mukul975/Anthropic-Cybersecurity-Skills
language: Python
topics:
  - AI-Skills
  - pentesting
  - agent-skills-ecosystem
  - cybersecurity-skills
  - MITRE-ATT&CK


updated: TODO
---

# Anthropic Cybersecurity Skills

⭐ 7.4k · 754 個結構化網安技能，讓 AI agent 擁有資深分析師的知識

## 一句話

最大的開源 AI agent 網安技能庫——754 個技能覆蓋 26 個資安領域，每個技能同時對映 MITRE ATT&CK、NIST CSF 2.0、MITRE ATLAS、D3FEND 和 NIST AI RMF 五大框架。

## 快速導航
- ⚡ [[AI-Skills]] · [[pentesting]] · [[agent-skills-ecosystem]]

## 是什麼

Anthropic Cybersecurity Skills 是最大的開源 AI agent 網安技能庫——754 個結構化技能覆蓋 26 個資安領域。每個技能遵循 agentskills.io 標準，YAML frontmatter 讓 Agent 掃描全庫只需約 22k tokens，載入單一技能完整流程 500-2000 tokens。每個技能同時對映 MITRE ATT&CK、NIST CSF 2.0、MITRE ATLAS、D3FEND 和 NIST AI RMF 五大合規框架。

全球網安人力缺口 480 萬（ISC2 2024），AI agent 能補缺口——但前提是要有結構化的領域知識。這個庫不是腳本集合，而是 AI 原生的知識庫。

## 核心特色

- **754 個生產級技能** — 覆蓋 Cloud Security (60)、Threat Hunting (55)、Malware Analysis (39)、Digital Forensics (37)、SOC Operations (33)、Container Security (30)、OT/ICS Security (28) 等 26 個資安領域
- **5 框架對映** — 一個技能同時勾選 MITRE ATT&CK v18（14 tactics, 200+ techniques）、NIST CSF 2.0、ATLAS v5.4、D3FEND v1.3、NIST AI RMF 1.0
- **漸進式揭露** — ~30 tokens 掃描 frontmatter 定位相關技能，500-2,000 tokens 完整載入 workflow
- **實務 workflow** — 每個技能包含 When to Use、Prerequisites、Step-by-step Workflow、Verification 四段式結構
- **agentskills.io 標準** — 支援 Claude Code、GitHub Copilot、Cursor、Gemini CLI 等
- **技能結構標準化** — SKILL.md (YAML frontmatter + Markdown body)、references/ (standards + workflows)、scripts/ (輔助腳本)、assets/ (模板)

## 怎麼用

1. Clone 技能庫到專案：
```bash
git clone https://github.com/mukul975/Anthropic-Cybersecurity-Skills.git
```
2. 將技能目錄加到 Agent 的 skill search path
3. Agent 掃描 SKILL.md frontmatter（~30 tokens/skill）定位相關技能
4. 載入完整技能流程（500-2000 tokens）執行任務
5. 每個技能提供 When to Use → Prerequisites → Workflow → Verification 完整流程

支援的 agent：Claude Code、GitHub Copilot CLI、Cursor、Gemini CLI、Codex CLI 等。

## 跟其他方案的關係

| 特色 | Anthropic Cybersecurity Skills | Awesome Cybersecurity | MITRE ATT&CK | SecLists |
|------|-------------------------------|----------------------|-------------|----------|
| 格式 | SKILL.md 結構化 | Markdown 連結列表 | 框架+技術資料庫 | 工具+wordlist |
| AI 原生 | ✅ 漸進式揭露 | ❌ | ❌ | ❌ |
| 框架對映 | 5 個（ATT&CK + CSF + ATLAS + D3FEND + AI RMF） | ❌ | 1 個（ATT&CK） | ❌ |
| 技能數量 | 754 | 數百連結 | 200+ techniques | 數千檔案 |
| 執行流程 | ✅ Step-by-step | ❌ 連結 | ❌ 技術描述 | ❌ 工具目錄 |

這個庫跟 [[agent-skills-ecosystem]] 直接相關——它是 agentskills.io 標準的網安領域實作。跟 [[AI-Skills]] 概念頁也是直接對應——754 個結構化 AI agent 技能。

## 相關概念
← [[AI-Skills]] · [[pentesting]] · [[agent-skills-ecosystem]]

## 來源

- [原始資料](../raw/2026-05-24-mukul975-Anthropic-Cybersecurity-Skills.md)