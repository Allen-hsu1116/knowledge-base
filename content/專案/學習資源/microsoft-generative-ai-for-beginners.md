---
title: Generative AI for Beginners
slug: microsoft-generative-ai-for-beginners
created: 2026-08-05
updated: 2026-08-05
stars: 116256
language: Jupyter Notebook
topics:
  - generative-ai
  - llms
  - prompt-engineering
  - rag
  - ai-agents
  - azure
  - openai
  - microsoft-for-beginners
  - semantic-search
  - transformers
---

# Generative AI for Beginners

> ⭐116.3k · 微軟出品 21 課生成式 AI 入門課程，從 LLM 基礎到 Prompt Engineering、聊天應用、RAG、圖片生成、Function Calling、AI Agent、微調，Python + TypeScript 雙語言範例

## 快速導航

- 📖 **學習資源** → [[microsoft-AI-For-Beginners|AI for Beginners]] · [[microsoft-ai-agents-for-beginners|AI Agents for Beginners]] · [[mlabonne-llm-course|LLM Course]]
- 🧠 **核心概念** → [[LLM]] · [[Prompt-Engineering]] · [[rag]] · [[AI-Agent]] · [[generative-AI|生成式 AI]]
- 🎓 **教學** → [[AI-Tutoring]] · [[self-education|自主學習]]

## 是什麼

**Generative AI for Beginners** 是微軟官方推出的生成式 AI 入門課程，由 Microsoft Cloud Advocates 團隊製作。課程以 21 堂課的形式呈現，涵蓋從 LLM 基礎概念到實際應用開發的完整學習路徑，是目前 GitHub 上最受歡迎的生成式 AI 教學資源之一（⭐116k+）。

課程分為「Learn」（概念講解）和「Build」（動手實作）兩類課程。Build 課程同時提供 **Python** 和 **TypeScript** 程式碼範例，支援 Azure OpenAI Service、Microsoft Foundry Models、OpenAI API 以及 Foundry Local（完全離線執行）多種後端。學習者可以選擇自己熟悉的語言和平台，邊學邊做。

內容涵蓋 Generative AI 與 LLM 簡介、模型比較與選擇、負責任 AI、Prompt Engineering 基礎與進階、文字生成應用、聊天應用、向量搜尋、圖片生成、Low Code AI、Function Calling、UX 設計、AI 安全、LLM 生命週期與 LLMOps、RAG 與向量資料庫、開源模型與 Hugging Face、AI Agent、微調、SLM、Mistral 模型、Meta 模型等主題。支援 50+ 語言翻譯（含繁體中文），MIT 授權。

## 核心特色

- **21 堂完整課程** — 從「什麼是 Generative AI」到「用 Meta 模型建構應用」，涵蓋 LLM、Prompt Engineering、RAG、Function Calling、AI Agent、微調等核心主題，每堂課獨立成章，可以依序學也可以跳著看
- **Python + TypeScript 雙語言範例** — Build 課程同時提供 Python 和 TypeScript 程式碼，支援 Azure OpenAI、Microsoft Foundry Models、OpenAI API、Foundry Local 多種後端，學習者選擇最適合自己的組合
- **50+ 語言自動翻譯** — 透過 Co-op Translator GitHub Action 自動維護翻譯，包含繁體中文、日文、韓文等，翻譯始終與原文同步。Clone 時可用 sparse checkout 避免下載大量翻譯檔
- **完整 AI 開發生命週期** — 不只教寫 code，還涵蓋負責任 AI（Lesson 3）、UX 設計（Lesson 12）、安全防護（Lesson 13）、LLMOps 與應用生命週期（Lesson 14），讓學習者具備端到端的開發能力
- **多模型生態系** — 課程後段專門介紹開源模型（Hugging Face, Lesson 16）、SLM（Lesson 19）、Mistral 模型（Lesson 20）、Meta 模型（Lesson 21），不綁定單一供應商
- **微軟官方維護** — 由 Microsoft Cloud Advocates 團隊維護，Version 3 持續更新，搭配 Microsoft Foundry Discord 社群提供學習支援

## 怎麼用

```bash
# 方式 1：完整 Clone（包含 50+ 語言翻譯，檔案較大）
git clone https://github.com/microsoft/generative-ai-for-beginners.git
cd generative-ai-for-beginners

# 方式 2：Sparse checkout（不含翻譯，下載更快）
git clone --filter=blob:none --sparse https://github.com/microsoft/generative-ai-for-beginners.git
cd generative-ai-for-beginners
git sparse-checkout set --no-cone '/*' '!translations' '!translated_images'
```

課程結構一覽：
- **Lesson 00-05**：環境設定、GenAI 與 LLM 簡介、模型比較選擇、負責任 AI、Prompt Engineering 基礎與進階
- **Lesson 06-11**：文字生成應用、聊天應用、向量搜尋、圖片生成、Low Code AI、Function Calling
- **Lesson 12-15**：UX 設計、AI 安全、應用生命週期與 LLMOps、RAG 與向量資料庫
- **Lesson 16-21**：開源模型與 Hugging Face、AI Agent、微調 LLM、SLM、Mistral 模型、Meta 模型

## 跟其他方案的關係

| 方案 | 類型 | 課程數 | 語言範例 | 後端 | 授權 |
|------|------|--------|---------|------|------|
| **Generative AI for Beginners** | 入門課程 | 21 | Python + TS | Azure/OpenAI/Foundry Local | MIT |
| [[microsoft-AI-For-Beginners\|AI for Beginners]] | 入門課程 | 24 (12週) | PyTorch + TF | N/A | MIT |
| [[microsoft-ai-agents-for-beginners\|AI Agents for Beginners]] | 入門課程 | 12+ | Python | MAF + Azure | MIT |
| [[mlabonne-llm-course\|LLM Course]] | 進階課程 | 模組化 | Python | 多後端 | Apache 2.0 |
| DeepLearning.AI GenAI 課程 | 入門課程 | 短課程 | Python | OpenAI | 免費認證 |

- **[[microsoft-AI-For-Beginners|AI for Beginners]]** → 更廣泛的 AI 入門（含傳統 ML、電腦視覺、NLP），Generative AI for Beginners 專注生成式 AI
- **[[microsoft-ai-agents-for-beginners|AI Agents for Beginners]]** → 微軟 Agent 課程，Generative AI for Beginners 的 Lesson 17 是其入門版
- **[[generative-AI|生成式 AI]]** → 本課程是學習生成式 AI 的系統化路徑
- **[[rag|RAG]]** → Lesson 15 專門講解 RAG 與向量資料庫
- **[[Prompt-Engineering]]** → Lesson 04-05 涵蓋 Prompt Engineering 基礎與進階技巧
- **[[AI-Tutoring]]** → 本課程是教學導向的 AI 應用，將生成式 AI 知識系統化傳遞給學習者

← [[generative-AI|生成式 AI]] · [[LLM]] · [[Prompt-Engineering]] · [[rag]] · [[AI-Agent]] · [[AI-Tutoring]] · [[self-education|自主學習]]

## 來源

- GitHub: <https://github.com/microsoft/generative-ai-for-beginners>
- Microsoft Foundry Discord: <https://discord.gg/nTYy5BXMWG>
- 原始 README: `raw/2026-08-05-microsoft-generative-ai-for-beginners.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [microsoft/generative-ai-for-beginners](https://github.com/microsoft/generative-ai-for-beginners) |
| Stars | ⭐116,256 |
| License | MIT |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-08-05 |