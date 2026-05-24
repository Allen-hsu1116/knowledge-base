---
title: Anthropic Cybersecurity Skills
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
---

# Anthropic Cybersecurity Skills

⭐ 7.4k · 754 個結構化網安技能，讓 AI agent 擁有資深分析師的知識

## 一句話

最大的開源 AI agent 網安技能庫——754 個技能覆蓋 26 個資安領域，每個技能同時對映 MITRE ATT&CK、NIST CSF 2.0、MITRE ATLAS、D3FEND 和 NIST AI RMF 五大框架。

## 為什麼重要

全球網安人力缺口 480 萬（ISC2 2024）。AI agent 能幫忙補缺口——但前提是要有結構化的領域知識。這個庫不是腳本集合，而是 AI 原生的知識庫：每個 skill 遵循 agentskills.io 標準，YAML frontmatter 讓 agent 掃描全庫只要約 22k tokens，載入單一 skill 完整流程 500-2000 tokens。

## 核心概念

- **5 框架對映** — 一個 skill 同時勾選 5 合規框架，MITRE ATT&CK v18（14 tactics, 200+ techniques）、NIST CSF 2.0、ATLAS v5.4、D3FEND v1.3、NIST AI RMF 1.0
- **漸進式揭露** — ~30 tokens 掃描 frontmatter 定位相關技能，500-2,000 tokens 完整載入 workflow
- **26 個資安領域** — Cloud Security (60)、Threat Hunting (55)、Malware Analysis (39)、Digital Forensics (37)、SOC Operations (33)、Container Security (30)、OT/ICS Security (28) 等
- **實務 workflow** — 每個 skill 包含 When to Use、Prerequisites、Step-by-step Workflow、Verification 四段式結構

## Skill 結構

```
skills/performing-memory-forensics-with-volatility3/
├── SKILL.md              ← YAML frontmatter + Markdown body
├── references/
│   ├── standards.md      ← MITRE ATT&CK, ATLAS, D3FEND, NIST mappings
│   └── workflows.md      ← 深度技術參考
├── scripts/
│   └── process.py        ← 輔助腳本
└── assets/
    └── template.md       ← 檢查清單和報告模板
```

## 跟我們的關聯

- [[AI-Skills]] — 最直接的關聯：754 個 AI agent skills，遵循 agentskills.io 開放標準
- [[agent-skills-ecosystem]] — 此庫是 agent skills 生態系的重要成員，支援 Claude Code、Copilot、Cursor、Gemini CLI 等
- [[pentesting]] — 紅隊、滲透測試、Web 安全等領域的結構化 skill
- [[cybersecurity-skills]] — 新概念：AI agent 專用的結構化網安知識庫
- [[MITRE-ATT&CK]] — 全面對映 MITRE ATT&CK v18 的 14 tactics