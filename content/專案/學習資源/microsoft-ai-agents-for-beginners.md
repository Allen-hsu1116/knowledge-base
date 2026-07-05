---
title: microsoft/ai-agents-for-beginners
slug: microsoft-ai-agents-for-beginners
created: 2026-05-18
date: 2026-05-18
stars: 62542
language: Jupyter Notebook
topics: [AI Agent, 教學課程, MCP]
source: https://github.com/microsoft/ai-agents-for-beginners
updated: 2026-06-14
---

# microsoft/ai-agents-for-beginners

> ⭐62542 · 12 Lessons to Get Started Building AI Agents — 微軟出品的 AI Agent 入門課程，從基礎概念到生產部署一手包辦。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [microsoft/ai-agents-for-beginners](https://github.com/microsoft/ai-agents-for-beginners) |
| Stars | ⭐62.5k |
| Language | Jupyter Notebook |
| 建立日期 | 2024-11-28 |
| 收錄日期 | 2026-05-18 |
| 授權 | MIT |

## 快速導航

- ⚡ [[AI-Agent]] · [[AI-Tutoring]] · [[MCP]] · [[rag]] · [[context-engineering-basics]] · [[Prompt-Engineering]] · [[LLM]]

## 是什麼

**microsoft/ai-agents-for-beginners** 是微軟官方推出的 AI Agent 入門課程，涵蓋從基礎概念到生產部署的完整學習路徑。12+ 堂課，每堂包含文字教材、短影片和可執行的 Python 程式碼範例，讓學習者邊學邊做。

課程基於微軟的 Microsoft Agent Framework (MAF) 與 Azure AI Foundry Agent Service V2，部分範例也支援 OpenAI 相容提供商（如 MiniMax）。內容涵蓋 Agent 設計模式、工具使用、Agentic RAG、多 Agent 協作、元認知、上下文工程、Agent 記憶管理、電腦操作 Agent、安全防護、MCP/A2A 協議等主題。支援 50+ 種語言翻譯（含繁體中文），MIT 授權。

## 詳細簡介

**microsoft/ai-agents-for-beginners** 是微軟官方推出的 AI Agent 入門課程，涵蓋從基礎概念到生產部署的完整學習路徑。課程以 12+ 堂課的形式呈現，每堂課都包含文字教材、短影片和可執行的 Python 程式碼範例，讓學習者能夠邊學邊做。

課程基於微軟的 **Microsoft Agent Framework (MAF)** 與 **Azure AI Foundry Agent Service V2**，部分範例也支援 OpenAI 相容的提供商（如 MiniMax），方便開發者在不同平台上實驗。內容涵蓋 Agent 設計模式、工具使用、Agentic RAG、多 Agent 協作、元認知、上下文工程、Agent 記憶管理、電腦操作 Agent、安全防護等主題。

## 核心特色

- **結構化課程設計** — 從「什麼是 AI Agent」出發，逐步介紹 Agentic Framework、設計模式、Tool Use、RAG、多 Agent、元認知、上下文工程、記憶管理等，最後進入生產部署與安全。每堂課獨立成章，可以依序學也可以跳著看
- **微軟 Agent 生態系整合** — 課程全程使用 Microsoft Agent Framework 與 Azure AI Foundry，讓學習者熟悉微軟的 Agent 開發工具鏈，同時也介紹了 MCP、A2A、NLWeb 等新興 Agent 協議
- **多語言支援** — 支援超過 50 種語言翻譯（含繁體中文），由 Co-op Translator 自動維護。Clone 時可用 sparse checkout 避免下載大量翻譯檔
- **實作導向** — 每堂課都附有 Python 程式碼範例，放在 `code_samples` 資料夾，可直接 fork 倉庫執行。影片教材搭配文字說明，適合不同學習風格

## 怎麼用

```bash
# Fork 後 clone
git clone https://github.com/microsoft/ai-agents-for-beginners.git
cd ai-agents-for-beginners

# 如不想下載翻譯檔，可用 sparse checkout
git clone --filter=blob:none --sparse https://github.com/microsoft/ai-agents-for-beginners.git
cd ai-agents-for-beginners
git sparse-checkout set --no-cone '/*' '!translations' '!translated_images'

# 每堂課在對應編號資料夾中（00-course-setup, 01-core-concepts, ...）
# code_samples/ 包含可執行的 Python 範例
# 設定 API key 和 Azure 憑證後即可執行
```

課程建議依序從 Lesson 0（環境設定）開始，逐步學習到 Lesson 12（Context Engineering）。每堂課獨立成章，也可跳著看。程式範例需要 Azure AI Foundry 或 OpenAI 相容 API key。

## 跟其他方案的關係

| 方案 | 類型 | 框架 | 課程數 | 實作範例 | 授權 |
|------|------|------|--------|---------|------|
| **AI Agents for Beginners** | 入門課程 | MAF + Azure | 12+ | ✅ Python | MIT |
| LangChain Academy | 入門課程 | LangChain | 6 modules | ✅ Python | MIT |
| OpenAI Cookbook | 範例集 | OpenAI API | 無固定結構 | ✅ 多語言 | MIT |
| DeepLearning.AI Agent 課程 | 入門課程 | 多框架 | 5-8 | ✅ Python/Jupyter | 免費認證 |

- 本課程是 [[AI-Agent]] 入門的系統化學習路徑，適合想從零開始理解 Agent 開發的開發者
- Lesson 5 深入 [[rag|Agentic RAG]]，Lesson 11 涵蓋 [[MCP]]、A2A 等新興協議
- 與 [[AI-Tutoring]] 相關：本課程是教學導向的 AI 應用，將 AI 知識系統化傳遞給學習者
- 課程中的 [[Prompt-Engineering]] 和 [[context-engineering-basics]] 是 Agent 開發的基礎技能

## 相關概念

← [[AI-Agent]] · [[AI-Tutoring]] · [[MCP]] · [[rag]] · [[context-engineering-basics]] · [[Prompt-Engineering]] · [[LLM]]

## 授權

MIT License

## 相關連結

- [課程設定指南](https://github.com/microsoft/ai-agents-for-beginners/tree/main/00-course-setup)
- [Microsoft Foundry Discord](https://discord.gg/nTYy5BXMWG)
- [Generative AI for Beginners（姊妹課程）](https://aka.ms/genai-beginners)

## 來源

- [原始資料](../raw/2026-05-18-microsoft-ai-agents-for-beginners.md)