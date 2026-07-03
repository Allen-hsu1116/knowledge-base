---
title: Agent Skills
slug: agentskills-agentskills
created: 2026-07-03
updated: 2026-07-03
stars: 21614
language: Python
topics:
  - agent-skills
  - ai-agents
  - skill-format
  - standard
  - anthropic
---

# Agent Skills

> ⭐21.6k · AI Agent 技能的開放標準規範，一個 SKILL.md 檔案讓 Agent 獲得新能力和專業知識

## 快速導航

- 🛠 **Skill 生態** → [[AI-Skills|AI Skills]] · [[AI-Skills|Agent Skills 生態系]]
- 🤖 **Agent 框架** → [[anthropics-claude-code|Claude Code]] · [[anthropics-skills|Anthropic Skills]]
- 📐 **方法論** → [[AI-Skills|CLAUDE.md]] · [[agent-persona|AI Agent 人格設計]]

## 是什麼

Agent Skills 是一個開放的標準格式，讓 AI Agent 透過結構化的技能資料夾獲得新能力。每個 skill 就是一個包含 `SKILL.md` 檔案的資料夾——SKILL.md 裡面有 metadata（至少 name 和 description）和指令，告訴 Agent 如何執行特定任務。skill 還可以附帶腳本、參考文件、模板和其他資源。

這個格式最初由 Anthropic 開發，作為開放標準發布，已被越來越多的 Agent 產品採用。它的核心理念是漸進式揭露（progressive disclosure）：Agent 啟動時只載入每個 skill 的 name 和 description（發現階段），當任務匹配某個 skill 的描述時才讀取完整的 SKILL.md 指令（啟動階段），然後按照指令執行，可能運行附帶的程式碼或載入參考文件（執行階段）。這樣 Agent 可以擁有很多 skill 但只佔用很少的 context。

Agent Skills 解決了一個關鍵問題：Agent 越來越強大，但常常缺少做好真實工作所需的 context。Skills 把領域專業知識、可重複的工作流程、跨產品複用的能力打包成可版本控制的資料夾，Agent 按需載入。一次建構，在任何相容的 Agent 上都能用。

## 核心特色

- **輕量開放格式**：一個資料夾 + 一個 SKILL.md，沒有複雜的 runtime 或框架依賴
- **漸進式揭露**：三階段載入（發現→啟動→執行），大量 skill 只佔少量 context
- **可附帶資源**：scripts/、references/、assets/ 目錄，打包腳本、文件、模板
- **跨產品複用**：建構一次，在任何 skills 相容的 Agent 上使用
- **開放標準**：由 Anthropic 發起，開放社群貢獻，非單一廠商鎖定
- **廣泛採用**：已被眾多 AI 工具和 Agent 客戶端支援
- **版本控制友善**：純文字 + 檔案目錄，天然適合 Git 管理
- **領域專業封裝**：法律審查流程、資料分析管線、簡報格式化等專業知識可封裝為 skill

## 怎麼用

建立一個 skill：

```bash
# 建立 skill 資料夾結構
mkdir -p my-skill/{scripts,references,assets}

# 寫 SKILL.md
cat > my-skill/SKILL.md << 'EOF'
---
name: my-data-analysis
description: Perform structured data analysis on CSV files with statistical summaries and visualizations
---

# Data Analysis Skill

## Instructions

1. Load the CSV file using pandas
2. Generate statistical summaries (mean, median, std)
3. Create visualizations (histogram, correlation heatmap)
4. Save results to the output directory

## Scripts
- `scripts/analyze.py` - Main analysis script
- `scripts/visualize.py` - Visualization generator
EOF
```

使用 skill（以 Claude Code 為例）：

```bash
# Claude Code 自動發現專案中的 skills/
# 當任務匹配 skill 的 description 時自動啟動

# 或手動安裝 skill
npx skills add anthropics/skills --skill code-review -g

# 查看規範
# https://agentskills.io/specification

# 瀏覽範例 skills
# https://github.com/anthropics/skills
```

## 跟其他方案的關係

- **[[AI-Skills|AI Skills]]** → 知識庫中的概念頁，Agent Skills 是其標準格式
- **[[anthropics-skills|Anthropic Skills]]** → Anthropic 官方發布的 skill 集合，Agent Skills 是其底層格式規範
- **[[AI-Skills|CLAUDE.md]]** → 用自然語言定義 Agent 行為規範，SKILL.md 更聚焦於單一任務
- **[[AI-Skills|Agent Skills 生態系]]** → 更廣泛的生態系討論，此 repo 是標準規範本身
- **[[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]]** → 社群策展的 skill 列表，此 repo 定義格式標準
- **MCP** → MCP 是工具協議，Agent Skills 是知識/工作流封裝格式，互補不衝突

← [[AI-Skills|AI Skills]] · [[anthropics-skills|Anthropic Skills]] · [[AI-Skills|Agent Skills 生態系]] · [[AI-Skills|CLAUDE.md]]

## 來源

- GitHub: <https://github.com/agentskills/agentskills>
- 官網: <https://agentskills.io>
- 規範: <https://agentskills.io/specification>
- 範例 Skills: <https://github.com/anthropics/skills>
- Discord: <https://discord.gg/MKPE9g8aUy>
- 原始 README: `raw/2026-07-03-agentskills-agentskills.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [agentskills/agentskills](https://github.com/agentskills/agentskills) |
| Stars | ⭐21,614 |
| License | Apache 2.0 (程式碼) / CC-BY-4.0 (文件) |
| Language | Python |
| 收錄日期 | 2026-07-03 |