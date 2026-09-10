---
title: PI-Desktop
slug: vastsa-PI-Desktop
created: 2026-09-10
updated: 2026-09-10
stars: 1666
language: zh-TW
topics: [AI-Agent, Coding-Agent-CLI, harness-engineering, MCP, AI-Skills]
---

# PI-Desktop

> ⭐1.67k · Electron 桌面、Rust Host 與 pi Agent runtime 組成的 local-first AI 程式開發工作台。

## 快速導航

- [[AI-Agent]] — 執行讀檔、修改、指令與驗證的代理。
- [[harness-engineering]] — 模式、審批、權限與持久化的控制層。
- [[Coding-Agent-CLI]] — 與終端型 Coding Agent 的介面定位比較。
- [[MCP]] — 連接外部工具及可選的本機控制介面。
- [[AI-Skills]] — 用技能與插件擴充工作流程。

## 是什麼

PI-Desktop 是獨立於編輯器與終端機的 AI coding 桌面工作台，可開啟本機專案、選擇自備模型、執行 Agent 任務並在同一介面審閱 diff 與命令輸出。官方目前標為 Early Preview，API、擴充介面及桌面行為仍可能變動。

架構刻意拆成 React renderer、Electron Main、Rust Host Core 與 pi Agent Sidecar。Rust 負責權限、檔案系統、SQLite 持久化與秘密；Sidecar 負責模型互動、串流與 Agent loop；renderer 不啟用 Node integration。

它的 local-first 指對話與設定主要留在本機，不代表完全離線。若使用遠端模型，必要上下文仍送往該供應者；README 表明不要求 PI 帳號或強制中繼服務。這個定位適合想保留模型選擇權、又需要桌面審閱與長 session 管理的人。

## 核心特色

- **Agent／Plan／Goal 三種模式**：Plan 要先核准凍結的實作計畫；Goal 先核准目標與驗收條件，讓 Agent 選路徑。
- **共同權限層**：三種模式都不免除 privileged tools 的權限檢查，可檢視 diff 和命令輸出。
- **多模型與供應者**：支援 OpenAI、Anthropic、OpenAI-compatible API，以及 Ollama、LM Studio 等本機 gateway。
- **獨立子 Agent context**：背景委派探索、實作、研究與審查，結果回報給父 Agent。
- **長任務工作台**：專案／session 管理、分支、排隊提示、搜尋與 checkpoint；復原能力不是保證任何中斷都無損。
- **可安裝擴充**：Skills、MCP、Subagents 與 `.piplug` 插件可擴展工具、面板、命令和服務。
- **本機資料保存**：對話存 JSONL 並以 SQLite 索引，API credentials 放作業系統 keychain；官方宣稱不收集 PI telemetry。

## 怎麼用

### 一般使用者

從 [GitHub Releases](https://github.com/vastsa/PI-Desktop/releases/latest) 選擇對應平台安裝包。
在 Settings → Model configuration 設定模型，再開啟本地專案並選 Agent、Plan 或 Goal。
最後透過 Review panel 檢視修改並自行執行適當測試。

### 從原始碼安裝依賴與啟動

官方要求 Node.js ≥22.19、pnpm ≥10 與 stable Rust；README 另註 repo pin pnpm 11，CI 使用 Node 24。
下列為文件中的開發流程，本次沒有安裝或執行候選軟體。

```bash
git clone https://github.com/vastsa/PI-Desktop.git
cd PI-Desktop
pnpm install
cargo build -p host-core
pnpm build:js
pnpm dev
```

開發驗證命令：

```bash
pnpm typecheck
pnpm lint
pnpm test
```

### 採用前注意

- Linux x64 套件要求 glibc 2.35 以上；依平台確認 release 需求。
- macOS tagged release 預設未簽名，應先確認來源可信及簽章狀況，不直接繞過系統安全機制。
- 插件是使用者信任的程式碼；權限閘門與 renderer 隔離不等於完整 OS sandbox。
- 可選 MCP control 預設停用且只綁 loopback；啟用會授予呼叫 Agent 桌面操作權限，`confirm: true` 不代表有人工提示。

## 跟其他方案的關係

以下比較是文件定位，不表示已做效能或可靠度測試。

| 方案 | 主要責任 | 與 PI-Desktop 的關係 |
|---|---|---|
| [[earendil-works-pi\|Pi Agent Harness]] | Agent runtime 與 CLI 生態 | PI-Desktop README 明列採用 pi-mono 的 pi-ai／pi-agent-core |
| [[openai-codex\|Codex]] | Coding Agent 與多種使用介面 | PI-Desktop 可匯入支援的本機 Codex sessions，不代表直接使用相同 runtime |
| [[Tencent-teamai-cli\|TeamAI CLI]] | 團隊 Skills／規則與知識分發 | 側重組織共用資源，而非桌面工作台 |
| IDE 內嵌助手 | 在編輯器中提供 AI 協助 | PI-Desktop 選擇獨立桌面，仍需自行決定編輯器工作流 |

## 相關概念

← [[AI-Agent]] · [[harness-engineering]] · [[Coding-Agent-CLI]] · [[MCP]] · [[AI-Skills]]

## 來源

- [GitHub：vastsa/PI-Desktop](https://github.com/vastsa/PI-Desktop)
- [官方 README](https://github.com/vastsa/PI-Desktop/blob/main/README.md)
- [LICENSE](https://github.com/vastsa/PI-Desktop/blob/main/LICENSE)：已核對 LGPL v3 正文。
- 原始 README：`raw/2026-09-10-vastsa-PI-Desktop.md`
- 原始 metadata：`raw/2026-09-10-vastsa-PI-Desktop.metadata.json`
- 以上為 2026-09-10 文件快照；Early Preview 功能與平台限制可能變動。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/vastsa/PI-Desktop |
| Stars | 1,666（2026-09-10 快照） |
| License | LGPL-3.0 |
| Language | TypeScript；另有 Rust Host，本頁為 zh-TW |
| 收錄日期 | 2026-09-10 |
