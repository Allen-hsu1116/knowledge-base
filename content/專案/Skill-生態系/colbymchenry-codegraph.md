---
title: CodeGraph
slug: colbymchenry-codegraph
github: https://github.com/colbymchenry/codegraph
stars: 2530
language: TypeScript
created: 2026-01-18
added: 2026-05-17
---

# CodeGraph

> 為 Claude Code 打造的語意程式碼知識圖譜 MCP server，讓 AI 代理用一次工具呼叫取代數十次檔案掃描，探索速度快 77%。

為 Claude Code 打造的語意程式碼知識圖譜，讓 AI 代理用一次工具呼叫取代數十次檔案掃描，探索速度快 77%，完全本地運行。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [colbymchenry/codegraph](https://github.com/colbymchenry/codegraph) |
| Stars | ⭐2,530 |
| 語言 | TypeScript |
| 建立日期 | 2026-01-18 |
| 收錄日期 | 2026-05-17 |
| 授權 | MIT |

## 快速導航

- [[Coding-Agent-CLI]] — AI 程式設計代理工具
- [[MCP]] — Model Context Protocol 生態
- [[Knowledge-Graph]] — 知識圖譜技術
- [[code-intelligence]] — 程式碼智慧分析

## 詳細簡介

CodeGraph 是一個專為 Claude Code 設計的 MCP（Model Context Protocol）伺服器，透過預先建構的程式碼語意知識圖譜，大幅提升 AI coding agent 的程式碼探索效率。當 Claude Code 的 Explore agent 需要理解程式碼結構時，不再需要逐檔掃描（grep、glob、Read），而是直接查詢知識圖譜即可取得符號關係、呼叫鏈和程式碼結構。

跨 6 個真實程式碼庫的基準測試顯示，使用 CodeGraph 後平均減少 92% 的工具呼叫次數、71% 的探索時間。在 Swift Compiler 這樣的大型專案（25,874 個檔案、272,898 個節點）中，也能在 35 秒內完成複雜的跨語言查詢。

## 核心特色

### 語意知識圖譜

CodeGraph 會掃描整個程式碼庫，建立包含符號定義、引用關係、呼叫鏈的知識圖譜，存於本地 SQLite 資料庫。支援 19+ 種程式語言，包含 TypeScript、Python、Go、Rust、Java、C#、Swift、Kotlin 等，甚至能跨語言追蹤呼叫鏈（如 Python ↔ Rust）。

### MCP 工具整合

提供 7 個 MCP 工具給 Claude Code 使用：

- `codegraph_explore` — 根據任務描述回傳相關程式碼上下文
- `codegraph_search` — 全文搜尋符號名稱（FTS5 引擎）
- `codegraph_callers` / `codegraph_callees` — 追蹤呼叫鏈
- `codegraph_impact` — 分析修改某符號的影響範圍
- `codegraph_node` — 取得單一符號的詳細資訊
- `codegraph_files` — 取得索引檔案結構
- `codegraph_status` — 檢查索引健康狀態

### 框架感知路由

自動識別 13 種 Web 框架的路由定義（Django、Flask、FastAPI、Express、Laravel、Rails、Spring、Gin、Axum、ASP.NET、Vapor、React Router、SvelteKit），將 URL 模式連結到對應的處理函式。

### 即時同步

使用原生 OS 事件監聽器（FSEvents/inotify/ReadDirectoryChangesW）搭配防抖自動同步，程式碼變更後圖譜自動更新，零配置。

## 安裝方式

```bash
# 一鍵安裝（互動式設定，自動配置 Claude Code）
npx @colbymchenry/codegraph

# 手動安裝
npm install -g @colbymchenry/codegraph

# 初始化專案
cd your-project
codegraph init -i

# 重新啟動 Claude Code 以載入 MCP 伺服器
```

也可作為 Node.js 函式庫使用：

```typescript
import CodeGraph from '@colbymchenry/codegraph';

const cg = await CodeGraph.init('/path/to/project');
await cg.indexAll({
  onProgress: (p) => console.log(`${p.phase}: ${p.current}/${p.total}`)
});
const results = cg.searchNodes('UserService');
const callers = cg.getCallers(results[0].node.id);
cg.watch();   // 自動同步檔案變更
cg.close();
```

## 技術棧

| 技術 | 用途 |
|------|------|
| TypeScript | 主要開發語言 |
| SQLite (better-sqlite3) | 本地圖譜儲存 |
| FTS5 | 全文搜尋引擎 |
| tree-sitter | 多語言語法解析 |
| MCP (stdio) | 與 Claude Code 通訊 |

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/colbymchenry/codegraph)
- [npm](https://www.npmjs.com/package/@colbymchenry/codegraph)