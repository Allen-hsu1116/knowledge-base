---
title: Awesome Agent Skills
slug: VoltAgent-awesome-agent-skills
created: 2026-08-24
updated: 2026-08-24
stars: 31297
language: Markdown
topics:
  - agent-skills
  - ai-agents
  - awesome-list
  - claude-code
  - codex
  - cursor
---

# Awesome Agent Skills

> ⭐31.3k · 收錄 1,497+ 官方與社群 Agent Skills、支援多種 Coding Agent 的人工策展清單。

## 快速導航

- 🧰 **技能規格** → [[AI-Skills]]（理解 SKILL.md 與可重用能力封裝）
- 💻 **宿主工具** → [[Coding-Agent-CLI]]（理解 Skills 如何進入 Coding Agent）
- 🧠 **提示工程** → [[Prompt-Engineering]]（理解操作知識的結構化來源）

## 是什麼

Awesome Agent Skills 是 VoltAgent 維護的 Agent Skill 策展專案，README 宣稱收錄超過 1,497 個 skills。它聚合 Anthropic、Google Labs、Vercel、Stripe、Cloudflare、Netlify、Trail of Bits、Sentry、Expo、Hugging Face、Figma 等團隊的官方資源，也收錄經社群貢獻的技能。

專案的重點不是大量自動生成檔案，而是人工挑選實際工程團隊建立和使用的技能，並為每個項目提供來源與簡短用途。這讓它更像 Agent 能力生態的目錄與採購入口，而不是單一可執行框架。

清單面向 Claude Code、Codex、Gemini CLI、Cursor、GitHub Copilot、OpenCode、Windsurf 等宿主。使用者仍需到原始 repo 檢查 SKILL.md、授權、指令與安全性，再決定是否安裝到本機 Agent 環境。

## 核心特色

- **大規模策展**：涵蓋 1,497+ Skills，按官方團隊與社群來源分區，降低搜尋成本。
- **官方來源密度高**：聚合 Anthropic、OpenAI、Google、Vercel、Cloudflare、Stripe、Figma 等團隊資源。
- **跨 Harness 相容**：索引涵蓋 Claude Code、Codex、Cursor、Gemini CLI、OpenCode、Windsurf 等生態。
- **用途範圍廣**：包含文件、前端、測試、資料庫、安全、產品、行銷、雲端與框架最佳實踐。
- **保留原始來源**：條目多半連回官方 repo 或 officialskills.sh，方便審核維護者與內容。
- **品質立場明確**：README 強調 hand-picked、排除大量 AI-slop generated 技能，將可信度視為策展標準。
- **社群維護**：透過貢獻者持續更新清單，比靜態部落格更能反映 Skills 生態變化。

## 怎麼用

這個 repo 本身主要是目錄，最直接的使用方式是 clone 後搜尋 README，再到原始 Skill repo 安裝：

```bash
git clone https://github.com/VoltAgent/awesome-agent-skills.git
cd awesome-agent-skills
rg "playwright|security|postgres|figma" README.md
```

若條目支援 `skills` CLI，可依來源 repo 執行類似命令：

```bash
npx skills add OWNER/REPO --global --yes --copy
```

安裝前不要只看清單描述。應閱讀目標 `SKILL.md`、references 與 scripts，確認它是否會執行 shell、讀取憑證、連外傳輸資料或修改檔案；最好固定 commit SHA，並先在隔離環境測試。

## 跟其他方案的關係

Awesome Agent Skills 是「跨來源總目錄」，不是技能規格、Marketplace runtime 或單一廠商官方庫。它與其他 awesome list 有重疊，但更強調真實團隊來源、跨宿主與清單品質。

| 方案 | 核心定位 | 規模/來源 | 與本專案的差異 |
|------|----------|-----------|----------------|
| Awesome Agent Skills | 跨團隊 Skills 策展清單 | 1,497+ 官方與社群項目 | 本頁主體，來源跨度大 |
| [[ComposioHQ-awesome-claude-skills\|Awesome Claude Skills]] | Claude/Codex/Cursor Skills 清單 | 大型社群策展 | 宿主範圍與分類方式不同 |
| [[anthropics-skills\|Anthropic Skills]] | Anthropic 官方 Skill repo | 官方範例與能力 | 原始來源，不是跨來源目錄 |
| [[openai-skills\|OpenAI Skills]] | OpenAI 官方 Skill 集 | 官方工具導向技能 | 原始來源，範圍較集中 |
| [[agentskills-agentskills\|Agent Skills]] | 開放規格與文件 | 格式標準 | 定義格式；本專案索引內容 |

## 相關概念

← [[AI-Skills]] · [[Coding-Agent-CLI]] · [[Prompt-Engineering]] · [[prompt-security]]

## 來源

- [GitHub：VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills)
- [Official Skills](https://officialskills.sh/)
- [Raw README + metadata](../raw/2026-08-24-VoltAgent-awesome-agent-skills.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/VoltAgent/awesome-agent-skills |
| Stars | ⭐31,297 |
| License | MIT |
| Language | Markdown |
| 收錄日期 | 2026-08-24 |
