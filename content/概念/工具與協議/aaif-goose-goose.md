---
title: Goose
slug: aaif-goose-goose
created: 2026-06-09
updated: 2026-06-09
stars: 48112
language: Rust
---

# Goose

> ⭐48k · 開源通用 AI Agent，桌面應用 + CLI + API，支援 15+ LLM 提供商與 70+ MCP 擴展

快速導航：[[AI-Agent]] · [[MCP]] · [[Coding-Agent-CLI]]

## 是什麼

Goose 是一個開源的通用型 AI Agent，由 Agentic AI Foundation（AAIF）在 Linux Foundation 下維護。它不只是一個程式碼建議工具，而是一個能夠在本地機器上安裝、執行、編輯和測試的完整 Agent 解決方案。

Goose 的設計哲學是「超越程式碼建議」——你可以用它做研究、寫作、自動化、資料分析，或任何需要完成的工作。它提供三種使用方式：原生桌面應用（macOS / Linux / Windows）、完整的 CLI 工具，以及可嵌入任何應用的 API。

底層用 Rust 建構，確保高效能和跨平台可攜性。Goose 支援 15+ 家 LLM 提供商，包括 Anthropic、OpenAI、Google、Ollama、OpenRouter、Azure、Bedrock 等，並透過 ACP（Agent Communication Protocol）讓你使用現有的 Claude、ChatGPT 或 Gemini 訂閱。同時連接 70+ 個 MCP 擴展，遵循 Model Context Protocol 開放標準。

## 核心特色

- **三合一介面**：桌面應用、CLI、API 三種使用方式，覆蓋不同工作場景
- **15+ LLM 提供商支援**：Anthropic、OpenAI、Google、Ollama、OpenRouter、Azure、Bedrock 等，可自由切換
- **ACP 協議**：透過 Agent Communication Protocol，直接使用現有的 AI 訂閱（Claude、ChatGPT、Gemini），不用額外買 API key
- **70+ MCP 擴展**：遵循 Model Context Protocol 開放標準，連接各種工具和服務
- **Rust 底層**：高效能、低延遲、跨平台可攜
- **Linux Foundation 治理**：從 block/goose 遷移到 AAIF，社群治理更透明

## 怎麼用

```bash
# CLI 安裝
curl -fsSL https://github.com/aaif-goose/goose/releases/download/stable/download_cli.sh | bash

# 或透過 Homebrew 安裝桌面應用
# 參考 https://goose-docs.ai/docs/getting-started/installation

# 啟動 CLI
goose

# 指定 provider
goose --provider anthropic

# 使用 ACP 連接現有訂閱
# 參考 https://goose-docs.ai/docs/guides/acp-providers
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 語言 | 擴展協議 | 特色 |
|------|-------|------|------|----------|------|
| **Goose** | ⭐48k | 通用 AI Agent | Rust | MCP + ACP | 桌面 + CLI + API，15+ providers |
| [[anthropics-claude-code\|Claude Code]] | ⭐128k | Coding Agent CLI | TypeScript | MCP | Anthropic 官方，深度編碼整合 |
| [[nesquena-hermes-webui\|Hermes WebUI]] | ⭐10k | Coding Agent Web UI | Ruby | MCP | Web 介面，多人協作 |
| [[affaan-m-ECC\|ECC]] | ⭐189k | AI Agent Harness | — | MCP | Token 優化，龐大社群 |
| [[earendil-works-pi\|Pi Agent Harness]] | ⭐54k | Agent Harness | — | MCP | Agent Skills 生態 |

Goose 與 Claude Code 的定位不同：Claude Code 專注於程式碼開發工作流，而 Goose 是一個更通用的 Agent，涵蓋研究、寫作、自動化等場景。Goose 的 ACP 協議是獨特賣點，讓使用者不需要額外購買 API key 就能連接現有的 AI 訂閱服務。

← [[AI-Agent]] · [[MCP]] · [[Coding-Agent-CLI]]

## 來源

- GitHub: <https://github.com/aaif-goose/goose>
- 原始 README: `raw/2026-06-09-aaif-goose-goose.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [aaif-goose/goose](https://github.com/aaif-goose/goose) |
| Stars | ⭐48,112 |
| License | Apache-2.0 |
| Language | Rust |
| 收錄日期 | 2026-06-09 |