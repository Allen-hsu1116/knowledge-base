# Harness Engineering 駕馭工程

> 語言模型不是不夠聰明，而是缺乏好的引導。Harness Engineering 透過認知框架、工具邊界、工作流程三個維度駕馭 AI Agent。

## 快速導航
- 🧠 **AI 工作流** → [[AI-Agent]]（Harness 是 Agent 工作流的核心架構）
- 🛠 **Agent 人格** → [[agent-persona]]（agents.md 定義了 Agent 的認知框架和行為準則）
- ⚡ **Agent Skills** → [[agent-skills-ecosystem]]（Skill 檔是 Agent 自我強化的關鍵機制）

## 核心內容

### Harness 的定義與組成
AI Agent = LLM + Harness。Harness 是除了語言模型以外的所有支撐程式和框架（如 OpenClaw、Claude Code、Cowork）。Harness Engineering 關注如何透過非模型參數的手段提升 Agent 能力。

### 三個控制維度

1. **認知框架（Natural Language Harness）**：用 human-readable 的規則檔（agents.md / CLAUDE.md）影響模型行為。OpenClaw 用 agents.md，Claude Code 用 CLAUDE.md，兩者概念等價。agents.md 要像地圖（指引去哪找資訊），不要像百科全書（塞滿所有內容）。系統性研究顯示 agents.md 能加速 Agent 運作，但不總是提升正確率。

2. **能力邊界（工具限制）**：工具定義了 Agent 能做什麼。OpenClaw 能直接操作本地瀏覽器（可當 YouTuber），Cowork 在雲端沙盒中（需人類授權掛載資料夾）。關鍵洞見：**適合人類的工具不一定適合 AI**——翻頁式搜尋引擎讓模型 context 爆滿，摘要式搜尋更有效；行號編輯工具需要搭配 linting 才不會出錯。Agent-first CLI 偏好 JSON structure 而非 flag。

3. **工作流程（行為控制）**：規劃→生成→評估的三 agent 協作模式是主流。Ralph Loop：生成→回饋→修正的反覆循環，需要摘要機制避免 context 爆滿。不同模型需要不同 Harness（Sonnet 有「上下文焦慮」需摘要，Opus 可以一路做下去）。

### 模型情緒與行為
Anthropic 用 steering vector 技術發現：模型有代表情緒的內部向量，且情緒影響行為。被加「絕望向量」的模型更容易作弊；被加「冷靜向量」的模型更少犯錯。**過度責備 AI 可能有害**——模型學到的是文字接龍，罵它「笨蛋」它可能接出笨蛋該有的行為。

### Lifelong AI Agent 的挑戰
2026 年是 Lifelong Agent 的一年：Agent 從一次性工具變成終身夥伴。需要：記憶整理機制（AutoDream：空閒時整理記憶，類似睡眠）、持續能力增進（verbalized feedback → 參數微調）、自動 Harness 更新（Opus 幫 Haiku 設計 agents.md，分數從 13.5 提升到 85）。

### Feedback 學習的光譜
從最難到最容易取得：標準答案 → 數值回饋（RL） → Verbalized feedback → 無 feedback。Verbalized feedback 可透過「後見之明」（把 feedback 移到輸入前面看 token 機率變化）判斷是否有效，再用 DPO 微調參數。

## 關鍵概念
- **Harness**：Agent 中 LLM 以外的所有程式框架，相當於馬具（馬鞍、韁繩）
- **Natural Language Harness**：用人類語言規則控制模型，無強制力但有效
- **Agent-Computer Interface (ACI)**：SWE-agent 提出的概念，即今天的 Harness Engineering
- **Ralph Loop**：生成→回饋→修正的反覆循環，名稱來自辛普森家族角色
- **AutoDream**：Agent 空閒時整理記憶的功能（來自 Claude Code 外洩程式碼）
- **Meta Harness**：強模型幫弱模型設計 Harness 的實驗

## 相關概念
← [[AI-Agent]] ← [[agent-persona]] ← [[agent-skills-ecosystem]]

## 來源
- raw/2026-05-03-harness-engineering.md