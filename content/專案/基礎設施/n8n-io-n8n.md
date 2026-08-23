---
title: n8n
slug: n8n-io-n8n
created: 2019-06-22
updated: 2026-06-16
stars: 192675
language: TypeScript
topics: [ai, automation, workflow, mcp, low-code, no-code, self-hosted, integration]
---

# n8n

> ⭐192675 · 公平碼授權的工作流自動化平台，400+ 整合 + 原生 AI 能力，自架或雲端任選

## 快速導航

[[workflow-automation|工作流自動化]] · [[MCP|MCP 協議]] · [[self-hosted|自架 AI 平台]]

## 是什麼

n8n（發音 "n-eight-n"，源自 "nodemation"）是一個公平碼（fair-code）授權的工作流自動化平台，讓技術團隊能用程式碼的彈性加上無程式碼的速度來建構自動化流程。它提供 400+ 原生整合，從資料庫、API 到 SaaS 服務都能連接，並內建基於 LangChain 的 AI Agent 工作流功能。

n8n 的核心理念是「Code When You Need It」——需要時可以寫 JavaScript/Python，不需要時就用視覺化拖曳介面。它支援自架（self-host），讓你完全掌控資料和部署環境，同時也提供商業雲端版本。企業級功能包括 SSO、進階權限管理、air-gapped 部署等。

專案由 Jan Oberhauser 創立，社群非常活躍，有 900+ 現成工作流模板可供直接套用。在 LLM 時代，n8n 特別強調 AI-Native 能力，讓開發者能直接在自動化流程中整合 AI Agent、RAG pipeline 和各種 LLM 操作。

## 核心特色

- **400+ 整合**：連接 PostgreSQL、Slack、GitHub、Gmail、Notion 等數百種服務，涵蓋資料庫、通訊、CRM、雲端服務
- **AI-Native**：內建 LangChain 節點，支援 AI Agent、RAG、記憶、工具呼叫等完整 LLM 工作流
- **MCP 支援**：同時作為 MCP Client 和 MCP Server，能呼叫外部 MCP Server 也能把自己暴露為 MCP Server
- **雙模式編輯**：視覺化拖曳介面 + JavaScript/Python 程式碼節點，按需切換
- **自架優先**：公平碼授權，可部署在任何環境，資料完全自主
- **企業就緒**：SSO、RBAC、audit log、air-gapped 部署、高可用架構
- **900+ 模板**：社群貢獻的現成工作流，涵蓋行銷自動化、資料同步、監控告警等場景

## 怎麼用

```bash
# 最快上手：npx 一鍵啟動（需要 Node.js）
npx n8n

# Docker 部署（推薦正式環境）
docker volume create n8n_data
docker run -it --rm --name n8n \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n \
  docker.n8n.io/n8nio/n8n

# 開啟瀏覽器
# http://localhost:5678
```

更多部署方式請參考官方文件：https://docs.n8n.io/hosting/

## 跟其他方案的關係

| 方案 | 類型 | AI 能力 | 自架 | 適用場景 |
|------|------|---------|------|----------|
| [[n8n-io-n8n|n8n]] | 工作流自動化 | ✅ LangChain 原生 | ✅ 公平碼 | 技術團隊自動化 |
| [[langgenius-dify|Dify]] | LLM App 平台 | ✅ 內建 Agent | ✅ 開源 | LLM 應用開發 |
| [[browser-use-browser-use|Browser Use]] | 瀏覽器 Agent | ✅ 專注瀏覽 | ❌ 僅雲端 | 網頁自動化 |
| [[CherryHQ-cherry-studio|Cherry Studio]] | AI 客戶端 | ✅ 多模型 | ✅ 開源 | AI 對話生產力 |
| Make/Zapier | 工作流自動化 | ❌ 基本 | ❌ 僅雲端 | 非技術用戶 |

## 相關概念

← [[workflow-automation]] · [[MCP]]

## 來源

- GitHub：https://github.com/n8n-io/n8n
- 官方文件：https://docs.n8n.io
- AI 指南：https://docs.n8n.io/advanced-ai/
- Raw 檔案：`knowledge-base/raw/2026-06-16-n8n-io-n8n.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/n8n-io/n8n |
| Stars | ⭐192675|
| License | Fair-code (Sustainable Use License) |
| 收錄日期 | 2019-06-22 |
