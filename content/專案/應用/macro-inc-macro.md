---
title: Macro
slug: macro-inc-macro
created: 2026-10-29
updated: 2026-10-29
stars: 5423
language: Rust
topics: [AI-Agent, MCP, CRM, workspace]
---

# Macro

> ⭐5.4k · Rust / SolidJS · 將郵件、聊天、文件、任務與 CRM 接到共享團隊記憶的工作空間。

## 快速導航

- [[AI-Agent]]：把 Agent 放進團隊日常工作流程。
- [[MCP]]：讓外部 Coding Agent 存取工作空間與工具。

## 是什麼

Macro 是整合型團隊工作空間，不只是聊天機器人或 Agent SDK。它將 Email、訊息、任務、文件、Canvas、通話與 CRM 放在同一套介面及後端，讓團隊不用一直搬運跨工具的上下文。

核心設計是雙向 @link：郵件可以連到任務，任務連到討論與 PR，文件也能引用客戶或其他資料。README 說明這些關係原生儲存為雙向圖，配合每日更新的 Markdown 記憶，供內建與外部 Agent 使用。

這次收錄以官方 README 與本機開發文件為依據。託管產品的能力不等於無憑證本機環境的能力；自架包含多項基礎服務，不能視為單一容器即可完整取代 SaaS。

## 核心特色

- **統一收件匣**：郵件、訊息、任務與 @mentions 共用入口，支援鍵盤操作。
- **雙向引用**：將需求來源、討論、任務及 PR 串在一起，方便回查工作緣由。
- **CRDT 協作文件**：Markdown 文件支援即時共同編輯、離線合併與 Agent 編輯。
- **團隊記憶**：官方描述每日彙整團隊活動，以可匯出的 Markdown 保存記憶。
- **MCP 接口**：Claude Code 等外部客戶端可連接工作空間，使用搜尋與操作能力。
- **內建 CRM**：公司、聯絡人與交易資料和郵件、聊天共存，不是獨立孤島。

## 怎麼用

### 先使用託管服務

到 [Macro App](https://macro.com/app) 建立帳號，再依官方引導連接 Gmail 或 Google Workspace。
連接含敏感郵件的帳號前，先檢查共享對象及頻道權限。

### 本機安裝與開發

以下是官方的本機堆疊啟動路徑；需先安裝 Nix，macOS 另需 Docker runtime。
本次僅查證文件，未實際安裝或執行 Macro。

```bash
git clone https://github.com/macro-inc/macro.git
cd macro
nix develop
just doctor-local
just run_local --no-doppler
```

本機堆疊含 Postgres、Redis、LocalStack、OpenSearch、Kafka 與 FusionAuth。
測試憑證不會讓 Google、GitHub、Stripe 等整合自動可用。
尤其 Agent harness 的公開 MCP 路由需要真正的 Google Gmail identity provider 設定，否則會在啟動階段退出。
不要把開發用固定密鑰或免密碼登入環境直接暴露到公網。

### 連接外部 Agent

```bash
claude mcp add --transport http macro https://mcp-server.macro.com/mcp
```

這是託管 MCP endpoint；仍需完成帳號授權，不代表任意客戶端可讀取團隊資料。

## 跟其他方案的關係

下表是依官方定位整理的選型比較，不是實測評分。

| 方案 | 工作方式 | 取捨 |
| --- | --- | --- |
| Macro | 郵件、訊息、文件、任務與 CRM 共用上下文 | 整合度高，但導入涉及資料與權限遷移 |
| 多個獨立 SaaS 加整合器 | 各工具獨立，再透過連接器同步 | 可保留既有工具，但需維護同步與跨工具權限 |
| 單一 Agent 客戶端 | 以模型對話和工具呼叫為中心 | 不會自動提供完整團隊郵件與 CRM 系統 |
| 自建 MCP 整合 | 為既有業務工具建立標準入口 | 可漸進導入，但團隊記憶及資料模型需另設計 |

## 相關概念

← [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub：macro-inc/macro](https://github.com/macro-inc/macro)
- [官方本機開發指南](https://github.com/macro-inc/macro/blob/main/docs/development/running-locally.md)
- [官方 MCP 設定](https://docs.macro.com/AI/mcp/overview)
- README 快照：`raw/2026-10-29-macro-inc-macro.md`
- Metadata 快照：`raw/2026-10-29-macro-inc-macro.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | https://github.com/macro-inc/macro |
| Stars | 5,423（2026-10-29 快照） |
| License | AGPL-3.0 |
| Language | Rust；前端 SolidJS / TypeScript |
| 收錄日期 | 2026-10-29 |
