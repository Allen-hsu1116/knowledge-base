---
title: "Postiz"
slug: "gitroomhq-postiz-app"
created: "2026-10-27"
updated: "2026-10-27"
stars: 38455
language: "zh-TW"
topics: ["AI-Agent", "generative-AI"]
---

# Postiz

> ⭐38.45k · 整合 AI、社群排程、分析與 Agent 介面的社群營運平台。

## 快速導航

- [[AI-Agent]] — 相關方法與實作背景。
- [[generative-AI]] — 相關方法與實作背景。

## 是什麼

Postiz 將社群帳號連線、內容編輯、排程發布及成效分析放進同一個工作空間。它既有代管 Cloud，也提供可部署在自己基礎設施上的原始碼版本，適合需要跨平台管理內容的個人與團隊。

它不是基礎模型或通用 Agent 框架，而是 Agent 可以操作的業務應用。Public API、CLI、MCP 與自動化平台整合，讓生成內容與實際發布形成工作流程；社群平台授權、費用與發布規則仍由各服務決定。

## 核心特色

- 跨平台排程：以行事曆管理貼文、重複發布與各平台內容差異。

- 團隊協作：邀請成員共同評論、編輯與安排發布。

- AI 輔助：提供 Copilot、圖片、影片與 Smart Agent；自架需自備模型服務金鑰。

- Agent 入口：提供 CLI、MCP、Public API 及 n8n／Make 等整合。

- 營運分析：觀察貼文表現；自架分析功能需要相應平台 scopes。

## 怎麼用

以下安裝的是官方 CLI 客戶端，不是 Postiz 伺服器。先準備 Cloud 帳戶或依官方 self-host 文件部署可用實例。

```bash
npm install -g postiz
postiz --help
postiz auth:login
postiz integrations:list
```

1. 自架者設定 POSTIZ_API_URL 指向自己的實例，並確認認證方式。

2. 先連接社群 channel，檢查 OAuth／平台開發者應用權限。

3. 在行事曆建立草稿，確認各平台預覽與時間，再明確授權發布。

### 使用邊界

- 自架不代表免費使用模型或社群 API；還須負擔基礎設施、備份與安全更新。

- 公開發布是外部副作用，應保留人工審閱；本次收錄沒有安裝或發送貼文。

## 跟其他方案的關係

以下為依官方文件整理的定位比較，不是實測效能排名。

| 方案 | 定位 | 選擇重點 |
|---|---|---|
| Postiz Cloud | 供應商代管，訂閱方案與配額 | 偏向快速上線、減少維運 |
| Postiz 自架 | 自備部署、平台應用與模型金鑰 | 偏向資料位置控制與客製化 |
| 通用 Agent／自動化工具 | 規劃與串接流程 | 可呼叫 Postiz，但不取代其社群帳號與排程層 |

## 相關概念

← [[AI-Agent]] · [[generative-AI]]

## 來源

- GitHub：https://github.com/gitroomhq/postiz-app
- README 原始快照：`raw/2026-10-27-gitroomhq-postiz-app.md`
- https://docs.postiz.com/cli/introduction
- https://docs.postiz.com/quickstart

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/gitroomhq/postiz-app |
| Stars | 38,455（2026-10-27 擷取） |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-27 |
