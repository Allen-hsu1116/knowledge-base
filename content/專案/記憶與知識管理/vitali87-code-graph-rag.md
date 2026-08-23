---
title: Code-Graph-RAG
slug: vitali87-code-graph-rag
created: 2026-08-10
updated: 2026-08-10
stars: 2984
language: Python
topics: [RAG, Knowledge Graph, Tree-sitter, MCP, Code Intelligence, Memgraph]
---

# Code-Graph-RAG

> ⭐2984 · 用 Tree-sitter 把多語言 monorepo 解析成知識圖譜（Memgraph），再用自然語言查詢、編輯、優化你的程式碼——不需要向量庫就能做到結構化的 RAG。

## 快速導航


- 🕸️ **知識圖譜** → [[Knowledge-Graph]]
- 🔍 **RAG** → [[rag|RAG]]
- 🧩 **程式碼智慧** → [[code-intelligence|Code Intelligence]]
- 🛠️ **MCP** → [[MCP]]

## 是什麼

Code-Graph-RAG 是一個針對 monorepo 設計的程式碼 RAG 系統。它用 Tree-sitter 解析你的整個程式碼庫，把函式、類別、方法、模組以及它們之間的關係抽取出来，存進 Memgraph 圖資料庫裡，形成一張統一 schema 的知識圖譜。然後你可以用自然語言向圖譜發問：「這個函式被誰呼叫？」「這段 dead code 從哪裡開始？」系統會自動把你的問題轉成 Cypher 查詢，從圖譜裡找出答案。

跟傳統向量 RAG 不同的是，Code-Graph-RAG 建構的是**結構圖譜**而非向量索引。程式碼的函式呼叫關係、import 關係、class 繼承關係都是確定性的——AST 解析出來就是客觀事實，不靠 embedding 的語意猜測。這意味著查詢結果更精確，而且不會因為模型版本更新而改變。系統也支援語意搜尋（透過 Qdrant 向量庫）作為補充，兩者可以混合使用。

Code-Graph-RAG 也提供 MCP Server 模式，讓 Claude Code 等 MCP 客戶端可以直接查詢和編輯你的程式碼庫。它支援 14 種語言（Python、TypeScript、Rust、Go、Java、C/C++、C#、PHP、Lua、Dart、Ruby 等），並提供 AST-based 的手術式程式碼修改功能——修改前會先顯示 diff 預覽，確認後才真正寫入。

## 核心特色

- **Tree-sitter 多語言 AST 解析** — 支援 14 種語言（Python、TS、JS、Rust、Go、Java、C/C++、C#、PHP、Lua、Dart、Ruby），統一 schema 存入 Memgraph，一個 monorepo 混合多種語言也能放同一張圖
- **自然語言 → Cypher 查詢** — 不用學 Cypher 語法，直接用英文問問題，AI 自動生成查詢語句從圖譜撈資料
- **AST 手術式程式碼修改** — 不是文字替換，而是基於 AST 的結構化 patch，修改前先 diff 預覽，避免意外損壞
- **Dead Code 偵測** — 從 entry point 出發沿呼叫邊和引用邊走遍整張圖，走不到的就是死碼
- **結構化搜尋與替換（ast-grep）** — 用 AST pattern 而非 regex 來匹配和重寫程式碼，精確度遠高於文字搜尋
- **MCP Server 模式** — 作為 MCP Server 運行，Claude Code 等 MCP 客戶端可直接查詢和編輯程式碼庫
- **混合搜尋** — 結構圖譜查詢 + Qdrant 語意向量搜尋，兩者互補
- **即時更新** — 程式碼變更後只需更新變更部分，不需要重建整張圖

## 怎麼用

安裝 CLI 工具：

```bash
# 推薦方式（需要 Docker for Memgraph, cmake, ripgrep）
uv tool install "code-graph-rag[treesitter-full,semantic]"
# 或
pipx install "code-graph-rag[treesitter-full,semantic]"
```

基本操作流程：

```bash
# 1. 啟動 Memgraph + Qdrant 容器
cgr daemon up

# 2. 解析 repo 並建立圖譜
cgr start --repo-path /path/to/repo --update-graph

# 3. 互動式查詢
cgr start --repo-path /path/to/repo
```

MCP Server 設定（Claude Code 等）：

```json
{
  "mcpServers": {
    "code-graph-rag": {
      "command": "cgr",
      "args": ["mcp", "--repo-path", "/path/to/repo"]
    }
  }
}
```

## 跟其他方案的關係

| 方案 | 圖資料庫 | 向量庫 | AST 解析 | 語言數 | MCP | 程式碼修改 |
|------|---------|--------|----------|--------|-----|-----------|
| **Code-Graph-RAG** | Memgraph | Qdrant（可選） | ✅ tree-sitter | 14 | ✅ | ✅ AST patch |
| [[Graphify-Labs-graphify\|Graphify]] | 自帶 HTML | ❌ | ✅ tree-sitter | ~40 | ❌ | ❌ |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | 自帶 | ❌ | ✅ tree-sitter | 158 | ✅ | ❌ |
| [[rag\|傳統向量 RAG]] | ❌ | ✅ 必須 | ❌ | — | — | ❌ |

|Code-Graph-RAG 的定位：介於 Graphify（純 AST 圖譜 skill）和 Codebase Memory MCP（大規模 code intelligence）之間。Graphify 是 AI assistant 的 skill，不持久化圖譜；Code-Graph-RAG 用 Memgraph 持久化，可以跨 session 查詢。Codebase Memory MCP 支援更多語言但沒有內建程式碼修改功能。

## 相關概念


← [[Knowledge-Graph]] · [[rag]] · [[MCP]] · [[code-intelligence]]

## 來源

- GitHub: https://github.com/vitali87/code-graph-rag
- 官網: https://code-graph-rag.com
- PyPI: `code-graph-rag`
- 授權: MIT
- Raw 檔案: `raw/2026-08-10-vitali87-code-graph-rag.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/vitali87/code-graph-rag |
| Stars | ⭐2984|
| License | MIT |
| 收錄日期 | 2026-08-10 |
