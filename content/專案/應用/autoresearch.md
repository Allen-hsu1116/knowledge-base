# AutoResearch

> Karpathy 的自主 AI 研究專案：AI Agent 在單 GPU 上自動跑 LLM 訓練實驗，修改程式碼→訓練 5 分鐘→檢查→保留或丟棄→重複。program.md 就是超輕量 Skill。（詳細參考頁）

## 快速導航
- 🛠 **Skill 概念** → [[agent-skills-ecosystem]]（program.md = SKILL.md 的前身）
- 🧠 **學習閉環** → [[hermes-agent]]（Hermes 自動改進 vs AutoResearch 人類定義策略）
- 🔄 **Agent 工作流** → [[AI-Agent]]（研究自動化是 Agent 化極致形態）

## 核心內容

### 定位
AutoResearch 是 Andrej Karpathy（前 Tesla AI 總監、OpenAI 共同創辦人）在 2026 年 3 月推出的開源專案。它不是一個產品，而是一個**概念驗證**：讓 AI Agent 自主進行神經網路研究實驗。

核心迴圈：
1. Agent 讀取 `program.md`（研究策略）
2. 修改 `train.py`（模型架構、超參數等）
3. 訓練 5 分鐘（固定 wall clock）
4. 評估 `val_bpb` 指標
5. 保留或丟棄修改
6. 重複（每小時約 12 個實驗）

### 關鍵設計決策

| 設計 | 原因 |
|------|------|
| 單檔案修改（train.py） | 保持範圍可控、diff 可審查 |
| 固定 5 分鐘時間預算 | 實驗直接可比，不受架構變動影響 |
| val_bpb 指標 | vocab-size 無關，架構變動公平比較 |
| 無外部依賴 | 自給自足，一 GPU 一檔案一指標 |

### program.md = 超輕量 Skill
這是 AutoResearch 最重要的概念創新：
- 你不是直接改 Python，而是**寫 Markdown 指令給 Agent**
- `program.md` 本質上就是一個 Skill 定義
- 人類迭代 program.md 來优化研究策略，Agent 迭代 train.py 來优化模型
- 這跟 [[agent-skills-ecosystem]] 的 SKILL.md 概念直接對應

### 自主研究 vs 自主技能建立

| 特色 | AutoResearch | [[hermes-agent]] |
|------|-------------|-----------------|
| 誰寫 Skill | 人類寫 program.md | Agent 自動建立 |
| 誰執行 | Agent 修改 train.py | Agent 使用技能 |
| 改進方向 | 模型指標（val_bpb） | 任務成功率 |
| 領域 | LLM 訓練 | 通用任務 |
| 循環 | 實驗→評估→保留/丟棄 | 使用→反饋→改進技能 |

兩者可以結合：用 Hermes 的學習閉環來自動改進 AutoResearch 的 program.md。

### 與其他專案的關聯
- [[project-golem]] — Golem 的技能系統是 SKILL.md 概念的另一種實作
- [[hermes-agent]] — 學習閉環概念可互補
- [[agent-skills-ecosystem]] — program.md 就是 SKILL.md 的前身
- [[AI-Agent]] — 自主研究是 Agent 化工作流的極致形態

### 為什麼重要
⭐ 78.5k stars 說明社群認可度極高。AutoResearch 代表的趨勢是：
1. **研究自動化**：從人類做研究 → Agent 自主做研究
2. **Skill-driven AI**：用 Markdown 定義 Agent 行為，而非硬編碼
3. **實驗即代碼**：每次實驗都是一個 git commit，可追溯、可重現

## 來源
- raw/2026-05-03-autoresearch.md