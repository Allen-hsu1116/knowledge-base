---
title: LEANN
slug: yichuan-w-LEANN
created: 2026-05-28
updated: 2026-05-28
stars: 11790
language: Python
topics: [RAG, 向量資料庫, MCP, 本地隱私]
---

# LEANN

> ⭐11790 · 低儲存向量索引，97% 空間節省，本地隱私 RAG

## 快速導航

[[rag|RAG]] · [[向量資料庫]] · [[Chroma]] · [[AI-Agent]] · [[mempalace|MemPalace]]

## 是什麼

LEANN（Low-storage Engine for Approximate Nearest Neighbor）是一個創新的向量資料庫，透過**圖形化選擇性重算**（graph-based selective recomputation）搭配**高度保留剪枝**（high-degree preserving pruning），在搜尋時才即時計算 embedding，而非事先儲存所有向量，實現 **97% 儲存空間節省**且不損失準確度。

由 UC Berkeley Sky Computing Lab 開發，論文發表於 MLSys 2026。

## 核心特色

- 🔒 **完全隱私**：資料不離開筆電，無需雲端
- 🪶 **極小儲存**：索引 6000 萬文件僅需 6GB（傳統需 201GB）
- 📦 **可攜帶**：知識庫可輕鬆在不同裝置間傳輸
- ✨ **零準確度損失**：圖形剪枝 + 重算策略保證搜尋品質
- 🔗 **MCP 原生整合**：可直接作為 Claude Code 的語意搜尋 MCP 服務
- 🤖 **RAG Everything**：支援文件、Email、瀏覽器歷史、WeChat、iMessage、ChatGPT/Claude 對話、Slack、Twitter

## 怎麼用

```bash
# 安裝
git clone https://github.com/yichuan-w/LEANN.git leann && cd leann
uv venv && source .venv/bin/activate && uv pip install leann

# Python API
from leann import LeannBuilder, LeannSearcher, LeannChat
builder = LeannBuilder(backend_name="hnsw")
builder.add_text("your text here")
builder.build_index("my_index")

# 搜尋
searcher = LeannSearcher("my_index")
results = searcher.search("query", top_k=5)

# CLI
leann build my-docs --docs ./your_documents
leann search my-docs "machine learning concepts"
leann ask my-docs --interactive

# Claude Code MCP 整合
claude mcp add --scope user leann-server -- leann_mcp
```

## 跟其他方案的關係

| 方案 | Stars | 儲存節省 | 本地隱私 | MCP 支援 | 特色 |
|------|-------|---------|---------|---------|------|
| **LEANN** | ⭐11.8k | 97% | ✅ | ✅ | 圖形重算、極小索引 |
| [[Chroma]] | ⭐27.9k | — | ✅ | ✅ | 嵌入式向量 DB |
| [[ragflow]] | ⭐79.7k | — | ✅ | ❌ | 完整 RAG 引擎 |
| [[qmd|QMD]] | ⭐24.9k | — | ✅ | ✅ | 本地搜尋 |
| [[cocoindex]] | ⭐8.1k | — | ✅ | ❌ | 增量索引 |

## 相關概念


← [[rag]] · [[向量資料庫]] · [[Chroma]] · [[AI-Agent]] · [[mempalace]] · [[rohitg00-agentmemory]]

## 來源

- GitHub: <https://github.com/yichuan-w/LEANN>
- 論文: <https://arxiv.org/abs/2506.08276>
- 原始 README: `raw/2026-05-28-yichuan-w-LEANN.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/yichuan-w/LEANN |
| Stars | ⭐11790|
| License | MIT |
| 收錄日期 | 2026-05-28 |
