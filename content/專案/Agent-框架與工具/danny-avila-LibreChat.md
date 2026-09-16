---
title: "LibreChat"
slug: danny-avila-LibreChat
created: 2026-09-16
updated: 2026-09-16
stars: 43838
language: zh-TW
topics: ["AI-Agent", "self-hosted", "MCP"]
---

# LibreChat

> ⭐43.8k · 自架多模型聊天與 Agent 平台，整合 MCP、Skills、子 Agent 與權限管理

## 快速導航

- [[AI-Agent]] — 相關背景與其他實作。
- [[self-hosted]] — 相關背景與其他實作。
- [[MCP]] — 相關背景與其他實作。

## 是什麼

LibreChat 將多個 AI 提供者整合到同一個可自架 Web 介面，除了聊天紀錄、分支、檔案處理，也涵蓋 Agent、MCP 工具、Code Interpreter、Artifacts 與多使用者登入。它是應用平台，而不是自行訓練出的模型。

本次 README 顯示 v0.8.8-rc3 新功能，包括 beta Agent Management API 與高度實驗性的 attached workspaces。實作重點逐漸從單純聊天 UI 延伸到工具執行、委派、審批與觀測；正式部署應區分穩定功能和實驗功能，並自行配置模型服務及權限。

## 核心特色

### 多提供者與自訂端點

支援 OpenAI、Anthropic、Google 等，以及 OpenAI-compatible 端點與本地服務。

### Agent 工具生態

支援 MCP、檔案搜尋、SKILL.md 指令套件及獨立上下文的 Subagents。

### 上下文與互動管理

對話分支、手動摘要壓縮、可恢復串流與多裝置接續。

### 管理與可觀測性

多使用者驗證、角色控制、管理介面，以及 OpenTelemetry／Langfuse 整合。

## 怎麼用

依官方 Docker 文件，先安裝 Git 與 Docker；以下為最小本地啟動流程，模型憑證與自訂端點仍需另行設定。

```bash
git clone https://github.com/danny-avila/LibreChat.git
cd LibreChat
cp .env.example .env
docker compose up -d
```

1. 開啟 http://localhost:3080 註冊並登入；未分租戶的單租戶部署中，第一個帳號成為管理員。
2. 依需要設定 .env；使用自訂 librechat.yaml 時，必須透過 Compose volume 掛載。
3. 先測試聊天與單一工具，再開放 Agent 工作區和程式執行。

### 限制與注意事項

附掛工作區被官方標為高度實驗性。不要將 Full access 當預設；自架只代表掌控應用部署，外部模型與 MCP 仍可能接收資料。Docker 映像的 CPU 架構與資料庫相容性應在目標機器實測。

## 跟其他方案的關係

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| LibreChat | 多提供者聊天與 Agent Web 平台 | 需要一站式多使用者介面及工具管理時。 |
| 直接使用模型 API | 程式呼叫模型 | 需自行建置 UI、登入與對話儲存。 |
| Coding Agent CLI | 終端程式工作流 | 可與 Web 平台互補，但介面與權限模型不同。 |

比較為架構定位，不代表 LibreChat 可直接取代所有專用 Coding Agent。

## 相關概念

← [[AI-Agent]] · [[self-hosted]] · [[MCP]]

## 來源

- [GitHub](https://github.com/danny-avila/LibreChat)
- [官方 README](https://github.com/danny-avila/LibreChat/blob/main/README.md)
- [補充官方文件](https://www.librechat.ai/docs/local/docker)
- README 快照：`raw/2026-09-16-danny-avila-LibreChat.md`
- Metadata 快照：`raw/2026-09-16-danny-avila-LibreChat.metadata.json`

本頁根據收錄當日官方文件整理；安裝指令為使用說明，非本次實機安裝驗證。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/danny-avila/LibreChat |
| Stars | 43,838（2026-09-16 快照） |
| License | MIT |
| Language | TypeScript（頁面語言：繁體中文） |
| 收錄日期 | 2026-09-16 |
