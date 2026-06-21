---
title: OpenMythos
slug: openmythos
created: 2026-05-09
stars: '⭐12.3'
updated: 2026-05-09
language: zh-TW
---

# OpenMythos

> ⭐12.3 · 開源實作 Claude Mythos 模型架構——循環深度 Transformer（RDT）推理引擎，支援 MLA/GQA 切換與稀疏 MoE 前饋層。⭐12.3K

## 快速導航
- 🧠 **LLM** → [[LLM]]（OpenMythos 是 LLM 架構的開源重實作）
- 🔬 **LLM 內部** → [[llm-internals]]（注意力、KV-cache 等內部機制）
- ⚡ **Token 優化** → [[Token-Optimization]]（MLA 壓縮 KV-cache 降低 token 成本）

## 是什麼

OpenMythos 是由 kyegomez 發起的開源專案，目標是根據公開研究與推測，理論重建 Anthropic 的 Claude Mythos 模型架構。專案核心假說是 Mythos 採用了「循環深度 Transformer」（Recurrent-Depth Transformer, RDT）——同一組權重被反覆執行多次，讓模型在單次前向傳播中完成多步推理。

架構由三個功能區塊組成：Prelude（標準 transformer 層，只跑一次）、Recurrent Block（循環 T 次）、Coda（標準 transformer 層，只跑一次）。每次循環都注入原始輸入編碼，防止 hidden state 漂移。

> ⭐12.3 · 開源實作 Claude Mythos 模型架構——循環深度 Transformer（RDT）推理引擎，支援 MLA/GQA 切換與稀疏 MoE 前饋層。⭐12.3K

## 核心特色

- **循環深度 Transformer（RDT）**：一小組層反覆執行，`h_{t+1} = A·h_t + B·e + Transformer(h_t, e)`，固定參數量下獲得更深推理能力
- **LTI 約束保證訓練穩定性**：注入矩陣 A 參數化為連續負對角矩陣，透過 ZOH/Euler 離散化確保譜半徑 ρ(A) < 1 恆成立
- **多頭注意力切換**：GQA（搭配 Flash Attention 2）和 MLA（DeepSeek-V2 風格壓縮 KV 快取）之間切換
- **稀疏 MoE 前饋層**：細粒度 MoE + 共享專家，路由偏置項動態調整防止路由崩潰
- **可伸縮模型規格**：從 1B 到 1T，770M looped 模型可達 1.3B 固定深度模型品質
- **7 種模型變體**：mythos_1b、3b、10b、50b、100b、500b、1t，對應不同的 dim/expert/loop 配置

## 怎麼用

```bash
pip install open-mythos

# 啟用 Flash Attention 2
pip install open-mythos[flash]
```

```python
import torch
from open_mythos.main import OpenMythos, MythosConfig

# MLA 模式（DeepSeek-V2 風格壓縮 KV 快取）
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
ids = torch.randint(0, cfg.vocab_size, (2, 16))
logits = model(ids, n_loops=4)
```

## 跟其他方案的關係

| 專案 | 定位 | 架構特色 | 關係 |
|------|------|---------|------|
| OpenMythos | RDT 開源實作 | 循環深度 + MLA/GQA + MoE | Claude Mythos 的理論重建 |
| DeepSeek | MoE 模型 | MLA + MoE | OpenMythos 借鑑了 DeepSeek 的 MLA 壓縮 |
| [[LLM]] | 大型語言模型 | — | OpenMythos 是 LLM 架構的開源重實作 |
| [[llm-internals]] | LLM 內部機制 | — | RDT、MLA、MoE 都是 LLM 內部機制的創新 |
| [[Token-Optimization]] | Token 優化 | — | MLA 壓縮 KV-cache 是 token 優化的一種方式 |

## 相關概念

← [[LLM]] · [[llm-internals]] · [[Token-Optimization]]

## 來源

- raw/2026-05-09-openmythos.md

---

- **GitHub**: https://github.com/kyegomez/OpenMythos
- **Stars**: ⭐12,286
- **License**: Apache 2.0
- **收錄日期**: 2026-05-09

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/kyegomez/OpenMythos |
| **Stars** | ⭐'⭐12.3' |
| **收錄日期** | 2026-05-09 |
