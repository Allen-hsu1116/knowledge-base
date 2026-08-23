---
title: Langflow
slug: langflow-ai-langflow
created: 2026-07-03
updated: 2026-07-03
stars: 150735
language: Python
topics:
  - agents
  - generative-ai
  - large-language-models
  - multiagent
  - react-flow
  - visual-builder
  - workflow
  - mcp
---

# Langflow

> ⭐150735 · 視覺化 AI Agent 與工作流建構平台，拖拽設計流程，一鍵部署為 API 或 MCP Server

## 快速導航


- 🤖 **Agent 框架** → [[langgenius-dify|Dify]] · [[FlowiseAI-Flowise|Flowise]]
- 🔌 **MCP 生態** → [[MCP]] · [[punkpeye-awesome-mcp-servers|Awesome MCP Servers]]
- 📖 **學習資源** → [[LangChain]] · [[llama-index]]

## 是什麼

Langflow 是一個開源的 AI Agent 與工作流建構平台，由 DataStax 維護。它的核心理念是讓開發者用視覺化拖拽介面快速組裝 AI 工作流——把 LLM、向量資料庫、工具、Agent 串接成可執行的流程圖，而不需要從頭寫程式碼。每一個流程（flow）都可以一鍵部署為 REST API 或 MCP Server，直接整合到任何框架或技術棧中。

與純程式碼方案（如 LangChain）不同，Langflow 提供了互動式 Playground 讓你逐步測試和調試流程。同時，它也開放了原始碼存取——每個元件都可以用 Python 自訂，在視覺化與程式碼控制之間取得平衡。這使得它既適合快速原型開發，也適合需要深度客製化的生產環境。

Langflow 支援所有主流 LLM（OpenAI、Anthropic、Google、Ollama 等）、主要向量資料庫（Milvus、Qdrant、Chroma 等），以及不斷增長的 AI 工具庫。它還內建了 LangSmith、LangFuse 等可觀測性整合，讓你在生產環境中追蹤和優化 AI 流程。Desktop 版本（Windows + macOS）把所有依賴打包在一起，免管理 Python 環境。

## 核心特色

- **視覺化建構介面**：拖拽式流程設計，快速原型開發和迭代，所見即所得
- **原始碼完全開放**：每個元件可用 Python 自訂，不犧牲靈活性
- **互動式 Playground**：逐步測試和調整流程，即時看到每一步的輸出
- **多 Agent 編排**：支援多 Agent 對話管理與檢索，複雜任務拆分協作
- **一鍵部署 API/MCP**：每個流程可部署為 REST API 或 MCP Server，變成可被其他 Agent 調用的工具
- **可觀測性整合**：LangSmith、LangFuse 等追蹤與評測，生產環境可監控
- **企業級安全與擴展**：支援大規模部署，具備安全與權限管理
- **Desktop 版本**：Windows + macOS 桌面應用，免管理 Python 環境

## 怎麼用

安裝：

```bash
# 使用 uv 安裝（推薦，需 Python 3.10–3.14）
uv pip install langflow -U

# 啟動 Langflow
uv run langflow run
# Langflow 啟動於 http://127.0.0.1:7860

# 或使用 Docker
docker run -p 7860:7860 langflowai/langflow:latest

# 或下載 Desktop 版本
# https://www.langflow.org/desktop
```

基本使用流程：
1. 在瀏覽器中打開 Langflow UI
2. 拖拽元件到畫布（LLM、Prompt、Tool、Vector Store 等）
3. 連接元件形成流程
4. 在 Playground 中測試流程
5. 一鍵部署為 API 或 MCP Server

## 跟其他方案的關係


- **[[langgenius-dify|Dify]]** → 同為開源 LLM 應用平台，Dify 更偏向 BaaS 全端方案，Langflow 更偏向視覺化流程設計
- **[[FlowiseAI-Flowise|Flowise]]** → 同為視覺化 Agent 建構工具，Flowise 基於 LangChain.js，Langflow 基於 Python 生態
- **[[LangChain]]** → LangChain 是純程式碼框架，Langflow 在其之上加了視覺化層
- **[[n8n-io-n8n|n8n]]** → 通用工作流自動化平台，Langflow 專注於 AI/LLM 工作流
- **[[MCP]]** → Langflow 可將流程部署為 MCP Server，成為 MCP 生態中的工具提供者

← [[langgenius-dify|Dify]] · [[FlowiseAI-Flowise|Flowise]] · [[LangChain]] · [[MCP]]

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[langgenius-dify]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[FlowiseAI-Flowise]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[langgenius-dify]] · [[FlowiseAI-Flowise]] · [[MCP]] · [[punkpeye-awesome-mcp-servers]]

## 來源

- GitHub: <https://github.com/langflow-ai/langflow>
- 官網: <https://www.langflow.org>
- 文件: <https://docs.langflow.org>
- 原始 README: `raw/2026-07-03-langflow-ai-langflow.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/langflow-ai/langflow |
| Stars | ⭐150735|
| License | MIT |
| 收錄日期 | 2026-07-03 |
