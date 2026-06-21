---
title: Gemma 4 MTP Drafters
slug: gemma4-mtp-drafters
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Gemma 4 MTP Drafters

> ⭐— · Google 為 Gemma 4 推出的多 Token 預測投機模型，用投機解碼讓本地端推理速度最高提升 3 倍，零品質損失。

## 快速導航

- ⚡ **Token 優化** → [[Token-Optimization]]（投機解碼是 token 層級的推理加速）
- 🧠 **LLM 底層** → [[llm-internals]]（KV Cache 重用、自迴歸生成瓶頸）
- 🔌 **LLM** → [[LLM]]（Gemma 4 開源模型）

## 是什麼

Google 於 2026 年 5 月 5 日發布的 Gemma 4 MTP Drafters（Multi-Token Prediction Drafters），是一組輕量級「草稿模型」，搭配 Gemma 4 主模型使用投機解碼（Speculative Decoding），讓本地端推理速度最高提升 3 倍，且完全不影響輸出品質。

## 核心特色

- **投機解碼（Speculative Decoding）**：由輕量 Drafter 快速預測多個 token 序列，主模型一次平行驗證，同意就整段接受
- **共享 KV Cache**：Drafter 直接使用主模型的 KV Cache，不重新計算已處理的上下文，大幅降低額外開銷
- **零品質損失**：主模型仍負責最終驗證，Drafter 只加速不改品質
- **多硬體最佳化**：Pixel 手機、Apple Silicon、NVIDIA GPU 都有效能提升數據

## 怎麼實現的

### 自迴歸生成的瓶頸

傳統 LLM 推理是自迴歸生成：一次只產生一個 token，每個 token 都要把數十億參數從 VRAM 搬到運算單元。瓶頸不是計算力不夠，而是記憶體頻寬不夠 — 運算單元大部分時間在等資料搬完。

### 投機解碼的運作流程

1. **Drafter 預測**：輕量草稿模型（參數量遠小於主模型）快速生成 k 個候選 token
2. **主模型平行驗證**：主模型在一次前向傳遞中同時驗證這 k 個 token
3. **接受或拒絕**：
   - 全部接受 → 輸出 k 個 token + 1 個主模型自己的 token = k+1 個 token
   - 部分接受 → 輸出到第一個不匹配的 token，然後主模型用自己的分佈取樣一個 token
4. **KV Cache 重用**：Drafter 不需要自己的 KV Cache，直接讀主模型的，省去重複計算

### 效能數據

| 硬體 | 模型 | 加速倍數 |
|------|------|----------|
| Pixel 手機 | Gemma 4 E2B | 2.8x |
| Pixel 手機 | Gemma 4 E4B | 3.1x |
| Apple M4 | Gemma 4 31B | 2.5x |
| NVIDIA RTX PRO 6000 | 26B MoE | ~2x |
| Apple Silicon（batch 4-8） | — | ~2.2x |

3x 是理論上限，實際加速取決於硬體規格、batch size 和 Drafter 接受率。

### 為什麼不影響品質

投機解碼的數學保證：主模型的驗證步驟保證最終輸出的分佈與不做投機解碼時完全一致。拒絕時取樣方式保證分佈不變。Drafter 只影響速度，不影響正確性。

## 怎麼用

```bash
# Ollama（最簡單）
ollama run gemma4:31b-coding-mtp-bf16

# Hugging Face Transformers
from transformers import AutoModelForCausalLM
model = AutoModelForCausalLM.from_pretrained("google/gemma-4-31b")

# MLX（Apple Silicon）
# 從 Hugging Face 下載 MTP drafter 權重
# MLX 框架原生支援 speculative decoding

# vLLM / SGLang
# 兩者都內建 speculative decoding 支援
```

- 授權：Apache 2.0
- 下載平台：Hugging Face、Kaggle、Google AI Edge Gallery
- 支援框架：Hugging Face Transformers、MLX、vLLM、SGLang、Ollama
- Android/iOS：Google AI Edge Gallery

## 跟其他方案的關係

- **vs [[JuliusBrussee-caveman]]**：Caveman 用 token 壓縮減少輸出量，MTP 用投機解碼加速推理，兩者互補（一個減量、一個加速）
- **vs [[rtk]]**：RTK 是 token 節省框架，MTP 是推理加速，不同層面的優化
- **vs KV Cache 優化（[[llm-internals]]）**：MTP 重用 KV Cache 是其核心技巧，跟 Flash Attention、Paged Attention 等 KV Cache 優化是同一生態系的技術
- **vs 量化（Quantization）**：量化降低精度換速度，MTP 保持精度換速度，取捨不同

### 投機解碼 vs 其他推理加速技術

| 技術 | 原理 | 品質影響 | 加速倍數 |
|------|------|----------|----------|
| **投機解碼（MTP）** | 草稿模型預測 + 主模型驗證 | 零 | 2-3x |
| **量化（INT4/INT8）** | 降低參數精度 | 微小 | 1.5-2x |
| **Flash Attention** | 最佳化 attention 記憶體存取 | 零（數學等價） | 1.2-2x |
| **Batch 排程** | 平行處理多個請求 | 零 | 取決於 batch |
| **模型蒸餾** | 小模型模仿大模型 | 有損 | 取決於模型大小差異 |

## 相關概念

← [[Token-Optimization]] · [[llm-internals]] · [[LLM]]

## 來源

- raw/2026-05-09-gemma4-mtp-drafters.md

---

| 來源 | 發布日期 | License | 收錄日期 |
|------|----------|---------|----------|
| [KOC / Google](https://www.koc.com.tw/archives/641923) | 2026-05-05 | Apache 2.0 | 2026-05-09 |