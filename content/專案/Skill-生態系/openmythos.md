---
title: OpenMythos
date: 2026-05-09
stars: 12286
language: Python
github: https://github.com/kyegomez/OpenMythos
created: 2026-04-18
---

# OpenMythos

開源實作的 Claude Mythos 模型架構——基於循環深度 Transformer（Recurrent-Depth Transformer）的推理引擎，支援 MLA/GQA 切換與稀疏 MoE 前饋層。

**相關概念**：[[LLM]] · [[llm-internals]] · [[Token-Optimization]]

---

## 基本資訊

| 項目 | 內容 |
|---|---|
| GitHub | [kyegomez/OpenMythos](https://github.com/kyegomez/OpenMythos) |
| Stars | ⭐12.3k |
| Language | Python (PyTorch) |
| 建立日期 | 2026-04-18 |
| 收錄日期 | 2026-05-09 |
| 授權 | Apache 2.0 |

## 快速導航

- [[LLM]] — 大型語言模型概覽
- [[llm-internals]] — LLM 內部機制（attention、KV-cache 等）
- [[Token-Optimization]] — token 效率與成本優化

---

## 詳細簡介

OpenMythos 是由 kyegomez 發起的開源專案，目標是根據公開研究與推測，理論重建 Anthropic 的 Claude Mythos 模型架構。專案核心假說是 Mythos 採用了「循環深度 Transformer」（Recurrent-Depth Transformer, RDT）——同一組權重被反覆執行多次，讓模型在單次前向傳播中完成多步推理，而非輸出中間 token。

這個架構由三個功能區塊組成：**Prelude**（標準 transformer 層，只跑一次）、**Recurrent Block**（循環 T 次，同一組權重反覆處理 hidden state）、**Coda**（標準 transformer 層，只跑一次）。每次循環都會注入原始輸入編碼，防止 hidden state 在迭代過程中漂移。

這個設計帶來幾個重要特性：參數不隨推理深度增加而膨脹（因為權重共享）、推理時計算量可透過調整循環次數來伸縮、以及不需要輸出中間 token 就能完成多步推理（所謂「latent chain-of-thought」）。

## 核心特色

### 循環深度 Transformer（RDT）

架構不是堆疊數百層不同的 transformer，而是讓一小組層反覆執行。每次迭代更新 hidden state：`h_{t+1} = A·h_t + B·e + Transformer(h_t, e)`。這讓模型在固定參數量下獲得更深的推理能力——訓練 5-hop 的推理鏈，推理時跑 10 個 loop 就能處理 10-hop 的問題。

### 訓練穩定性保證：LTI 約束

循環模型的訓練以不穩定著稱。OpenMythos 採用了 Parcae 架構的方法：將注入矩陣 A 參數化為連續負對角矩陣，透過零階保持（ZOH）/Euler 離散化，確保譜半徑 ρ(A) < 1 恆成立。這保證了訓練穩定性，不受學習率或 batch noise 影響。

### 多頭注意力切換：GQA / MLA

注意力層可在 GQA（Grouped Query Attention，搭配 Flash Attention 2）和 MLA（Multi-Latent Attention，DeepSeek-V2 風格的壓縮 KV 快取）之間切換。MLA 快取壓縮後的 KV latent（kv_lora_rank），大幅降低 KV-cache 記憶體佔用。

### 稀疏 MoE 前饋層

大參數量模型的 FFN 層採用細粒度 MoE：多個小專家被路由選取，加上少量共享專家（always-on）吸收跨領域通用知識。路由偏置項在訓練中動態調整以防止路由崩潰。每個 loop 迭代中路由器可能選擇不同的專家子集，讓同一組權重在不同迭代中呈現不同的計算行為。

### 可伸縮模型規格

提供從 1B 到 1T 的預配置模型規格，context 長度從 4k 到 1M，loop 次數從 16 到 64。770M 參數的 looped 模型可達到 1.3B 固定深度模型的品質——約一半的參數量達到同等品質。

### 深度外推與系統化泛化

訓練時用較少 loop，推理時增加 loop 次數，模型能處理更長的推理鏈。這解釋了 Mythos 在深層組合問題上的突出表現——更多 loop = 更深推理 = 更難的問題被解決。

## 安裝方式

```bash
pip install open-mythos

# 啟用 Flash Attention 2（需要 CUDA 和建置工具）
pip install open-mythos[flash]
```

### 基本使用

```python
import torch
from open_mythos.main import OpenMythos, MythosConfig

cfg = MythosConfig(
    vocab_size=1000, dim=256, n_heads=8,
    max_seq_len=128, max_loop_iters=4,
    prelude_layers=1, coda_layers=1,
    n_experts=8, n_shared_experts=1,
    n_experts_per_tok=2, expert_dim=64,
    lora_rank=8, attn_type="mla",
    n_kv_heads=8, kv_lora_rank=32,
    q_lora_rank=64, qk_rope_head_dim=16,
    qk_nope_head_dim=16, v_head_dim=16,
)
model = OpenMythos(cfg)
logits = model(torch.randint(0, cfg.vocab_size, (2, 16)), n_loops=4)
```

## 技術棧

- **語言**: Python
- **框架**: PyTorch
- **注意力**: GQA (Flash Attention 2) / MLA (DeepSeek-V2)
- **FFN**: 稀疏 MoE (routed + shared experts)
- **穩定性**: LTI-constrained injection (Parcae)

## 授權

Apache License 2.0

## 相關連結

- [GitHub](https://github.com/kyegomez/OpenMythos)
- [PyPI](https://pypi.org/project/open-mythos/)
- [Discord](https://discord.gg/3keGBK9Pvr)