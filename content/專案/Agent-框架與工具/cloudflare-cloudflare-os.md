---
title: Cloudflare OS
slug: cloudflare-cloudflare-os
created: 2026-10-04
updated: 2026-10-04
stars: 10570
language: zh-TW
topics: [AI-Agent, self-hosted]
---

# Cloudflare OS

> ⭐10.6k · 以 Workers、隔離式 Gadgets 與 Gatekeepers 建構企業 AI 工作空間。

## 快速導航

- 🧠 [[AI-Agent]] — 用 Code Mode 執行任務並操作應用。
- 🛠 [[self-hosted]] — 區分本地試用、Cloudflare 部署與自有伺服器部署。

## 是什麼

Cloudflare OS 是 Cloudflare 開源的 AI 生產力環境，將 Agent 聊天、文件與小型應用開發整合到同一個工作空間。它不是取代 macOS 或 Linux 的傳統作業系統；「OS」指的是管理企業 AI 工作、應用與存取權限的軟體平台。

其基本單位是 Gadget：每份簡報或應用都可以是獨立、可修改程式碼的私有實例，而不是所有使用者共用一套固定 SaaS。工作空間使用 Durable Objects，Gadget 在 Dynamic Worker Facet 執行，透過 Cap’n Web RPC 讓使用者介面和 Agent 共用應用 API。

外部服務由 Gatekeepers 管理 OAuth、狹義資源權限、操作紀錄與核准。README 將目前版本定位為 v2 early access；本頁描述的是官方設計與操作文件，不代表已完成安全稽核或本機部署測試。

## 核心特色

- **隔離式 Gadgets**：每個應用實例獨立執行，預設私有，再明確分享給協作者。
- **Blueprints**：分享應用程式碼模板，讓其他人建立自己的副本，而非共用你的資料。
- **Code Mode Agent**：透過撰寫與執行程式片段完成一般任務及應用開發。
- **能力式權限**：Agent 與 Gadget 不自動繼承所有已設定帳號，需明確引入特定資源。
- **非同步核准**：Gatekeeper 可先回傳模擬結果，讓 Agent 繼續規劃，再由人類核准真正副作用。
- **多人即時協作**：以 Durable Objects 支援共享 Gadget 的即時更新。

特別注意：模擬結果不等於外部操作已成功；驗收與稽核必須區分模擬階段和實際提交。

## 怎麼用

### 本地試用

先準備 Git 與 pnpm。以下依官方 README 的本地入口操作：

```bash
git clone https://github.com/cloudflare/cloudflare-os.git
cd cloudflare-os
pnpm run-local
```

開啟 `http://localhost:8787`。這個流程以 Wrangler／workerd 執行，資料放在 `.wrangler` 子目錄；官方明示它不是正式環境部署方式。

### 初次操作

1. 設定可用模型供應商；模型支援不代表免付費或無須憑證。
2. 試著要求「建立協作白板」或「製作會議簡報」。
3. 要操作 GitHub、Google 等外部資源，先依各 Gatekeeper 文件設定 OAuth 或服務連線。
4. 明確授予任務所需資源，檢查待核准動作後再提交。

### 部署邊界

可使用官方 Cloudflare 帳號部署入口。自有伺服器雖可基於 workerd 執行，但 README 仍把完整部署文件與工具列為 **COMING SOON**，不能將本地啟動等同成熟自架方案。

## 跟其他方案的關係

以下是依 README 定位整理的比較，不是效能基準測試。

| 方案 | 核心單位 | 與 Cloudflare OS 的差異 |
|---|---|---|
| Cloudflare OS | Gadget、Blueprint、Gatekeeper | 整合應用生成、協作與資源級權限 |
| 傳統線上辦公套件 | 固定文件類型 | Gadget 可連同應用程式碼一起修改與複製 |
| 一般 Agent 聊天介面 | 對話與工具呼叫 | 本專案還管理獨立應用實例與分享 |
| MCP 服務整合 | 工具／資源介面 | Gatekeeper 另包裝授權、資源範圍與延後核准；不應視為單純協議替換 |

## 相關概念

← [[AI-Agent]] · [[self-hosted]]

## 來源

- [GitHub 與官方 README](https://github.com/cloudflare/cloudflare-os)
- [部署入口](https://os.cloudflare.app/deploy)
- 原始快照：`raw/2026-10-04-cloudflare-cloudflare-os.md`
- Metadata 快照：`raw/2026-10-04-cloudflare-cloudflare-os.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/cloudflare/cloudflare-os |
| Stars | 10,570（2026-10-04 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-10-04 |
