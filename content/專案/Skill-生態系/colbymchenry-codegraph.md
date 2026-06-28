---
title: CodeGraph
slug: colbymchenry-codegraph
github: https://github.com/colbymchenry/codegraph
stars: 3112
language: TypeScript
created: 2026-01-18
added: 2026-05-17
updated: 2026-01-18
---

# CodeGraph

> ⭐3112 · 為 Claude Code 打造的語意程式碼知識圖譜 MCP server，讓 AI 代理用一次工具呼叫取代數十次檔案掃描，探索速度快 77%。

## 快速導航

- [[Coding-Agent-CLI]] — AI 程式設計代理工具
- [[MCP]] — Model Context Protocol 生態
- [[Knowledge-Graph]] — 知識圖譜技術
- [[code-intelligence]] — 程式碼智慧分析

## 是什麼

CodeGraph 是一個專為 Claude Code 設計的 MCP（Model Context Protocol）伺服器，透過預先建構的程式碼語意知識圖譜，大幅提升 AI coding agent 的程式碼探索效率。Agent 不再需要逐檔掃描（grep、glob、Read），而是直接查詢知識圖譜即可取得符號關係、呼叫鏈和程式碼結構。跨 6 個真實程式碼庫的基準測試顯示，平均減少 92% 的工具呼叫次數、71% 的探索時間。

## 核心特色

- **語意知識圖譜** — 掃描整個程式碼庫，建立包含符號定義、引用關係、呼叫鏈的知識圖譜，存於本地 SQLite 資料庫。支援 19+ 種程式語言，包含跨語言呼叫鏈追蹤（如 Python ↔ Rust）
- **MCP 工具整合** — 提供 7 個 MCP 工具給 Claude Code 使用：codegraph_explore、codegraph_search、codegraph_callers、codegraph_callees、codegraph_impact、codegraph_node、codegraph_files、codegraph_status
- **框架感知路由** — 自動識別 13 種 Web 框架的路由定義，將 URL 模式連結到對應的處理函式
- **即時同步** — 使用原生 OS 事件監聽器搭配防抖自動同步，程式碼變更後圖譜自動更新，零配置

## 怎麼用

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

## 跟其他方案的關係

CodeGraph 對應 [[MCP]] 生態的「程式碼理解」層。跟 [[Coding-Agent-CLI]]（如 Claude Code、Cursor）的關係：CodeGraph 是它們的 MCP 插件，讓 Agent 更快理解程式碼結構，而不是逐檔掃描。

跟 [[code-intelligence]] 的傳統工具（ctags、LSP）相比：CodeGraph 是 Agent-first 設計，透過 MCP 協議直接服務 AI Agent，而不是服務人類編輯器。

跟 [[Knowledge-Graph]] 的關係：CodeGraph 是知識圖譜技術在程式碼理解領域的具體應用，把符號定義、引用、呼叫鏈建模為圖譜。

## 相關概念

← [[Coding-Agent-CLI]] · [[MCP]] · [[Knowledge-Graph]] · [[code-intelligence]]

## 來源

- [原始資料](../raw/2026-05-17-colbymchenry-codegraph.md)
- GitHub: https://github.com/colbymchenry/codegraph

---

| 項目 | 內容 |
|------|------|
| GitHub | [colbymchenry/codegraph](https://github.com/colbymchenry/codegraph) |
| Stars | ⭐3,112 |
| 語言 | TypeScript |
| 建立日期 | 2026-01-18 |
| 收錄日期 | 2026-05-17 |
| 授權 | MIT |