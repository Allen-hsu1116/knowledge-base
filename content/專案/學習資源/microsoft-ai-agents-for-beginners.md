---
title: microsoft/ai-agents-for-beginners
date: 2026-05-18
stars: 62542
language: Jupyter Notebook
source: https://github.com/microsoft/ai-agents-for-beginners
---

# microsoft/ai-agents-for-beginners

> 12 Lessons to Get Started Building AI Agents — 微軟出品的 AI Agent 入門課程，從基礎概念到生產部署一手包辦。

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

- [[AI-Agent]] — 本課程的核心主題
- [[AI-Tutoring]] — 教學導向的 AI 應用
- [[MCP]] — Lesson 11 涵蓋 MCP、A2A 等協議
- [[rag]] — Lesson 5 深入 Agentic RAG
- [[context-engineering-basics]] — Lesson 12 討論 Context Engineering
- [[Prompt-Engineering]] — Agent 提示詞設計基礎
- [[LLM]] — Agent 背後的大型語言模型

## 詳細簡介

**microsoft/ai-agents-for-beginners** 是微軟官方推出的 AI Agent 入門課程，涵蓋從基礎概念到生產部署的完整學習路徑。課程以 12+ 堂課的形式呈現，每堂課都包含文字教材、短影片和可執行的 Python 程式碼範例，讓學習者能夠邊學邊做。

課程基於微軟的 **Microsoft Agent Framework (MAF)** 與 **Azure AI Foundry Agent Service V2**，部分範例也支援 OpenAI 相容的提供商（如 MiniMax），方便開發者在不同平台上實驗。內容涵蓋 Agent 設計模式、工具使用、Agentic RAG、多 Agent 協作、元認知、上下文工程、Agent 記憶管理、電腦操作 Agent、安全防護等主題。

## 核心特色

### 結構化課程設計
從「什麼是 AI Agent」出發，逐步介紹 Agentic Framework、設計模式、Tool Use、RAG、多 Agent、元認知、上下文工程、記憶管理等，最後進入生產部署與安全。每堂課獨立成章，可以依序學也可以跳著看。

### 微軟 Agent 生態系整合
課程全程使用 Microsoft Agent Framework 與 Azure AI Foundry，讓學習者熟悉微軟的 Agent 開發工具鏈，同時也介紹了 MCP、A2A、NLWeb 等新興 Agent 協議。

### 多語言支援
支援超過 50 種語言翻譯（含繁體中文），由 Co-op Translator 自動維護。Clone 時可用 sparse checkout 避免下載大量翻譯檔。

### 實作導向
每堂課都附有 Python 程式碼範例，放在 `code_samples` 資料夾，可直接 fork 倉庫執行。影片教材搭配文字說明，適合不同學習風格。

## 安裝方式

```bash
# Fork 後 clone
git clone https://github.com/microsoft/ai-agents-for-beginners.git
cd ai-agents-for-beginners

# 如不想下載翻譯檔，可用 sparse checkout
git clone --filter=blob:none --sparse https://github.com/microsoft/ai-agents-for-beginners.git
cd ai-agents-for-beginners
git sparse-checkout set --no-cone '/*' '!translations' '!translated_images'
```

## 技術棧

- **語言**: Python, Jupyter Notebook
- **框架**: Microsoft Agent Framework (MAF)
- **平台**: Azure AI Foundry Agent Service V2
- **替代提供商**: OpenAI 相容 API（MiniMax 等）

## 授權

MIT License

## 相關連結

- [課程設定指南](https://github.com/microsoft/ai-agents-for-beginners/tree/main/00-course-setup)
- [Microsoft Foundry Discord](https://discord.gg/nTYy5BXMWG)
- [Generative AI for Beginners（姊妹課程）](https://aka.ms/genai-beginners)