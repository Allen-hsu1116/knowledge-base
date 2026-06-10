---
title: Goose
slug: aaif-goose-goose
created: 2024-08-23
updated: 2026-06-08
stars: 47512
language: Rust
topics:
  - ai-agents
  - mcp
  - acp
  - ai
---

# Goose

> ⭐47.5k · 開源通用 AI Agent——桌面 App、CLI、API 三用，Rust 打造原生效能，15+ LLM 供應商 + 70+ MCP 擴充，Linux Foundation AAIF 專案。

## 快速導航

- [[AI-Agent]] — AI Agent 核心概念
- [[MCP]] — Model Context Protocol 擴充標準
- [[Coding-Agent-CLI]] — 程式碼 Agent 工具
- [[AutoGPT]] — 自主 Agent 先驅

## 是什麼

Goose 是由 Agentic AI Foundation（AAIF）在 Linux Foundation 下維護的開源通用 AI Agent。它不只是程式碼助手——可以用於研究、寫作、自動化、資料分析等任何需要完成的工作。提供原生桌面 App（macOS / Linux / Windows）、完整 CLI 和嵌入式 API 三種使用方式，核心用 Rust 開發以確保效能和跨平台可攜性。

Goose 支援 15+ LLM 供應商（Anthropic、OpenAI、Google、Ollama、OpenRouter、Azure、Bedrock 等），也能透過 ACP（Agent Communication Protocol）直接使用 Claude、ChatGPT、Gemini 的現有訂閱。搭配 Model Context Protocol（MCP）開放標準，可連接 70+ 擴充工具，從檔案系統、資料庫到瀏覽器自動化都能接上。

## 核心特色

- **三種使用介面**：桌面 App、CLI、API 三合一，研發者用 CLI、一般人用 App、系統整合用 API
- **15+ LLM 供應商**：Anthropic、OpenAI、Google、Ollama、OpenRouter、Azure、Bedrock 等，也可以透過 ACP 用現有訂閱
- **70+ MCP 擴充**：透過 Model Context Protocol 開放標準連接各種工具和服務
- **Rust 原生效能**：核心用 Rust 開發，啟動快、資源少、跨平台可攜
- **Custom Distributions**：可建立自訂發行版，預裝供應商、擴充和品牌設定
- **Linux Foundation 專案**：隸屬 AAIF，治理透明、社群導向，已從 block/goose 遷移

## 怎麼用

**安裝桌面 App：**
到 [goose-docs.ai](https://goose-docs.ai/docs/getting-started/installation) 下載 macOS / Linux / Windows 安裝包。

**安裝 CLI：**
```bash
curl -fsSL https://github.com/aaif-goose/goose/releases/download/stable/download_cli.sh | bash
```

**設定 LLM 供應商：**
```bash
# 使用 Anthropic
export ANTHROPIC_API_KEY=sk-...
goose session

# 使用 Ollama（本地）
# 啟動 ollama 後直接用
goose session --provider ollama --model llama3
```

**Python SDK / API 整合：**
```python
# 透過 API 嵌入其他應用
import subprocess
result = subprocess.run(["goose", "session", "--prompt", "分析這份資料"], capture_output=True, text=True)
print(result.stdout)
```

## 跟其他方案的關係

| 專案 | 定位 | 與 Goose 的關係 |
|------|------|-----------------|
| [[AutoGPT]] | 自主 Agent 先驅 | AutoGPT 偏自動化探索，Goose 提供桌面 App + CLI 更實用 |
| [[CrewAI]] | 多 Agent 協作框架 | CrewAI 側重多 Agent 編排，Goose 是單一通用 Agent |
| Claude Code | Anthropic 官方 CLI Agent | Claude Code 綁 Anthropic，Goose 支援 15+ 供應商更開放 |
| Cursor / Windsurf | AI 程式碼編輯器 | 偏 IDE，Goose 是 Agent 不限編輯器 |
| [[MCP]] | 擴充標準 | Goose 原生支援 MCP，是 MCP 生態的主要使用者之一 |

← [[AI-Agent]] · [[MCP]] · [[Coding-Agent-CLI]] · [[AutoGPT]]

## 來源

- GitHub: [aaif-goose/goose](https://github.com/aaif-goose/goose)
- raw/aaif-goose-goose.md

---

| 項目 | 內容 |
|------|------|
| GitHub | [aaif-goose/goose](https://github.com/aaif-goose/goose) |
| Stars | ⭐47,512 |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-06-08 |