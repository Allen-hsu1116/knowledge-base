---
title: Graphify (Graphify-Labs)
slug: Graphify-Labs-graphify
created: 2026-08-09
updated: 2026-08-09
stars: 104354
language: Python
topics: [Knowledge Graph, RAG, MCP, AI Skills, Code Intelligence]
---

# Graphify (Graphify-Labs)

> ⭐104k · 把任何 codebase（程式碼、文件、PDF、圖片、影片）轉成可查詢的知識圖譜，用 tree-sitter AST 本地解析，每條邊都有 EXTRACTED/INFERRED 標籤，不需要向量資料庫。

## 快速導航

- 🕸️ **知識圖譜** → [[Knowledge-Graph]]
- 🔍 **RAG** → [[rag|RAG]]
- 🛠️ **AI Skills** → [[AI-Skills]]
- 🧩 **程式碼智慧** → [[code-intelligence|Code Intelligence]]

## 是什麼

Graphify 是一個 AI coding assistant 的 skill（技能），輸入 `/graphify` 指令後，它會把你的整個專案——程式碼、文件、PDF、圖片、影片——映射成一張**知識圖譜**。你不再需要 grep 翻檔案，而是直接向圖譜發問：「APIRouter 和 ModelField 之間是怎麼連起來的？」Graphify 會沿著圖譜的邊一步步追蹤，告訴你答案。

核心設計理念是**不是向量索引**。Graphify 不用 embedding、不建向量庫，而是用 tree-sitter AST 確定性地解析程式碼結構，產生一張真正可以遍歷的圖。每條邊都帶有信心標籤：`EXTRACTED` 表示直接從原始碼讀到（如 import、call），`INFERRED` 表示由 graphify 推斷出來。這讓你清楚知道哪些連接是確定的，哪些是推論的。

Graphify-Labs 版本（不同於早期的 safishamsi/graphify）是 YC S26 公司 Graphify Labs 的開源專案，支援 Claude Code、Cursor、Codex、Gemini CLI、GitHub Copilot 等 20+ AI coding assistant。程式碼解析完全在本地完成，不消耗 LLM token；只有文件、PDF、圖片等非程式碼內容的語意分析才需要呼叫 LLM。

## 核心特色

- **本地 AST 解析（零 LLM token）** — 程式碼用 tree-sitter 解析，支援 ~40 種語言，確定性、不花 LLM credit、資料不離開你的機器
- **每條邊都有信心標籤** — `EXTRACTED`（直接從原始碼讀到）vs `INFERRED`（graphify 推斷），你永遠知道哪些連接是確定的
- **不是向量索引** — 不用 embedding、不建向量庫，產生的是一張可以遍歷、可以查路徑的真實圖譜
- **多模態融合** — 程式碼、文件、PDF、圖片、影片/音訊全部映射到同一張圖譜裡
- **Leiden 社群偵測** — 自動把圖譜切成子系統，用 LLM-free 標籤命名，幫你理解架構邊界
- **互動式視覺化** — `graph.html` 可以在瀏覽器裡點節點、搜尋、按社群過濾
- **增量更新** — SHA256 快取機制，re-run 只處理變更的檔案（`--update` 模式）
- **Benchmark 領先** — LOCOMO recall@10 達 0.497（mem0 僅 0.048），LongMemEval-S QA 準確率 76%

## 怎麼用

安裝 CLI 工具：

```bash
# 推薦方式
uv tool install graphifyy      # 或 pipx install graphifyy
graphify install               # 註冊 skill 到你的 AI assistant
```

在 AI assistant 中使用：

```
/graphify .                        # 對當前目錄建立知識圖譜
/graphify ./raw                    # 對指定資料夾建立
/graphify ./raw --mode deep        # 更激進的推斷邊提取
/graphify ./raw --update           # 只處理變更的檔案，合併到現有圖譜
/graphify add https://arxiv.org/abs/1706.03762   # 抓論文加入圖譜
```

查詢圖譜：

```bash
graphify query "what connects attention to the optimizer?"
graphify path "FastAPI" "ModelField"
graphify explain "APIRouter"
```

輸出結構：

```
graphify-out/
├── graph.html       互動式圖譜，瀏覽器開啟
├── GRAPH_REPORT.md  重點概念、 surprising connections、建議問題
└── graph.json       完整圖譜，隨時查詢不需重讀檔案
```

## 跟其他方案的關係

| 方案 | 類型 | 向量庫 | AST 解析 | 邊信心標籤 | LLM token 消耗 |
|------|------|--------|----------|-----------|---------------|
| **Graphify-Labs** | Knowledge Graph Skill | ❌ 不需要 | ✅ tree-sitter ~40 語言 | ✅ EXTRACTED/INFERRED | 程式碼 0，文件需呼叫 |
| safishamsi/graphify | Knowledge Graph Skill | ❌ | ✅ tree-sitter | ✅ | 程式碼 0 |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | Code Intelligence MCP | ❌ | ✅ tree-sitter 158 語言 | ❌ | 0 |
| 向量 RAG (mem0) | Vector RAG | ✅ 必須 | ❌ | ❌ | 高 |
| [[rag\|傳統 RAG]] | Vector RAG | ✅ 必須 | ❌ | ❌ | 中 |

Graphify 的核心差異化：不用向量庫，用 AST 確定性解析，每條邊都有信心標籤。向量 RAG 靠語意相似度，Graphify 靠程式碼結構的確定關係。

## 相關概念

← [[Knowledge-Graph]] · [[rag|RAG]] · [[AI-Skills]] · [[code-intelligence|Code Intelligence]]

## 來源

- GitHub: https://github.com/Graphify-Labs/graphify
- PyPI: `graphifyy`（雙 y）
- 授權: Apache-2.0
- YC S26 公司
- Raw 檔案: `raw/2026-08-09-Graphify-Labs-graphify.md`
- 早期版本（不同作者）: [[safishamsi-graphify]]

---

| 項目 | 值 |
|------|-----|
| GitHub | [Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) |
| Stars | 104,354 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-08-09 |