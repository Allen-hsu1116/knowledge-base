# 知識庫索引

> 自動整理的知識庫目錄。概念頁是閱讀入口，專案頁是深度參考。

## 概念頁

> 看概覽、看對比、看關聯。看到有趣的 👉 點進專案頁看詳細流程。

| 概念 | 檔案 | 簡介 | 狀態 |
|------|------|------|------|
| LLM 知識庫系統 | [[llm-knowledge-base]] | 用 LLM 當編譯器，raw→compile→wiki→lint 循環 | ✅ |
| AI 工作流趨勢 | [[ai-workflow]] | Chatbot → Assistant → Agent 的演化 | ✅ |
| AI Agent 人格設計 | [[agent-persona]] | Persona + Skill = AI 同事 | ✅ |
| Agent Skills 生態系 | [[agent-skills-ecosystem]] | SKILL.md 標準化和社群 Skill 庫 | ✅ |
| Prompt 安全與越獄 | [[prompt-security]] | 越獄技術、防禦策略、Agent 安全 | ✅ |

## 專案頁

> 看詳細架構、安裝流程、使用方式。開頭有快速導航連回概念頁。

| 專案 | 檔案 | 簡介 | 所屬概念 |
|------|------|------|----------|
| OpenClaw | [[openclaw]] | 個人 AI 助手框架，25+ 頻道 | agent-persona, agent-skills-ecosystem, llm-knowledge-base |
| Project Golem | [[project-golem]] | Node.js 自主 AI 代理系統 | agent-persona, agent-skills-ecosystem, llm-knowledge-base |
| Hermes Agent | [[hermes-agent]] | Nous Research 自我改進 Agent | agent-skills-ecosystem, llm-knowledge-base |
| AutoResearch | [[autoresearch]] | Karpathy 自主 AI 研究專案 | agent-skills-ecosystem |
| MemPalace | [[mempalace]] | Local-first AI 記憶系統 | llm-knowledge-base |
| OCR-Memory | [[ocr-memory]] | 視覺壓縮 Agent 記憶，ACL 2026 | llm-knowledge-base |
| OpenViking | [[openviking]] | Context Database，檔案系統範式 | llm-knowledge-base |
| Docling | [[docling]] | IBM 開源文件解析引擎 | llm-knowledge-base |
| CocoIndex | [[cocoindex]] | 增量索引引擎，delta-only | llm-knowledge-base |
| RAGFlow | [[ragflow]] | RAG+Agent 引擎，有 OpenClaw Skill | llm-knowledge-base |
| LiteLLM | [[litellm]] | 100+ LLM 統一 API Gateway | ai-workflow |

## 教學影片頁

> AI 教學影片整理。每部影片有字幕記錄 + 重點提煉。來源不限單一作者。

| 影片 | 檔案 | 簡介 | 所屬概念 |
|------|------|------|----------|
| 解剖小龍蝦 | [[agent-anatomy-openclaw]] | AI Agent 運作原理（OpenClaw 實例） | agent-persona, ai-workflow, prompt-security, agent-skills-ecosystem |
| Context Engineering | [[context-engineering-basics]] | Agent 的核心：管理 LLM 看到的內容 | ai-workflow, agent-skills-ecosystem, prompt-security |
| AI Agent 互動 | [[ai-agent-interaction]] | 多 Agent 協作拓撲、狼人殺博弈 | ai-workflow, agent-persona, agent-skills-ecosystem, prompt-security |
| AI Agent 工作衝擊 | [[ai-agent-work-impact]] | AI Agent 對學術研究的影響 | agent-persona, agent-skills-ecosystem, prompt-security |
| Flash Attention | [[flash-attention]] | 少搬資料就是加速 | llm-knowledge-base, ai-workflow |
| KV Cache | [[kv-cache]] | 存下來就不用重算 | llm-knowledge-base, ai-workflow, prompt-security |
| Positional Embedding | [[positional-embedding-evolution]] | 位置編碼演進，Train Short Test Long | llm-knowledge-base, ai-workflow |
| Harness Engineering | [[harness-engineering]] | 駕馭工程，Agent 的控制與引導 | ai-workflow, agent-persona, agent-skills-ecosystem |
| Self-Correction | [[self-correction]] | 自我修正，Contrastive Decoding | llm-knowledge-base, ai-workflow |

## 概念關係圖

```
ai-workflow（總覽）
├── llm-knowledge-base（知識管理自動化）
│   ├── mempalace（宮殿索引記憶系統）
│   ├── ocr-memory（視覺壓縮記憶）
│   ├── openviking（檔案系統 Context DB）
│   ├── docling（文件解析基礎設施）
│   ├── cocoindex（增量索引引擎）
│   └── ragflow（RAG+Agent 引擎）
├── agent-persona（Persona + Skill 設計）
│   └── agent-skills-ecosystem（Skill 標準化）
│       └── autoresearch（program.md = 超輕量 Skill）
├── prompt-security（安全面向）
├── openclaw（個人助手框架）
│   ├── agent-persona（SOUL.md + SKILL.md）
│   ├── agent-skills-ecosystem（ClawHub 技能庫）
│   └── llm-knowledge-base（MEMORY.md + memory/）
├── project-golem（Node.js 自主 Agent）
│   ├── agent-persona（多代理人格）
│   ├── agent-skills-ecosystem（技能系統）
│   └── llm-knowledge-base（記憶系統）
└── hermes-agent（Python 自我改進 Agent）
    ├── agent-skills-ecosystem（agentskills.io 相容）
    └── mempalace（跨 session 記憶互補）
```

---

## 使用方式

- **新增素材**：把原始資料丟進 `raw/`
- **整理**：跟我說「整理知識庫」，我會讀取 `raw/` 並編譯成 `wiki/` 筆記
- **查詢**：跟我說「查 [問題]」，我會搜尋 `wiki/` 回答
- **Lint**：跟我說「lint 知識庫」，我會掃描矛盾和缺漏