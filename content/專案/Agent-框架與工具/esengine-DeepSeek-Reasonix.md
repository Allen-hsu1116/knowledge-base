---
title: DeepSeek-Reasonix
slug: esengine-DeepSeek-Reasonix
created: 2026-08-06
updated: 2026-08-06
stars: 31619
language: Go
topics:
  - agent
  - ai-coding
  - coding-agent
  - deepseek
  - llm
  - prompt-caching
  - terminal
  - tool-use
  - tui
---

# DeepSeek-Reasonix

> ⭐31.6k · DeepSeek 原生終端 Coding Agent — 專為 prefix-cache 穩定性設計，長時間運行不崩，99.82% cache hit

## 快速導航

- 🧠 [[harness-engineering\|Harness Engineering]] — Reasonix 的三支柱架構：Cache-first loop、Tool-call repair、Cost control
- 🛠 [[Coding-Agent-CLI\|Coding Agent CLI]] — 終端優先的 Coding Agent 設計
- 🔗 [[AI-Agent\|AI Agent]] — MCP、Skills、Memory、Hooks 完整工具鏈
- 💰 [[Token-Optimization\|Token Optimization]] — prefix-cache 穩定性帶來的極致成本控制

## 是什麼

DeepSeek-Reasonix（簡稱 Reasonix）是一個專為 DeepSeek 模型設計的終端 Coding Agent。它的核心差異化不在於多 Provider 支援——恰恰相反，它故意只支援 DeepSeek，因為整個 Agent 迴圈都是圍繞 DeepSeek 的 byte-stable prefix-cache 機制設計的。每個層次（工具呼叫格式、session 管理、檔案操作）都經過調校，確保 prefix 在長 session 中保持可快取。

實際效果驚人：一位真實用戶在單日使用了 435M input tokens，達到 99.82% cache hit，只花了約 \$12——而同樣的工作量如果沒有 cache 在 `v4-flash` 上要花約 \$61。這不是偶然，而是 Reasonix 四個機制（Pillar 1）刻意設計的結果。

Reasonix 已從 TypeScript（0.x 維護模式）遷移到 Go 重寫（main-v2 分支為新預設）。提供 CLI、桌面客戶端（Tauri，預覽版）和 QQ 遠端通道。支援 SEARCH/REPLACE diff 編輯、Plan mode、MCP、Skills、Memory、Hooks、語意索引等完整 Agent 能力。

## 核心特色

- **Cache-first loop（第一支柱）**：整個迴圈圍繞 prefix-cache 穩定性設計——工具呼叫格式、session 重組、檔案操作都調校到不破壞 cache。4 個機制確保 bytes 保持可快取
- **Tool-call repair（第二支柱）**：自動修復格式錯誤的工具呼叫（函數名錯、參數缺失、JSON 壞掉），不讓單一錯誤毀掉整輪。模型用定向重試自我修正
- **Cost control（第三支柱）**：Token 預算、每任務成本限制、即時儀表板顯示 cache hit rate、token 使用量和支出。`/effort` 旋鈕調整推理深度
- **SEARCH/REPLACE diff 審查**：Agent 提議編輯但不直接寫盤——`/apply` 審查門確保你看到 diff 才套用
- **MCP / Skills / Memory / Hooks 完整工具鏈**：stdio/SSE/HTTP MCP、Markdown Skills（inline 或 subagent 模式）、4 種 Memory 類型、4 種 Hook 生命週期事件
- **Claude 格式 Skills 相容**：直接讀取 `.claude/skills/` 路徑，與 Claude Code 生態的工具互通
- **可配置搜尋引擎**：Bing（預設）、Baidu AI Search、SearXNG、Metaso、Tavily、Perplexity、Exa、Brave、Ollama

## 怎麼用

**全域安裝**（需 Node ≥ 22）：

```bash
npm install -g reasonix
reasonix code my-project   # 首次執行貼上 DeepSeek API key
```

**一次性使用**（不安裝）：

```bash
cd my-project
npx reasonix code
```

**短別名**（可選）：

```bash
npm install -g dsnix       # 暴露 dsnix 命令
npx dsnix@latest code
```

**主要命令**：

```bash
reasonix                  # 等同 reasonix code（在當前目錄啟動）
reasonix code [dir]       # Coding Agent（有檔案系統/Shell 工具）
reasonix chat             # 純聊天（無檔案系統存取）
reasonix run "task"       # 一次性執行，輸出到 stdout
reasonix doctor           # 健康檢查
reasonix update           # 升級
```

取得 DeepSeek API key：https://platform.deepseek.com/api_keys

## 跟其他方案的關係

| 特色 | Reasonix | [[anthropics-claude-code\|Claude Code]] | [[anomalyco-opencode\|OpenCode]] | [[openinterpreter-openinterpreter\|Open Interpreter]] |
|---|---|---|---|---|
| 後端 | DeepSeek 專用 | Anthropic | 多 Provider | 多 Provider |
| License | MIT | 專有 | Apache-2.0 | MIT |
| 成本 profile | 極低 per task | 高級 | 變動 | 低成本模型 |
| Prefix-cache 工程 | 核心設計 | 不適用 | 不適用 | 附帶 |
| 嵌入式儀表板 | ✅ | — | — | — |
| 持久 session | ✅ per-workspace | 部分 | ✅ | — |
| MCP | ✅ | ✅ | ✅ | — |
| Skills | ✅ + Claude 格式相容 | ✅ | ✅ | — |
| Hooks | ✅ 4 種生命週期 | ✅ | ✅ | — |
| 桌面客戶端 | ✅（預覽） | — | — | — |

Reasonix 的 prefix-cache 穩定性設計是 [[harness-engineering\|Harness Engineering]] 的深度實踐——它不是把 cache 當功能，而是當作整個迴圈設計的不變量。這與一般多 Provider Agent（如 [[anomalyco-opencode\|OpenCode]]）的設計哲學完全不同：Reasonix 故意只支援 DeepSeek，因為耦合到一個後端正是特色而非限制。

## 相關概念

← [[harness-engineering\|Harness Engineering]] · [[Coding-Agent-CLI\|Coding Agent CLI]] · [[AI-Agent\|AI Agent]] · [[Token-Optimization\|Token Optimization]]

## 來源

- GitHub: https://github.com/esengine/DeepSeek-Reasonix
- 官網: https://esengine.github.io/DeepSeek-Reasonix/
- raw/2026-08-06-esengine-DeepSeek-Reasonix.md

---

| 項目 | 內容 |
|---|---|
| **GitHub** | https://github.com/esengine/DeepSeek-Reasonix |
| **Stars** | ⭐ 31,619 |
| **License** | MIT |
| **Language** | Go (main-v2), TypeScript (legacy) |
| **收錄日期** | 2026-08-06 |