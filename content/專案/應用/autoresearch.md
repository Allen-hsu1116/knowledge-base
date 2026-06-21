---
title: AutoResearch
slug: autoresearch
created: 2026-05-10
updated: 2026-05-10
stars: 81,499
language: zh-TW
---

# AutoResearch

> ⭐81,499 · Karpathy 的自主 AI 研究專案：AI Agent 在單 GPU 上自動跑 LLM 訓練實驗，修改程式碼→訓練 5 分鐘→檢查→保留或丟棄→重複。program.md 就是超輕量 Skill。

## 快速導航

- 🛠 **Skill 概念** → [[agent-skills-ecosystem]]（program.md = SKILL.md 的前身）
- 🧠 **學習閉環** → [[hermes-agent]]（Hermes 自動改進 vs AutoResearch 人類定義策略）
- 🔄 **Agent 工作流** → [[AI-Agent]]（研究自動化是 Agent 化極致形態）

## 是什麼

AutoResearch 是 Andrej Karpathy（前 Tesla AI 總監、OpenAI 共同創辦人）在 2026 年 3 月推出的開源概念驗證專案。核心迴圈：Agent 讀取 program.md（研究策略）→ 修改 train.py（模型架構、超參數）→ 訓練 5 分鐘 → 評估 val_bpb 指標 → 保留或丟棄修改 → 重複。單 GPU、單檔案、單指標，極簡到不能再簡。

## 核心特色

### program.md = 超輕量 Skill

你不是直接改 Python，而是寫 Markdown 指令給 Agent。program.md 本質上就是一個 Skill 定義，跟 [[agent-skills-ecosystem]] 的 SKILL.md 概念直接對應。人類迭代 program.md 來優化研究策略，Agent 迭代 train.py 來優化模型。

### 固定時間預算

每個實驗固定 5 分鐘 wall clock，實驗之間直接可比，不受架構變動影響。

### val_bpb 指標

使用 vocab-size 無關的 bits-per-byte 指標，架構變動之間公平比較。

### 自給自足

一 GPU、一檔案、一指標。無外部依賴，不需要分散式訓練。

### 自主研究 vs 自主技能建立

| 特色 | AutoResearch | [[hermes-agent]] |
|------|-------------|-----------------|
| 誰寫 Skill | 人類寫 program.md | Agent 自動建立 |
| 誰執行 | Agent 修改 train.py | Agent 使用技能 |
| 改進方向 | 模型指標（val_bpb） | 任務成功率 |
| 領域 | LLM 訓練 | 通用任務 |
| 循環 | 實驗→評估→保留/丟棄 | 使用→反饋→改進技能 |

## 怎麼用

```bash
# 複製專案
git clone https://github.com/karpathy/autoresearch.git
cd autoresearch

# 設定 API key（需要 Anthropic Claude）
export ANTHROPIC_API_KEY=your_key

# 執行自主研究迴圈
python autoresearch.py

# 自訂研究策略
# 編輯 program.md，定義 Agent 的研究策略
# 每次實驗修改 train.py → 訓練 5 分鐘 → 評估 val_bpb → 保留/丟棄
```

### 關鍵設計決策

| 設計 | 原因 |
|------|------|
| 單檔案修改（train.py） | 保持範圍可控、diff 可審查 |
| 固定 5 分鐘時間預算 | 實驗直接可比，不受架構變動影響 |
| val_bpb 指標 | vocab-size 無關，架構變動公平比較 |
| 無外部依賴 | 自給自足，一 GPU 一檔案一指標 |

## 跟其他方案的關係

AutoResearch 的 program.md 跟 [[agent-skills-ecosystem]] 的 SKILL.md 是同一個概念的不同實作：program.md 是研究導向的 Skill 定義，SKILL.md 是工程導向的 Skill 定義。

跟 [[hermes-agent]] 的差異：AutoResearch 是人類定義策略（寫 program.md）、Agent 執行；Hermes 是 Agent 自己建立技能、自己改進。兩者可以結合——用 Hermes 的學習閉環來自動改進 AutoResearch 的 program.md。

[[project-golem]] 的技能系統是 SKILL.md 概念的另一種實作，Golem 更注重持續運行的自主 Agent。

AutoResearch 代表了 [[AI-Agent]] 工作流的極致形態：從人類做研究 → Agent 自主做研究。⭐ 81.5k stars 說明社群認可度極高。

## 相關概念

← [[agent-skills-ecosystem]] · [[hermes-agent]] · [[AI-Agent]] · [[project-golem]]

## 來源

- raw/2026-05-03-autoresearch.md

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/karpathy/autoresearch |
| Stars | ⭐81,499 |
| Language | Python |
| 建立日期 | 2026-03-06 |
| 授權 | 開源（查看 repo） |
| 收錄日期 | 2026-05-03 |