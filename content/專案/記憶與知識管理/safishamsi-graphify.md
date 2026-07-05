---
title: graphify
slug: safishamsi-graphify
created: 2026-05-10
updated: 2026-05-10
stars: 41,860
language: zh-TW
topics: [Knowledge Graph, RAG, MCP]
---

# graphify

> ⭐41,860 · Claude Code skill — 把任何資料夾轉成知識圖譜，支援程式碼、PDF、圖片等多模態輸入，號稱比直接讀原始檔案減少 71.5x token 消耗。

## 快速導航

- 🕸️ **知識圖譜** → [[Knowledge-Graph]]
- 🔍 **RAG** → [[MCP]]
- 🧠 **AI Skills** → [[AI-Skills]]

## 是什麼

graphify 是一個 Claude Code skill，輸入 `/graphify` 指令後，它會讀取你的檔案、建立知識圖譜，並產生互動式視覺化、Obsidian vault、Wiki、JSON 等多種格式輸出。靈感來自 Andrej Karpathy 的 `/raw` 資料夾習慣 — graphify 把散落的筆記、論文、截圖、白板照片轉成結構化圖譜。

## 核心特色

- **多模態輸入** — 支援程式碼（tree-sitter AST）、Markdown、PDF、圖片（Claude vision），任何語言的截圖、圖表都能解析
- **多格式輸出** — 互動式 HTML 圖譜、Obsidian vault、Wikipedia 風格文章、GraphML（Gephi/yEd）、Neo4j Cypher、SVG
- **增量更新** — SHA256 快取機制，re-run 只處理變更的檔案（`--update` 模式）
- **查詢能力** — `graphify query`、`graphify path`、`graphify explain` 直接向圖譜提問
- **MCP Server** — 啟動 stdio MCP server，讓其他工具也能查詢圖譜
- **Git Hook & Watch** — `graphify hook install` 自動在每次 commit 重建圖譜，`--watch` 即時同步檔案變更

## 怎麼用

```bash
# 安裝
pip install graphifyy && graphify install

# 基本用法
/graphify .                        # 當前目錄
/graphify ./raw                    # 指定資料夾
/graphify ./raw --mode deep        # 更積極的推斷邊
/graphify ./raw --update           # 只重新處理變更的檔案
/graphify ./raw --wiki             # 產生 agent 可導航的 wiki
/graphify ./raw --watch            # 即時同步

# 新增外部資源
/graphify add https://arxiv.org/abs/1706.03762   # 論文

# 查詢
/graphify query "what connects attention to the optimizer?"
/graphify path "DigestAuth" "Response"
/graphify explain "SwinTransformer"
```

### 輸出結構

```
graphify-out/
├── graph.html       # 互動式圖譜
├── obsidian/        # Obsidian vault 格式
├── wiki/            # Wikipedia 風格文章
├── GRAPH_REPORT.md  # 關鍵節點、意外連結
├── graph.json       # 持久化圖譜
└── cache/           # SHA256 快取
```

## 跟其他方案的關係

graphify 是 [[Knowledge-Graph]] 的工具化實作，可啟動 [[MCP]] stdio server 讓其他工具查詢圖譜，本身是一個 [[AI-Skills]] 格式的 Claude Code skill。圖譜引擎用 NetworkX + Leiden，程式碼解析用 tree-sitter，視覺化用 vis.js，LLM 用 Claude 做概念提取 + 關係推斷，完全本地運行無需 Neo4j。

## 相關概念

← [[Knowledge-Graph]] · [[MCP]] · [[AI-Skills]]

## 來源

- raw/safishamsi-graphify.md

---

- **GitHub**: https://github.com/safishamsi/graphify
- **Stars**: ⭐41,860
- **License**: MIT
- **收錄日期**: 2026-05-04

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/safishamsi/graphify |
| **Stars** | ⭐41,860 |
| **收錄日期** | 2026-05-10 |
