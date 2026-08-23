---
title: Compound Engineering Plugin
slug: EveryInc-compound-engineering-plugin
created: 2026-05-29
updated: 2026-05-29
stars: 17771
language: TypeScript
topics: [AI Skills, 複利工程, Coding Agent CLI]
---

# Compound Engineering Plugin

> ⭐17771 · Claude Code / Codex / Cursor 的複利工程插件，讓每次工作都讓下一次更容易。

## 快速導航

[[AI-Agent]] · [[AI-Skills]] · [[AI-Skills|Agent Skills 生態系]]

## 是什麼

Compound Engineering Plugin 是 Every Inc. 開發的 AI coding agent 插件，核心理念來自「複利工程」——每次工程工作應讓後續工作更容易，而非累積技術債。傳統開發中，每個功能都增加複雜度、每個修補都留下更多隱性知識；Compound Engineering 反轉這個循環：80% 時間花在規劃和審查，20% 在執行。

這個插件提供一整套技能（skills）和代理（agents），把 brainstorm → plan → work → review → compound 的流程結構化。每個循環都在累積：brainstorm 讓計畫更銳利，review 抓到模式而非只是 bug，compound note 讓下一個 agent 不用從頭學同樣的教訓。目前內建 37 個技能和 51 個代理，涵蓋策略制定、構想發想、需求文件、計畫執行、除錯、程式碼審查到學習記錄的完整循環。

插件支援 Claude Code、Codex、Cursor、GitHub Copilot 和 Factory Droid 等主流 AI coding 工具，安裝方式因平台而異，但核心體驗一致——把複利工程思維帶入日常開發。

## 核心特色

- **複利工程循環**：brainstorm → plan → work → review → compound，每步都在累積價值而非債務。策略文件（STRATEGY.md）作為錨點，讓 ideate、brainstorm、plan 都有共同根基。
- **37 個技能 + 51 個代理**：從 `/ce-strategy`（策略制定）到 `/ce-product-pulse`（產品脈衝報告），覆蓋完整工程循環。關鍵技能包括 `/ce-brainstorm`、`/ce-plan`、`/ce-work`、`/ce-debug`、`/ce-code-review`、`/ce-doc-review`、`/ce-compound`。
- **多平台支援**：同一套插件跨 Claude Code、Codex、Cursor、GitHub Copilot、Factory Droid 運行。Claude Code 透過 plugin marketplace 安裝，Codex 需要 marketplace + TUI 安裝，Copilot 則從 source 安裝。
- **Product Pulse 報告**：`/ce-product-pulse` 自動生成時間窗口內的使用狀況、效能、錯誤和追蹤報告，存到 `docs/pulse-reports/` 形成可瀏覽的時間線，讓下一次策略更新有真實數據支撐。
- **策略錨點**：`/ce-strategy` 建立和維護 `STRATEGY.md`，記錄產品的目標問題、方法、人物、指標和路線，讓所有下游技能（ideate、brainstorm、plan）都有共同根基。

## 怎麼用

### Claude Code 安裝

```bash
# 從 marketplace 安裝
/plugin marketplace add EveryInc/compound-engineering-plugin
/plugin install compound-engineering-plugin
```

### Codex 安裝

```bash
# 1. 註冊 marketplace
codex plugin marketplace add EveryInc/compound-engineering-plugin

# 2. 安裝代理
bunx @every-env/compound-plugin install compound-engineering --to codex

# 3. 啟動 Codex，在 TUI 中 /plugins 選擇安裝
codex
```

### 基本使用流程

```text
# 典型功能開發循環
/ce-brainstorm "make background job retries safer"
/ce-plan docs/brainstorms/background-job-retry-safety-requirements.md
/ce-work
/ce-code-review
/ce-compound

# 除錯流程
/ce-debug "the checkout webhook sometimes creates duplicate invoices"
/ce-code-review
/ce-compound
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心理念 | 平台支援 |
|------|-------|------|----------|----------|
| **Compound Engineering** | ⭐17.8k | 工程流程插件 | 複利：每次工作讓下一次更容易 | Claude Code, Codex, Cursor, Copilot, Droid |
| [[affaan-m-ECC|ECC]] | ⭐189k | Harness 優化系統 | 跨工具的 skills、記憶、安全、持續學習 | Claude Code 為主 |
| [[revfactory-harness|Harness]] | ⭐3.9k | Agent 團隊架構 | 6 種團隊模式自動產生 agent + skill | Claude Code |
| [[github-spec-kit|Spec Kit]] | ⭐98k | 規格驅動開發 | 從 spec 到自動化驗證 | Claude Code, Codex, Cursor |
| [[obra-superpowers|Superpowers]] | ⭐189k | Agent 超能力庫 | 增強 AI coding agent 能力的方法論 | 多平台 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[AI-Skills]]

## 來源

- GitHub: <https://github.com/EveryInc/compound-engineering-plugin>
- 原始 README: `raw/2026-05-29-EveryInc-compound-engineering-plugin.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/EveryInc/compound-engineering-plugin |
| Stars | ⭐17771|
| License | MIT |
| 收錄日期 | 2026-05-29 |
