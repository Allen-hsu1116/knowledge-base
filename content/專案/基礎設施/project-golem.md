# Project Golem

> Node.js 自主 AI Agent 系統，多後端（Gemini/Ollama/LM Studio）+ 長期記憶 + 技能系統 + MCP + 多代理圓桌討論 + Web Dashboard。（詳細參考頁）

## 專案資訊

- **GitHub**: [Arvincreator/project-golem](https://github.com/Arvincreator/project-golem)

## 快速導航
- 🧠 **人格與多代理** → [[agent-persona]]（InteractiveMultiAgent 圓桌討論）
- 🛠 **技能系統** → [[agent-skills-ecosystem]]（自有技能 + Dashboard 管理）
- 📚 **記憶系統** → [[llm-knowledge-base]]（lancedb-pro 向量記憶對比）
- 🔄 **Agent 工作流** → [[AI-Agent]]

## 核心內容

### 定位
Project Golem 不只是聊天機器人，更像是「個人 AI 作業系統」：長期記憶、任務隊列、指令安全防護、Telegram/Discord bridge、瀏覽器操作、排程自省、技能熱載入，以及一個能直接操作 Golem 的網頁控制台。

### 多後端大腦
- **gemini**：透過 Playwright 操控 Web Gemini（Browser-in-the-Loop）
- **ollama**：連接本機 Ollama 端點，跑私有模型
- **lmstudio**：連接 LM Studio 本機模型

### Web Dashboard
- 預設 http://localhost:3000/dashboard
- 終端對話、技能管理、人格市場、記憶搜尋、MCP 管理、系統設定與更新入口
- 支援遠端存取（需設定密碼和 SYSTEM_OP_TOKEN）

### 長期記憶系統
- 支援 lancedb-pro 向量記憶與原生記憶模式
- 金字塔式摘要、日記 rotate、備份與還原流程
- 這是一個值得參考的記憶架構實作

### 技能系統
- `src/skills/` 內建核心技能
- 透過 Dashboard 開關、匯入、匯出與重新注入
- 與 [[agent-skills-ecosystem]] 的 SKILL.md 概念類似但更偏向單一系統內的技能管理

### 多代理討論
- InteractiveMultiAgent：召集多個角色進行圓桌討論，產出共識摘要
- 與 [[agent-persona]] 的人格設計概念相關

### 外部通道
- Telegram：grammY bridge + circuit breaker 保護輪詢
- Discord：原生支援
- 與 [[AI-Agent]] 的 Agent 外部工具整合趨勢一致

### MCP 工具整合
- Dashboard 可新增、測試與檢視 stdio MCP server
- 供 Golem 擴充外部工具能力
- MCP（Model Context Protocol）是 2024-2025 AI Agent 生態的重要標準

### 安全控管
- 遠端登入、SYSTEM_OP_TOKEN
- API rate limit、指令白名單與危險命令防護
- GOLEM_AUTO_APPROVE_ALL 需謹慎啟用

### 專案結構重點
```
project-golem-plus/
├── apps/runtime/        # 核心啟動入口
├── apps/dashboard/      # Dashboard app/plugin layer
├── src/core/            # GolemBrain、ConversationManager、ActionQueue
├── src/managers/        # 記憶、技能、設定、日誌、自主行動管理器
├── src/bridges/         # Telegram / Discord bridge
├── src/services/        # Ollama、LM Studio、DOM Doctor、Optic Nerve
├── src/mcp/             # MCP client/manager
├── src/skills/          # 核心技能與技能文件
├── web-dashboard/       # Next.js Dashboard
├── packages/            # memory / protocol / security facade
└── infra/               # 架構治理與部署相關
```

### 對話指令
- `/new`：重開 Gemini 對話視窗並載入相關記憶
- `/new_memory`：清空底層記憶資料並重新開始
- `/sos`：清除 DOM 快取
- `/model`：切換模型
- `/skills`：列出已安裝技能
- `/learn <功能>`：讓 Golem 嘗試產生或學習新技能

## 相關概念
- [[agent-persona]] — Golem 的人格與多代理討論功能與 Persona 設計相關
- [[agent-skills-ecosystem]] — Golem 的技能系統是 SKILL.md 概念的一種實作
- [[AI-Agent]] — Golem 是 Agent 化工作流的具體案例
- [[llm-knowledge-base]] — Golem 的記憶系統可參考知識庫方法論
- [[prompt-security]] — Golem 的安全控管與越獄防禦相關

## 來源
- raw/2026-05-02-project-golem.md