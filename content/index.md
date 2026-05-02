# 知識庫索引

> 自動整理的知識庫目錄。每篇筆記對應一個概念或主題。

## 概念列表

| 概念 | 檔案 | 簡介 | 狀態 |
|------|------|------|------|
| LLM 知識庫系統 | [[llm-knowledge-base]] | 用 LLM 當編譯器，raw→compile→wiki→lint 循環 | ✅ |
| AI 工作流趨勢 | [[ai-workflow]] | Chatbot → Assistant → Agent 的演化 | ✅ |
| AI Agent 人格設計 | [[agent-persona]] | Persona + Skill = AI 同事 | ✅ |
| Agent Skills 生態系 | [[agent-skills-ecosystem]] | SKILL.md 標準化和社群 Skill 庫 | ✅ |
| Prompt 安全與越獄 | [[prompt-security]] | 越獄技術、防禦策略、Agent 安全 | ✅ |
| Project Golem | [[project-golem]] | Node.js 自主 AI 代理系統，多後端+記憶+技能+Dashboard | ✅ |
| Hermes Agent | [[hermes-agent]] | Nous Research 自我改進 Agent，學習閉環+跨 session 記憶 | ✅ |
| MemPalace | [[mempalace]] | Local-first AI 記憶系統，宮殿索引+語意搜尋，96.6% R@5 | ✅ |
| AutoResearch | [[autoresearch]] | Karpathy 自主 AI 研究專案，Agent 自動跑 LLM 訓練實驗 | ✅ |

## 概念關係圖

```
ai-workflow（總覽）
├── llm-knowledge-base（知識管理自動化）
│   └── mempalace（宮殿索引記憶系統）
├── agent-persona（Persona + Skill 設計）
│   └── agent-skills-ecosystem（Skill 標準化）
│       └── autoresearch（program.md = 超輕量 Skill）
├── prompt-security（安全面向）
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