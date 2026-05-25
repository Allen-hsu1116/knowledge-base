# AI Agent

> AI Agent 是能自主執行任務的 AI 系統，通常具備工具使用、記憶、規劃等能力。近年從單一 chatbot 走向多 agent 協作、長期運行的個人助理。

## 快速導航

- 🔌 **MCP** → [[MCP]]（Agent 使用工具的標準介面）
- 🗄️ **Context Database** → [[Context-Database]]（Agent 的記憶基礎設施）
- 🛠️ **AI Skills** → [[AI-Skills]]（Agent 的結構化操作手冊）
- 🦞 **OpenClaw** → [[openclaw]]（我們正在用的 Agent 框架）
- 🧠 **記憶方法論** → [[llm-knowledge-base]]（如何管理 Agent 的知識）

## 什麼是 AI Agent

AI Agent = LLM + 工具 + 記憶 + 規劃。不同於單純的聊天機器人，Agent 能夠：

1. **自主規劃**：拆解任務為多個步驟，按序或並行執行
2. **使用工具**：呼叫 API、執行程式碼、讀寫檔案、操作瀏覽器
3. **維持記憶**：跨 session 記住使用者偏好、過去決策、長期知識
4. **自我修正**：偵測錯誤、調整策略、重新嘗試

### Agent 架構演進

| 世代 | 特徵 | 代表 |
|------|------|------|
| **Chatbot** | 一問一答，無記憶 | ChatGPT 最初版 |
| **Tool-using** | 能呼叫工具，但每次重新開始 | ChatGPT + Plugins |
| **Agent** | 規劃+工具+記憶 | Claude Code、OpenClaw |
| **Multi-agent** | 多個 Agent 協作 | AutoGen、CrewAI |

## 核心能力拆解

### 工具使用（Tool Use）

Agent 透過 MCP（[[MCP]]）連接外部工具和資料源。工具讓 Agent 從「只能說」變成「能做事」。

### 記憶系統（Memory）

Agent 需要三層記憶：
- **工作記憶**：當前對話的 context window
- **短期記憶**：最近幾次 session 的摘要
- **長期記憶**：知識庫、偏好、累積學習

不同實作方式見 [[Context-Database]]（檔案系統範式）、[[mempalace]]（宮殿索引）、[[volcengine-OpenViking]]（分層載入）。

### 規劃與推理（Planning & Reasoning）

- **Chain-of-Thought**：逐步推理，把思考過程寫出來
- **ReAct**：Reason + Act 交替進行
- **Multi-step Planning**：先訂計畫再執行
- **Self-correction**：偵測錯誤並修正（[[self-correction]]）

### 技能系統（Skills）

結構化操作手冊，告訴 Agent 在特定情境下該怎麼做（[[AI-Skills]]）。

## AI 工作流趨勢

AI 正在從「被問才回答」進化成「有身分、有流程、有記憶」的持續運作系統。

### 關鍵趨勢

**1. Persona-first 設計**
- 不只定義 AI 做什麼，而是定義它是誰
- Persona 讓 AI 有立場、有深度、有一致性
- 詳見 [[agent-persona]]

**2. Skill 標準化**
- SKILL.md 格式讓 Skill 可跨框架共享
- 一行指令安裝，降低 AI agent 的上手門檻
- 詳見 [[AI-Skills]]、[[agent-skills-ecosystem]]

**3. 知識管理自動化**
- Karpathy 的 raw→compile→wiki→lint 循環
- 人負責方向，AI 負責整理
- 詳見 [[llm-knowledge-base]]

**4. 持久記憶**
- 跨 session 的長期記憶成為標配
- 向量搜尋 + 關鍵字搜尋的混合模式
- 新方法：OCR-Memory 用視覺壓縮記憶（[[ocr-memory]]）

**5. 安全意識覺醒**
- Agent 有工具存取權時，安全問題更嚴重
- 紅隊測試成為部署前的必要步驟
- 詳見 [[prompt-security]]

**6. 自主研究**
- AutoResearch 讓 Agent 自主跑 LLM 訓練實驗
- program.md 驅動策略，Agent 在策略內自主迭代
- 詳見 [[autoresearch]]

**7. 文件解析基礎設施**
- Docling 等工具把 PDF/DOCX/PPTX 轉成結構化資料
- 這是 RAG 和知識庫的「上游」基礎
- 詳見 [[docling]]

**8. Agent 自演化**
- GenericAgent：技能自動結晶，越用越強（[[lsdefine-GenericAgent]]）
- Evolver：GEP 協議把經驗編碼成 Gene，可審計可重用（[[EvoMap-evolver]]）
- 兩者代表「結晶派」和「基因派」兩大自演化流派

**9. Agent 作業系統**
- holaOS 把電腦重新定義為人+Agent 共享環境（[[holaboss-ai-holaOS]]）
- 環境工程：記憶不重置、目標不丟失、狀態不斷裂
- Agent 在環境中持續運作、持續演化、完全可檢查

### Agent 工具生態系

| 工具類型 | 代表 | 用途 |
|----------|------|------|
| Coding Agent | Claude Code, Codex | 程式開發 |
| 知識管理 | Obsidian + LLM | 個人知識庫 |
| Agent 框架 | OpenClaw | 日常助手 + Skill |
| Persona 庫 | Agency Agents | AI 人格模板 |
| Skill 庫 | agent-skills, google/skills | 能力模板 |
| 安全研究 | CL4R1T4S | 紅隊測試 |
| LLM Gateway | LiteLLM | 100+ LLM 統一 API |
| Context DB | OpenViking | L0/L1/L2 分層 |
| 增量索引 | CocoIndex | delta-only |
| RAG 引擎 | RAGFlow | RAG+Agent |

## 為什麼重要

- **從對話到行動**：Agent 不只是回答問題，而是完成任務
- **從一次性到持續性**：有記憶的 Agent 越用越懂你
- **從單一到多元**：一個 Agent 框架可以連接無數工具
- **開放生態**：MCP 標準讓工具和 Agent 可以自由組合

## Agent 框架對比

| 框架 | 特色 | Stars |
|------|------|-------|
| [[affaan-m-everything-claude-code]] | Agent harness 效能優化 | 172K |
| [[AutoGPT]] | 自主 Agent 框架 | 184K |
| [[LangChain]] | LLM 應用開發框架 | 136K |
| [[CrewAI]] | 多 Agent 角色扮演協作 | 51K |
| [[HKUDS-nanobot]] | 超輕量個人 Agent | 41.5K |
| [[Gitlawb-openclaude]] | 多模型 Coding Agent CLI | 25.7K |
| [[sickn33-antigravity-awesome-skills]] | 1,443+ Agent Skills | 36.2K |
| [[lsdefine-GenericAgent]] | 自演化 Agent，3K 行起家 | 9.2K |
| [[EvoMap-evolver]] | GEP 自演化引擎 | 7.2K |
| [[holaboss-ai-holaOS]] | Agent 作業系統 | 4.8K |

## 相關專案

- [[affaan-m-everything-claude-code]] — Agent harness 效能優化系統
- [[santifer-career-ops]] — AI 求職 Agent
- [[HKUDS-nanobot]] — 超輕量個人 Agent
- [[googleworkspace-cli]] — Google Workspace Agent CLI
- [[mempalace]] — Agent 記憶系統
- [[ZhuLinsen-daily_stock_analysis]] — AI 股票分析 Agent
- [[HKUDS-DeepTutor]] — AI 家教 Agent
- [[autoresearch]] — 自主研究 Agent
- [[project-golem]] — 多代理系統
- [[hermes-agent]] — 自我改進 Agent
- [[lsdefine-GenericAgent]] — 自演化 Agent，技能自動結晶
- [[EvoMap-evolver]] — GEP 自演化引擎
- [[Narcooo-inkos]] — 自主小說寫作 Agent
- [[HKUDS-Vibe-Trading]] — 個人交易 Agent
- [[holaboss-ai-holaOS]] — Agent 作業系統
- [[Mininglamp-AI-Mano-P]] — GUI-VLA 邊緣代理，純視覺桌面自動化

## 相關概念

← [[MCP]] · [[AI-Skills]] · [[Context-Database]] · [[llm-knowledge-base]] · [[agent-persona]] · [[agent-skills-ecosystem]] · [[open-webui-open-webui]] · [[walkinglabs-learn-harness-engineering]]

## 相關影片

- [[agent-anatomy-openclaw]] — 解剖小龍蝦：AI Agent 運作原理
- [[context-engineering-basics]] — Context Engineering 基本概念
- [[ai-agent-interaction]] — AI Agent 之間的互動
- [[ai-agent-work-impact]] — AI Agent 對工作的衝擊
- [[harness-engineering]] — Harness Engineering：駕馭工程
- [[self-correction]] — AI 自我修正

## 來源
- 相關 GitHub/文章資料

---

_此頁由 daily-llm-trending 自動維護_