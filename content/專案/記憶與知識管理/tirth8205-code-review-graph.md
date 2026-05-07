# code-review-graph

> 本地知識圖譜 for AI Coding Tools。用 Tree-sitter 建程式碼結構圖，MCP 精準投餵上下文，code review 平均省 8.2x token，單檔改動最高省 16.4x。

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/tirth8205/code-review-graph |
| Stars | ⭐15,581 |
| Language | Python |
| 建立日期 | 2026-02-26 |
| 授權 | MIT |
| 收錄日期 | 2026-05-07 |

## 快速導航

- 🕸️ **知識圖譜** → [[Knowledge-Graph]]（code-review-graph 是程式碼圖譜的實作）
- ⚡ **Token 優化** → [[Token-Optimization]]（精準投餵 = 大幅省 token）
- 🔌 **MCP** → [[MCP]]（透過 MCP 協議投餵上下文給 AI 助手）
- 📚 **增量索引** → [[cocoindex]]（兩者都是增量式，場景不同）

## 是什麼

code-review-graph 解決 AI coding tools 的一個根本問題：每次任務都重新讀整個 codebase，燒 token 又慢。它用 Tree-sitter 把程式碼庫解析成結構圖（nodes = 函數/類別/import、edges = 呼叫/繼承/測試覆蓋），增量追蹤變更，透過 MCP 給 AI 助手精準上下文——只讀相關的檔案，不掃描整個專案。

關鍵數字：6 個真實開源 repo 評測，平均 8.2x token 減少。大型 monorepo 更有感——27,700+ 檔案被排除，只需讀 ~15 個。初始建構 ~10 秒（500 檔案專案），後續增量更新 < 2 秒。

## 核心特色

### Blast-radius 分析

當一個檔案變更，圖譜追蹤所有可能受影響的呼叫者、依賴項和測試——這就是「爆炸半徑」。AI 助手只讀這些檔案，而不是掃描整個專案。100% recall 確保不漏任何受影響檔案，0.54 F1 代表有些過度預測——但這是保守取捨，多標記比漏掉好。

| Repo | Avg Naive Tokens | Avg Graph Tokens | Reduction |
|------|-----------------|-----------------|-----------|
| express | 693 | 983 | 0.7x |
| fastapi | 4,944 | 614 | 8.1x |
| flask | 44,751 | 4,252 | 9.1x |
| gin | 21,972 | 1,153 | 16.4x |
| httpx | 12,044 | 1,728 | 6.9x |
| nextjs | 9,882 | 1,249 | 8.0x |

### 增量更新（< 2 秒）

每次 git commit 或檔案存檔，hook 觸發圖譜更新。SHA-256 雜湊比對找出變更檔案，只重新解析變更部分。2,900 檔案專案重建 < 2 秒。

```bash
# 安裝 + 自動偵測 AI coding tools
pip install code-review-graph
code-review-graph install   # 偵測 Codex/Claude Code/Cursor/Windsurf/Zed 等
code-review-graph build      # 解析程式碼庫

# 指定平台
code-review-graph install --platform codex
code-review-graph install --platform claude-code
code-review-graph install --platform cursor
code-review-graph install --platform kiro
```

### 23 語言 + Jupyter 支援

Tree-sitter 語法覆蓋：Python、TypeScript/TSX、JavaScript、Vue、Svelte、Go、Rust、Java、Scala、C#、Ruby、Kotlin、Swift、PHP、Solidity、C/C++、Dart、R、Perl、Lua、Zig、PowerShell、Julia，加上 Jupyter/Databricks notebook（.ipynb）多語言 cell 支援（Python、R、SQL）。

### 多平台自動偵測

`install` 指令一次設定全部：偵測你裝了哪些 AI coding tools（Codex、Claude Code、Cursor、Windsurf、Zed、Continue、OpenCode、Antigravity、Qwen、Qoder、Kiro），自動寫入正確的 MCP 配置和 graph-aware 指令注入。

## 安裝方式

```bash
# pip
pip install code-review-graph

# pipx
pipx install code-review-graph

# 設定（自動偵測平台）
code-review-graph install

# 建構圖譜
code-review-graph build

# 評估
code-review-graph eval --all
```

需求：Python 3.10+，建議安裝 uv（MCP 配置會優先使用 uvx）。

## 技術棧

- **Python 3.10+** — 主要語言
- **Tree-sitter** — AST 解析引擎，23+ 語言
- **SQLite** — 圖譜儲存
- **MCP** — 上下文投餵協議
- **SHA-256** — 增量更新雜湊比對
- **PyPI** — `code-review-graph` 套件

## 跟其他方案的關係

code-review-graph 跟 [[cocoindex]] 都是增量式系統，但場景完全不同：cocoindex 是 RAG 管線（文件 → 嵌入 → 向量索引），code-review-graph 是程式碼圖譜（原始碼 → AST → 依賴圖 → blast radius）。

跟 [[safishamsi-graphify]] 的差異：graphify 是 Claude Code skill，用 LLM 做概念提取 + 關係推斷，輸出互動式視覺化；code-review-graph 是 MCP server，用 Tree-sitter 做確定性 AST 解析，輸出精確的依賴路徑和影響範圍。一個重理解，一個重精準。

[[Knowledge-Graph]] 概念頁把兩者統整在「圖結構組織資訊」的大傘下。[[Token-Optimization]] 是 code-review-graph 的直接效益——精準投餵 = 省 token = 省成本。

## 相關概念

← [[Knowledge-Graph]] · [[Token-Optimization]] · [[MCP]] · [[cocoindex]]

## 來源

- GitHub: https://github.com/tirth8205/code-review-graph