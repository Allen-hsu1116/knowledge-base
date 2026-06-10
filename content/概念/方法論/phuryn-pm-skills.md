---
title: PM Skills Marketplace
slug: phuryn-pm-skills
created: 2026-06-10
updated: 2026-06-10
stars: 13435
language: ""
topics:
  - agent-skills
  - agentic-skills
  - claude-code-marketplace
  - claude-code-plugins
  - claude-cowork-plugin
  - product-management
---

# PM Skills Marketplace

> ⭐13.4k · 68 個 PM 技能 + 42 條串聯工作流，橫跨 9 大插件——從探索、策略、執行到上線，讓 AI 成為你的產品決策作業系統。

## 快速導航

- 🧠 [[AI-Skills|AI Skills]] — AI Agent 操作指令格式標準
- 🔌 [[agent-skills-ecosystem|Agent Skills 生態系]] — Agent Skills 的生態趨勢
- 🛠 [[CLAUDE-md|CLAUDE.md]] — 定義 AI 行為的核心載體

## 是什麼

PM Skills Marketplace 是一套完整的產品經理 AI 技能庫，包含 68 個技能和 42 條串聯工作流，分布在 9 個插件中。每個技能都封裝了經過驗證的 PM 框架——從探索（Discovery）、策略（Strategy）、執行（Execution）到上線（Launch），讓你用結構化方法論做產品決策，而不只是讓 AI 生成文字。

它不是單一技能的集合，而是一套「AI 操作系統」：技能是建構單元，指令（Commands）將技能串成端到端流程，插件則按 PM 領域分組。安裝後，所有技能自動載入，指令用 `/command-name` 觸發，流程完成後還會建議下一步相關指令。

## 核心特色

- **68 個 PM 技能**：每個技能封裝一個經過驗證的 PM 框架（Teresa Torres、Marty Cagan、Alberto Savoia 等）
- **42 條工作流**：`/discover`、`/write-prd`、`/strategy`、`/plan-launch` 等指令串接多個技能
- **9 大插件領域**：Discovery、Strategy、Market Research、Data Analytics、Marketing/Growth、Go-to-Market、Execution、AI Shipping、Toolkit
- **多平台支援**：Claude Cowork、Claude Code CLI、Codex CLI、Gemini CLI、Cursor、Kiro
- **MIT 開源**：免費使用，可自由修改和商業使用
- **流程引導**：每個指令完成後自動建議相關下一步，形成產品決策的完整路徑

## 怎麼用

**Claude Cowork 安裝（推薦）：**
1. 開啟 **Customize**（左下角）
2. 進入 **Browse plugins** → **Personal** → **+**
3. 選 **Add marketplace from GitHub**
4. 輸入：`phuryn/pm-skills`

**Claude Code CLI 安裝：**
```bash
# 加入 marketplace
claude plugin marketplace add phuryn/pm-skills

# 安裝各插件
claude plugin install pm-toolkit@pm-skills
claude plugin install pm-product-strategy@pm-skills
claude plugin install pm-product-discovery@pm-skills
claude plugin install pm-market-research@pm-skills
claude plugin install pm-data-analytics@pm-skills
claude plugin install pm-marketing-growth@pm-skills
claude plugin install pm-go-to-market@pm-skills
claude plugin install pm-execution@pm-skills
claude plugin install pm-ai-shipping@pm-skills
```

**其他 AI 助手（純技能）：**
```bash
# 複製 skills 資料夾到對應目錄
for plugin in pm-*/; do
  cp -r "$plugin/skills/"* .opencode/skills/ 2>/dev/null
done
```

## 跟其他方案的關係

| 專案 | 定位 | 與 PM Skills 的關係 |
|------|------|---------------------|
| [[AI-Skills|AI Skills]] | AI Agent 操作指令格式 | PM Skills 是 AI Skills 在 PM 領域的完整實現 |
| [[agent-skills-ecosystem|Agent Skills 生態系]] | Agent Skills 生態趨勢 | PM Skills 是此生態系中的 PM 領域代表 |
| [[CLAUDE-md|CLAUDE.md]] | AI 行為規範格式 | PM Skills 透過 CLAUDE.md 格式交付技能定義 |
| [[affaan-m-ECC|ECC]] | Agent harness 效能系統 | ECC 側重 coding agent 優化，PM Skills 側重產品決策 |

← [[AI-Skills]] · [[agent-skills-ecosystem|Agent Skills 生態系]] · [[CLAUDE-md]] · [[affaan-m-ECC|ECC]]

## 來源

- GitHub: [phuryn/pm-skills](https://github.com/phuryn/pm-skills)
- raw/2026-06-10-pm-skills.md

---

| 項目 | 內容 |
|------|------|
| GitHub | [phuryn/pm-skills](https://github.com/phuryn/pm-skills) |
| Stars | ⭐13,435 |
| License | MIT |
| Language | N/A（技能定義） |
| 收錄日期 | 2026-06-10 |