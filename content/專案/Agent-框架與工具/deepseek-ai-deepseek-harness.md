---
title: DeepSeek Harness
slug: deepseek-ai-deepseek-harness
created: 2026-08-24
updated: 2026-08-24
stars: 190755
language: zh-TW
topics: [AI-Agent, Harness-Engineering, Coding-Agent-CLI, Plugin-Architecture, Cordis, TypeScript]
---

# DeepSeek Harness

> ⭐190.8k · DeepSeek AI 開源的插件化 Agent Harness；模型、工具、會話、Agent Loop 與介面都能透過 Cordis 組裝與替換。

## 快速導航

- 🧭 [[harness-engineering]] — 理解 LLM 之外的 Agent 執行、控制與治理層
- 🤖 [[AI-Agent]] — Agent 的模型、工具、記憶與規劃架構
- 💻 [[Coding-Agent-CLI]] — 終端、Headless 與自動化 Agent 工作流
- 🔌 [[MCP]] — 外部工具與資料來源的標準化連接方式
- 🛡️ [[prompt-security]] — 工具審批、沙箱與執行邊界

## 是什麼

DeepSeek Harness（指令 `dsh`）是 DeepSeek AI 開源的 Agent Harness，目前處於 developer preview。它不是只包裝單一模型的聊天介面，而是一套可組裝的 Agent 執行系統：模型適配器、工具註冊表、會話日誌、Agent Loop、Web UI、持久化、沙箱與審批策略都可以由插件提供。

專案建立在 Cordis 之上，核心原則是「Everything is a Plugin」。系統沒有必須修改的特權核心；新增或替換能力時，主要做法是把插件掛入共享 Context，並利用可逆副作用在卸載時撤回服務、事件與註冊項。

執行中的 `dsh` 是一棵插件樹。Profile 定義要疊加哪些 bundle、安裝哪些外部插件與套用哪些 `cordis.patch.yml`；官方提供 Web 與 Headless 組裝方式，讓同一套核心可以服務瀏覽器互動或一次性自動化任務。

## 核心特色

- **Everything is a Plugin**：LLM adapter、工具、Session Log、Agent Loop、UI 與治理策略皆是插件，可透過配置替換，不需 fork 特權核心。
- **Profile 與 Bundle 分層組裝**：bundle 提供可重用的 Cordis 配置；profile 疊加 bundle、專屬插件與 patch overlay，並可用 `--dump-config` 檢視最後的實際插件樹。
- **事件溯源式 Session Log**：turn、step、user/message、assistant/message、tool/call 與 tool/result 都成為持久事件；回放、UI、fork、恢復、transcript 與 telemetry 從同一事件流衍生。
- **清楚的 Agent 生命週期**：將一次互動拆成 turn 與 step，並提供 `agent/pre-step`、`agent/request`、`llm/stream`、`agent/turn-stopping` 等擴充點，讓插件可攔截、改寫或續跑工作。
- **完整工具執行流水線**：工具呼叫依序經過 pre-execute、單調守衛、一次性審批、沙箱、execute、post-execute、結果正規化與不可變結果通知；策略可跨工具共用而不耦合工具本體。
- **Capability Seam 設計**：每項能力拆成 Service Definition、Provider 與 Consumer；替換檔案系統或程序 Provider，即可把 Bash、PTY、LSP 等能力一起搬到遠端沙箱。
- **Web 與 Headless 雙形態**：`web` profile 提供瀏覽器應用，`headless` profile 提供無伺服器的一次性 runner，適合 CI 或自動化。
- **Typert API Gateway**：以 TypeScript decorator 宣告 Client 可呼叫的 Remote 方法，建置時生成 Host/Client 嚴格型別、schema 與 codec，並在執行時驗證參數、身分解析與回傳值。
- **安全與治理內建**：base bundle 包含 sandbox、approval、credentials 與 telemetry；工具流水線遵循 deny-or-abstain 的單調守衛，避免後續插件重新放行已拒絕操作。
- **開發與文件驗證完整**：monorepo 提供型別檢查、lint、單元／E2E／快照／壓力測試，以及文件連結、Mermaid、授權、配置與生成產物的一系列驗證門。

## 怎麼用

### 直接從 npm 啟動 Web UI

先安裝 Node.js，再執行：

```bash
npx @deepseek-ai/dsh web
```

預設會在 `http://127.0.0.1:3080` 啟動 Web UI，並在本機開啟瀏覽器。若不想自動開啟瀏覽器，可加上 `--no-open`。

### 從原始碼執行

```bash
git clone https://github.com/deepseek-ai/deepseek-harness.git
cd deepseek-harness
pnpm install
pnpm run build
pnpm dsh web
```

### 檢視實際配置樹

```bash
dsh --profile web --dump-config
```

這能查看 bundle、profile patch、home patch 與命令列 overlay 疊加後的最終插件樹，適合除錯或確認某個 Provider 是否已被替換。

> ⚠️ 專案目前是 developer preview，官方明確提醒會有破壞相容性的變更；正式導入前應鎖定版本、保留配置備份並先在測試環境驗證升級。

## 跟其他方案的關係

| 方案 | 主要定位 | 擴充模型 | 狀態與介面 | 適合情境 |
|---|---|---|---|---|
| **DeepSeek Harness** | 通用 Agent Harness | Cordis 插件樹、Profile、Bundle、Patch | 事件溯源 Session；Web + Headless | 想深入替換 Agent Loop、工具、安全與持久化層 |
| [[openai-codex\|OpenAI Codex CLI]] | 官方 Coding Agent | AGENTS.md、Skills、MCP、hooks | CLI、IDE、桌面、Web | 直接完成軟體工程任務 |
| [[anthropics-claude-code\|Claude Code]] | 終端 Coding Agent | CLAUDE.md、Skills、Plugins、MCP | 終端與 IDE 工作流 | Anthropic 生態與 Git 工作流整合 |
| [[aaif-goose-goose\|Goose]] | 通用本地 Agent | MCP、ACP、Extensions | Desktop + CLI + API | 使用多模型與既有 MCP 工具 |
| [[anomalyco-opencode\|OpenCode]] | 開源 Coding Agent | Provider、MCP、子 Agent | CLI 與多介面 | 多模型 Coding Agent 與平行工作 |

DeepSeek Harness 的差異不只在於提供另一個 Agent UI，而是把產品本身拆成可逆、可疊加、可作用域化的插件圖。若需求是「直接使用成熟 Coding Agent」，Codex 或 Claude Code 的上手路徑較短；若需求是研究或打造自己的 Agent runtime、替換執行層、加入新事件策略或建立多種產品組裝，DeepSeek Harness 的架構彈性更有吸引力。

## 相關概念

← [[harness-engineering]] · [[AI-Agent]] · [[Coding-Agent-CLI]] · [[MCP]] · [[prompt-security]]

## 來源

- raw/2026-08-24-deepseek-ai-deepseek-harness.md
- [官方架構文件](https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/architecture.md)
- [Agent 生命週期](https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/agent-lifecycle.md)
- [工具執行流水線](https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/tool-execution-pipeline.md)
- [API Gateway](https://github.com/deepseek-ai/deepseek-harness/blob/master/docs/api-gateway.md)

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/deepseek-ai/deepseek-harness |
| Stars | ⭐190,755 |
| License | MIT |
| 主要語言 | TypeScript |
| 狀態 | Developer Preview |
| 收錄日期 | 2026-08-24 |
