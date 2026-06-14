---
title: Hermes Agent
slug: hermes-agent
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Hermes Agent

> Nous Research 自我改進 AI Agent，內建學習閉環：從經驗建立技能、技能自我改進、跨 session 記憶與使用者建模。

## 快速導航

- 🧠 **使用者建模** → [[agent-persona]]（Honcho dialectic user modeling）
- 🛠 **Skill 標準** → [[agent-skills-ecosystem]]（相容 agentskills.io 開放標準）
- 📚 **跨 session 記憶** → [[llm-knowledge-base]]（跟 MemPalace 方法互補）
- 🔄 **Agent 工作流** → [[AI-Agent]]

## 是什麼

Hermes Agent 是 Nous Research（開源 LLM 模型知名團隊）推出的自主 AI Agent。最大賣點是內建學習閉環——不是被動等指令，而是主動從經驗中學習、建立技能、改進技能、記住過去對話、並跨 session 建立對使用者的深層理解。支援 200+ 模型（透過 OpenRouter）、6 種終端後端、多平台 Gateway（Telegram、Discord、Slack、WhatsApp、Signal、CLI）。

## 核心特色

### 學習閉環（Closed Learning Loop）

1. 自主技能建立：完成複雜任務後自動產生技能
2. 技能自我改進：使用過程中技能會被改進
3. 知識持續化：週期性提醒自己記錄重要知識
4. 跨 session 回憶：FTS5 搜尋 + LLM 摘要，搜尋過去對話
5. 使用者建模：透過 Honcho dialectic user modeling，建立對使用者的深層模型
6. 相容 agentskills.io 開放標準

### 多模型彈性

支援 Nous Portal、OpenRouter（200+ 模型）、NVIDIA NIM、Xiaomi MiMo、z.ai/GLM、Kimi/Moonshot、MiniMax、Hugging Face、OpenAI。`hermes model` 一鍵切換，零程式碼改動，不綁定任何模型供應商。

### 多平台 Gateway

Telegram、Discord、Slack、WhatsApp、Signal、CLI。單一 gateway process，語音備忘錄轉錄。

### 排程自動化

內建 cron 排程器，自然語言描述任務。日常報告、夜間備份、週度審計——無人值守。

### 委派與平行化

產生隔離 subagent 做平行工作。Python script 透過 RPC 呼叫工具。

## 怎麼用

```bash
# 安裝
pip install hermes-agent

# 初始化
hermes init

# 啟動（CLI 模式）
hermes chat

# 啟動（Gateway 模式，連接 Telegram/Discord/Slack）
hermes gateway --platform telegram

# 切換模型
hermes model openrouter/anthropic/claude-sonnet-4

# 查看技能列表
hermes skills list

# 排程任務
hermes schedule add "每天早上9點摘要新聞" --cron "0 9 * * *"
```

## 跟其他方案的關係

跟 [[project-golem]] 的差異：Golem 是 Node.js 寫的自主 Agent 系統，Hermes 是 Python 寫的。Golem 沒有學習閉環（不會自動建立和改進技能），Hermes 的核心就是學習閉環。Golem 用自有技能系統，Hermes 相容 agentskills.io 開放標準。

跟 [[autoresearch]] 的差異：AutoResearch 是人類寫 program.md、Agent 執行；Hermes 是 Agent 自己建立技能、自己改進。兩者可以結合：用 Hermes 的學習閉環來自動改進 AutoResearch 的 program.md。

跟 [[mempalace]] 的關係：MemPalace 是 AI 記憶系統，跟 Hermes 的跨 session 記憶概念互補。Hermes 的 FTS5 + LLM 摘要方法是另一種記憶實作。

Hermes 相容 [[agent-skills-ecosystem]] 的 agentskills.io 開放標準，跟 [[addyosmani-agent-skills]] 和 [[google-skills]] 使用相同的 Skill 格式。

[[nesquena-hermes-webui|Hermes WebUI]] 是 Hermes Agent 的 Web 介面，提供三欄式佈局、CLI 完全同位、遠端存取等功能，讓你能從瀏覽器或手機操作 Hermes Agent。

## 相關概念

← [[agent-skills-ecosystem]] · [[project-golem]] · [[mempalace]] · [[AI-Agent]] · [[nesquena-hermes-webui|Hermes WebUI]]

## 來源

- raw/2026-05-02-hermes-agent.md

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/nousresearch/hermes-agent |
| Stars | ⭐154,414 |
| Language | Python |
| 建立日期 | 2025-07-22 |
| 授權 | MIT |
| 收錄日期 | 2026-05-02 |