# Understand-Anything

> 將任何程式碼庫或知識庫轉成互動式知識圖譜，支援 Claude Code、Codex、Gemini CLI 等多平台

## 快速導航
- 🧠 **知識圖譜** → [[Knowledge-Graph]]（程式碼結構圖譜化）
- 🛠 **AI Agent** → [[AI-Agent]]（多 Agent 流水線）
- 🛠 **程式碼智慧** → [[code-intelligence]]（程式碼理解與分析）

## 是什麼

Understand Anything 是一個 Claude Code 插件（也支援 Codex、Cursor、Gemini CLI 等 12+ 平台），使用多 Agent 流水線掃描專案，提取每個檔案、函式、類別和依賴關係，建構互動式知識圖譜。使用者可透過視覺化 Dashboard 探索程式架構、搜尋節點、分析 diff 影響、生成引導式導覽。它還能分析 Karpathy-pattern LLM wiki，將純文字知識庫轉成可導航的圖譜。

## 核心特色

### 多 Agent 流水線架構
- **project-scanner**：發現檔案、偵測語言和框架
- **file-analyzer**：提取函式、類別、imports，生成圖譜節點和邊
- **architecture-analyzer**：識別架構層（API/Service/Data/UI/Utility）
- **tour-builder**：生成依賴順序的引導式導覽
- **graph-reviewer**：驗證圖譜完整性和參照完整性
- **domain-analyzer**：提取業務領域、流程和步驟
- **article-analyzer**：從 wiki 文章提取實體、主張和隱含關係

### 知識庫分析能力
- 支援 Karpathy-pattern LLM wiki 的 `index.md`
- 確定性解析器提取 wikilinks 和分類
- LLM Agent 發現隱含關係、提取實體、浮現主張
- 將 wiki 轉成可導航的互動式圖譜

### 多平台支援
- 原生 Claude Code 插件（marketplace 安裝）
- 支援 Cursor、VS Code Copilot、Codex、Gemini CLI、Hermes 等 12+ 平台
- 一行指令安裝：`curl -fsSL ... | bash -s codex`

### 開發者體驗
- `/understand` 分析專案、建構圖譜
- `/understand-dashboard` 開啟互動式 Dashboard
- `/understand-chat` 用自然語言詢問程式碼庫
- `/understand-diff` 分析變更影響
- `--language zh` 支援多語言輸出

## 怎麼用

```bash
# Claude Code 安裝
/plugin marketplace add Lum1104/Understand-Anything
/plugin install understand-anything

# 分析專案
/understand

# 開啟視覺化 Dashboard
/understand-dashboard

# 用自然語言詢問
/understand-chat How does the payment flow work?

# 分析知識庫
/understand-knowledge ~/path/to/wiki

# 分析變更影響
/understand-diff
```

圖譜產出為 JSON，可 commit 到 repo 讓團隊成員跳過分析步驟。

## 跟其他方案的關係

| 工具 | 定位 | 核心功能 | 平台 |
|------|------|----------|------|
| **Understand-Anything** | 程式碼知識圖譜 | 多 Agent 分析+互動視覺化 | 12+ AI 工具 |
| [[colbymchenry-codegraph\|CodeGraph]] | 程式碼圖譜生成 | 自動生成依賴圖 | CLI |
| [[colbymchenry-codegraph]] | 程式碼理解 | Claude Code 插件 | Claude Code |

Understand-Anything 比 codegraph 更全面：不只生成依賴圖，還提供互動式 Dashboard、diff 影響分析、引導式導覽、知識庫分析和多 Agent 流水線。

## 相關概念
← [[Knowledge-Graph]] · [[AI-Agent]] · [[code-intelligence]] · [[Coding-Agent-CLI]]

## 來源
- raw/2026-05-23-Lum1104-Understand-Anything.md

---

- **GitHub**: https://github.com/Lum1104/Understand-Anything
- **Stars**: ⭐18,628
- **License**: MIT
- **收錄日期**: 2026-05-23