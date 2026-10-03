---
title: Effect
slug: Effect-TS-effect
created: 2026-10-03
updated: 2026-10-03
stars: 16552
language: TypeScript
topics:
  - workflows
  - observability
  - typescript
  - ai
---

# Effect

> ⭐16.6k · 把型別化錯誤、依賴注入、結構化並行與追蹤整合成 TypeScript 應用底座的函式庫。

## 快速導航

- [[workflow-automation]]：以程式碼表達可維護的執行流程。
- [[observability]]：以 tracing 與 OpenTelemetry 整合診斷應用。

## 是什麼

Effect 是建構穩健、可維護且型別安全 TypeScript 應用的函式庫。它處理的不是單一 UI 或聊天產品，而是應用底層反覆出現的錯誤處理、依賴管理、並行執行、排程、追蹤與 schema 驗證問題。

這個 repository 採 monorepo 結構，包含核心 `effect`、不同執行平台的整合、SQL 套件、觀測與測試工具。與 LLM 的直接關聯來自 README 明列的 AI provider 套件，包括 Anthropic、OpenAI、OpenAI-compatible 與 OpenRouter；不能因此把整個 Effect 等同現成的 Agent UI 或完整 Agent 平台。

本次擷取的主分支 README 將 Effect 4.x 列為 LTS，並將 v3 原始碼移至 `v3` 分支。學習與導入時必須核對文件、核心套件與整合套件的版本，避免把 v3 範例直接套入 v4。

## 核心特色

- **型別化錯誤**：把錯誤處理列為核心程式設計能力。
  適合需要明確失敗路徑的 API 與背景任務。
- **依賴注入**：將服務依賴納入應用組合方式。
  可在設計時區分模型供應商、資料庫與其他外部服務。
- **結構化並行與排程**：提供處理多項任務和執行時序的基礎能力。
  具體取消、重試及資源釋放行為仍應依所用 API 文件確認。
- **統一 schema 驗證**：把資料驗證納入同一生態。
  型別與 schema 有助管理邊界，但不保證模型輸出內容正確。
- **跨平台與 SQL 整合**：README 列出 Node、Bun、Deno、Browser 及多款 SQL adapter。
  不同整合套件有自己的環境需求。
- **AI 與可觀測性套件**：提供多供應商 AI adapters 和 OpenTelemetry 整合。
  可以作為 AI 服務的工程底座，而不是只提供聊天介面。

## 怎麼用

在既有 TypeScript 專案中安裝核心套件，官方 README 的指令是：

```bash
npm install effect
```

開始前先核對環境：

1. TypeScript 至少 5.9；README 建議 TypeScript 7 以改善效能與工具相容性。
2. Node.js 的一般最低需求是 18，但個別 adapter 可以更高。
3. `tsconfig.json` 必須啟用 `strict`。
4. 先閱讀 v4 文件，再挑選執行平台與 provider 整合。

必要的 TypeScript 設定片段如下，需合併至自己的既有設定：

```json
{
  "compilerOptions": {
    "strict": true
  }
}
```

- `@effect/sql-sqlite-node` 的 README 需求是 Node.js 22.16 或更新版本，不能只看核心的最低版本。
- AI 應用可從 `@effect/ai-openai`、`@effect/ai-anthropic` 等套件的官方 API 文件開始。
- provider 金鑰、API 費用、模型存取權與網路連線仍由應用管理。
- v3 使用者應先讀 repository 的 `MIGRATION.md`，而非直接替換套件版本。
- 本頁只整理上游文件，未在本機安裝 Effect 或執行 provider 呼叫。

## 跟其他方案的關係

以下是工程選型上的定位比較，不是正式 benchmark。

| 方案 | 主要角色 | 與 Effect 的差異 |
|---|---|---|
| 原生 Promise／async-await | JavaScript 非同步控制 | 語言原語本身不提供 Effect 所整合的整套 schema、依賴與觀測能力 |
| 視覺化工作流平台 | 以節點串接服務 | Effect 是 TypeScript 函式庫，不是拖曳式低程式碼產品 |
| 模型供應商 SDK | 呼叫個別模型 API | Effect AI adapters 是生態中的整合層，仍需供應商憑證與能力 |
| OpenTelemetry | 標準化遙測 | Effect 提供整合套件；不代表內建完整監控後端或儀表板 |

## 相關概念

← [[workflow-automation]] · [[observability]]

## 來源

- GitHub：[Effect-TS/effect](https://github.com/Effect-TS/effect)
- 官方文件：[effect.website](https://effect.website)
- 版本遷移：[MIGRATION.md](https://github.com/Effect-TS/effect/blob/main/MIGRATION.md)
- 原始快照：`raw/2026-10-03-Effect-TS-effect.md`（完整 README）。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/Effect-TS/effect |
| Stars | 16,552（2026-10-03 查詢） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-10-03 |

版本補充：4.x LTS 的敘述來自本次主分支 README，並不代表已在本機驗證 npm dist-tag 或所有 adapter 的相容性。
