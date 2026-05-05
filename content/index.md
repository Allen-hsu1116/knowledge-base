# 知識庫總覽

> AI 工具與工作流的個人知識庫，聚焦 LLM 應用、Agent 設計、知識管理和 Prompt 工程。

---

## 概念

### 🧠 核心

| 概念 | 說明 |
|------|------|
| [[AI Agent]] | 能自主執行任務的 AI 系統，含工具使用、記憶、規劃、工作流趨勢。 |
| [[LLM]] | 大語言模型，透過大規模文字資料訓練，能理解與生成自然語言。 |
| [[Prompt Engineering]] | 設計和優化 LLM 提示詞的技術，包含 token 優化、結構化提示、context engineering 等。 |
| [[Token Optimization]] | 降低 LLM token 消耗的技術，透過精簡輸出、壓縮輸入等方式減少成本和延遲。 |

### 🔌 工具與協議

| 概念 | 說明 |
|------|------|
| [[MCP]] | Model Context Protocol — Anthropic 提出的開放協議，讓 LLM 透過統一介面連接外部工具和資料來源。 |
| [[Context Database]] | 專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理上下文。 |
| [[Knowledge Graph]] | 以圖結構組織資訊，將實體與關係連結，讓機器能結構化理解與檢索知識。 |
| [[AI Skills]] | 結構化的操作指令格式（SKILL.md），讓 AI coding agent 能以明確上下文和規範執行任務。 |
| [[Coding Agent CLI]] | 以終端機為主要介面的 AI 程式開發助手，提供完整工作流程。 |

### 📚 應用與研究

| 概念 | 說明 |
|------|------|
| [[AI Tutoring]] | 利用 AI 技術實現個人化教學，結合 RAG、知識圖譜和 LLM agent。 |
| [[Prompt 安全與越獄]] | 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。 |
| [[LLM 底層技術]] | Flash Attention、KV Cache、Positional Embedding — Transformer 推論的三大加速與最佳化技術。 |

---

## 專案

### 🤖 Agent 框架與工具

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[affaan-m-everything-claude-code]] | ⭐172,098 | AI Agent, AI Skills, Prompt Security, Token Optimization | 2026-05-03 |
| [[HKUDS-nanobot]] | ⭐41,527 | AI Agent, MCP | 2026-05-03 |
| [[Gitlawb-openclaude]] | ⭐25,668 | Coding Agent CLI, AI Agent, MCP | 2026-05-04 |
| [[googleworkspace-cli]] | ⭐25,672 | AI Agent, MCP, AI Skills | 2026-05-03 |
| [[Panniantong-Agent-Reach]] | ⭐18,700 | AI Agent, MCP, AI Skills | 2026-05-05 |
| [[jackwener-OpenCLI]] | ⭐18,700 | AI Agent, MCP, AI Skills | 2026-05-05 |

### 🧠 記憶與知識管理

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[mempalace]] | ⭐50,787 | AI Agent, MCP | 2026-05-03 |
| [[safishamsi-graphify]] | ⭐41,860 | Knowledge Graph, RAG, MCP | 2026-05-04 |
| [[volcengine-OpenViking]] | ⭐23,398 | Context Database, RAG, AI Agent | 2026-05-04 |
| [[ragflow]] | ⭐79,665 | RAG, AI Agent | 2026-05-03 |
| [[docling]] | ⭐59,151 | RAG, 文件解析 | 2026-05-03 |
| [[cocoindex]] | ⭐8,136 | RAG, 增量索引 | 2026-05-03 |

### ⚡ 效能與壓縮

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[JuliusBrussee-caveman]] | ⭐52,506 | Token Optimization, Prompt Engineering | 2026-05-03 |
| [[rtk]] | ⭐40,072 | Token Optimization, Prompt Engineering | 2026-05-03 |
| [[litellm]] | ⭐45,703 | LLM, AI Gateway | 2026-05-03 |

### 📊 應用

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[santifer-career-ops]] | ⭐41,864 | AI Agent | 2026-05-03 |
| [[ZhuLinsen-daily_stock_analysis]] | ⭐33,706 | LLM, AI Agent | 2026-05-03 |
| [[HKUDS-DeepTutor]] | ⭐23,109 | AI Tutoring, RAG, AI Agent | 2026-05-04 |
| [[saturndec-waoowaoo]] | ⭐12,000 | AI Agent, AI Skills | 2026-05-05 |
| [[hugohe3-ppt-master]] | ⭐11,300 | AI Agent, AI Skills | 2026-05-05 |

### 🛠 Skill 生態系

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[sickn33-antigravity-awesome-skills]] | ⭐36,216 | AI Skills, MCP, Prompt Engineering | 2026-05-04 |

### 🏗 基礎設施

| 專案 | Stars | 概念 | 收錄日期 |
|------|-------|------|----------|
| [[volcengine-OpenSandbox]] | ⭐10,400 | AI Agent, MCP, Context Database | 2026-05-05 |

---

## 🎬 教學影片

全部來自 **李宏毅 (Hung-yi Lee)** — 台大電機系教授，AI Agent 系列課程。

| 影片 | 主題 | 連結 |
|------|------|------|
| [[agent-anatomy-openclaw]] | 解剖小龍蝦：以 OpenClaw 為例介紹 AI Agent 運作原理 | [YouTube](https://www.youtube.com/watch?v=2rcJdFuNbZQ) |
| [[context-engineering-basics]] | AI Agent (1/3)：核心技術 Context Engineering 基本概念解說 | [YouTube](https://www.youtube.com/watch?v=urwDLyNa9FU) |
| [[ai-agent-interaction]] | AI Agent (2/3)：AI Agent 之間可以有什麼樣的互動 | [YouTube](https://www.youtube.com/watch?v=mmPmNezjCi0) |
| [[ai-agent-work-impact]] | AI Agent (3/3)：AI Agent 對工作帶來的衝擊 | [YouTube](https://www.youtube.com/watch?v=VqB8zMujdjM) |
| [[harness-engineering]] | Harness Engineering：語言模型不是不夠聰明，只是沒有人類好好引導 | [YouTube](https://www.youtube.com/watch?v=R6fZR_9kmIw) |
| [[self-correction]] | AI 能自我修正嗎？從 decoding、workflow 到 reasoning | [YouTube](https://www.youtube.com/watch?v=m3i2mk5hs8U) |

---

_此頁由 daily-llm-trending 自動維護_