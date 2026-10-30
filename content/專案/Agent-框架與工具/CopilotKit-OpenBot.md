---
title: OpenBot（CopilotKit）
slug: CopilotKit-OpenBot
created: 2026-10-30
updated: 2026-10-30
stars: 8150
language: zh-TW
topics: ["ag-ui", "agent-governance", "ai-agents", "browser-automation", "copilotkit", "generative-ui", "mcp"]
---

# OpenBot（CopilotKit）

> ⭐8.15k · AG-UI 企業 Agent 模板、政策閘道與稽核

## 快速導航

- [[AI-Agent]] — Agent 能力與執行迴圈。
- [[sandbox]] — 電腦隔離與宿主權限邊界。

## 是什麼

OpenBot 是 CopilotKit 提供的自架 AI 同事範本，透過 AG-UI 接入不同框架的 Agent，將對話、瀏覽器、檔案及工具放在共同介面。它不是已代管完成的 SaaS，也不是可直接依賴的公開套件；官方建議複製 repository，再客製 tenant package。

它的重點是動作治理：工具操作先經 gateway 判斷政策並寫入稽核，再交給電腦執行。產品資料放在 PostgreSQL，持久對話與記憶依賴 CopilotKit Intelligence；模型與憑證由管理者提供。目前為 Beta，開源主程式不代表所有相依服務都免帳號或免授權。

此專案與 nightly-labs 的同名 OpenBot 不同。README 的詳細實作以每位使用者一個容器為預設，各 Bot 有自己的資料夾和瀏覽器 profile；啟用 Isolated 才讓單一 Bot 獨占容器，不能把宣傳摘要解讀為所有 Bot 預設都有獨立 VM。

## 核心特色

### AG-UI 接入

可接 LangGraph、Mastra、CrewAI、Pydantic AI、Google ADK 或自行實作的端點。

### 政策與稽核

CEL 規則先 deny 後 allow；缺少政策或規則損壞時拒絕執行，動作先記錄後發生。

### 人機交接

登入或 2FA 可請使用者接手，人工控制期間拒絕 Bot 動作，並記錄控制權切換。

### 工具與 UI 治理

MCP 工具與 React 元件需授權；Skills 是操作指引，不會自行賦予能力。

### 持久工作

透過 Intelligence 保存 threads 與 memory，另有 worker 執行排程 routines。

## 怎麼用

前置需求是 Docker、Bun 1.4+、Intelligence 專案／授權及模型 API key。以下整理官方原始碼啟動方式，未在本次收錄中安裝或執行：

```sh
git clone https://github.com/CopilotKit/OpenBot.git
cd OpenBot
cp .env.example .env
bun install
npx --yes copilotkit@latest login
npx --yes copilotkit@latest project select
bun scripts/setup-learning.ts
```

在 `.env` 補上自己的 `OPENAI_API_KEY`，確認 Intelligence 設定與加密金鑰後再啟動：

```sh
bash scripts/start.sh
```

開啟 `http://localhost:3010`，先用低風險瀏覽任務測試，再到 `/admin/audit` 查看紀錄。可設定 deny rule 後重試，驗證拒絕行為。

**部署注意**：範例預設 `OPENBOT_SINGLE_USER=true`，會把請求視為管理員；對外服務前必須停用並設定登入。更換公開範例加密金鑰，保持 computer／supervisor 只在私有邊界內可達。Intelligence 本機預覽有獨立授權條件，不等同正式生產部署。

## 跟其他方案的關係

以下是兩份官方 README 的定位對照，並非效能測試或安全認證。

| 方案 | 接入方式 | 重點與取捨 |
| --- | --- | --- |
| [[CopilotKit-OpenBot\|OpenBot（CopilotKit）]] | AG-UI endpoints | 企業客製範本、政策 gateway、audit；需 Intelligence 相依服務。 |
| [[milind-soni-OpenMausBot\|OpenMausBot]] | 本機 Claude／Codex／Grok CLI | 聊天式多 Agent 桌面、核准卡與多種電腦後端。 |

兩者都有可視化 Agent 工作介面，但前者以協議與部署治理為主，後者以沿用本機 Agent 和桌面工作體驗為主。請依實際權限設定評估，不因開源或有容器就推定安全。

## 相關概念

← [[AI-Agent]] · [[sandbox]]

## 來源

- [GitHub](https://github.com/CopilotKit/OpenBot)
- [官方 README](https://github.com/CopilotKit/OpenBot/blob/main/README.md)
- 原始快照：`raw/2026-10-30-CopilotKit-OpenBot.md`
- API metadata：`raw/2026-10-30-CopilotKit-OpenBot.metadata.json`
- 對照來源：[OpenBot README](https://github.com/CopilotKit/OpenBot/blob/main/README.md)、[OpenMausBot README](https://github.com/milind-soni/OpenMausBot/blob/main/README.md)。
- 本頁為文件整理；功能與安全敘述依收錄當日官方文件，非實機驗證結果。

---

| Metadata | 值 |
| --- | --- |
| GitHub | https://github.com/CopilotKit/OpenBot |
| Stars | 8,150（2026-10-30 快照） |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-10-30 |
