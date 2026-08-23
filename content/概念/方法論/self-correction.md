---
title: Self-Correction 自我修正
slug: self-correction
created: 2026-05-03
updated: 2026-05-03
language: zh-TW
---

# Self-Correction 自我修正

> 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、修改 workflow、修改參數。

## 核心內容

Self-Correction（自我修正）是指語言模型在無人工介入的情況下，自行發現並修正錯誤的能力。這是讓 AI Agent 從「犯錯就停」進化到「犯錯就改」的關鍵能力。自我修正有三條主要路徑，從最輕量到最重量：修改 Inference、修改 Workflow、修改參數。

第一條路徑是 Contrastive Decoding（對比解碼）：不改模型，在推論時製造一個「模型一定答錯」的狀態，把正常輸出跟錯誤輸出相減，把答案推離錯誤方向。多種方法可以製造錯誤答案——用更小模型、用淺層 logit lens、加降智咒語等。MTI 方法利用 KV Cache 只需多算 2 個 token 的 overhead，非常高效。

第二條路徑是 Generation + Verification：不改模型，在流程中加入反思和驗證步驟。但研究發現自我反思有時有用但不穩定，外部回饋（compiler error、搜尋結果）更可靠。在有限算力下，多 sample 幾次做 majority vote 比反思更划算——反思是「奢侈品」，在大量算力投入達到極限後才值得加。

第三條路徑是 RLVR 訓練：用 Reinforcement Learning with Verifiable Reward 訓練模型做 reasoning，模型自然學會驗證和反思行為。知識不等於自我修正能力——模型可能知道正確答案但仍回答錯誤。分步 reasoning 降低了學習難度，從指數級降為線性級。

## 關鍵要素

- **Contrastive Decoding**：製造錯誤狀態再相減，MTI 方法只需 2 個 token overhead，推論時零成本修正
- **Generation + Verification**：流程層反思，自我反思不穩定但外部回饋可靠，多數決比反思更划算
- **RLVR 訓練**：用可驗證獎勵訓練 reasoning，模型自然學會驗證和反思，分步推理降低學習難度
- **成本考量**：反思是奢侈品，算力有限時 majority vote 優先；反思在算力極限後才值得加
- **模型個性差異**：confidence level（堅持正確答案）vs critic score（接受批評改錯），兩者互斥

## 各框架的做法


- **Self-RAG** → 在 RAG 流程中加入自我審查反思 token，檢索層的自我修正
  👉 詳見 [[self-rag]]
- **Agent 工作流** → Generation + Verification 是 Agent 自我修正的 workflow 層實現
  👉 詳見 [[AI-Agent]]
- **Harness Engineering** → 定義 Agent 的認知框架，包含錯誤處理流程
  👉 詳見 [[harness-engineering]]
- **Prompt 安全** → 自我修正可用於偵測 prompt injection 攻擊
  👉 詳見 [[prompt-security]]
- **Autoresearch** → 用外部評測結果驅動反覆實驗與修正
  👉 詳見 [[autoresearch]]
- **Promptfoo** → 以自動化測試和評測資料提供可靠外部回饋
  👉 詳見 [[promptfoo-promptfoo]]

## 相關概念

- [[LLM]] — 自我修正能力取決於 LLM 的推理能力
- [[Token-Optimization]] — 反思和驗證消耗額外 token，需平衡成本和品質
- [[ai-self-growth]] — 自我修正是自我成長的前一步，先能修正才能成長

## 來源

- Self-Correction 課程筆記（李宏毅，2026-04-25）
- raw/2026-05-03-self-correction.md
