---
title: PostHog
slug: PostHog-posthog
created: 2026-07-17
updated: 2026-07-17
stars: 35834
language: Python
topics:
  - analytics
  - ai-analytics
  - feature-flags
  - experiments
  - session-replay
  - error-tracking
---

# PostHog

> ⭐35.8k · 開源產品分析與 AI 可觀測平台，從分析、session replay 到 feature flags、實驗、錯誤追蹤一站式搞定


## 快速導航
快速導航：[[observability|可觀測性]] · [[langfuse-langfuse|Langfuse]] · [[MCP]]

## 是什麼

PostHog 是一個開源平台，定位為「建構自駕產品（self-driving products）」的一站式工具。它不只做產品分析，而是把產品開發所需的所有工具打包在一起：分析、session replay、feature flags、A/B 實驗、錯誤追蹤、日誌、調查、資料倉儲、資料管線，以及 AI 可觀測性。

最新加入的 self-driving mode 是一大亮點：它把產品數據中的信號（錯誤、rage clicks、失敗查詢）自動轉成研究報告和 pull request，讓開發者直接 review 和 merge。這讓 PostHog 從被動分析工具進化為主動問題診斷引擎。

PostHog 透過 MCP 整合到 Claude Code、Cursor 等 AI Agent 工具中，讓 AI Agent 可以直接讀取和分析產品數據。AI observability 功能可以捕捉 LLM 應用的 traces、generations、延遲和成本，與 Langfuse 類似但整合在更大的產品生態中。

## 核心特色

- **Self-driving mode**：自動將產品數據信號（錯誤、rage clicks、失敗查詢）轉成研究報告和 PR，開發者只需 review 和 merge
- **AI observability**：捕捉 LLM 應用的 traces、generations、延遲和成本，與產品數據並列分析
- **MCP 整合**：透過 MCP 連接 Claude Code、Cursor 等 AI Agent，讓 AI 直接查詢和分析產品數據
- **Session replay**：觀看真實用戶的網站或 App 操作錄影，診斷問題和理解用戶行為
- **一站式工具鏈**：分析、feature flags、A/B 實驗、錯誤追蹤、日誌、調查、資料倉儲、資料管線全部整合
- **開源 + 慷慨免費額度**：每月 100 萬事件、5k 錄影、100 萬 flag 請求、10 萬例外免費

## 怎麼用

```bash
# 方式一：PostHog Cloud（推薦）
# 註冊 https://us.posthog.com/signup 或 https://eu.posthog.com/signup

# 方式二：自架（需要 4GB 記憶體的 Linux）
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/posthog/posthog/HEAD/bin/deploy-hobby)"

# 安裝 SDK（以 JavaScript 為例）
npm install posthog-js

# 或使用 MCP 連接到 AI Agent
# 文檔：https://posthog.com/mcp
```

支援 JavaScript、React、Next.js、Vue、React Native、Android、iOS、Flutter、Python、Node、PHP、Ruby、Go、.NET 等多種語言和框架的 SDK。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心差異 |
|------|-------|------|----------|
| **PostHog** | ⭐35.8k | 產品分析+AI 觀測 | 一站式平台，self-driving mode，MCP 整合 |
| [[langfuse-langfuse\|Langfuse]] | ⭐29.2k | LLM 觀測 | 專注 LLM 觀測和評測，PostHog 更全面 |
| [[plausible-analytics\|Plausible]] | ⭐27.7k | 網站分析 | 隱私優先的輕量網站分析，功能較少 |
| Google Analytics | — | 網站分析 | PostHog 的商業替代目標之一 |
| Mixpanel | — | 產品分析 | 商業產品分析工具，PostHog 開源替代 |

## 相關概念

← [[observability|可觀測性]] · [[langfuse-langfuse|Langfuse]] · [[MCP]]

## 來源

- GitHub: <https://github.com/PostHog/posthog>
- 官網: <https://posthog.com>
- 原始 README: `raw/2026-07-17-PostHog-posthog.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [PostHog/posthog](https://github.com/PostHog/posthog) |
| Stars | ⭐35,834 |
| License | MIT（核心），ee 目錄另有授權 |
| Language | Python |
| 收錄日期 | 2026-07-17 |