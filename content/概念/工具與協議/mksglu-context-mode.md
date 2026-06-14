---
title: Context Mode
slug: mksglu-context-mode
created: 2026-02-23
updated: 2026-06-14
stars: 17358
language: TypeScript
topics: ["Claude Code", "Context Optimization", "MCP", "Agent Skills", "Token Optimization"]
---

# Context Mode

> ⭐17.4k · Coding Agent 的上下文視窗優化 MCP Server，沙箱工具輸出 98% 壓縮，支援 15+ 平台。

快速導航：[[context-engineering-basics|Context Engineering]] · [[Token-Optimization|Token Optimization]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[anthropics-claude-code|Claude Code]]

## 是什麼

Context Mode 是一個 MCP 伺服器，專門解決 AI Coding Agent 的上下文視窗浪費問題。它的核心理念是「LLM 應該寫程式來分析，而不是自己計算」— 與其讓 Agent 讀取 47 個檔案（700 KB）然後自己數行數，不如讓它寫一個腳本來做這件事，只需要 3.6 KB 的上下文。這種「Think in Code」的範式讓 Agent 在有限的上下文視窗內完成更多工作。

Context Mode 處理四個層面的上下文問題。第一是 **Context Saving**：將 MCP 工具的原始輸出沙箱化，315 KB 壓縮成 5.4 KB（98% 縮減）。第二是 **Session Continuity**：每次檔案編輯、Git 操作、任務狀態都記錄在 SQLite 中，當對話被壓縮時不會遺失上下文，而是透過 FTS5 全文搜尋精確檢索需要的內容。第三是 **Think in Code**：Agent 生成腳本而非逐行閱讀，大幅減少工具呼叫次數和上下文消耗。第四是不強制簡短風格，讓模型自己決定輸出格式。

支援平台非常廣泛，包括 Claude Code（Plugin 市集完全自動安裝）、Codex CLI、Cursor、Copilot、Windsurf、Kiro、OpenCode、OpenClaw、Zed、Antigravity 等 15+ 個主流 Coding Agent 平台。每個平台都有對應的安裝指南。

## 核心特色

- **沙箱工具輸出**：MCP 工具的原始輸出在沙箱中執行，只有結果回傳到上下文視窗，98% 壓縮比
- **Session 持續性**：所有檔案編輯、Git 操作、錯誤、使用者決策都記錄在 SQLite + FTS5，對話壓縮後精確檢索
- **Think in Code 範式**：Agent 寫腳本做分析而非逐行閱讀，47 次 Read() → 1 次 ctx_execute()，從 700 KB 降到 3.6 KB
- **16 平台支援**：Claude Code、Codex CLI、Cursor、Windsurf、Kiro、OpenCode、Zed 等主流平台全部支援
- **Plugin 市集整合**：Claude Code 用戶可透過 `/plugin marketplace add mksglu/context-mode` 一鍵安裝
- **洞察儀表板**：`ctx-insight` 提供個人分析面板，90 個指標、37 種洞察模式、4 個綜合評分

## 怎麼用

Claude Code 安裝（最簡單）：

```bash
# Claude Code v1.0.33+
/plugin marketplace add mksglu/context-mode
/plugin install context-mode@context-mode

# 驗證安裝
/context-mode:ctx-doctor

# 查看上下文節省統計
/context-mode:ctx-stats
```

其他平台（以 Codex CLI 為例）：

```bash
# 安裝 npm 套件
npm install -g context-mode

# 設定 MCP 伺服器
# 在專案的 .mcp.json 中加入 context-mode 伺服器設定
```

核心工具指令：
- `ctx_execute` — 在沙箱中執行程式碼，只回傳結果
- `ctx_batch_execute` — 批次執行多個腳本
- `ctx_index` — 索引檔案到 FTS5 知識庫
- `ctx_search` — 全文搜尋已索引的內容
- `ctx_stats` — 上下文節省統計
- `ctx_insight` — 個人生產力分析儀表板

## 跟其他方案的關係

| 特色 | Context Mode | [[chopratejas-headroom|Headroom]] | [[JuliusBrussee-caveman|Caveman]] | [[affaan-m-ECC|ECC]] |
|------|-------------|---------|---------|-----|
| 壓縮方式 | 沙箱執行 + FTS5 | Context 壓縮 | Token 壓縮 | Harness 優化 |
| 壓縮比 | 98% | ~70% | ~80% | 多維度 |
| 平台數 | 16+ | 1 (MCP) | 1 | 7+ |
| Session 持續 | ✅ SQLite | ❌ | ❌ | 部分 |
| Think in Code | ✅ | ❌ | ❌ | ❌ |
| 洞察分析 | ✅ 90 指標 | ❌ | ❌ | ❌ |

← [[context-engineering-basics|Context Engineering]] · [[Token-Optimization|Token Optimization]]

## 來源

- GitHub: [mksglu/context-mode](https://github.com/mksglu/context-mode)
- 原始資料: `raw/2026-06-14/mksglu-context-mode.json`

---

| 項目 | 值 |
|------|-----|
| GitHub | [mksglu/context-mode](https://github.com/mksglu/context-mode) |
| Stars | ⭐17,358 |
| License | ELv2 |
| Language | TypeScript |
| 收錄日期 | 2026-06-14 |