---
title: Token Optimization
slug: Token-Optimization
created: 2025-06-07
updated: 2025-06-07
language: zh-TW
---

# Token Optimization

> Token Optimization 是降低 LLM token 消耗的技術，透過精簡輸出、壓縮輸入、分層載入等方式減少成本和延遲，同時保持回應品質。

## 核心內容

Token Optimization 是降低 LLM token 消耗的各種技術和方法。每次 LLM API 呼叫都按 token 計費，包括輸入（prompt）和輸出（completion）。一個典型的開發 session 可能消耗 100K+ tokens，Token 優化透過壓縮輸入、精簡輸出、分層載入等方式降低消耗，同時維持回應品質。

Token 優化不只是省錢——它直接影響回應品質。當 context 過長時，模型注意力稀釋，回應品質下降。優化 token 消耗意味著更好的回應品質和更低的延遲。主要的優化策略分為四類：輸出壓縮（讓 LLM 用更少的字表達同樣資訊）、輸入壓縮（減少送進 context window 的內容）、檢索優化（只檢索真正需要的 context）、推理加速（不改品質但提升吞吐）。

從應用層看，CLI Proxy 攔截 shell 命令輸出可省 60-90% token，穴居人語壓縮可省 75% output token，Context 分層載入可省 60-80% 輸入，知識庫編譯可達 71.5x 縮減。從推論層看，投機解碼 2-3x 加速零品質損失，Flash Attention 數學等價加速，KV Cache 跨對話重用可省 50%+ 成本。

## 關鍵要素

- **輸出壓縮**：穴居人語用極簡語法省 75% output token；結構化輸出（JSON、表格）比散文更精簡
- **輸入壓縮**：CLI Proxy 攔截壓縮命令輸出省 60-90%；Context 分層（L0/L1/L2）按需載入省 60-80%
- **檢索優化**：語意搜尋用 embedding 相似度篩選而非全文載入；增量索引只處理變更部分
- **推理加速**：投機解碼 2-3x 加速零品質損失；Flash Attention 數學等價加速；量化降低精度換速度
- **Cache 重用**：相同前綴的 KV Cache 跨對話共用，穩定內容放前面讓 cache hit 更高，省 50%+ 成本

## 各框架的做法

- **RTK** → Rust CLI proxy，攔截壓縮命令輸出，省 60-90% token
  👉 詳見 [[rtk]]
- **Caveman** → 穴居人語 prompt 壓縮，省 75% output token
  👉 詳見 [[JuliusBrussee-caveman]]
- **Context Mode** → Context 壓縮工具，98% 壓縮率，15 平台支援
  👉 詳見 [[mksglu-context-mode|Context Mode]]
- **Headroom** → Token 優化 + Context 壓縮，MCP 整合
  👉 詳見 [[chopratejas-headroom|Headroom]]
- **Ponytail** → YAGNI 原則 Token 優化，14 Agent 平台支援
  👉 詳見 [[DietrichGebert-ponytail|Ponytail]]

## 相關概念

- [[LLM]] — Token 是 LLM 的計價單位，優化 token 就是優化成本
- [[Prompt-Engineering]] — 好的 prompt 設計本身就能減少 token 消耗
- [[Context-Database]] — L0/L1/L2 分層載入是 Token 優化的核心策略
- [[llm-internals]] — Flash Attention、KV Cache 從推論層面加速
- [[llm-knowledge-base]] — 編譯式知識管理大幅降低檢索 token
- [[AI-Agent]] — Agent 的長期運行需要 token 優化來控制成本

## 來源
- 知識庫內 Token Optimization 相關原始資料與專案頁面