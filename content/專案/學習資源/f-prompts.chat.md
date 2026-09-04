---
title: prompts.chat
slug: f-prompts.chat
created: 2026-09-04
updated: 2026-09-04
stars: 168996
language: HTML
topics: [prompts, prompt-engineering, chatgpt, claude, gemini, mcp, ai-prompts, self-hosted]
---

# prompts.chat

> ⭐169.0k · 開源、可搜尋與社群協作的 AI Prompt 資料庫，提供網站、CLI、MCP、API 與自架方式

## 快速導航

- 🧩 **提示設計** → [[Prompt-Engineering]] · [[prompt-security]]
- 🔌 **Agent 取用** → [[MCP]] · [[AI-Skills]]
- 🏠 **自行部署** → [[self-hosted]] · [[LLM]]

## 是什麼

prompts.chat 是由 Fatih Kadir Akın 發起的開源 Prompt 平台，前身是 `awesome-chatgpt-prompts`。它不只是一份 Markdown 清單，而是把 Prompt 資料整理成可搜尋、可分享、可投票與可分支修改的網站，讓使用者能直接尋找寫作、開發、研究、教育等用途的提示模板。

專案把同一批內容同時提供給人與 Agent：人可以使用 prompts.chat 網站或命令列介面，AI 工具則可經由 MCP server 與 REST API 查詢 Prompt。README 也列出 Claude Code、Cursor、VS Code、Codex、Gemini CLI、OpenCode、OpenClaw 與其他支援 MCP 的客戶端設定方式。

資料與程式碼採分離授權：網站與原始碼使用 MIT，Prompt 資料集採 CC0 公眾領域授權。這讓它既能作為日常提示搜尋器，也能成為產品內建模板、研究資料集或 Agent 工具來源；若重視資料控制，也可用 Docker Compose 自架完整服務。

## 核心特色

- **大型開源 Prompt 庫**：從經典角色扮演 Prompt 延伸到多領域社群投稿，支援搜尋、標籤與分類瀏覽
- **MCP 原生介面**：Agent 可使用 `search_prompts`、`get_prompt` 等工具，在工作流程中直接檢索與取得提示內容
- **多種存取方式**：同時提供 Web、CLI、MCP、REST API 與原始資料，不把內容鎖在單一介面
- **社群協作機制**：使用者可新增、收藏、投票、分支與改進 Prompt，保留內容演化脈絡
- **多模型適用**：內容可搭配 ChatGPT、Claude、Gemini、Llama 與其他文字模型，不綁定單一供應商
- **可自行架設**：官方 repository 提供 Docker Compose 流程，可在自己的主機保存網站與資料
- **開放授權**：程式碼採 MIT，Prompt 資料採 CC0，方便再利用、整合與再散布

## 怎麼用

最直接的方式是開啟網站搜尋；若要在本機啟動完整服務，可使用 Docker Compose：

```bash
git clone https://github.com/f/prompts.chat.git
cd prompts.chat
cp .env.example .env
docker compose up -d
```

若要讓支援 MCP 的 Agent 直接搜尋 Prompt，可依客戶端加入遠端 server。以 Claude Code 為例：

```bash
claude mcp add --transport http prompts.chat https://prompts.chat/api/mcp
claude mcp list
```

專案也提供 CLI；實際命令與環境變數可能隨版本更新，部署前應以 repository README 與 `.env.example` 為準。社群 Prompt 不是可信指令來源，使用前仍應檢查是否包含過度權限、資料外傳或 prompt injection 風險。

## 跟其他方案的關係

prompts.chat 的核心是「可直接取用的 Prompt 內容庫」；Prompt Engineering Guide 偏向系統化教學，System Prompts Collection 偏向產品提示詞研究，Promptfoo 則負責測試與紅隊驗證。它們可以串成「查找模板 → 理解方法 → 修改提示 → 自動評測」的工作流。

| 方案 | 主要定位 | 互動方式 | Agent 整合 | 適合場景 |
|---|---|---|---|---|
| prompts.chat | 社群 Prompt 資料庫 | Web、CLI、API | MCP server | 搜尋、分享與重用 Prompt |
| [[dair-ai-Prompt-Engineering-Guide\|Prompt Engineering Guide]] | 教學與論文指南 | 網站、Notebook | 間接 | 系統學習提示方法 |
| [[x1xhlol-system-prompts-and-models-of-ai-tools\|System Prompts Collection]] | 已公開系統提示詞策展 | Markdown | 無專用 MCP | 研究產品行為與安全 |
| [[promptfoo-promptfoo\|Promptfoo]] | Prompt 評測與紅隊 | CLI、CI/CD | 測試 Agent／模型 | 驗證品質、安全與回歸 |
| [[ComposioHQ-awesome-claude-skills\|Awesome Claude Skills]] | Agent Skill 策展 | Markdown、安裝入口 | Skills | 找可執行工作流程而非單段 Prompt |

## 相關概念

← [[Prompt-Engineering]] · [[MCP]] · [[prompt-security]] · [[self-hosted]]

## 來源

- GitHub：<https://github.com/f/prompts.chat>
- 官方網站：<https://prompts.chat>
- 原始 README 與 metadata：`raw/2026-09-04-f-prompts.chat.md`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/f/prompts.chat |
| Stars | ⭐168996 |
| License | MIT（程式碼／網站）＋ CC0-1.0（Prompt 資料） |
| Language | HTML |
| 收錄日期 | 2026-09-04 |
