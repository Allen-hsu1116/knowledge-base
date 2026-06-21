---
title: LLM
slug: LLM
created: 2026-05-10
updated: 2026-05-10
stars: 49.8K
language: zh-TW
---

# LLM

> ⭐49.8K · LLM（Large Language Model）是大語言模型，透過大規模文字資料訓練，能理解與生成自然語言。近年從純文字走向多模態、推理能力增強、本地部署與 agent 化應用。

## 快速導航

- ⚡ [[AI-Agent]] · [[Prompt-Engineering]] · [[Token-Optimization]] · [[llm-internals]]
- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（如何用 LLM 管理知識）
- 🤖 **AI Agent** → [[AI-Agent]]（LLM 是 Agent 的大腦）
- 🔍 **RAG** → [[Context-Database]]（如何讓 LLM 存取外部知識）
- 🛠️ **Prompt Engineering** → [[Prompt-Engineering]]（如何設計 LLM 的輸入）

## 是什麼

LLM 是一種基於 Transformer 架構的深度學習模型，透過在海量文字資料上進行自監督學習（預測下一個 token），學會語言的統計規律和世界知識。模型參數從數十億到數千億不等，參數越多，推理和生成能力通常越強。

LLM 的核心能力包括：文字生成（寫作、翻譯、摘要、程式碼生成）、指令遵循（理解結構化指令並精確執行）、推理（鏈式推理、多步規劃、自我修正）、工具使用（呼叫 API、執行程式碼、操作瀏覽器）、多模態（處理圖片、音訊、影片）。

### 關鍵技術演進

| 時期 | 代表 | 突破 |
|------|------|------|
| 2017 | Transformer | Attention 機制，平行化訓練 |
| 2018-2020 | GPT-2/GPT-3 | 規模定律（Scaling Law） |
| 2022 | ChatGPT | RLHF 對齊，實用對話 |
| 2023-2024 | GPT-4、Claude 3 | 多模態、長上下文、工具使用 |
| 2025-2026 | 推理模型、Agent | Chain-of-thought、自主規劃、記憶系統 |

## 核心特色

- **泛化能力**：一個模型能處理數千種任務，不需要針對每個任務訓練。從翻譯到程式碼生成到數學推理，LLM 的泛化能力是革命性的
- **指令遵循**：透過 RLHF 和 SFT 訓練，現代 LLM 能精確理解並執行結構化指令（system prompt、SKILL.md），讓 Agent 化應用成為可能
- **推理能力增強**：Chain-of-throught、self-correction、multi-step planning 等技術讓 LLM 從「回答問題」進化到「自主完成任務」
- **工具使用**：透過 MCP 等標準介面，LLM 能呼叫 API、執行程式碼、操作瀏覽器，從「只能說」變成「能做事」
- **開放生態**：開源模型（Llama、Qwen、DeepSeek）讓任何人都能部署，形成蓬勃的下游應用生態

## 怎麼用

### 推論框架選擇

| 場景 | 推薦框架 | 說明 |
|------|----------|------|
| 本地開發 | [[模型推論與部署|Ollama]] | 一鍵運行，模型庫豐富 |
| 高吞吐服務 | [[vLLM]] | PagedAttention、Continuous Batching |
| 本地低資源 | [[llama-cpp|llama.cpp]] | C/C++，消費級硬體可跑 |
| 企業部署 | [[sgl-project-sglang|SGLang]] | RadixAttention 前綴快取 |
| GPU 深度最佳化 | [[NVIDIA-TensorRT-LLM]] | NVIDIA 官方，最高吞吐 |
| 多 Provider 統一 API | [[litellm]] | 100+ Provider 統一介面 |

### 從零學 LLM

- 👉 [[minimind|MiniMind]] — 64M 參數從零訓練 LLM，2 小時完整流程（⭐49.8K）
- 👉 [[rasbt-LLMs-from-scratch|LLMs from Scratch]] — 書籍+程式碼，理論教學導向（⭐93.8K）

### 常見使用場景

- **AI Agent**：LLM 作為大腦，結合 MCP 工具和 Skills 完成自主任務
- **RAG 應用**：LLM 結合知識庫檢索，提供有根據的回答
- **程式碼生成**：Coding Agent CLI 使用 LLM 進行程式開發
- **知識管理**：LLM 協助整理、摘要、分類知識
- **內容創作**：LLM 協助寫作、翻譯、生成創意內容

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 應用 | LLM 是 Agent 的大腦，Agent 是 LLM 的應用 |
| [[Prompt-Engineering]] | 輸入設計 | Prompt Engineering 設計 LLM 的輸入 |
| [[Token-Optimization]] | 成本控制 | Token 優化降低 LLM 的使用成本 |
| [[MCP]] | 工具連接 | MCP 讓 LLM 連接外部工具 |
| [[AI-Skills]] | 行為定義 | Skills 定義 LLM 在特定情境下的行為 |
| [[LLM]] | 基礎 | LLM 是所有應用的基礎模型 |
| [[llm-internals]] | 底層 | Flash Attention、KV Cache 等底層技術 |
| [[Context-Database]] | 記憶 | Context DB 管理 LLM 的上下文 |
| [[rag]] | 增強 | RAG 讓 LLM 存取外部知識 |
| [[self-correction]] | 能力 | 自我修正提升 LLM 的可靠性 |

## Token 與成本

LLM 以 token 為計價單位。1 個中文約 1-2 tokens，1 個英文約 0.75 tokens。Token 消耗直接影響成本和延遲：

- [[rtk]]：CLI proxy 自動壓縮命令輸出，省 60-90% token
- [[Token-Optimization]]：各種降低 token 消耗的技術
- [[JuliusBrussee-caveman]]：「穴居人語」壓縮，省 75% output token

## 各框架的做法

### 推論與部署

- 👉 [[模型推論與部署|Ollama]] — 本地一鍵運行 LLM（⭐171K）
- 👉 [[llama-cpp|llama.cpp]] — C/C++ 推論引擎，消費級硬體可跑（⭐109K）
- 👉 [[vLLM]] — 高吞吐推論引擎，PagedAttention（⭐79.5K）
- 👉 [[sgl-project-sglang|SGLang]] — 高效能服務框架，RadixAttention 前綴快取（⭐27.6K）
- 👉 [[NVIDIA-TensorRT-LLM]] — NVIDIA 官方推論加速，GPU 深度最佳化（⭐13.6K）
- 👉 [[huggingface-transformers|Hugging Face Transformers]] — 模型定義框架，100 萬+ 模型（⭐160K）
- 👉 [[litellm]] — LLM Gateway，100+ Provider 統一 API（⭐45.7K）

### Agent 框架

- 👉 [[AutoGPT]] — 自主 Agent 框架，2023 年引爆 Agent 浪潮（⭐184K）
- 👉 [[LangChain]] — LLM 應用開發框架，100+ 整合（⭐136K）
- 👉 [[CrewAI]] — 多 Agent 角色扮演協作框架（⭐51K）

## 相關概念

← [[AI-Agent]] · [[Prompt-Engineering]] · [[Token-Optimization]] · [[MCP]] · [[minimind]] · [[llm-internals]] · [[llm-knowledge-base]]

## 來源

- raw/ 目錄中多個 LLM 相關原始檔案

---

_此頁由 daily-llm-trending 自動維護_

---

| 項目 | 值 |
|------|------|
| **Stars** | ⭐49.8K |
| **收錄日期** | 2026-05-10 |
