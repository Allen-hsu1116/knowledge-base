---
title: LLMs from Scratch
slug: rasbt-LLMs-from-scratch
date: 2026-05-13
---

# LLMs from Scratch

> 從零開始用 PyTorch 實作一個 ChatGPT 等級的 LLM，一步步理解大型語言模型的每個環節。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [rasbt/LLMs-from-scratch](https://github.com/rasbt/LLMs-from-scratch) |
| Stars | ⭐ 93,785 |
| Language | Jupyter Notebook |
| 建立日期 | 2023-07-23 |
| 收錄日期 | 2026-05-13 |

## 快速導航

- [[LLM]] — 大型語言模型概覽
- [[llm-internals]] — LLM 內部機制深入探討
- [[kv-cache]] — KV Cache 推論加速技術
- [[flash-attention]] — Flash Attention 高效注意力機制
- [[minimind|MiniMind]] — 64M 參數從零訓練 LLM 實作專案

## 詳細簡介

LLMs from Scratch 是 Sebastian Raschka 所著《Build a Large Language Model (From Scratch)》一書的官方程式碼儲存庫，目標是讓讀者從最基礎的 Python 與 PyTorch 出發，完整實作一個 GPT 等級的大型語言模型。

這不是一個用高階框架包裝的教學，而是把 LLM 的每個組件——從文字處理、注意力機制、模型架構、預訓練到微調——全部拆開來逐一實作。每個章節都有獨立的 Jupyter Notebook，方便讀者邊讀邊跑程式碼。

專案累積了超過 9 萬顆星，是目前 GitHub 上最受歡迎的 LLM 學習資源之一，適合想要真正理解 LLM 內部運作原理的開發者與研究人員。

## 核心特色

### 逐章實作的學習路徑

從文字資料處理（Ch2）、注意力機制（Ch3）、GPT 模型架構（Ch4），到預訓練（Ch5）與微調（Ch6-7），每一章都有完整可跑的 Notebook，章節之間循序漸進，讓你從零建立對 LLM 的系統性理解。

### 豐富的補充教材

除了主章節，還包含大量進階主題：BPE 分詞器從零實作、KV Cache、Grouped-Query Attention、Multi-Head Latent Attention、Sliding Window Attention、Mixture-of-Experts、FLOPs 分析等。甚至有 Llama 3.2、Qwen3、Gemma 3 的從零實作版本。

### LoRA 與高效微調

附錄 E 提供 LoRA（Low-Rank Adaptation）的完整實作，展示如何用極少量參數微調大型模型，這是目前業界最主流的參數高效微調技術之一。

### 不需要 GPU 也能學

主要章節的程式碼設計上可以在一般筆電上執行，不需要特殊硬體。有 GPU 會自動加速，但不是必要條件。

### 17 小時配套影片課程

Manning 出版了配套的直播影片課程，逐章逐節跟著作者實作，可作為書本的補充或獨立學習資源。

## 安裝方式

```bash
git clone --depth 1 https://github.com/rasbt/LLMs-from-scratch.git
cd LLMs-from-scratch
pip install -r setup/requirements.txt
```

或使用 uv：

```bash
uv pip install -r setup/requirements.txt
```

## 技術棧

- **Python** + **PyTorch** — 核心實作語言與框架
- **Jupyter Notebook** — 互動式學習環境
- **tiktoken** — BPE 分詞器
- ** transformers (Hugging Face)** — 用於載入預訓練權重進行微調

## 授權

MIT License

## 相關連結

- [官方書籍網站（Manning）](http://mng.bz/orYv)
- [Amazon 購買連結](https://www.amazon.com/gp/product/1633437167)
- [配套影片課程](https://www.manning.com/livevideo/master-and-build-large-language-models)
- [續作：Build A Reasoning Model (From Scratch)](https://mng.bz/lZ5B)

## 跟其他方案的關係

| 專案 | 定位 | 參數量 | 特色 |
|------|------|--------|------|
| **LLMs from Scratch** | 書籍+程式碼，理論教學 | 各種規模 | 逐章實作、理論完整 |
| [[minimind\|MiniMind]] | 從零訓練實作，完整流程 | 64M (Dense) / 198M (MoE) | 純 PyTorch、極低成本、全鏈路 |

LLMs from Scratch 偏理論教學（書籍+Notebook），MiniMind 偏實作流程（2 小時從零訓練完整 LLM）。兩者互補：先讀 LLMs from Scratch 理解原理，再用 MiniMind 實際跑一遍完整訓練流程。