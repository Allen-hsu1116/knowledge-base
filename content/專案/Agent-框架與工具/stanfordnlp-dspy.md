---
title: DSPy
slug: stanfordnlp-dspy
created: 2026-09-30
updated: 2026-09-30
stars: 38435
language: zh-TW
topics: [AI Agent, Prompt Engineering, RAG, optimization]
source: https://github.com/stanfordnlp/dspy
---

# DSPy

> ⭐38,435 · 用宣告式 Python 組合語言模型程式，再以資料與評分函式最佳化提示詞，而不是持續手改一大段 Prompt。

## 快速導航

- 🧠 [[Prompt-Engineering]] — 從手寫提示詞走向可量測的自動最佳化
- 🤖 [[AI-Agent]] — 組合工具、推理模組與 Agent loop
- 📚 [[rag]] — 將檢索與回答拆成可評測的模組

## 是什麼

DSPy 是 Stanford NLP 發起的 Python 框架，名稱代表 Declarative Self-improving Python。它把 LLM 應用拆成明確的輸入輸出規格、執行模組與評分方式，讓分類器、資訊擷取、RAG 或 Agent 可以像一般程式一樣組合與迭代。

「Programming—not prompting」不是完全不使用提示詞，而是把人類的工作從反覆修飾字句，轉為定義任務、程式結構、資料集與品質指標；框架與最佳化器負責產生、測試並選擇適合模型的提示詞。README 也涵蓋權重最佳化方向，但不表示每種 optimizer 都會微調模型。

## 核心特色

- **Signature**：用型別、輸入欄位、輸出欄位與任務描述宣告模型要完成什麼，不把整個系統綁死在單一 Prompt 字串。
- **Module**：`Predict`、`ChainOfThought`、`ReAct` 提供不同執行策略；可透過 `dspy.Module` 組合成多步驟系統。
- **Optimizer**：給定範例與 metric，搜尋更好的指令或示範。官方目前以 GEPA 教學說明反思式提示詞最佳化，也保留多種 optimizer。
- **回饋驅動改善**：GEPA 可接收分數與文字 feedback，讓 reflection LM 知道失敗原因，再提出候選指令。
- **可保存最佳化結果**：保存 program state，方便比較版本及重新載入，不必每次執行都重新搜尋提示詞。

### 適合與不適合的場景

適合有重複任務、可取得代表性案例、能設計評分指標的應用，例如固定格式擷取、客服分類或可驗證的 RAG 問答。單次聊天、沒有評分依據的探索式任務，未必值得支付最佳化成本。

可靠性取決於資料與 metric：框架不會自動保證答案正確、安全或符合業務需求。Agent 工具的權限、人工核准與外部副作用仍需自行設計。

## 怎麼用

### 1. 在獨立 Python 環境安裝

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install dspy
```

### 2. 定義並執行一個任務

以下是依官方 Signature／Predict 介面整理的最小範例；需要可用的模型帳戶、API 金鑰與網路，可能產生費用。本次知識庫收錄沒有執行模型推論。

```python
import os
import dspy

# 先在環境設定 OPENAI_API_KEY；DSPY_MODEL 填入帳戶可用的模型 ID。
lm = dspy.LM(os.environ["DSPY_MODEL"])
dspy.configure(lm=lm)

class ExtractEvent(dspy.Signature):
    """Extract event details from an email."""
    email: str = dspy.InputField()
    event_name: str = dspy.OutputField()
    date: str = dspy.OutputField()

extract = dspy.Predict(ExtractEvent)
result = extract(email="Team lunch this Friday.")
print(result)
```

### 3. 從可執行走向可最佳化

1. 先跑 baseline，確認輸入輸出與失敗案例。
2. 建立代表性資料並分開 train、validation 與最終 test set。
3. 定義 metric；採 GEPA 時可提供可行動的文字回饋。
4. 設定 reflection LM、呼叫預算與並行數，執行 `optimizer.compile(program, trainset=train, valset=val)`。
5. 用未參與最佳化與選模的 test set 驗證改善，再保存結果。

官方 GEPA 教學指出：trainset 用於反思更新，valset 用於候選評分與選模；省略 valset 時會重用 trainset，因此不能把該分數當成未見資料的泛化能力。模型或資料分布改變後也應重新評測。

## 跟其他方案的關係

| 方案 | 主要處理的問題 | 與 DSPy 的關係 |
|---|---|---|
| 手寫 Prompt | 快速描述單次任務 | DSPy 將重複任務轉成可組合、可評測的程式 |
| [[anthropics-skills\|Anthropic Skills]] | 封裝 Agent 的操作知識、腳本與資源 | Skills 教 Agent 怎麼做；DSPy 用資料與 metric 搜尋提示詞，兩者互補 |
| [[promptfoo-promptfoo\|Promptfoo]] | 提示詞、模型與應用的評測及紅隊測試 | 偏驗證與比較；DSPy 另提供程式組合與最佳化 |
| [[WenyuChiou-awesome-agentic-ai-zh\|Agentic AI 中文學習地圖]] | 安排學習路線、練習與完成條件 | 適合先補 Agent／Eval 基礎，再進入 DSPy 實作 |

以上比較是依各方案定位整理，不是同一資料集的效能排名。

## 相關概念

← [[Prompt-Engineering]] · [[AI-Agent]] · [[rag]]

## 來源

- raw/2026-09-30-stanfordnlp-dspy.md — 官方 README 完整快照。
- https://github.com/stanfordnlp/dspy
- https://dspy.ai/current/ — Signature、Module、Optimizer 與組合範例。
- https://dspy.ai/getting-started/gepa-optimization/ — GEPA 流程、文字回饋、資料切分與預算。
- https://github.com/stanfordnlp/dspy/releases/tag/3.4.0 — 查詢時最新正式 release；官網橫幅仍顯示 3.4.0b1，版本以 release 記錄為準。

---

- **GitHub**：https://github.com/stanfordnlp/dspy
- **Stars**：⭐38,435（2026-09-30 GitHub API 快照）
- **License**：MIT
- **實作語言**：Python
- **版本快照**：3.4.0（2026-09-25 發布）
- **收錄日期**：2026-09-30
