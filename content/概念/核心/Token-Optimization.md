---
title: Token Optimization
slug: Token-Optimization
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Token Optimization

> ⭐— · Token Optimization 是降低 LLM token 消耗的技術，透過精簡輸出、壓縮輸入、分層載入等方式減少成本和延遲，同時保持回應品質。

## 快速導航

- ⚡ [[LLM]] · [[Prompt-Engineering]] · [[Context-Database]] · [[llm-knowledge-base]]
- ⚡ **RTK** → [[rtk]]（Rust CLI proxy，攔截壓縮命令輸出，省 60-90% token）
- 🗿 **Caveman** → [[JuliusBrussee-caveman]]（穴居人語，省 75% output token）
- 🗄️ **分層載入** → [[Context-Database]]（L0/L1/L2 按需載入，減少 context 長度）
- 🧠 **知識庫** → [[llm-knowledge-base]]（編譯式知識管理，降低檢索成本）

## 是什麼

Token Optimization 是降低 LLM token 消耗的各種技術和方法。每次 LLM API 呼叫都按 token 計費，包括輸入（prompt）和輸出（completion）。Token 優化透過壓縮輸入、精簡輸出、分層載入等方式降低 token 消耗，同時維持回應品質，是控制 LLM 成本與延遲的關鍵技術。

Token 優化不只是省錢——它直接影響回應品質。當 context 過長時，模型注意力稀釋，回應品質下降。優化 token 消耗意味著更好的回應品質和更低的延遲。

## 核心特色

- **輸出壓縮讓 LLM 用更少的字表達同樣的資訊**：穴居人語（Caveman）用極簡語法回答，省 75% output token；結構化輸出（JSON、表格）比散文更精簡；精簡指令在 system prompt 要求簡短回覆
- **輸入壓縮減少送進 LLM context window 的內容量**：RTK 攔截 shell 命令輸出，智慧壓縮後再送進 LLM；Context 分層（L0/L1/L2）按需載入，不一次塞入所有 context；知識庫編譯（raw→wiki）只載入精煉後的知識
- **檢索優化只檢索真正需要的 context**：語意搜尋用 embedding 相似度篩選而非全文載入；目錄遞迴先定位目錄再搜尋，縮小範圍；增量索引只索引變更的部分不重複處理
- **推理加速不改品質但提升吞吐**：投機解碼讓輕量草稿模型預測多個 token，主模型一次驗證，2-3x 加速零品質損失；Flash Attention 最佳化 attention 記憶體存取，數學等價，1.2-2x 加速；量化（INT4/INT8）降低參數精度換速度
- **Cache Input 跨對話重用**：相同前綴的 KV Cache 可跨對話共用，System prompt 排列原則（越穩定的越前面）讓 cache hit 更高，實測可省 50%+ 成本

## 怎麼用

### 輸出壓縮

```python
# 穴居人語（Caveman）—— 極簡語法省 75% output token
# 正常回覆：
"Based on my analysis, the main issue is that the function
calculate_total() doesn't handle edge cases properly. Specifically,
when the input is null, it returns NaN instead of 0."

# 穴居人語：
"calculate_total() → NaN on null input. Fix: return 0."

# 結構化輸出也更精簡
system_prompt = """
回覆格式：
- 問題：[一句話]
- 原因：[一個要點]
- 修復：[一行程式碼]
"""
```

### 輸入壓縮

```bash
# RTK（Rust CLI proxy）—— 攔截壓縮命令輸出
# 原本 ls -la 輸出 100 行 → 壓縮後 20 行
# 省 60-90% token

# 安裝
cargo install rtk

# 使用（自動攔截 shell 輸出）
rtk -- ls -la
rtk -- cat large_file.txt
```

### 分層載入

```python
# Context Database 分層載入
# L0 永遠載入（系統提示、角色設定）→ 固定 token
# L1 按需載入（當前對話、最近任務）→ 中等 token
# L2 搜尋載入（歷史記憶、資源索引）→ 按需 token

# System prompt 排列原則（影響 cache hit）
# ✅ 好：穩定內容在前，變動在後
system = """[穩定] 角色定義 [穩定] 工具列表 [變動] 今日日期"""

# ❌ 壞：變動內容穿插在穩定內容中
# cache 無法命中，每次都要重新計算
```

### 效果對比

| 方法 | 輸入省 % | 輸出省 % | 品質影響 |
|------|----------|----------|----------|
| RTK（命令壓縮） | 46% | — | 技術準確度 100% |
| Caveman（穴居人語） | — | 75% | 可讀性下降 |
| Context 分層（L0/L1/L2） | 60-80% | — | 無影響 |
| 知識庫編譯 | 71.5x* | — | 反而更好 |
| 本地推理（Ollama） | — | — | API 成本降至零 |
| 投機解碼（MTP） | — | — | 零品質損失，2-3x 推理加速 |
| Flash Attention | — | — | 數學等價，1.2-2x 加速 |
| Cache Input | 50%+ | — | 無影響 |

*graphify 測試數據

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[LLM]] | 基礎 | Token 是 LLM 的計價單位，優化 token 就是優化成本 |
| [[Prompt-Engineering]] | 互補 | 好的 prompt 設計本身就能減少 token 消耗 |
| [[Context-Database]] | 實作 | L0/L1/L2 分層載入是 Token 優化的核心策略 |
| [[llm-knowledge-base]] | 實作 | 編譯式知識管理大幅降低檢索 token |
| [[flash-attention]] | 底層 | Flash Attention 從推論層面加速，間接降低 token 成本 |
| [[kv-cache]] | 底層 | KV Cache 跨對話重用降低計算成本 |
| [[gemma4-mtp-drafters]] | 加速 | 投機解碼加速推理但不影響品質 |
| [[AI-Agent]] | 應用 | Agent 的長期運行需要 token 優化來控制成本 |

## 為什麼 Token 優化很重要

每次 LLM API 呼叫都按 token 計費，包括輸入（prompt）和輸出（completion）。一個典型的開發 session 可能消耗 100K+ tokens，如果沒有優化：

- **成本**：GPT-4 約 $3/1M input tokens，$30/1M output tokens
- **延遲**：更多 token = 更長等待時間
- **品質**：context 過長時模型注意力稀釋，回應品質下降

## 主要優化策略

### 1. 輸出壓縮

讓 LLM 用更少的字表達同樣的資訊：

- **穴居人語**（[[JuliusBrussee-caveman]]）：用極簡語法回答，省 75% output token
- **結構化輸出**：JSON、表格比散文更精簡
- **精簡指令**：在 system prompt 要求簡短回覆

### 2. 輸入壓縮

減少送進 LLM context window 的內容量：

- **CLI Proxy**（[[rtk]]）：攔截 shell 命令輸出，智慧壓縮後再送進 LLM
- **Context 分層**（[[Context-Database]]）：L0/L1/L2 按需載入，不一次塞入所有 context
- **知識庫編譯**（[[llm-knowledge-base]]）：raw→wiki 編譯，只載入精煉後的知識

### 3. 檢索優化

只檢索真正需要的 context：

- **語意搜尋**：用 embedding 相似度篩選，而非全文載入
- **目錄遞迴**（[[volcengine-OpenViking]]）：先定位目錄再搜尋，縮小範圍
- **增量索引**（[[cocoindex]]）：只索引變更的部分，不重複處理

### 4. 推理加速（不改品質）

不壓縮 token，但讓推理更快，等同於每秒產出更多 token：

- **投機解碼**（[[gemma4-mtp-drafters]]）：輕量草稿模型預測多個 token，主模型一次驗證，2-3x 加速，零品質損失
- **Flash Attention**（[[llm-internals]]）：最佳化 attention 記憶體存取，數學等價，1.2-2x 加速
- **量化（INT4/INT8）**：降低參數精度換速度，微小品質影響，1.5-2x 加速

## 相關專案

- [[rtk]] — Rust CLI proxy，攔截壓縮命令輸出
- [[JuliusBrussee-caveman]] — 穴居人語 token 壓縮
- [[gemma4-mtp-drafters]] — 投機解碼推理加速，零品質損失
- [[模型推論與部署|Ollama]] — 本地推理，API 成本降至零
- [[llama-cpp|llama.cpp]] — 本地推論引擎，消費級硬體可跑
- [[vLLM]] — 高吞吐服務，PagedAttention 降記憶體成本
- [[sgl-project-sglang|SGLang]] — RadixAttention 前綴快取降重複成本
- [[NVIDIA-TensorRT-LLM]] — NVIDIA GPU 深度最佳化，最高吞吐

## 相關概念

← [[LLM]] · [[Prompt-Engineering]] · [[Context-Database]] · [[llm-knowledge-base]] · [[gemma4-mtp-drafters]]

## 來源

- 相關 GitHub/文章資料

---

_此頁由 daily-llm-trending 自動維護_