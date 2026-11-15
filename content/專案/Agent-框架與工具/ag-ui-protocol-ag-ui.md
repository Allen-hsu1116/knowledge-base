---
title: AG-UI
slug: ag-ui-protocol-ag-ui
created: 2026-11-15
updated: 2026-11-15
stars: 17371
language: TypeScript
topics: [ag-ui-protocol, agent-frontend, agent-ui, agentic-workflow, ai-agents]
---

# AG-UI

> ⭐17.4k · 以事件協議連接 AI Agent 與使用者介面，支援串流、共享狀態與人機協作。

## 快速導航

- [[AI-Agent]] — 後端代理能力與應用互動的分工。
- [[MCP]] — 工具連接協議與 UI 互動協議的互補。

## 是什麼

AG-UI（Agent-User Interaction Protocol）是開放、輕量、事件導向的 Agent 與使用者應用互動協議。它將代理執行期間的訊息、狀態與工具互動轉成共同事件，降低不同 Agent 框架接入前端時重做通訊層的成本。

這個 repo 包含協議、SDK、框架整合與示範，而不是新的語言模型，也不是單一聊天產品。後端發出相容事件並接受相容輸入，前端再依事件更新畫面；README 提供參考 HTTP 實作和預設 connector，方便從實例開始。

它與 MCP、A2A 位於不同連接邊界：MCP 著重 Agent 與工具，A2A 著重 Agent 間協作，AG-UI 著重 Agent 與人類使用的應用。選擇 AG-UI 不表示自動具備模型、授權系統或後端工具隔離。

## 核心特色

- **事件導向**：以標準事件類型表達執行過程，讓前後端共用互動語義。
- **即時串流**：支援逐步呈現 Agent 訊息，不必等整個任務結束。
- **雙向狀態同步**：讓應用狀態與代理工作所需的上下文相互配合。
- **生成式 UI**：結構化訊息與前端工具整合，能把互動延伸到文字之外。
- **人機協作**：支援 human-in-the-loop 互動；實際核准政策仍由應用實作。
- **傳輸彈性**：middleware 可適配 SSE、WebSockets、webhooks 等傳輸。
- **整合生態**：官方列出 LangGraph、CrewAI、Google ADK、Pydantic AI 等整合，且區分支援中與開發中項目。

## 怎麼用

### 建立起始應用

先準備可執行 `npx` 的 Node.js 環境，再依官方 README 建立專案：

```bash
npx create-ag-ui-app my-agent-app
```

這是官方 scaffold 指令，並非本次收錄工作已安裝或啟動的服務。
產生專案後，依選用範本的說明配置後端、模型憑證與啟動方式。
不要假設所有框架範本具有相同環境變數或執行指令。

### 接入與驗證

1. 選擇已有整合的 Agent 框架，先確認官方支援狀態。
2. 使用 AG-UI Dojo 的串流、共享狀態或前端工具範例確認事件流程。
3. 分別測試訊息串流、狀態更新與需要人工回應的互動。
4. 在應用層補上登入、工具授權、錯誤處理與敏感資料限制。

README 的支援表包含「In Progress」項目，不能將整份清單解讀成已可直接上線。
本頁是文件整理，未對各整合進行執行測試或效能評測。

## 跟其他方案的關係

| 方案／層次 | 主要解決的問題 | 與 AG-UI 的關係 |
|---|---|---|
| MCP | Agent 連接外部工具與資料 | 可互補，不是前端狀態同步的直接替代 |
| A2A | Agent 與 Agent 溝通 | 面向不同互動對象，可同時使用 |
| CopilotKit | 應用端 Agent 整合與 UI 工具 | README 列為 AG-UI 客戶端實作 |
| 自訂 WebSocket／SSE | 傳輸事件資料 | 是傳輸選擇，仍需自行定義或採用事件語義 |

**選用判斷**：若困難在多種 Agent 後端與前端互動的一致性，可優先評估 AG-UI。
若只需要呼叫一個外部工具，先釐清 MCP／一般 API 即可，不必為此增加 UI 協議。
協議相容不等於權限安全；後端工具執行與憑證治理仍是獨立責任。

## 相關概念

← [[AI-Agent]] · [[MCP]]

## 來源

- GitHub：https://github.com/ag-ui-protocol/ag-ui
- 官方快速開始：https://docs.ag-ui.com/quickstart/applications
- 範例：https://dojo.ag-ui.com/
- 原始 README 與 metadata：`raw/2026-11-15-ag-ui-protocol-ag-ui.md`
- 取樣日期：2026-11-15；星數與整合狀態是當日快照。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/ag-ui-protocol/ag-ui |
| Stars | 17,371 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-11-15 |
