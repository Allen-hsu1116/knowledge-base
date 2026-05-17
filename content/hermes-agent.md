# Hermes Agent

> Nous Research 自我改進 AI Agent，內建學習閉環：從經驗建立技能、技能自我改進、跨 session 記憶與使用者建模。（詳細參考頁）

## 專案資訊

- **GitHub**: [nousresearch/hermes-agent](https://github.com/nousresearch/hermes-agent)

## 快速導航
- 🧠 **使用者建模** → [[agent-persona]]（Honcho dialectic user modeling）
- 🛠 **Skill 標準** → [[agent-skills-ecosystem]]（相容 agentskills.io 開放標準）
- 📚 **跨 session 記憶** → [[llm-knowledge-base]]（跟 MemPalace 方法互補）
- 🔄 **Agent 工作流** → [[AI-Agent]]

## 核心內容

### 定位
Hermes Agent 是 Nous Research（開源 LLM 模型知名團隊）推出的自主 AI Agent。最大賣點是**內建學習閉環** — 不是被動等指令，而是主動從經驗中學習、建立技能、改進技能、記住過去對話、並跨 session 建立對使用者的深層理解。

### 學習閉環（Closed Learning Loop）
這是 Hermes 最獨特的地方：
1. **自主技能建立**：完成複雜任務後自動產生技能
2. **技能自我改進**：使用過程中技能會被改進
3. **知識持續化**：週期性提醒自己記錄重要知識
4. **跨 session 回憶**：FTS5 搜尋 + LLM 摘要，搜尋過去對話
5. **使用者建模**：透過 Honcho dialectic user modeling，建立對使用者的深層模型
6. **相容 agentskills.io 開放標準**：跟 [[agent-skills-ecosystem]] 的 Skill 標準化方向一致

### 多模型彈性
- 支援 Nous Portal、OpenRouter（200+ 模型）、NVIDIA NIM、Xiaomi MiMo、z.ai/GLM、Kimi/Moonshot、MiniMax、Hugging Face、OpenAI
- `hermes model` 一鍵切換，零程式碼改動
- 不綁定任何模型供應商

### 多平台 Gateway
- Telegram、Discord、Slack、WhatsApp、Signal、CLI
- 單一 gateway process，語音備忘錄轉錄
- 跟 [[project-golem]] 的 TG/DC bridge 概念相似，但更廣泛

### 排程自動化
- 內建 cron 排程器，自然語言描述任務
- 日常報告、夜間備份、週度審計 — 無人值守

### 委派與平行化
- 產生隔離 subagent 做平行工作
- Python script 透過 RPC 呼叫工具
- 跟 OpenClaw 的 subagent 概念類似

### 部署方式
- 六種終端後端：local、Docker、SSH、Daytona、Singularity、Modal
- 可跑在 $5 VPS 或 GPU 叢集
- 不綁筆電，用 Telegram 跟雲端 VM 上的 Hermes 對話

### 與其他專案比較
| 特色 | Hermes Agent | [[project-golem]] |
|------|-------------|-----------------|
| 語言 | Python | Node.js |
| 學習閉環 | ✅ 核心特色 | ❌ |
| 多模型 | 200+（OpenRouter） | Gemini/Ollama/LM Studio |
| Skills 標準 | agentskills.io | 自有系統 |
| 使用者建模 | ✅ Honcho | ❌ |
| MCP | ✅ | ✅ |
| 排程 | ✅ cron | ✅ 自省排程 |

## 相關概念
- [[agent-skills-ecosystem]] — Hermes 相容 agentskills.io 開放標準
- [[project-golem]] — 另一個自主 Agent 系統（Node.js），可做對比
- [[mempalace]] — AI 記憶系統，跟 Hermes 的跨 session 記憶概念互補
- [[AI-Agent]] — Agent 化工作流趨勢的具體實作

## 來源
- raw/2026-05-02-hermes-agent.md