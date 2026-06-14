---
title: Self-RAG
slug: self-rag
created: 2026-05-11
updated: 2026-05-11
language: zh-TW
stars: 2377
---

# Self-RAG

> 讓 LLM 學會自己決定何時檢索、何時不檢索，並用反射 token 自我審查生成品質 — ICLR 2024 Oral top 1%。

## 快速導航

- 📚 **RAG** → [[rag]]（Self-RAG 是 RAG 的進化版）
- 🧠 **LLM** → [[LLM]]（Self-RAG 訓練 LLM 學習反思 token）
- 🔄 **自我修正** → [[self-correction]]（Self-RAG 的反思機制是自我修正的一種形式）

## 是什麼

Self-RAG（Self-Reflective Retrieval-Augmented Generation）是一個讓 LLM 學會「自我反思」的 RAG 框架。傳統 RAG 無腦每次都檢索，Self-RAG 讓模型自己判斷：這個問題需不需要查資料？查到的資料有沒有用？我生成的內容有沒有根據？整體品質好不好？

論文發表於 ICLR 2024，獲選 Oral top 1%。作者是 Akari Asai、Zeqiu Wu、Yizhong Wang、Avirup Sil、Hannaneh Hajishirzi。

## 核心特色

- **按需檢索** — 模型自己決定要不要檢索。簡單問題（如「推特、IG、WhatsApp 哪個不同？」）直接回答不檢索，需要事實根據的問題（如「羊駝和駱馬有什麼不同？」）自動觸發檢索
- **四種反射 token** — 模型在生成過程中嵌入反思標記：`[Retrieve]/[No Retrieval]`（要不要查）、`[Relevant]/[Irrelevant]`（查到的有沒有用）、`[Fully supported]/[Partially supported]/[No support]`（生成有沒有根據）、`[Utility:1-5]`（整體品質）
- **段落級 beam search** — 不是逐 token 選最優，而是逐段落選整體最優輸出，可依偏好調整權重（重相關性？重支援度？重實用性？）
- **三種推論模式** — adaptive_retrieval（模型自決）、no_retrieval（關閉檢索）、always_retrieve（強制檢索），適應不同場景
- **不損害通用性** — 在不需要檢索的任務上（推理、創作）表現不降，需要事實性的任務上顯著提升

## 怎麼實現的

Self-RAG 的訓練分四步：

1. **Critic 資料建立** — 用 GPT-4 生成帶反射 token 的訓練資料
2. **Critic 訓練** — 微調 Llama2-7B，擴展詞彙表加入反射 token，用標準 next token prediction 訓練
3. **Generator 資料建立** — 用訓練好的 Critic + Retriever 生成 Generator 訓練資料
4. **Generator 訓練** — 微調 Llama2，加入反射 token

兩個模型（Critic 和 Generator）都擴展了詞彙表，但都使用標準的自回歸訓練目標，不需要特殊的損失函數。

## 怎麼用

```bash
pip install -r requirements.txt

# 使用 vLLM 加速推論
from vllm import LLM, SamplingParams

model = LLM("selfrag/selfrag_llama2_7b", dtype="half")
sampling_params = SamplingParams(temperature=0.0, top_p=1.0, max_tokens=100, skip_special_tokens=False)

# 不需要檢索的問題 → 模型自己判斷 [No Retrieval]
# 需要檢索的問題 → 模型輸出 [Retrieval]，再插入檢索結果
```

提供 7B 和 13B 兩個模型，都在 HuggingFace 上。預設檢索器用 Contriever（facebook/contriever-msmarco）。

## 跟其他方案的關係

| 方案 | 檢索策略 | 自我審查 | 適應性 | 訓練方式 |
|------|---------|---------|--------|---------|
| **Self-RAG** | 按需檢索 | ✅ 四種反射 token | ✅ 段落級 beam search | 微調 Llama2 |
| **標準 RAG** | 每次都檢索 | ❌ | ❌ | 不需訓練 |
| [[ragflow]] | 每次都檢索 | ❌ | ❌ | 不需訓練 |
| **CRAG**（Corrective RAG） | 每次都檢索 + 事後修正 | ⚠️ 事後修正 | ⚠️ | 不需訓練 |

- **vs 標準 RAG**：標準 RAG 無腦檢索，簡單問題也被塞入不相關的檢索結果，反而干擾生成。Self-RAG 讓模型自己決定，該查就查、不該查就不查
- **vs [[ragflow]] 等 RAG 引擎**：ragflow 等專注在檢索管線優化（分塊、重排序、混合搜尋），Self-RAG 專注在生成端的自我審查。兩者互補 — 用 ragflow 做更好的檢索，用 Self-RAG 做更好的生成
- **vs [[self-correction|Self-Correction]]**：Self-RAG 的反射機制是自我修正的一種實現 — 模型在生成過程中即時審查，而不是生成完才修正
- **與 [[vLLM]] 的關係**：Self-RAG 推薦用 vLLM 做推論加速，兩者搭配使用

## 相關概念

← [[rag]] · [[LLM]] · [[self-correction]]

## 來源

- raw/2026-05-11-self-rag.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [AkariAsai/self-rag](https://github.com/AkariAsai/self-rag) | ⭐2,377 | MIT | 2026-05-11 |