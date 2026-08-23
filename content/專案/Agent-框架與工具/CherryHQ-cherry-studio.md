---
title: Cherry Studio
slug: CherryHQ-cherry-studio
created: 2024-05-24
updated: 2026-06-15
stars: 47327
language: TypeScript
topics: [ai-agent, agent-skills, claude-code, codex, deepseek, hermes-agent, openclaw, skills, vibe-coding]
---

# Cherry Studio

> ⭐47327 · AI 生產力工作室，300+ 預設助手，整合多家 LLM 提供商，支援自主 Agent 和多模型對話。

## 快速導航

[[open-webui-open-webui|Open WebUI]] · [[langgenius-dify|Dify]] · [[AI-Agent|AI Agent]]

## 是什麼

Cherry Studio 是一款跨平台桌面 AI 客戶端，支援 Windows、Mac 和 Linux。它提供統一介面存取多家前沿 LLM 提供商，包括 OpenAI、Anthropic、Google Gemini、DeepSeek 等，也支援本地模型（Ollama、LM Studio）。不只聊天，Cherry Studio 提供完整的 AI 生產力工具組：300+ 預設 AI 助手、自訂助手建立、多模型同時對話、文件處理、知識庫管理、WebDAV 同步等功能。

Cherry Studio 的核心差異在於「AI 生產力工作室」的定位 — 不只是另一個聊天介面，而是一個整合 Agent Skills、自主 Agent、Vibe Coding、文件處理、知識管理的工作環境。支援 Agent Skills 格式（.claude/skills/），讓使用者可以在 Cherry Studio 中直接使用 Claude Code、Codex、OpenClaw 等 Agent 的 Skill。內建 Mermaid 圖表視覺化和程式碼語法高亮。

## 核心特色

- **多 LLM 提供商**：OpenAI、Anthropic、Gemini、DeepSeek、Ollama、LM Studio 等，統一介面
- **300+ 預設助手**：涵蓋寫作、程式開發、翻譯、分析等場景，一鍵啟用
- **自主 Agent**：支援 Agent 模式，讓 AI 自主規劃和執行多步驟任務
- **Vibe Coding**：內建 Agent Skills 支援，相容 Claude Code / Codex / OpenClaw Skill 格式
- **多模型同時對話**：同一問題同時發送多個模型，比較回答品質
- **文件處理**：支援文字、圖片、Office、PDF 等多種格式
- **知識庫**：本地知識庫管理，RAG 檢索增強
- **WebDAV 同步**：跨裝置同步設定和對話歷史

## 怎麼用

```bash
# 下載安裝
# https://github.com/CherryHQ/cherry-studio/releases

# macOS（Homebrew）
brew install --cask cherry-studio

# Docker（自架伺服器版）
docker run -d -p 8080:8080 cherryhq/cherry-studio

# 設定 API Key
# 在設定中填入 OpenAI / Anthropic / Gemini 等 API Key
# 或設定 Ollama 本地端點連接本地模型

# 使用 Agent Skills
# 將 .claude/skills/ 目錄下的 Skill 放入 Cherry Studio 的 Skills 目錄
# 或直接從 Composio 策展列表匯入
```

## 跟其他方案的關係

| 方案 | 類型 | 多模型 | Agent | Skills | 本地模型 |
|------|------|--------|-------|--------|----------|
| [[CherryHQ-cherry-studio|Cherry Studio]] | 桌面客戶端 | ✅ 10+ | ✅ | ✅ | ✅ Ollama |
| [[open-webui-open-webui|Open WebUI]] | Web 客戶端 | ✅ 10+ | ✅ RAG | ✅ | ✅ Ollama |
| [[langgenius-dify|Dify]] | 開發平台 | ✅ 10+ | ✅ Workflow | ✅ | ✅ Ollama |
| ChatBox | 桌面客戶端 | ✅ 5+ | ❌ | ❌ | ✅ Ollama |
| Jan | 桌面客戶端 | ✅ 本地 | ❌ | ❌ | ✅ 內建 |

## 相關概念

← [[open-webui-open-webui]] · [[langgenius-dify]]

## 來源

- GitHub：https://github.com/CherryHQ/cherry-studio
- 官網：https://cherryai.com
- Raw 檔案：`knowledge-base/raw/2026-06-15-CherryHQ-cherry-studio.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/CherryHQ/cherry-studio |
| Stars | ⭐47327|
| License | AGPL-3.0 |
| 收錄日期 | 2024-05-24 |
