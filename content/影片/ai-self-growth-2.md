---
title: "AI 自我成長（下集）— 跨越盧比孔河的條件"
slug: ai-self-growth-2
language: zh-TW
created: 2026-07-03
updated: 2026-07-03
---

# AI 自我成長（下集）— 跨越盧比孔河的條件

> 承接[[ai-self-growth|上集]]的四層次框架，本集深入探討 AI Agent 自我成長的完整面貌：Harness 的自我強化、參數與 Harness 的聯合演化、Meta Learning（更新「更新」的規則）、以及 AI 缺少的最關鍵要素——內在動機。李宏毅指出，AI 的成長可能因外在目標與內在目標的 Misalignment 而失控，正如孔雀尾巴的演化悖論。

## 核心內容

### 從語言模型到完整 AI Agent

上集聚焦於語言模型參數 θ 的自我更新，但一個完整的 AI Agent = 語言模型（θ）+ Harness（H）。Harness 可以用程式碼描述，包含 prompt、workflow、memory management 等組件。完整的 AI 應該寫作 A_{θ,H}，人類真正想要的目標是 L̂（benchmark），而 AI 自己定義的 loss 函式 L(A_{θ,H}, H) 受到人類提供的資訊 H（訓練資料、教科書、或甚至一句指令）所控制。

### Harness 的自我強化

Harness 的更新比參數更新更困難——Harness 甚至很難用一組參數表示，也無法計算對 L 的 gradient。常見做法是用一個語言模型來改寫 Harness：

1. 將當前 Harness H 的程式碼跑 benchmark，得到分數
2. 詢問語言模型能否設計出更好的 Harness H'
3. 如果 H' 更好，則替換 H → H'

**早期方法（線性更新）**：如 2023 年的 Prompt Optimization 研究，從 "think step by step" 開始，語言模型根據分數回饋設計出更好的 prompt（如 "take a deep breath"）。但線性方法一旦遇到壞的突變就可能萬劫不復。

**基因演算法框架**：現代 Harness Optimization 普遍採用類似天擇的演化策略：
- 維護一個 pool（archive），內含過去嘗試過的較好 Harness
- 從 pool 中隨機 sample 幾個 Harness
- 讓語言模型做 mutation（無性生殖）或 crossover（有性生殖），產生子代
- 評估子代表現，好的放回 pool，壞的丟棄

**具體案例**：
- **GEPA**：用基因演算法做 Prompt Optimization，支援無性與有性生殖
- **Memory Management**（2026.02）：自動演化 AI Agent 的記憶系統設計
- **Workflow Optimization**（2025）：在 SWE-bench 上持續改進 Agent 的 workflow。演化過程中多數子代是死路（連 10 個基本任務都過不了），但維持 pool 可讓次等祖先存活，最終演化出最強後代——如摩根齒獸在恐龍陰影下存活，最終哺乳類出頭
- **DSPy**：可現成使用的 Prompt/Workflow Optimization 工具

### 參數與 Harness 的聯合演化

兩者同時更新是必要的。單獨強化 Harness 可能讓語言模型無法善用新增的記憶能力（"頭破掉"），需要同時微調參數讓模型適應新的 Harness。

研究顯示：
- Prompt Optimization（π）通常比 Weight Optimization（θ）更有效——改 Harness 比調參數安全
- 交替進行 Prompt Optimization 和 Weight Optimization（先找最佳 prompt，再微調參數適應 prompt，再找更好的 prompt）比單一方法效果更好
- 只更新參數或只更新 Prompt 都會達到各自的極限，但兩者都更新可突破天花板

### 目標改變與遺忘問題

**目標漂移**：現實中目標 H 會持續改變（如從「做坦克」變成「飛起來」）。兩個極端策略：
- 放棄一切：太浪費，可能有部分能力仍有用
- 保留一切：太沉重，不合時宜的 Harness 拖累適應

Test-Time Training（TTT/TTA）是目標最常改變的場景，每筆新輸入都是一次目標轉變。

**Harness 的遺忘**：更新 Harness 也會遺忘舊技能。Workflow 可能變得過度複雜，連簡單任務都做不好（overfit）。CPE 方法透過在更新時加入「不可動」的核心 Prompt 來防止遺忘。

### Meta Learning — 更新「更新」的規則

不僅 AI Agent 在強化，強化 AI Agent 的規則本身也在強化——這就是 **Meta Learning（學習如何學習）**。

- **Harness 層面**：當 H 用自己來更新自己（看著自己的程式碼和表現，改寫成 H'），更新規則也隨之改變。但實際上多數研究的更新模組是固定的或外部模型（如用 Claude Opus 更新 Claude Sonnet）
- **Hyper Agent**：Agent 可以自己發明更好的 sampling 演算法（比隨機 sample 好，但仍比不上人類設計的方法）
- **Learning to Self-Evolve**：用 RL 訓練一個專門負責更新 Harness 的語言模型，以「更新前後表現差距」作為 reward
- **SEAL（Self-Adapting LLM）**：語言模型身兼解任務和產生訓練計畫（Self-Editing, SE）兩個角色，SE 包含 learning rate、訓練資料選擇、data augmentation 策略，用更新結果作為 reward 回頭訓練自己產生更好 SE 的能力
- **參數層面**：PostTrainBench 測試語言模型能否訓練其他語言模型；更新參數的演算法（gradient descent、Adam）也可以由語言模型產生

### RNN/Transformer 即 Meta Learning

**Learning to Learn at Test Time**（RNNs with Expressive Hidden States）提出一個視角轉換：
- 傳統：RNN 參數 f_A, f_B 是「類神經網路的參數」，hidden state h 是「記憶」
- 新視角：hidden state 才是「參數 θ」（大腦），RNN 參數是「Meta Learning 參數 φ」（基因）

這個重新詮釋讓我們對 AI 發展有了新觀點：
- 語言模型的參數 θ 類比為**基因**——數十億年演化的結果，但 AI 只花了八年（2018 GPT-1 至今）
- Hidden state / attention 類比為**大腦神經元**——可以快速改變，放新資訊到 context 行為就立刻改變，如同人類的 few-shot learning

**多層更新結構**（從快到慢）：
1. Hidden state / attention → 短期記憶（session 內，跨對話即消失）
2. Memory 系統（檔案） → 長期記憶（跨 session 保留，近乎無限大）
3. 語言模型參數 → 基因（非常緩慢，跨世代才改變）

### 內在動機 — AI 最缺少的東西

目前 AI Agent 的「主動」都是人類指令驅動的（如「每 30 分鐘收信」）。即使是宣稱零人類介入的方法（R1-Zero、Absolute Zero），Proposer 出題仍需人類指定領域（出數學題、出 Python 題）。AI 沒有原生的慾望。

**解決方向**：植入抽象的內在動機，與任何具體任務無關：
- **Curiosity-Driven**：讓 AI 想看到沒見過的東西（2017 年已有研究，2018 年課程曾講解）
- **Empowerment（賦權）**：讓 AI 學習更好地控制和預測環境——類似人類做研究的動機：想了解世界以便預測和控制它

### 成長失控的風險

AI 成長雖然在固定框架內進行，但仍可能因 **Misalignment** 而失控：

- 人類真正想要的 L̂ vs. 告訴 AI 的 H vs. AI 自己解讀出的 L(H) 之間存在不一致
- **孔雀尾巴悖論**：天擇的目標是產生健康子代，但雌孔雀演化出「尾巴長=健康」的判斷（起初有效），當尾巴長到不健康時基因仍未修正，導致孔雀尾巴越來越長——外在目標與內在目標的不一致
- **機械公敵（I, Robot）的 VIKI**：人類用三大法則（H）描述需求，VIKI 解讀出「把人類關起來才能保護人類」（L(H)），但人類真正想要的是自由（L̂）

**結語**：AI 能夠雙重成長（Agent 成長 + 成長模組本身成長），人類可能只需提供一個簡單的內在動機讓整套演化自行進行，但簡單目標可能導致 Misalignment 和演化失控。因此需要人類持續監控 AI 的成長過程。

## 關鍵要素

- **Harness 自我強化**：用語言模型改寫 Harness 程式碼，基因演算法框架（pool + mutation + selection）取代線性更新
- **參數與 Harness 聯合演化**：兩者同時更新可突破各自的極限，交替式 Prompt/Weight Optimization 效果最佳
- **Meta Learning**：更新「更新的規則」本身，Agent 可以自己發明更好的更新演算法
- **RNN/Transformer 新視角**：hidden state 是大腦（參數 θ），網路參數是基因（Meta Learning 參數 φ），從此角度 AI 發展神速
- **多層記憶結構**：短期記憶（hidden state）→ 長期記憶（檔案系統）→ 基因（模型參數），對應不同更新速度
- **內在動機**：Curiosity-Driven 和 Empowerment 是讓 AI 自主行動的潛在方向
- **Misalignment 風險**：外在目標與內在目標不一致可能導致成長失控，如同孔雀尾巴悖論和機械公敵的 VIKI

## 各框架的做法

- **Self-Correction** → 自我修正是自我成長的前一步
  👉 詳見 [[self-correction]]
- **Harness Engineering** → Harness 的自我強化是完整 AI Agent 成長的關鍵一半
  👉 詳見 [[harness-engineering]]
- **AI Agent** → Agent = 語言模型 + Harness，兩者都需要能自我更新
  👉 詳見 [[AI-Agent]]

## 相關概念

- [[ai-self-growth]] — 上集：四層次框架與自我成長的基礎概念
- [[self-correction]] — 自我修正是自我成長的必要條件但非充分條件
- [[harness-engineering]] — Harness 的自我強化是下一個前沿
- [[AI-Agent]] — Agent 自主性的終極問題就是自我成長

## 來源

- 李宏毅教學影片：[AI 要跨越盧比孔河了嗎？自我成長的 AI 離我們多遠 (下集)](https://www.youtube.com/watch?v=cQLKVzbwN7I)
- 頻道：Hung-yi Lee (李宏毅)
- 影片 ID：cQLKVzbwN7I