# graphify

> Claude Code skill — 把任何資料夾轉成知識圖譜，支援程式碼、PDF、圖片等多模態輸入，號稱比直接讀原始檔案減少 71.5x token 消耗。

| 項目 | 資訊 |
|------|------|
| **GitHub** | [safishamsi/graphify](https://github.com/safishamsi/graphify) |
| **Stars** | ⭐41,860 |
| **Language** | Python |
| **建立日期** | 2026-04-03 |
| **收錄日期** | 2026-05-04 |

## 快速導航

- 🕸️ **知識圖譜** → [[Knowledge-Graph]]（graphify 是知識圖譜的工具化實作）
- 🔍 **RAG** → [[MCP]]（graphify 可啟動 MCP stdio server）
- 🧠 **AI Skills** → [[AI-Skills]]（graphify 本身就是一個 Claude Code skill）

## 簡介

graphify 是一個 Claude Code skill，輸入 `/graphify` 指令後，它會讀取你的檔案、建立知識圖譜，並產生互動式視覺化、Obsidian vault、Wiki、JSON 等多種格式輸出。靈感來自 Andrej Karpathy 的 `/raw` 資料夾習慣 — graphify 把散落的筆記、論文、截圖、白板照片轉成結構化圖譜，號稱比直接讀原始檔案減少 71.5x token 消耗。

## 核心特色

- **多模態輸入**：支援程式碼（tree-sitter AST）、Markdown、PDF、圖片（Claude vision）— 任何語言的截圖、圖表都能解析
- **多格式輸出**：互動式 HTML 圖譜、Obsidian vault、Wikipedia 風格文章、GraphML（Gephi/yEd）、Neo4j Cypher、SVG
- **增量更新**：SHA256 快取機制，re-run 只處理變更的檔案（`--update` 模式）
- **查詢能力**：`graphify query`、`graphify path`、`graphify explain` — 直接向圖譜提問
- **MCP Server**：啟動 stdio MCP server，讓其他工具也能查詢圖譜
- **Git Hook**：`graphify hook install` 自動在每次 commit 重建圖譜
- **Watch 模式**：`--watch` 即時同步檔案變更

## 使用方式

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
/graphify add https://x.com/karpathy/status/...   # 推文

# 查詢
/graphify query "what connects attention to the optimizer?"
/graphify path "DigestAuth" "Response"
/graphify explain "SwinTransformer"
```

## 輸出結構

```
graphify-out/
├── graph.html       # 互動式圖譜 — 可點擊節點、搜尋、依社群篩選
├── obsidian/        # Obsidian vault 格式
├── wiki/            # Wikipedia 風格文章（agent 導航用）
├── GRAPH_REPORT.md  # 關鍵節點、意外連結、建議問題
├── graph.json       # 持久化圖譜 — 數週後仍可查詢
└── cache/           # SHA256 快取 — 只處理變更的檔案
```

## 技術棧

- **圖譜引擎**：NetworkX + Leiden（graspologic）
- **程式碼解析**：tree-sitter（AST + call-graph）
- **視覺化**：vis.js
- **LLM**：Claude（概念提取 + 關係推斷）
- **無需 Neo4j**，完全本地運行

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/safishamsi/graphify)