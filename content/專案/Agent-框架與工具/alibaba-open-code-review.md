---
title: Open Code Review
slug: alibaba-open-code-review
created: 2026-07-24
updated: 2026-07-24
stars: 11528
language: Go
topics:
  - agent
  - agent-skills
  - code-review
  - code-review-assistant
  - harness
  - repository-level-context
---

# Open Code Review

> ⭐11.5k · 阿里巴巴開源的 AI 程式碼審查工具，混合確定性工程 + LLM Agent 架構，精確到行級的 review 評論

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]
- 🛠 **AI Skills** → [[AI-Skills]]
- 🔌 **MCP** → [[MCP]]
- 🧠 **Coding Agent CLI** → [[Coding-Agent-CLI]]

## 是什麼

Open Code Review（簡稱 OCR）是阿里巴巴集團內部 AI 程式碼審查助手的開源版本。過去兩年它在阿里巴巴內部服務了數萬名開發者，發現了數百萬個程式碼缺陷，經過大規模驗證後孵化為開源專案。你只需要配置一個模型端點就能開始使用。

它的核心設計理念是「確定性工程 × Agent 混合架構」——把不能出錯的步驟交給工程邏輯保證正確性，把需要動態判斷的部分交給 LLM Agent。這使得它在 50 個開源專案、200 個真實 PR、10 種程式語言的基準測試中，以相同底層模型達到比通用 Agent（如 Claude Code）更高的 Precision 和 F1，同時只消耗約 1/9 的 token。

工具讀取 Git diff，將變更檔案透過具備工具使用能力的 Agent 發送給可配置的 LLM，生成精確到行級的結構化審查評論。Agent 可以讀取完整檔案內容、搜尋程式碼庫、檢查其他變更檔案以獲取上下文，產出深度審查而非表面 diff 回饋。除了 diff 審查，`ocr scan` 還能審查整個檔案，適合審計陌生的程式碼庫。

## 核心特色

- **混合架構** — 確定性工程負責精確檔案選擇、智慧檔案捆綁、細粒度規則匹配、外部定位與反思模組；Agent 負責場景調優的 prompt 和工具集動態決策
- **精確行級評論** — 獨立的評論定位模組和評論反思模組系統性地提升 AI 回饋的位置準確度和內容準確度
- **智慧檔案捆綁** — 將相關檔案分組為單一審查單元（如 `message_en.properties` 和 `message_zh.properties` 捆綁），每組作為子 Agent 獨立執行，天然支援並行審查
- **內建規則集** — 預設微調規則集涵蓋 NPE、執行緒安全、XSS、SQL 注入等常見缺陷模式
- **多 Agent 整合** — 支援 Claude Code、Codex、Cursor，可作為 Skill 或 Plugin 安裝；也支援 Delegation Mode 讓你的 AI Agent 自行執行審查
- **CI/CD 整合** — 支援 GitHub Actions、GitLab CI、GitFlic CI、Gerrit 整合，可嵌入持續交付管線
- **MCP Server** — 可透過 MCP Server 擴充審查 Agent 的外部工具能力

## 怎麼用

### 安裝

```bash
npm install -g @alibaba-group/open-code-review
```

### 配置 LLM

```bash
ocr config provider          # 選擇內建 provider 或新增自訂
ocr config model             # 選擇模型
```

### 審查程式碼

```bash
cd your-project

# Workspace 模式 — 審查所有 staged、unstaged 和 untracked 變更
ocr review

# 分支範圍 — 比較兩個 ref
ocr review --from main --to feature-branch

# 單一 commit
ocr review --commit abc123

# 全檔掃描 — 審查整個檔案而非 diff
ocr scan
ocr scan --path internal/agent

# 委派模式 — 讓你的 AI Agent 自行執行審查
ocr delegate preview
ocr delegate rule src/main.go src/handler.go
```

### 作為 Skill / Plugin 安裝

支援 Claude Code、Codex、Cursor，安裝後可直接在 Agent 中呼叫審查功能。

## 跟其他方案的關係

| 方案 | Stars | 語言 | 混合架構 | 行級精度 | CI/CD | 多 Agent |
|------|-------|------|---------|---------|-------|---------|
| **Open Code Review** | ⭐11.5k | Go | ✅ 確定性+LLM | ✅ | ✅ | ✅ |
| [[anthropics-claude-code\|Claude Code]] | ⭐128k | Python | ❌ 純 LLM | ❌ | — | — |
| [[tirth8205-code-review-graph\|Code Review Graph]] | ⭐15.6k | TypeScript | ❌ 純 LLM | ❌ | — | — |
| [[Dicklesworthstone-destructive_command_guard\|dcg]] | ⭐4.8k | Rust | ✅ 規則+Hook | ✅ | ✅ | ✅ |

Open Code Review 的核心差異化在於「確定性工程 × Agent 混合架構」——通用 Agent 在大型 changeset 上容易跳過檔案、行號漂移、品質不穩定，OCR 用工程邏輯約束這些不能出錯的步驟，讓 Agent 專注在動態決策上。這使得它在相同模型下達到更高 Precision 且只消耗 1/9 token。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[MCP]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: https://github.com/alibaba/open-code-review
- 官網: https://open-codereview.ai
- 原始 README: `raw/2026-07-24-alibaba-open-code-review.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [alibaba/open-code-review](https://github.com/alibaba/open-code-review) |
| Stars | ⭐11,528 |
| License | Apache-2.0 |
| Language | Go |
| 收錄日期 | 2026-07-24 |