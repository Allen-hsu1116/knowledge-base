# LLM

> LLM（Large Language Model）是大語言模型，透過大規模文字資料訓練，能理解與生成自然語言。近年從純文字走向多模態、推理能力增強、本地部署與 agent 化應用。

## 快速導航

- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（如何用 LLM 管理知識）
- 🤖 **AI Agent** → [[AI-Agent]]（LLM 是 Agent 的大腦）
- 🔍 **RAG** → [[Context-Database]]（如何讓 LLM 存取外部知識）
- 🛠️ **Prompt Engineering** → [[Prompt-Engineering]]（如何設計 LLM 的輸入）

## 什麼是 LLM

LLM 是一種基於 Transformer 架構的深度學習模型，透過在海量文字資料上進行自監督學習（預測下一個 token），學會語言的統計規律和世界知識。模型參數從數十億到數千億不等，參數越多，推理和生成能力通常越強。

### 核心能力

- **文字生成**：寫作、翻譯、摘要、程式碼生成
- **指令遵循**：理解結構化指令（system prompt、SKILL.md）並精確執行
- **推理**：鏈式推理（chain-of-thought）、多步規劃、自我修正
- **工具使用**：呼叫 API、執行程式碼、操作瀏覽器
- **多模態**：處理圖片、音訊、影片（GPT-4V、Gemini 等）

### 關鍵技術演進

| 時期 | 代表 | 突破 |
|------|------|------|
| 2017 | Transformer | Attention 機制，平行化訓練 |
| 2018-2020 | GPT-2/GPT-3 | 規模定律（Scaling Law） |
| 2022 | ChatGPT | RLHF 對齊，實用對話 |
| 2023-2024 | GPT-4、Claude 3 | 多模態、長上下文、工具使用 |
| 2025-2026 | 推理模型、Agent | Chain-of-thought、自主規劃、記憶系統 |

## 為什麼重要

- **泛化能力**：一個模型能處理數千種任務，不需要針對每個任務訓練
- **開放生態**：開源模型（Llama、Qwen、DeepSeek）讓任何人都能部署
- **Agent 化**：LLM 從「回答問題」進化到「自主完成任務」，是 AI Agent 的核心引擎

## Token 與成本

LLM 以 token 為計價單位。1 個中文約 1-2 tokens，1 個英文約 0.75 tokens。Token 消耗直接影響成本和延遲：

- [[rtk]]：CLI proxy 自動壓縮命令輸出，省 60-90% token
- [[Token-Optimization]]：各種降低 token 消耗的技術
- [[JuliusBrussee-caveman]]：「穴居人語」壓縮，省 75% output token

## 相關專案

- [[ZhuLinsen-daily_stock_analysis]] — LLM 驅動的股票分析系統
- [[affaan-m-everything-claude-code]] — Agent harness 效能優化系統
- [[sickn33-antigravity-awesome-skills]] — 1,443+ AI Skills

### 推論與部署

- [[Ollama]] — 本地一鍵運行 LLM（⭐171K）
- [[llama-cpp\|llama.cpp]] — C/C++ 推論引擎，消費級硬體可跑（⭐109K）
- [[vLLM]] — 高吞吐推論引擎，PagedAttention（⭐79.5K）
- [[sgl-project-sglang\|SGLang]] — 高效能服務框架，RadixAttention 前綴快取（⭐27.6K）
- [[NVIDIA-TensorRT-LLM]] — NVIDIA 官方推論加速，GPU 深度最佳化（⭐13.6K）
- [[huggingface-transformers\|Hugging Face Transformers]] — 模型定義框架，100 萬+ 模型（⭐160K）
- [[litellm]] — LLM Gateway，100+ Provider 統一 API（⭐45.7K）

### 從零學 LLM

- [[minimind|MiniMind]] — 64M 參數從零訓練 LLM，2 小時完整流程（⭐49.8K）
- [[rasbt-LLMs-from-scratch|LLMs from Scratch]] — 書籍+程式碼，理論教學導向（⭐93.8K）

### Agent 框架

- [[AutoGPT]] — 自主 Agent 框架，2023 年引爆 Agent 浪潮（⭐184K）
- [[LangChain]] — LLM 應用開發框架，100+ 整合（⭐136K）
- [[CrewAI]] — 多 Agent 角色扮演協作框架（⭐51K）

## 相關概念

← [[AI-Agent]] · [[Prompt-Engineering]] · [[Token-Optimization]] · [[MCP]] · [[minimind]]

---

_此頁由 daily-llm-trending 自動維護_