---
title: Apache Maka
slug: apache-maka
created: 2026-08-22
updated: 2026-08-22
stars: 2018
language: TypeScript
topics: [ai-agent, local-first, event-sourcing, agent-runtime, desktop, cli]
---

# Apache Maka

> ⭐2018 · Apache 孵化中的 local-first Agent 工作空間，以 append-only Runtime Event Log 統一桌面、TUI、CLI 與可重現評測。

## 快速導航


- 🤖 [[AI-Agent]] — 以模型、工具、權限與執行生命週期完成真實工作
- 🧰 [[harness-engineering]] — Runtime Host、evidence、recovery 與 eval 共同構成 Agent harness
- 🗃 [[Context-Database]] — 把不可變執行事實與可裁切模型上下文分開管理

## 是什麼

Apache Maka 是一個本地優先的 AI Agent 工作空間。它不只提供問答介面，也能在權限控制下檢查專案、呼叫 Read／Write／Edit／Bash／Glob／Grep 等工具、產生 artifacts，並把模型訊息、tool call、tool result、權限決策與終止事件記錄成可恢復的執行事實。

它的核心原則是「Log is the Runtime」：Runtime Event Log 是權威記錄，session、UI、模型 context 與 recovery 都是對日誌的 projection。Tool Result pruning 與 LLM compaction 可以改變下一輪模型看見的內容，但不會抹除原始 evidence。

Desktop、TUI、non-interactive CLI 與 Maka eval subjects 都經過同一個 Runtime Host。這讓互動使用、無人值守執行與 benchmark 共用執行語義，也降低不同介面各自實作 Agent loop 所造成的行為漂移。

## 核心特色

- **Local-first 儲存** — session、設定、執行記錄與 artifacts 預設保留在本機 workspace。
- **Append-only event log** — 將訊息、工具、權限與終止事件保存為可稽核、可恢復的事實。
- **單一執行權威** — Runtime Host 統一管理 Session、Turn、AgentRun、工具、continuation 與 events。
- **Context 不等於 history** — pruning／compaction 只調整推論上下文，不刪除記錄證據。
- **多介面一致性** — Electron Desktop、終端 TUI、`maka run` 與 Eval 使用同一 runtime。
- **權限與失敗處理** — 具 schema 驗證、動態工具可用性、permission policy、watchdog、abort 與錯誤分類。
- **可重現評測** — 宣告式 multi-arm experiment 展開成 task × repetition × subject cells，保存 usage、cost、duration 與 artifacts。

## 怎麼用

目前可下載 macOS Apple Silicon release；從原始碼啟動需 Node.js 22.19+、npm、Git 與 ripgrep：

```bash
git clone https://github.com/apache/maka.git
cd maka
npm ci
brew install ripgrep
npm run dev
```

建置後啟動 TUI 或執行單一非互動 Turn：

```bash
npm run build
npm run cli:dev
npm run cli:dev -- run "Summarize this repository and identify its most important risk"
```

第一次啟動需要在 Settings → Models 加入自己的雲端 API、本地模型或相容 gateway。專案仍在快速開發，升級前應備份 `runtime.sqlite`、artifacts 與連線設定，並注意舊版 transcript 與 credential 不一定自動遷移。

## 跟其他方案的關係

| 方案 | 核心定位 | 狀態／恢復模型 | 主要介面 |
|------|----------|----------------|----------|
| **Apache Maka** | local-first Agent workspace | append-only event log + SQLite projections | Desktop、TUI、CLI、Eval |
| [[openai-codex\|OpenAI Codex CLI]] | 官方 Coding Agent | session、sandbox 與 approval | CLI、IDE、Desktop、Web |
| [[OpenHands-OpenHands\|OpenHands]] | Coding Agent 控制與工作流 | 多後端 runtime | Web、SDK、CLI |
| [[aaif-goose-goose\|Goose]] | 通用本地 Agent | extension／session 架構 | Desktop、CLI |
| [[different-ai-openwork\|OpenWork]] | 開源 Cowork workspace | MCP 與共享 Skills／plugins | Desktop |
| [[huangruiteng-loopx\|LoopX]] | 長任務控制平面 | 目標、關卡、evidence、quota | CLI／Agent 整合 |

Maka 的差異不只是桌面 UI，而是把 execution log、context projection、recovery 與 evaluation 都放在同一 runtime contract 下；對重視可稽核性與失敗恢復的 Agent 工作流特別有價值。

## 相關概念


← [[AI-Agent]] · [[harness-engineering]] · [[Context-Database]]

## 來源

- GitHub：https://github.com/apache/maka
- Raw 檔案：raw/2026-08-22-apache-maka.md
- 架構文件：repository 內 `ARCHITECTURE.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/apache/maka |
| Stars | ⭐2018|
| License | Apache-2.0 |
| 收錄日期 | 2026-08-22 |
