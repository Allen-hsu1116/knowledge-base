---
title: Open Interpreter
slug: openinterpreter-openinterpreter
created: 2026-07-16
updated: 2026-07-16
stars: 65.5k
language: Rust
topics: Coding-Agent-CLI, Agent-Harness, LLM, Computer-Use, MCP, ACP, Sandbox
---

# Open Interpreter

> ⭐65.5k · openinterpreter · Rust · Apache-2.0 — 基於 OpenAI Codex 分支的低成本模型 Coding Agent，支援多 Harness 模擬、原生沙箱、QA 測試與 ACP 協議。

## 快速導航

- 🤖 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]] — 終端 AI 編碼代理概念
- 🧠 **LLM** → [[LLM|LLM]] — 大語言模型基礎
- 🔧 **MCP** → [[MCP|MCP]] — Agent 連接外部工具的標準協議
- 🏗 **Agent Harness** → [[harness-engineering|Harness Engineering]] — Agent 框架工程方法論
- 🖥 **Computer Use** → [[trycua-cua|CUA]] — 桌面操控與沙箱環境

## 是什麼

Open Interpreter 是一個從 OpenAI Codex 分支出來的開源 Coding Agent，專注於讓低成本模型（如 DeepSeek、Qwen、Kimi 等）也能獲得優異的編碼代理效能。它透過模擬不同 Agent Harness（如 Claude Code、SWE-Agent 等）的行為模式，讓低成本模型也能像頂級模型一樣高效執行編碼任務。

專案以 Rust 重新建構，提供原生沙箱環境（macOS、Linux、Windows 三平台），讓 AI 生成的命令在安全的隔離環境中執行。它內建 QA Skill，可以驅動真實瀏覽器測試 Web 應用，或操控原生桌面應用進行自動化測試。此外，它支援 Agent Client Protocol (ACP)，可以作為編輯器（如 Zed）的後端 Agent。

Open Interpreter 的核心差異化在於 Harness 模擬系統。使用者可以透過 `/harness` 指令切換不同的 Agent Harness，包括 native、claude-code、zcode、kimi-cli、qwen-code、deepseek-tui、swe-agent 等多種模式。每種 Harness 針對不同模型的特性進行優化，讓低成本模型也能獲得最佳效能。這使得 Open Interpreter 成為低成本模型生態中最靈活的 Coding Agent 之一。

## 核心特色

- **多 Harness 模擬**：支援 9 種 Harness（native、claude-code、claude-code-bare、zcode、kimi-cli、qwen-code、deepseek-tui、swe-agent、minimal），針對不同低成本模型優化 Agent 行為
- **原生沙箱執行**：macOS、Linux、Windows 三平台原生沙箱，AI 生成的命令在隔離環境中安全執行
- **內建 QA Skill**：可驅動真實瀏覽器（agent-browser）測試 Web 應用，或透過 trycua 操控原生桌面應用進行自動化測試
- **ACP 協議支援**：透過 `interpreter acp` 作為 Agent Client Protocol Agent，可整合至 Zed 等編輯器
- **多 Provider 切換**：從 TUI 用 `/model` 即時切換不同 LLM 提供者和模型
- **完整 Agent 功能**：支援 exec、MCP、Skills、Hooks、Permissions 和 AGENTS.md，功能齊備

## 怎麼用

### 安裝

macOS 和 Linux：

```bash
curl -fsSL https://www.openinterpreter.com/install | sh
```

Windows：

```powershell
irm https://www.openinterpreter.com/install.ps1 | iex
```

安裝後在終端輸入 `i` 或 `interpreter` 即可啟動 session。

### 切換 Harness

```text
> /harness

native
claude-code
claude-code-bare
zcode
kimi-cli
qwen-code
deepseek-tui
swe-agent
minimal
```

### 切換模型

```text
> /model
```

### 作為 ACP Agent 運行

```bash
interpreter acp
```

## 跟其他方案的關係

- **Open Interpreter vs [[anthropics-claude-code|Claude Code]]**
Open Interpreter 是 Codex 分支，Claude Code 是 Anthropic 官方產品。Open Interpreter 專注低成本模型，Claude Code 專注 Claude 模型。
- **Open Interpreter vs [[anomalyco-opencode|OpenCode]]**
兩者都是開源 Coding Agent CLI。OpenCode 支援多 IDE 整合，Open Interpreter 專注 Harness 模擬。
- **Open Interpreter vs [[OpenHands-OpenHands|OpenHands]]**
OpenHands 是多後端 Agent 控制中心，Open Interpreter 更偏向終端原生體驗與 Harness 切換。


## 相關概念
← [[Coding-Agent-CLI|Coding Agent CLI]] · [[harness-engineering|Harness Engineering]] · [[LLM|LLM]] · [[MCP|MCP]]

## 來源

- **GitHub**：https://github.com/openinterpreter/openinterpreter
- **Raw README**：`raw/2026-07-16-openinterpreter-openinterpreter.md`
- **語言**：Rust
- **License**：Apache-2.0
- **Blog**：https://www.openinterpreter.com/blog/open-interpreter

---

| 項目 | 值 |
|------|-----|
| GitHub | openinterpreter/openinterpreter |
| Stars | ⭐65.5k |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-07-16 |