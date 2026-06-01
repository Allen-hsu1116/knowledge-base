---
source: https://github.com/thedotmack/claude-mem
date: 2026-05-09
---

# claude-mem — Claude Code 持久記憶壓縮系統

> Persistent memory compression system for Claude Code。自動捕捉工具使用觀察、產生語意摘要、跨 session 保持知識連續性。

**GitHub**: https://github.com/thedotmack/claude-mem
**Stars**: ~73.8k | **License**: Apache 2.0

## 快速導航

- 🧠 **記憶系統** → [[llm-knowledge-base]]（claude-mem 是記憶壓縮的實作之一）
- 🔧 **Agent 技能** → [[agent-skills-ecosystem]]（claude-mem 用 Skill 機制提供搜尋）
- 📝 **知識管理** → [[karpathy-gist-llm-wiki]]（LLM Wiki 是另一種知識持久化方法）

## 是什麼

Claude-Mem 讓 Claude Code 的 context 跨 session 存活。它自動捕捉工具使用觀察、產生語意摘要、讓未來的 session 可以存取。專案知識在 session 結束後仍然保留，透過 3 層漸進式揭露工作流實現約 10x token 節省。

## 核心特色

| 特色 | 說明 |
|------|------|
| 🧠 持久記憶 | Context 跨 session 存活 |
| 📊 漸進式揭露 | 分層記憶檢索，附 token 成本可見 |
| 🔍 Skill 搜尋 | mem-search skill 自然語言查詢專案歷史 |
| 🖥️ Web Viewer UI | 即時記憶流 http://localhost:37777 |
| 💻 Claude Desktop | 從 Claude Desktop 對話搜尋記憶 |
| 🔒 隱私控制 | `<private>` 標籤排除敏感內容 |
| 🤖 自動運作 | 無需手動介入 |

## 核心元件

1. **5 個生命週期 Hook** — SessionStart, UserPromptSubmit, PostToolUse, Stop, SessionEnd
2. **智慧安裝** — 快取依賴檢查器
3. **Worker 服務** — HTTP API（port 37777）+ Web UI + 10 個搜尋端點
4. **SQLite 資料庫** — 儲存 sessions, observations, summaries
5. **mem-search Skill** — 自然語言查詢 + 漸進式揭露
6. **Chroma 向量資料庫** — 語意 + 關鍵字混合搜尋

## MCP 搜尋工具（3 層工作流）

1. **`search`** — 取得精簡索引 + IDs（~50-100 tokens/result）
2. **`timeline`** — 取得感興趣結果的時間脈絡
3. **`get_observations`** — 只對過濾後的 IDs 取得完整細節（~500-1,000 tokens/result）

約 10x token 節省：先過濾再取細節。

## 怎麼用

```bash
# 安裝
npx claude-mem install

# 或透過 plugin marketplace
/plugin marketplace add thedotmack/claude-mem
/plugin install claude-mem
```

也支援 Gemini CLI、OpenCode、OpenClaw Gateway。

安裝後自動運作——5 個 Hook 會自動捕捉每次工具使用的觀察，產生摘要並存入 SQLite + Chroma。查詢時使用 `mem-search` skill 或 Web UI。

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[karpathy-gist-llm-wiki]] | LLM Wiki | 對比：Wiki 用 markdown 檔案持久化知識，claude-mem 用 SQLite + 向量 DB |
| [[project-golem]] | Agent 記憶系統 | 類似：Golem 用 lancedb-pro 向量記憶，claude-mem 用 Chroma |
| [[llm-knowledge-base]] | 知識庫方法論 | 方法論層級：claude-mem 是方法論的一種實作 |
| Claude Code 內建記憶 | 基礎方案 | 對比：內建 CLAUDE.md 是靜態的，claude-mem 是動態壓縮 |

## 相關概念

← [[llm-knowledge-base]] · [[agent-skills-ecosystem]] · [[karpathy-gist-llm-wiki]]

## 來源

- [原始資料](../raw/2026-05-09-thedotmack-claude-mem.md)

---

GitHub: [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) · Stars: ~73.8k · License: Apache 2.0 · 收錄日期: 2026-05-09