# Coding Agent CLI

> Coding Agent CLI 是以終端機為主要介面的 AI 程式開發助手，提供提示、工具、代理、MCP、斜線指令和串流輸出等完整工作流程。

## 核心概念

- **終端機優先（Terminal-first）**：所有操作在 CLI 中完成，適合開發者日常流程
- **多 Provider 支援**：同一個 CLI 可切換 OpenAI、Gemini、Ollama 等不同模型後端
- **Agent Routing**：可為不同任務（探索、規劃、前端開發等）路由到不同模型
- **MCP 整合**：透過 Model Context Protocol 連接外部工具和資料來源
- **Provider Profile**：將 API 金鑰和設定儲存為可切換的配置檔

## 為什麼重要

- 降低 AI 程式開發的入門門檻：一個指令就能開始
- 本地模型支援讓隱私敏感的開發成為可能
- Agent routing 實現成本優化：簡單任務用便宜模型，複雜任務用強模型

## 相關專案

- [[Gitlawb-openclaude|OpenClaude]] — 開源 coding agent CLI，支援 OpenAI、Gemini、Ollama 等多種 provider，含 agent routing 和 MCP 整合

## 相關概念

- [[AI Agent]] — AI Agent 的通用概念
- [[MCP]] — Model Context Protocol

---

_此頁由 daily-llm-trending 自動維護_