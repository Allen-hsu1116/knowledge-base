---
title: OpenAI Codex CLI
slug: openai-codex
created: 2026-08-22
updated: 2026-08-22
stars: 110957
language: zh-TW
topics: [Coding-Agent-CLI, AI-Agent, harness-engineering, AGENTS.md, AI-Skills, MCP, sandbox]
---

# OpenAI Codex CLI

> ⭐110957 · OpenAI 官方開源 Coding Agent，主要以 Rust 實作，可在終端機、IDE、桌面 App 與非互動式自動化流程中執行程式開發任務。

## 快速導航


- 💻 [[Coding-Agent-CLI]] — Codex 的主要產品形態與同類工具定位
- 🤖 [[AI-Agent]] — 自主規劃、讀寫程式碼、執行命令與驗證結果
- 🧰 [[harness-engineering]] — AGENTS.md、Skills、工具政策與沙箱共同構成 Agent Harness
- 🧠 [[AI-Skills]] — 將可重用工作流程封裝成結構化技能
- 🔌 [[MCP]] — 連接外部工具與資料來源的標準介面
- 🛡️ [[prompt-security]] — 沙箱、審批與執行政策降低高權限 Agent 的風險

## 是什麼

OpenAI Codex CLI 是在本機執行的開源 Coding Agent。它不是單純的程式碼補全工具，而是能理解儲存庫、修改檔案、執行命令、跑測試並根據結果反覆修正的終端代理。核心實作位於 `codex-rs` Rust workspace，專案亦包含 CLI、TUI、SDK、App Server、MCP、沙箱與非互動執行等模組。

同一個 Codex 生態也涵蓋 IDE 擴充、`codex app` 桌面體驗與 Codex Web；本頁聚焦 GitHub 上的開源本機 CLI。使用者可用 ChatGPT Plus、Pro、Business、Edu 或 Enterprise 帳號登入，也可另外設定 API key。

## 核心特色

- **本機 Coding Agent** — 直接在專案目錄讀取程式碼、編輯檔案、呼叫 shell、執行測試與完成 Git 工作流，保留終端機原生的可組合性。
- **Rust 核心與跨平台發行** — 主要程式碼以 Rust 實作，提供 macOS、Linux 與 Windows 安裝方式，也可從 GitHub Release 下載平台原生執行檔。
- **多種使用介面** — 除互動式 TUI 外，也有 IDE 整合、桌面 App、Codex Web、SDK、App Server，以及供腳本和 CI 使用的非互動模式。
- **AGENTS.md 指令分層** — 可用儲存庫中的 `AGENTS.md` 提供專案規則、建置方式、測試要求與目錄層級指引，讓 Agent 依工作範圍載入正確上下文。
- **Skills 與 MCP 擴充** — Skills 封裝可重用流程；MCP 讓 Codex 連接外部工具與資料，避免把所有能力硬編碼進核心。
- **沙箱、審批與執行政策** — 透過 sandbox、approval、exec policy 和 process hardening 控制命令與檔案存取，降低 Agent 誤操作或執行不受信任內容的風險。
- **登入與供應方式彈性** — 支援 ChatGPT 方案登入與 API key；安裝器優先從 OpenAI Releases 下載，必要時退回 GitHub Releases。
- **活躍且模組化的開源專案** — `codex-rs` 內含 TUI、MCP server、hooks、memories、plugins、model provider、file watcher、rollout trace、Linux/Windows sandbox 等大量獨立 crate，方便持續演進。

## 怎麼用

### 安裝

macOS 或 Linux 可使用官方安裝腳本：

```bash
curl -fsSL https://chatgpt.com/codex/install.sh | sh
```

也可以使用 npm 或 Homebrew：

```bash
npm install -g @openai/codex
# 或
brew install --cask codex
```

Windows PowerShell：

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://chatgpt.com/codex/install.ps1 | iex"
```

### 啟動與登入

```bash
cd path/to/project
codex
```

第一次啟動時選擇 **Sign in with ChatGPT**，或依官方驗證文件設定 API key。開始前應在專案根目錄準備 `AGENTS.md`，列出建置、測試、格式化、安全邊界與完成條件；讓 Codex 完成工作後實際執行測試，而不是只產生程式碼。

### 自動化使用

需要腳本或 CI 執行時，可使用 Codex 的 non-interactive mode。自動化環境應採最小權限原則，明確設定 sandbox、approval 與 execution policy，並將測試或 lint 結果當作任務完成證據。

## 跟其他方案的關係

| 方案 | 主要定位 | 開源狀態 | 差異重點 |
|---|---|---|---|
| [[openai-codex\|OpenAI Codex CLI]] | OpenAI 官方本機 Coding Agent | Apache-2.0 | Rust 核心，整合 ChatGPT 登入、AGENTS.md、Skills、MCP、沙箱與 Codex 生態 |
| [[anthropics-claude-code\|Claude Code]] | Anthropic 官方 Coding Agent | 專案頁所記錄的官方授權模式 | 以 Claude 模型與 CLAUDE.md 工作流為核心，Git 與終端開發體驗成熟 |
| [[anomalyco-opencode\|OpenCode]] | 多供應商開源 Coding Agent | 開源 | 強調多模型、子 Agent、工作樹平行與供應商自由度 |
| [[OpenHands-OpenHands\|OpenHands]] | Coding Agent 平台與控制中心 | 開源 | 偏平台化、沙箱化與多後端自動化，適合較完整的 Agent 執行環境 |
| [[aaif-goose-goose\|Goose]] | 通用本機 Agent | 開源 | 同為 Rust 生態，強調 MCP、ACP 與可擴充的通用任務能力 |

Codex CLI 的優勢是 OpenAI 官方維護、與 ChatGPT/Codex 產品線整合，以及完整的本機 Agent 執行堆疊；若重視跨模型自由度，可比較 OpenCode；若需要平台級多後端與隔離環境，可比較 OpenHands。

## 相關概念


← [[Coding-Agent-CLI]] · [[AI-Agent]] · [[harness-engineering]] · [[AI-Skills]] · [[MCP]] · [[prompt-security]]

## 來源

- raw/2026-08-22-openai-codex.md
- [Codex 官方文件](https://developers.openai.com/codex)
- [Codex GitHub Releases](https://github.com/openai/codex/releases)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/openai/codex |
| Stars | ⭐110957|
| License | Apache-2.0 |
| 收錄日期 | 2026-08-22 |
