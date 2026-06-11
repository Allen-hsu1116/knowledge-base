---
title: LLMs from Scratch
created: 2026-05-13
---

# LLMs from Scratch

> 從零開始用 PyTorch 實作一個 ChatGPT 等級的 LLM，一步步理解大型語言模型的每個環節。⭐93,785

## 快速導航
- 🧠 **LLM** → [[LLM]]（大型語言模型概覽）
- 🔬 **LLM 內部** → [[llm-internals]]（LLM 內部機制深入探討）
- ⚡ **KV Cache** → [[kv-cache]]（KV Cache 推論加速技術）
- ⚡ **Flash Attention** → [[flash-attention]]（Flash Attention 高效注意力機制）
- 🧪 **MiniMind** → [[minimind]]（64M 參數從零訓練 LLM 實作專案）

## 是什麼

LLMs from Scratch 是 Sebastian Raschka 所著《Build a Large Language Model (From Scratch)》一書的官方程式碼儲存庫，目標是讓讀者從最基礎的 Python 與 PyTorch 出發，完整實作一個 GPT 等級的大型語言模型。

這不是一個用高階框架包裝的教學，而是把 LLM 的每個組件——從文字處理、注意力機制、模型架構、預訓練到微調——全部拆開來逐一實作。每個章節都有獨立的 Jupyter Notebook，方便讀者邊讀邊跑程式碼。

## 核心特色

- **逐章實作的學習路徑**：從文字處理（Ch2）到注意力機制（Ch3）、GPT 架構（Ch4）、預訓練（Ch5）到微調（Ch6-7），章節循序漸進
- **豐富的補充教材**：BPE 分詞器從零實作、KV Cache、GQA、MLA、Sliding Window Attention、MoE、FLOPs 分析，甚至有 Llama 3.2、Qwen3、Gemma 3 的從零實作版本
- **LoRA 與高效微調**：附錄 E 提供 LoRA 的完整實作
- **不需要 GPU 也能學**：主要章節設計上可以在一般筆電上執行

## 怎麼用

```bash
git clone --depth 1 https://github.com/rasbt/LLMs-from-scratch.git
cd LLMs-from-scratch
pip install -r setup/requirements.txt
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[minimind\|MiniMind]] | 從零訓練實作 | LLMs from Scratch 偏理論教學，MiniMind 偏實作流程，兩者互補 |
| [[LLM]] | LLM 概念 | 本書是理解 LLM 內部運作的最佳入門 |
| [[llm-internals]] | LLM 內部機制 | 本書的進階補充教材涵蓋此主題 |

## 相關概念

← [[LLM]] · [[llm-internals]] · [[kv-cache]] · [[flash-attention]]

## 來源

- raw/2026-05-13-rasbt-LLMs-from-scratch.md

---

- **GitHub**: https://github.com/rasbt/LLMs-from-scratch
- **Stars**: ⭐93,785
- **License**: MIT
- **收錄日期**: 2026-05-13