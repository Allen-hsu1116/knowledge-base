---
title: iii
slug: iii-hq-iii
created: 2025-01-02
updated: 2026-05-28
stars: 16876
language: Rust
topics:
  - workflow-automation
  - AI-Agent
  - backend-infra
  - observability
---

# iii

> ⭐16.9k · 即時組合、擴展與觀測所有服務的統一平台，Worker / Function / Trigger 三原語打造後端基礎設施

快速導航：[[workflow-automation|工作流自動化]] · [[AI-Agent]] · [[czlonkowski-n8n-mcp|n8n MCP]] · [[observability|可觀測性]]

## 是什麼

iii 是一個即時後端基礎設施平台，用 Worker、Function、Trigger 三個原語統一了佇列、Cron、HTTP、狀態管理、可觀測性、Agent 和 Sandbox 等後端能力。新增一個 Worker 即可擴展系統功能，其他 Worker 會自動發現並呼叫。Agent 也能在 runtime 動態新增 Worker、發現功能、呼叫並追蹤。

## 核心特色

- 🔧 **三原語模型**：Worker（進程）、Function（工作單元）、Trigger（觸發條件）涵蓋所有後端能力
- ⚡ **即時組合**：新增 Worker 即可擴展系統能力，其他 Worker 自動發現並呼叫
- 🤖 **Agent 友善**：Agent 可在 runtime 動態新增 Worker、發現功能、呼叫並追蹤
- 🌐 **多語言 SDK**：Node.js、Python、Rust 三種官方 SDK
- 🦀 **Rust 引擎**：高效能核心運行時
- 📊 **開發者 Console**：即時檢視 Workers、Functions、Triggers、Queues 和 Traces

## 怎麼用

```bash
# 安裝 iii CLI
curl -fsSL https://iii.dev/install.sh | sh

# 或使用 npm
npm install -g @iii/cli

# 建立新專案
iii init my-project
cd my-project

# 啟動本地開發伺服器
iii dev

# 部署
iii deploy
```

SDK 可用於 Node.js、Python、Rust，支援本機開發與雲端部署。引擎採 Elastic License 2.0，SDK 為 Apache 2.0。

## 跟其他方案的關係

| 方案 | Stars | 類型 | Agent 整合 | 即時組合 | 多語言 SDK |
|------|-------|------|-----------|---------|-----------|
| **iii** | ⭐16.9k | 後端平台 | ✅ | ✅ | ✅ Node/Python/Rust |
| [[czlonkowski-n8n-mcp\|n8n]] | ⭐70k+ | 工作流 | ✅ MCP | ❌ | ❌ |
| Temporal | ⭐12k+ | 工作流引擎 | ❌ | ❌ | ✅ |
| Fly.io | — | 雲平台 | ❌ | ❌ | ✅ |

← [[workflow-automation|工作流自動化]] · [[AI-Agent]] · [[czlonkowski-n8n-mcp|n8n MCP]] · [[observability|可觀測性]]

## 來源

- GitHub: <https://github.com/iii-hq/iii>
- 原始 README: `raw/2026-05-28-iii-hq-iii.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [iii-hq/iii](https://github.com/iii-hq/iii) |
| Stars | ⭐16,876 |
| License | Elastic-2.0 (engine) / Apache-2.0 (SDKs) |
| Language | Rust |
| 收錄日期 | 2026-05-28 |