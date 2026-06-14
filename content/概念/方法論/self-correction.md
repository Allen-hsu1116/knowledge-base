---
title: Self-Correction 自我修正
slug: self-correction
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Self-Correction 自我修正

> 語言模型能否在無人工介入下自行發現並修正錯誤？三條路徑：修改 inference、修改 workflow、修改參數。

## 快速導航

- ⚡ [[AI-Agent]] · [[LLM]] · [[llm-internals]] · [[Prompt-Engineering]]
- 🧠 **LLM 知識庫** → [[llm-knowledge-base]]（Contrastive Decoding 涉及模型內部 representation 和 logit 的操作）
- 🛠 **AI 工作流** → [[AI-Agent]]（Generation + Verification 是 Agent 自我修正的 workflow 層實現）

## 是什麼

Self-Correction（自我修正）是指語言模型在無人工介入的情況下，自行發現並修正錯誤的能力。這是讓 AI Agent 從「犯錯就停」進化到「犯錯就改」的關鍵能力。

自我修正有三條主要路徑，從最輕量到最重量：

1. **修改 Inference**：不改模型，在推論時對比正確和錯誤方向（Contrastive Decoding）
2. **修改 Workflow**：不改模型，在流程中加入反思和驗證步驟
3. **修改參數**：用 RL 訓練模型學會推理和自我修正

### 為什麼自我修正很重要

- **Agent 可靠性**：有自我修正能力的 Agent 更適合自動化任務，減少人工介入
- **成本效益**：反思比重新生成更省 token，修正比重建更省時間
- **推理能力**：分步推理降低了學習難度，從指數級降為線性級

## 核心特色

- **Contrastive Decoding**：製造一個「模型一定答錯」的狀態，把正常輸出跟錯誤輸出相減，把答案推離錯誤方向。MTI 方法利用 KV Cache 只需多算 2 個 token 的 overhead，非常高效
- **Generation + Verification**：模型輸出答案後自動插入反思指令（「再檢查一下」），不需人工介入。但研究發現自我反思有時有用但不穩定，外部回饋（compiler error、搜尋結果）更可靠
- **RLVR 訓練**：用 Reinforcement Learning with Verifiable Reward 訓練模型做 reasoning，模型自然學會驗證和反思行為。知識≠自我修正能力，RL 訓練讓模型真正學會修正
- **成本考量**：在有限算力下，多 sample 幾次做 majority vote 比反思更划算。反思是「奢侈品」，在大量算力投入達到極限後才值得加

## 方向一：修改 Inference（Contrastive Decoding）

**核心思想**：製造一個「模型一定答錯」的狀態，把正常輸出跟錯誤輸出相減，把答案推離錯誤方向。

**製造錯誤答案的方法**：

| 方法 | 如何製造錯誤 | 適用場景 |
|------|------------|---------|
| 小模型對比 | 用更小模型的輸出當「錯」 | 通用（2022） |
| DoLa | 用淺層 logit lens 解碼當「錯」 | 通用，低 overhead |
| Layer CD | 用淺層 vision encoder 當「錯」 | 影像模型 |
| ICD | 加降智咒語（「你給錯誤答案」） | 通用 |
| CAD | 不給 retrieved document / 去掉影像 | RAG / VLM |
| MTI | 在末尾加 "Output Error" 兩 token | 可用 KV Cache，低 overhead |

**關鍵洞見**：CAD 在影像上最直觀——去掉圖片後模型憑先入為主概念作答（香蕉=黃色），相減後正確答案浮出。MTI 發現降智咒語必須語義相關（"Output Error" 有效，"Apple" 無效），且利用 KV Cache 只需多算 2 個 token 的 overhead。

## 方向二：修改 Workflow（Generation + Verification）

**核心思想**：模型輸出答案後自動插入反思指令（「再檢查一下」），不需人工介入。

**實驗發現**：
- 自我反思**有時有用但不穩定**，部分模型反思後反而變差
- **外部回饋更穩定有效**：compiler error、checklist feedback、搜尋結果
- 反思的划算性：在有限算力下，多 sample 幾次做 majority vote 比反思更划算；反思是「奢侈品」，在大量算力投入達到極限後才值得加
- 模型有不同「個性」：confidence level（堅持正確答案）vs critic score（接受批評改錯），兩者互斥。插入的反思指令語氣影響模型行為——肯定它就變固執，質疑它就變有彈性

## 方向三：修改參數（Reasoning / RL）

**核心思想**：用 RLVR（Reinforcement Learning with Verifiable Reward）訓練模型做 reasoning，模型自然學會自我修正。

**為什麼需要 reasoning？**
- 知識≠自我修正能力：模型知道希拉蕊出生在芝加哥，但仍回答她出生在紐約
- 分步 reasoning 降低了學習難度：K^T 種變化拆成 T 步各 K 種，訓練資料需求從指數級降為線性級（parity check 例子：64 筆 vs 20 筆）
- RL 做完 reasoning 後，模型自然展現 verification 和 reflection 行為

**RL 是否教了新能力？** 爭論中：
- 一派說正確路徑本來就存在，RL 只是提高其機率（pass@k 實驗：sample 256 次後有無 RL 差距消失）
- 另一派說 RL 確實教了新推理技巧（COTPath 檢查過程正確性，有 RL 的模型過程更對）
- 折衷：訓練初期利用現有路徑，後期可能學到新能力

**Cost of Thinking**：模型 reasoning token 數與人類解題時間有正比關係——思考本身有代價，有些問題就是很難一次答對。

## 怎麼用

### Contrastive Decoding 實作

```python
# MTI（Minimum Test-Time Intervention）示意
# 在 prompt 末尾加兩個 token："Output Error"
# 利用 KV Cache，幾乎零額外成本
def mti_contrastive_decode(model, prompt, alpha=0.5):
    # 正常解碼
    normal_logits = model(prompt)
    # 降智解碼（在 prompt 加 "Output Error"）
    degraded_logits = model(prompt + " Output Error")
    # 相減
    corrected_logits = normal_logits - alpha * degraded_logits
    return corrected_logits
```

### Workflow 層自我修正

```python
# Generation + Verification Pattern
def self_correct(prompt, model, max_attempts=3):
    for i in range(max_attempts):
        answer = model.generate(prompt)
        verification = model.generate(
            f"Is this answer correct? {answer}\n"
            f"If not, explain the error: "
        )
        if "correct" in verification.lower():
            return answer
        # 將反思結果加入下一輪
        prompt += f"\nAttempt {i+1}: {answer}"
        prompt += f"\nReflection: {verification}"
    return answer
```

### 應用場景

- **程式碼生成**：生成→編譯→修正（compiler error 當外部回饋）
- **數學推理**：分步推理 + 自我驗證每一步
- **Agent 任務**：執行→檢查→重試的迴圈模式
- **資料分析**：生成結論→交叉驗證→修正

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 實作層 | Agent 的 Generation + Verification 是 workflow 層自我修正 |
| [[LLM]] | 基礎層 | 自我修正能力取決於 LLM 的推理能力 |
| [[harness-engineering]] | 架構層 | Harness Engineering 定義 Agent 的認知框架，包含錯誤處理流程 |
| [[prompt-security]] | 安全層 | 自我修正可用於偵測 prompt injection 攻擊 |
| [[Token-Optimization]] | 成本層 | 反思和驗證會消耗額外 token，需平衡成本和品質 |
| [[self-rag]] | 檢索層 | Self-RAG 在 RAG 流程中加入自我審查反思 token |

## 相關概念

← [[AI-Agent]] · [[LLM]] · [[harness-engineering]] · [[Token-Optimization]] · [[self-rag]] · [[ai-self-growth]]

## 來源

- [Self-Correction 課程筆記](../raw/2026-05-03-self-correction.md)

---

_此頁由 daily-llm-trending 自動維護_