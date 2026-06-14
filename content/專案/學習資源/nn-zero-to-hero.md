---
title: nn-zero-to-hero
slug: nn-zero-to-hero
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# nn-zero-to-hero

> Andrej Karpathy 的神經網路教學系列，從 micrograd 到 GPT，一步步從零建構

## 快速導航
- 🧠 **LLM 底層技術** → [[LLM]]（Transformer 和 Tokenizer 是 LLM 核心）
- 🛠 **LLM 從零開始** → [[rasbt-LLMs-from-scratch|LLMs from Scratch]]（另一個從零學 LLM 的資源）
- 🛠 **Karpathy AI 課程** → [[andrej-karpathy-ai-how]]（同一作者的 AI 教學）

## 是什麼

Neural Networks: Zero to Hero 是 Andrej Karpathy 在 YouTube 上的系列課程，搭配 Jupyter notebook 和練習題。課程從最基礎的 micrograd（自建反向傳播引擎）開始，經過 makemore 系列（bigram → MLP → BatchNorm → 手動 backprop → WaveNet），最終建構完整的 GPT 模型和 BPE Tokenizer。整個過程強調「從零建構、逐步理解」，讓學習者真正掌握每個環節的原理。

## 核心特色

### 從 micrograd 到 GPT 的完整學習路徑
- 第 1 課：建構 micrograd，理解計算圖和反向傳播
- 第 2-5 課：makemore 系列，從 bigram 到 WaveNet
- 第 6-7 課：建構 GPT（含 Attention 機制）
- 第 8 課：建構 BPE Tokenizer，理解 LLM 的分詞機制

### 強調手作學習
- 每個概念都從零開始實作，不用高階 API
- 深入探討梯度流、啟動值統計、為何深層網路難訓練
- 手動反向傳播練習（Backprop Ninja）培養直覺

### 密集數學與程式結合
- PyTorch Tensor 操作和 subtleties
- BatchNorm、殘差連結、Adam optimizer 的原理
- Transformer 架構逐層拆解

## 怎麼用

```bash
git clone https://github.com/karpathy/nn-zero-to-hero.git
cd nn-zero-to-hero
# 安裝依賴
pip install torch numpy matplotlib jupyter
# 開啟 notebook
jupyter notebook
```

對應 YouTube 播放清單：[Neural Networks: Zero to Hero](https://www.youtube.com/playlist?list=PLAqhIrjkxbuWI23v9cThsA9GvCP2S7O69)

建議學習順序：
1. 先看 [[andrej-karpathy-ai-how]] 建立 AI 全貌理解
2. 按課程順序逐一完成 notebook 和練習題
3. 完成後用 [[rasbt-LLMs-from-scratch|LLMs from Scratch]] 系統性深究

## 跟其他方案的關係

| 資源 | 風格 | 深度 | 語言 |
|------|------|------|------|
| **nn-zero-to-hero** | 影片+notebook，手作 | 從 backprop 到 GPT | Python |
| [[rasbt-LLMs-from-scratch\|LLMs from Scratch]] | 書+程式碼 | 從數學到完整 LLM | Python |
| [[andrej-karpathy-ai-how]] | 影片 | AI 入門概覽 | 多語言 |
| [[minimind]] | 程式碼為主 | 極簡 LLM 實作 | Python |

三個資源可以互補：先看 ai-how 建立 AI 全貌理解，再用 nn-zero-to-hero 深入神經網路實作，最後用 LLMs-from-scratch 系統性學習完整的 LLM 建構流程。

## 相關概念
← [[LLM]] · [[rasbt-LLMs-from-scratch|LLMs from Scratch]] · [[andrej-karpathy-ai-how]] · [[kv-cache]] · [[positional-embedding-evolution]]

## 來源
- raw/2026-05-23-karpathy-nn-zero-to-hero.md

---

- **GitHub**: https://github.com/karpathy/nn-zero-to-hero
- **Stars**: ⭐22,343
- **License**: MIT
- **收錄日期**: 2026-05-23