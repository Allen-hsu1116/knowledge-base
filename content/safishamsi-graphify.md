# graphify

> Claude Code skill — 把任何資料夾轉成知識圖譜，支援程式碼、PDF、圖片等多模態輸入。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [safishamsi/graphify](https://github.com/safishamsi/graphify) |
| **Stars** | ⭐41,860 |
| **Language** | Python |
| **建立日期** | 2026-04-03 |
| **收錄日期** | 2026-05-04 |

## 簡介

graphify 是一個 Claude Code skill，輸入 `/graphify` 指令後，它會讀取你的檔案、建立知識圖譜，並產生互動式視覺化、Obsidian vault、Wiki、JSON 等多種格式輸出。號稱比直接讀原始檔案減少 71.5x 的 token 消耗。

## 主要特色

- **多模態輸入**：支援程式碼（tree-sitter AST）、Markdown、PDF、圖片（Claude vision）
- **知識圖譜輸出**：互動式 HTML 圖譜、Obsidian vault、Wiki、GraphML、Neo4j cypher
- **持久化查詢**：建好圖後可反覆查詢，不需重新讀取原始檔案
- **增量更新**：`--update` 只重新處理變更的檔案，SHA256 cache 避免重複計算
- **自動同步**：`--watch` 監控檔案變更，自動重建圖譜
- **MCP Server**：`--mcp` 啟動 MCP stdio server，供其他 agent 使用
- **Git Hook**：`graphify hook install` 每次 commit 自動重建

## 技術棧

NetworkX + Leiden (graspologic) + tree-sitter + Claude + vis.js。不需 Neo4j，不需 server，完全在本機執行。

## 相關概念

- [[Knowledge-Graph|Knowledge Graph]] — 知識圖譜的核心概念
- [[RAG]] — 檢索增強生成，graphify 是對 flat RAG 的結構化升級
- [[MCP]] — graphify 支援 MCP stdio server 模式

---

_此頁由 daily-llm-trending 自動維護_