---
title: Harness — Agent 團隊架構工廠
slug: revfactory-harness
created: 2026-05-29
updated: 2026-05-29
stars: 3887
language: HTML
---

# Harness — Agent 團隊架構工廠

> ⭐3.9k · Claude Code 的團隊架構工廠，輸入領域描述，自動產生 agent 團隊和對應技能。

## 快速導航
[[AI-Agent]] · [[AI-Skills|Agent Skills 生態系]] · [[harness-engineering|Harness Engineering 駕馭工程]]

## 是什麼

Harness 是 Claude Code 生態系的 L3 Meta-Factory 層插件，定位為「團隊架構工廠」。它跟一般 skill 或 agent 定義工具不同——Harness 不只是產出一組 agent，而是根據你描述的領域需求，從六種預定義的團隊架構模式中選擇最適合的，然後自動生成完整的 agent 定義（`.claude/agents/`）和技能檔案（`.claude/skills/`）。

六種團隊架構模式涵蓋了大多數任務場景：Pipeline（管線式串聯）、Fan-out/Fan-in（分散彙整）、Expert Pool（專家池按需調用）、Producer-Reviewer（產出-審查）、Supervisor（監督者動態分派）、Hierarchical Delegation（階層委派）。你只需要說「build a harness for this project」，插件就會分析你的領域描述，選擇最適合的模式，生成對應的 agent 和 skill 定義。

Harness 的核心是 Progressive Disclosure——技能設計上採用漸進式揭露上下文，讓 agent 只在需要時載入詳細參考資料，避免 context 膨脹。整個流程分六個階段：領域分析 → 團隊架構設計 → Agent 定義生成 → Skill 生成 → 整合編排 → 驗證測試。

## 核心特色

- **六種團隊架構模式**：Pipeline（串聯依賴任務）、Fan-out/Fan-in（平行獨立任務彙整）、Expert Pool（依情境選擇專家）、Producer-Reviewer（產出後審查）、Supervisor（中央監督動態分派）、Hierarchical Delegation（層級遞委派），涵蓋從簡單到複雜的團隊協作場景。
- **自動 Skill 生成**：不只是產生 agent 定義，還對應生成每個 agent 需要的 skill 檔案，包含 SKILL.md 和 references 目錄。透過 Progressive Disclosure 控制上下文大小。
- **雙模式執行**：支援 Agent Teams（TeamCreate + SendMessage + TaskCreate，適合需要多 agent 協作的場景）和 Subagents（直接 Agent tool 調用，適合一次性簡單任務）兩種模式。
- **驗證與測試**：提供觸發驗證、dry-run 測試、有 skill vs 無 skill 比較測試，確保生成的團隊架構真正有效。
- **多語言提示啟動**：支援英文（「build a harness for this project」）、韓文（「하네스 구성해줘」）、日文（「ハーネスを構成して」）觸發。

## 怎麼用

### 透過 Marketplace 安裝

```bash
# 1. 加入 marketplace
/plugin marketplace add revfactory/harness

# 2. 安裝插件
/plugin install harness@harness-marketplace
```

### 直接安裝為全域 Skill

```bash
# 複製 skills 目錄到 ~/.claude/skills/harness/
cp -r skills/harness ~/.claude/skills/harness
```

### 使用範例

```text
# 深度研究團隊
Build a harness for deep research. I need an agent team that can investigate
any topic from multiple angles — web search, academic sources, community
sentiment — then cross-validate findings and produce a comprehensive report.

# 全端網站開發團隊
Build a harness for full-stack website development. The team should handle
design, frontend (React/Next.js), backend (API), and QA testing in a
coordinated pipeline from wireframe to deployment.

# YouTube 內容規劃團隊
Build a harness for YouTube content creation. The team should research
trending topics, write scripts, optimize titles/tags for SEO, and plan
thumbnail concepts.
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心理念 | 層級 |
|------|-------|------|----------|------|
| **Harness** | ⭐3.9k | 團隊架構工廠 | 領域描述 → 6 種團隊模式選擇 → 生成 agent + skill | L3 Meta-Factory |
| [[EveryInc-compound-engineering-plugin|Compound Engineering]] | ⭐17.8k | 工程流程插件 | 複利：每次工作讓下一次更容易 | L2 Skill |
| [[affaan-m-ECC|ECC]] | ⭐189k | Harness 優化系統 | 跨工具的 skills、記憶、安全、持續學習 | L2 Cross-Harness |
| Archon | — | Runtime 配置工廠 | 確定性、可重複的 runtime 配置 | L3 Meta-Factory |
| [[obra-superpowers|Superpowers]] | ⭐189k | Agent 超能力庫 | 增強 AI coding agent 能力的方法論 | L2 Skill |

## 相關概念
← [[AI-Agent]] · [[AI-Skills|Agent Skills 生態系]] · [[harness-engineering|Harness Engineering 駕馭工程]]

## 來源

- GitHub: <https://github.com/revfactory/harness>
- 原始 README: `raw/2026-05-29-revfactory-harness.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [revfactory/harness](https://github.com/revfactory/harness) |
| Stars | ⭐3,887 |
| License | Apache-2.0 |
| Language | HTML |
| 收錄日期 | 2026-05-29 |