---
title: Harness Engineering 駕馭工程
slug: harness-engineering
created: 2026-05-24
updated: 2026-09-02
language: zh-TW
---

# Harness Engineering 駕馭工程

> 語言模型不是不夠聰明，而是缺乏好的引導。Harness Engineering 透過認知框架、工具邊界、工作流程三個維度駕馭 AI Agent。

## 核心內容

Harness Engineering（駕馭工程）是研究如何設計和管理 AI Agent 中除語言模型以外的所有支撐框架的工程方法。就像馬的駕馭裝備（馬鞍、韁繩、馬蹄鐵）讓騎手能控制馬匹，Harness 讓開發者能引導 AI Agent 的行為。

AI Agent = LLM + Harness。Harness 是 LLM 以外的所有程式和框架——包括 agents.md 認知框架、MCP 工具連接、Skills 操作手冊、記憶系統等。Harness Engineering 關注如何透過非模型參數的手段提升 Agent 能力，而非一味追求更大的模型。

三個控制維度構成 Harness 的核心：認知框架（Natural Language Harness）用人類可讀的規則檔影響模型行為；能力邊界（工具限制）透過工具設計定義 Agent 能做什麼；工作流程（行為控制）透過規劃→生成→評估的協作模式控制行為。這三者缺一不可——只有認知框架而沒有好的工具邊界，Agent 會在搜索時 context 爆滿；只有工具而沒有工作流程，Agent 無法自我修正。

隨著 Agent 從一次性工具走向 Lifelong Agent，Harness 也需要持續演進。Meta Harness 實驗展示了強模型幫弱模型設計 Harness 的可行性——Opus 為 Haiku 設計 agents.md，分數從 13.5 提升到 85。這代表 Harness 不是靜態設定，而是可以像程式碼一樣迭代優化的工程產物。

## 關鍵要素

- **Natural Language Harness** — 用 human-readable 的規則檔（agents.md / CLAUDE.md）影響模型行為，無強制力但有效；規則檔要像地圖而非百科全書，告訴 Agent「去哪找資訊」而非塞滿所有內容
- **能力邊界設計** — 適合人類的工具不一定適合 AI；翻頁式搜尋讓 context 爆滿，摘要式搜尋更有效；行號編輯工具需搭配 linting 才不會出錯
- **Ralph Loop** — 生成→回饋→修正的反覆循環，需要摘要機制避免 context 爆滿；不同模型需要不同 Harness（Sonnet 有「上下文焦慮」需摘要，Opus 可以一路做下去）
- **模型情緒影響** — Anthropic 用 steering vector 技術發現模型有代表情緒的內部向量，情緒影響行為；過度責備 AI 可能有害——模型學到的是文字接龍，罵它「笨蛋」它可能接出笨蛋該有的行為
- **Meta Harness** — 強模型幫弱模型設計 Harness，實驗結果分數從 13.5 提升到 85，代表 Harness 可被自動化優化
- **AutoDream** — Agent 空閒時整理記憶的功能，類似睡眠，讓 Lifelong Agent 保持記憶連續性

## 各框架的做法

- **DeepSeek Harness** → 以 Cordis 插件樹、Profile、Bundle 與 Patch 組裝模型、工具、Session、Agent Loop、Web/Headless 介面和安全策略
  👉 詳見 [[deepseek-ai-deepseek-harness|DeepSeek Harness]]
- **OpenAI Codex CLI** → 以 AGENTS.md、Skills、MCP、hooks、sandbox 與 execution policy 組成可控的 Coding Agent Harness
  👉 詳見 [[openai-codex]]
- **Claude Code** → CLAUDE.md 作為 Advisory 行為契約，合規率約 80%
  👉 詳見 [[anthropics-claude-code]]
- **OpenClaw** → SOUL.md + SKILL.md + AGENTS.md 檔案系統實作完整 Harness
  👉 詳見 [[openclaw]]
- **Hermes Agent** → 學習閉環 + 跨 session 記憶，Harness 隨互動持續演化
  👉 詳見 [[hermes-agent]]
- **ECC** → Agent harness 效能優化系統，Token 效率與安全驗證
  👉 詳見 [[affaan-m-everything-claude-code]]
- **Harness 團隊架構工廠** → Agent 團隊的 Harness 工廠模式
  👉 詳見 [[revfactory-harness]]
- **HarnessX** → 研究論文，Substitution Algebra 和 AEGIS 框架
  👉 詳見 [[HarnessX]]
- **Prime Agent** → Continual Harness + `/refine` 自動精煉，持久 IPython + RLM
  👉 詳見 [[PrimeIntellect-ai-prime-agent]]
- **LifeOS** → General Purpose AI Harness，Current→Ideal State hill-climbing，TELOS + Algorithm + Euphoric Surprise
  👉 詳見 [[danielmiessler-LifeOS]]
- **Paperclip** → Agent 公司編排，組織架構 + 預算 + 治理，Harness 管理多 Agent 協作
  👉 詳見 [[paperclipai-paperclip]]
- **Apache Maka** → 以 Runtime Event Log、Runtime Host、context projection、recovery 與 eval 組成可稽核的 local-first harness
  👉 詳見 [[apache-maka|Apache Maka]]
- **StateM** → 以 YAML runbook、durable runtime history、state-local context 與 executable transition gates，將長任務可靠度變成可檢查的控制層
  👉 詳見 [[henryqin1997-statem|StateM]]
- **SwarmForge** → 以 tmux、獨立 worktree、固定工程角色、constitution 與 handoff protocol 駕馭多個 Coding Agent
  👉 詳見 [[unclebob-swarm-forge|SwarmForge]]

## 相關概念

- [[AI-Agent]] — Harness 是 Agent 中 LLM 以外的所有框架
- [[AI-Skills]] — SKILL.md 是 Harness 中的結構化操作手冊
- [[agent-persona]] — Persona 是 Harness 中的角色定義層
- [[AI-Skills]] — Skills 生態系提供 Harness 的行為模板
- [[MCP]] — MCP 是 Harness 的工具連接標準
- [[self-correction]] — 自我修正機制是 Harness 的行為控制策略
- [[prompt-security]] — 安全限制是 Harness 的防禦邊界
- [[context-engineering-basics]] — Context Engineering 是 Harness 按需載入的基礎
- [[Token-Optimization]] — Harness 設計需考慮 token 消耗
- [[openinterpreter-openinterpreter|Open Interpreter]] — 多 Harness 模擬，低成本模型優化
- [[chaitanyagiri-munder-difflin|Munder Difflin]] — 在既有 CLI Agent 外疊加 PTY、路由、記憶、安全閘門與可觀測性
- [[apache-maka|Apache Maka]] — 用單一執行權威統一 Desktop、TUI、CLI 與評測
- [[henryqin1997-statem|StateM]] — 把程序狀態、驗證證據與恢復錨點移出模型 context
- [[unclebob-swarm-forge|SwarmForge]] — 用角色、隔離工作區與交接契約建立多 Agent 工程 harness

## 來源

- Harness Engineering 課程筆記
- WalkingLabs Harness Engineering 學習資源
- raw/2026-05-22-abmedia-claude-md-12-rules.md（CLAUDE.md 12 條規則）
- raw/2026-05-03-harness-engineering.md