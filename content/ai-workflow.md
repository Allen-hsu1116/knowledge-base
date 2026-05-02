# AI 工作流趨勢

> AI 正在從「被問才回答」進化成「有身分、有流程、有記憶」的持續運作系統。

## 核心內容

### 從 Chatbot 到 Agent

**第一代：Chatbot**
- 一問一答，無狀態
- 每次對話從零開始
- 例：ChatGPT 最初的網頁介面

**第二代：Context-Aware Assistant**
- 有 system prompt，能保持角色
- 有短期記憶（對話上下文）
- 例：帶 custom instructions 的 ChatGPT

**第三代：Agent**
- 有 Persona（身分）+ Skill（技能）+ Memory（記憶）
- 能使用工具（瀏覽器、終端機、API）
- 能自主判斷和行動
- 例：Claude Code、OpenClaw、Cursor Agent

### 關鍵趨勢

**1. Persona-first 設計**
- 不只定義 AI 做什麼，而是定義它是誰
- 144 個 AI 員工人格（Agency Agents）受歡迎，證明市場需求
- Persona 讓 AI 有立場、有深度、有一致性

**2. Skill 標準化**
- Agent Skills 從個人腳本進化成標準化格式
- SKILL.md 格式讓 Skill 可跨框架共享
- skills.sh 分發標準讓安裝一行搞定
- Google、Addy Osmani 等大廠/大咖投入

**3. 知識管理自動化**
- Karpathy 的 raw→compile→wiki→lint 循環
- 人負責方向，AI 負責整理
- 知識複利：每次互動都讓系統更強

**4. 持久記憶**
- 跨會話的長期記憶成為標配
- MEMORY.md、SOUL.md、USER.md 等持久上下文
- 向量搜尋 + 關鍵字搜尋的混合模式

**5. 安全意識覺醒**
- CL4R1T4S 等專案暴露了越獄風險
- Agent 有工具存取權時，安全問題更嚴重
- 紅隊測試成為部署前的必要步驟

### 工具生態系

| 工具類型 | 代表 | 用途 |
|----------|------|------|
| Coding Agent | Claude Code, Codex | 程式開發 |
| 知識管理 | Obsidian + LLM | 個人知識庫 |
| Agent 框架 | OpenClaw | 日常助手 + Skill |
| Persona 庫 | Agency Agents | AI 人格模板 |
| Skill 庫 | agent-skills, google/skills | 能力模板 |
| 安全研究 | CL4R1T4S | 紅隊測試 |

## 相關概念
- [[llm-knowledge-base]] — 知識管理自動化的具體方法
- [[agent-persona]] — Persona-first 設計的深入探討
- [[agent-skills-ecosystem]] — Skill 標準化生態系
- [[prompt-security]] — AI 安全面向

## 來源
- raw/2026-04-28-llm-knowledge-base-obsidian-claude-code.md
- raw/2026-04-28-andrej-karpathy-ai-how.md
- raw/2026-04-28-persona-skill-colleague.md
- raw/2026-04-28-agency-agents-144-personas.md