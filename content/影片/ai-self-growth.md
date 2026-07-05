---
title: AI Self-Growth 人工智慧自我成長
slug: ai-self-growth
created: 2026-06-04
updated: 2026-06-04
language: zh-TW
---

# AI Self-Growth 人工智慧自我成長

> AI 能否不依賴人類而自行成長？「跨越盧比孔河」的不可逆轉折點在哪？— 李宏毅 2026 新作

## 核心內容

AI 自我成長探討的是 AI 能否在不依賴人類的情況下持續提升自身能力。核心是「盧比孔河」比喻：一旦 AI 能創造比自己更強的 AI，人類就不再是必要角色，技術爆炸將不可逆。這個概念最早由統計學家 I.J. Good 在 1965 年提出，他稱之為「人類最後的發明」。2026 年 5 月，Anthropic 共同創辦人預測 2028 年底有 60% 機率 AI 研發不再需要人類。

李宏毅將 AI 自我成長拆解為四個層次，逐步減少人類介入。層次一是 Self-Training：用模型自己的修正結果當訓練資料，Constitutional AI 就是這個方法。層次二是 Self-Defined Loss：人類不用標準答案改用 reward function，AI 定義 proxy reward 來引導學習，類似多巴胺系統之於基因的 reward shaping。層次三是 AI 用自己當 Loss：Verbalize、Ensemble、Entropy Minimization 三種方法，但實驗顯示前期有效最終會壞掉。層次四是 Proposer-Solver-Verifier：連輸入都由 AI 自己產生，模型確實能自我訓練但有天花板，且可能產生不良行為。

自我成長 vs 自我修正的關鍵區別：自我修正是回到正確路徑，自我成長是開闢新路徑。自我修正是自我成長的必要條件但非充分條件。2026 年 5 月的結論：AI 還沒跨越盧比孔河，只是在河邊——AI 用自己定的 loss 訓練自己最終會壞掉，強 AI 訓練弱 AI 可行但學生不會超越老師，人類仍然在每個環節都有介入。

值得注意的是，目前討論的都只是調整語言模型參數。一個完整的 AI Agent = 語言模型 + Harness，只調參數只強化了 Agent 的一半。Harness 的自我強化是下一個前沿問題。

## 關鍵要素

- **四層次框架**：Self-Training → Self-Defined Loss → Self-Defined Loss Methods → Proposer-Solver-Verifier，逐步減少人類介入
- **盧比孔河比喻**：AI 從依賴人類到自主成長的不可逆轉折點，一旦跨越技術爆炸不可逆
- **Self-Defined Loss 的崩潰**：AI 用自己定的 loss 訓練自己，前期有效但最終會壞掉
- **社交 RL 遷移效果**：劇本殺訓練後數學能力也提升，顯示能力遷移的可能
- **強 AI 訓練弱 AI 可行**：但學生不會超越老師，且 AI 會像人類一樣在壓力下走捷徑

## 各框架的做法

- **Self-Correction** → 自我修正是自我成長的前一步，先能修正才能成長
  👉 詳見 [[self-correction]]
- **Harness Engineering** → 人類引導 AI 的方法，可能是延緩跨越盧比孔河的關鍵
  👉 詳見 [[harness-engineering]]
- **Context Engineering** → 管理 LLM 看到的內容，是 harness 設計的核心
  👉 詳見 [[context-engineering-basics]]
- **AI Agent** → Agent 自主性的終極問題就是自我成長
  👉 詳見 [[AI-Agent]]

## 相關概念

- [[self-correction]] — 自我修正是自我成長的必要條件但非充分條件
- [[llm-internals]] — 推論加速技術是模型自我最佳化的基礎
- [[ai-agent-work-impact]] — 自我成長的 AI 將大幅加速對工作的衝擊
- [[harness-engineering]] — Harness 的自我強化是下一個前沿

## 來源

- 李宏毅教學影片（2026-05-10 發布）