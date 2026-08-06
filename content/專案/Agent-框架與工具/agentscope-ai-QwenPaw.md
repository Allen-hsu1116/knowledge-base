---
title: QwenPaw
slug: agentscope-ai-QwenPaw
created: 2026-08-06
updated: 2026-08-06
stars: 33569
language: Python
topics:
  - agent
  - agent-harness
  - ai-agent
  - mcp
  - self-hosted
  - harness-engineering
  - loop-engineering
---

# QwenPaw

> ⭐33.6k · 個人 AI 助理 — 本地或雲端部署，三層記憶系統，Skills 與 Plugins 生態，7+ 通道整合，Agent OS 架構

## 快速導航

- 🧠 [[harness-engineering\|Harness Engineering]] — QwenPaw 2.0 的 Loop Engineering 和 Agent OS 架構核心
- 🛠 [[MCP]] — 透過 MCP / A2A / ACP 連接外部工具
- 🔗 [[AI-Agent\|AI Agent]] — 多 Agent 平行與子 Agent 生成
- 📦 [[self-hosted\|自架]] — 本地部署，資料留在自己的機器上

## 是什麼

QwenPaw 是 AgentScope 團隊推出的個人 AI 助理平台，定位是「Works for you, grows with you」——一個可以完全自架、在本地或雲端運行的 AI Agent。它不只聊天，而是結合了三層記憶系統、Skills 插件市場、MCP 整合和多通道觸達能力，讓一個 Agent 實例同時服務釘釘、Lark、微信、Discord、Telegram、iMessage、QQ 等平台。

2026 年 7 月發布的 v2.0 是基於 AgentScope 2.0 的全面重寫，引入了 Agent OS 架構——每個 Agent 有三支柱：Resources（磁碟上透明可見的資源）、Governance（allow/deny/ask/sandbox 治理策略）、Sandbox（macOS/Linux/Windows 沙箱）。Loop Engineering 提供可組合的審批門和進階 Agent 迴圈模板（Coding Mode、Mission Mode）。Scroll Context 確保每一輪對話都被持久化，被淘汰的輪次索引後可按需召回——沒有任何東西被摘要掉。

ReMe（Self-evolving Personal Knowledge Base）v0.4 是 QwenPaw 記憶系統的核心，持續將對話和資源轉化為可讀、可編輯、可搜尋且互相連結的 Markdown 記憶。這與 [[llm-knowledge-base\|LLM 知識庫]] 的理念高度一致。

## 核心特色

- **三層記憶系統**：即時工作上下文 + 完整逐字歷史 + ReMe 自演化知識庫。對話和資源持續變成可搜尋的 Markdown 記憶，不是消失在聊天歷史裡
- **完全自架，零雲端依賴**：QwenPaw-Flash 模型（2B/4B/9B）專為 Agent 任務訓練，內建本地執行環境。也支援 Ollama、LM Studio 或 14+ 雲端提供者
- **安全性內建**：Kernel 級沙箱、Tool Guard、File Guard、Skill Scanner、Access Policy。危險命令在執行前就被攔截
- **多 Agent 平行**：生成獨立 Agent（各有自己的記憶和 Skills），Agent Communication Protocol (ACP) 跨系統編排
- **Coding Mode**：三面板 Web IDE，檔案樹、diff 預覽、聊天一體化。支援跳轉定義、查引用、結構化程式碼搜尋
- **7+ 通道觸達**：一個實例同時連接釘釘、Lark、微信、Discord、Telegram、iMessage、QQ，加上 Console、TUI、桌面 App
- **Skills 與 Plugins 生態**：排程、文件、瀏覽器、新聞等內建 Skills，插件架構附 Marketplace，MCP 整合外部工具

## 怎麼用

**Pip 安裝**（需 Python ≥ 3.11, < 3.14）：

```bash
pip install qwenpaw
qwenpaw init --defaults
qwenpaw app
```

然後在瀏覽器打開 `http://127.0.0.1:8088/` 配置模型。

**腳本安裝**（免 Python 設定）：

```bash
# macOS / Linux
curl -fsSL https://qwenpaw.agentscope.io/install.sh | bash

# Windows (PowerShell)
irm https://qwenpaw.agentscope.io/install.ps1 | iex
```

安裝後執行：

```bash
qwenpaw init --defaults   # 或 qwenpaw init (互動模式)
qwenpaw app
```

卸載：

```bash
qwenpaw uninstall          # 保留設定和資料
qwenpaw uninstall --purge  # 全部清除
```

## 跟其他方案的關係

| 特色 | QwenPaw | [[anthropics-claude-code\|Claude Code]] | [[open-webui-open-webui\|Open WebUI]] | [[CherryHQ-cherry-studio\|Cherry Studio]] |
|---|---|---|---|---|
| 定位 | 個人 AI 助理 | Coding Agent CLI | LLM Web UI | AI 生產力工作室 |
| 記憶系統 | 三層 + ReMe 知識庫 | 有限 | RAG | 無 |
| 自架模型 | QwenPaw-Flash 內建 | BYOK | Ollama 整合 | 多模型客戶端 |
| 多通道 | 7+ IM 平台 | 終端 | Web | 桌面 |
| Skills 生態 | 內建 + Marketplace | AI Skills | 插件 | Agent Skills |
| MCP | ✅ | ✅ | ✅ | ✅ |
| 沙箱 | Kernel 級 | 無 | 無 | 無 |
| 開源協議 | Apache-2.0 | 專有 | MIT | 多種 |

QwenPaw 與 [[harness-engineering\|Harness Engineering]] 和 Loop Engineering 密切相關——它把 Agent 迴圈做成可組合的模板，並用 Scroll Context 解決長對話的上下文遺失問題。ReMe 的自演化知識庫與 [[llm-knowledge-base\|LLM 知識庫]] 方法論相通。

← [[harness-engineering\|Harness Engineering]] · [[MCP]] · [[AI-Agent\|AI Agent]] · [[self-hosted\|自架]] · [[llm-knowledge-base\|LLM 知識庫]]

## 來源

- GitHub: https://github.com/agentscope-ai/QwenPaw
- 官網: https://qwenpaw.agentscope.io/
- raw/2026-08-06-agentscope-ai-QwenPaw.md

---

| 項目 | 內容 |
|---|---|
| **GitHub** | https://github.com/agentscope-ai/QwenPaw |
| **Stars** | ⭐ 33,569 |
| **License** | Apache-2.0 |
| **Language** | Python |
| **收錄日期** | 2026-08-06 |