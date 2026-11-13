---
title: "qwen-code"
slug: "QwenLM-qwen-code"
created: "2026-11-13"
updated: "2026-11-13"
stars: 29813
language: "TypeScript"
topics: ["agentic", "ai", "ai-agent", "ai-coding", "cli", "coding-agent", "developer-tools", "llm", "mcp", "qwen", "terminal", "typescript"]
---

# qwen-code

> ⭐29.8k · 多協議、多平台開源 Coding Agent，支援終端、SDK 與實驗性共享 daemon。

## 快速導航

- [[Coding-Agent-CLI]] — 終端程式開發工作流。
- [[AI-Agent]] — 模型、工具與自主執行迴圈。

## 是什麼

Qwen Code 是 QwenLM 維護的開源 Coding Agent，以終端機為入口，亦提供編輯器、桌面、瀏覽器與聊天通道整合。它不是模型權重，而是把模型、工具與專案工作區串成可執行開發流程的應用層。

專案最初建立於 Google Gemini CLI v0.8.2；官方說明從 Qwen Code v0.1 起停止同步上游，轉向獨立的多協議、多平台框架。因此不能直接以 Gemini CLI 的功能或限制推論本專案的現況。

本次整理以 main 分支 README 為準。首頁另列結合 Qoder 與 Qwen Code harness 能力的 1.0 Preview；那是另一個預覽入口，不應把預覽版安裝方法、main 的使用指南與穩定性承諾混為一談。

## 核心特色

- **多協議接入**：README 列出 OpenAI、Anthropic、Gemini、Qwen API，亦可接 Ollama／vLLM 等本地提供者。
- **Agent 工作流**：包含 Auto-Memory、Auto-Skills、SubAgents、Agent Teams 與 MCP；具體設定仍須依所用版本確認。
- **多介面**：除 CLI 外，提供桌面程式、VS Code／Zed／JetBrains 整合與聊天通道。
- **自動化入口**：headless 模式及 TypeScript、Python、Java SDK 適合接入腳本與自訂應用。
- **長駐服務**：實驗性 daemon 讓多個客戶端共用工作階段，透過 HTTP＋SSE 提供存取。
- **安全邊界需主動配置**：預設 loopback daemon 沒有 bearer 認證；可連線的本機程序能使用含程式執行在內的 API。

## 怎麼用

### 安裝 main 版本

以下指令來自官方 README；npm 方式要求 Node.js 22 以上。本次僅整理文件，未在主機安裝或執行此 Agent。

```bash
npm install -g @qwen-code/qwen-code@latest
cd /path/to/your-project
qwen
```

進入互動介面後執行 `/auth`，選擇 Qwen Plus／Pro 訂閱登入或設定供應商 API key。開源程式不代表模型 API 或訂閱免費。

### 互動與非互動使用

先從唯讀的專案摘要開始，再審閱它提出的變更與測試結果。

```bash
qwen -p "Summarize the repository layout."
```

瀏覽器入口可使用 `qwen serve --open`，但 README 將其標為 experimental。
預設地址為 `http://127.0.0.1:4170`；共享或不受信任主機應設定 `QWEN_SERVER_TOKEN` 並啟用 `--require-auth`。
不要因為只綁 loopback 就把服務視為隔離沙箱，也不要未經認證直接對外公開。

## 跟其他方案的關係

以下是定位比較，不是本次執行的效果評測。

| 方案 | 定位 | 與 Qwen Code 的關係 |
| --- | --- | --- |
| Qwen Code | 多協議、多平台 Coding Agent | 將多種模型供應商接入同一開發工作流 |
| Gemini CLI | 終端 Coding Agent | 歷史原始碼基礎；現已獨立演進，不能視為同步鏡像 |
| Ollama／vLLM | 本地模型運行與 serving | 可作為模型提供者，不取代 Agent 工具執行層 |
| 自訂 SDK 應用 | 程式化整合 | 可使用 Qwen Code SDK，仍需配置身份驗證與工作區權限 |

README 的 Claude Code 功能對照與 SWE-bench 結果屬上游自述。
本頁未獨立重現，不據此宣稱全面等價或優於其他 Agent。

## 相關概念

← [[Coding-Agent-CLI]] · [[AI-Agent]]

## 來源

- GitHub：<https://github.com/QwenLM/qwen-code>
- README：<https://github.com/QwenLM/qwen-code/blob/main/README.md>
- 原始快照：`raw/2026-11-13-QwenLM-qwen-code.md`
- Metadata 快照：`raw/2026-11-13-QwenLM-qwen-code-metadata.json`

---

| 項目 | 值 |
| --- | --- |
| GitHub | [QwenLM/qwen-code](https://github.com/QwenLM/qwen-code) |
| Stars | ⭐29,813 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-11-13 |
