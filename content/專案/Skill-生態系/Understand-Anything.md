---
title: Understand-Anything
slug: Understand-Anything
created: 2026-05-10
updated: 2026-09-07
stars: 81724
language: zh-TW
primary_language: TypeScript
source: https://github.com/Egonex-AI/Understand-Anything
topics:
  - Code Intelligence
  - Knowledge Graph
  - AI Agent
  - Code Visualization
  - Multi-Agent Pipeline
  - Tree-sitter
---

# Understand-Anything

> ⭐81724 · 將任何程式碼庫/知識庫/文件轉成互動式知識圖譜，不只顯示結構，還教你程式碼背後的故事

## 快速導航


- 🧠 [[Knowledge-Graph]] — 知識圖譜概念
- 🤖 [[AI-Agent]] — 多 Agent 流水線
- 💻 [[Coding-Agent-CLI]] — Coding Agent CLI 工具生態
- 🔍 [[code-intelligence]] — 程式碼智慧與分析

## 是什麼

Understand Anything 是一個開源工具（現由 Egonex-AI 維護，原作者 Lum1104），將任何程式碼庫、知識庫或文件轉成**互動式知識圖譜**。它不只是顯示「檔案→函式→邊」的結構圖，而是用多 Agent 流水線分析程式碼的業務邏輯、架構層次和依賴關係，然後在互動式 Dashboard 中讓你探索、搜尋、提問。

核心理念：**「AI should help people, not replace them.」** — 目標不是一個讓你驚嘆複雜度的圖，而是一個安靜地教你每個零件如何組合在一起的圖。

支援 17+ AI 編碼平台：Claude Code、Codex、Cursor、Copilot、Gemini CLI、OpenCode、Hermes、Cline、KIMI CLI、Trae、Nanobot、Kiro 等。

## 核心特色

- **結構圖 + 業務邏輯雙視角** — 結構視圖顯示每個檔案、函式、類別為可點擊節點（附白話文摘要），Domain 視圖切換到業務邏輯模式（認證流程、付款管線、用戶生命週期），看程式碼如何映射到真實業務流程
- **Tree-sitter + LLM 混合架構** — Tree-sitter 提供確定性解析（CST、imports、exports、定義、呼叫站），LLM 提供語意分析（白話文摘要、標籤、架構層分類、業務領域映射），讓圖譜在結構面可重現、在語意面有深度
- **多 Agent 流水線** — `/understand` 使用 5 個專業角色，domain 與 knowledge 分析另加 domain-analyzer、article-analyzer；file-analyzer 最多 5 並行、每批 20–30 檔案。graph-reviewer 預設 inline 驗證，`--review` 才啟用完整 LLM 審查；支援增量更新
- **豐富功能矩陣** — 引導式導覽、模糊+語意搜尋、Diff 影響分析、人格適應 UI、層次視覺化、語言概念就地解釋、JSON 匯出分享、依賴路徑查找器
- **知識庫分析** — 支援 Karpathy-pattern LLM wiki 的 index.md，確定性解析器提取 wikilinks 和分類，LLM Agent 發現隱含關係、提取實體、將 wiki 轉成可導航的互動式圖譜

## 怎麼用

### 安裝

```bash
# Claude Code（原生插件）
/plugin marketplace add Egonex-AI/Understand-Anything
/plugin install understand-anything

# 其他平台（一行安裝）
curl -fsSL https://raw.githubusercontent.com/Egonex-AI/Understand-Anything/main/install.sh | bash -s codex
# 支援: gemini, codex, opencode, pi, openclaw, antigravity, vibe, vscode, hermes, cline, kimi, trae, nanobot, kiro
```

安裝後重啟 CLI／IDE。下列是官方使用方式，本文更新未執行安裝。Codex 使用 `$understand` 而不是 `/understand`；其他平台若不辨識前綴，可用自然語言要求使用 understand skill。

### 核心指令

```bash
/understand                     # 分析專案、建構圖譜（增量更新）
/understand-dashboard           # 開啟互動式 Dashboard
/understand-chat "How does payment work?"  # 自然語言查詢
/understand-diff                 # 分析變更影響
/understand-explain src/auth.ts # 深入特定檔案
/understand-onboard              # 生成新人導覽
/understand-domain               # 提取業務領域知識
/understand-knowledge ~/wiki     # 分析知識庫
/understand --auto-update        # post-commit hook 自動更新
/understand --language zh        # 多語言輸出 (en/zh/zh-TW/ja/ko/ru)
```

### 分享圖譜給團隊

[⚠️ 舊筆記路徑已更新] 依 2026-09-07 README，新專案將圖譜存到 `.ua/knowledge-graph.json`；若已存在 `.understand-anything/`，繼續使用舊目錄，不需遷移。圖譜是 JSON，團隊可提交 `.ua/`，但排除 `intermediate/` 與 `diff-overlay.json` 這兩種本機暫存。大圖（10MB+）可用 git-lfs 追蹤。

初次全庫分析可能消耗大量 token，可先指定子目錄（如 `/understand src/frontend`）；之後預設只重分析變更檔案。首次未指定語言時會依對話語言詢問確認，選擇存入 `.ua/config.json` 並沿用。

### 不使用 Claude Code 檢視已生成圖譜

已分析並提交圖譜的專案，可用 Node.js ≥18 開啟獨立 viewer，不需要 LLM 或 API key：

```bash
npx https://github.com/Egonex-AI/Understand-Anything/releases/latest/download/understand-anything-viewer.tgz /path/to/analyzed/project
```

README 說明 viewer 使用含 token 的 localhost URL，從本機唯讀提供圖譜，不呼叫 LLM；這項資料不外傳描述限於 viewer，不代表初次模型分析同樣離線。

## 跟其他方案的關係

| 工具 | 定位 | 核心功能 | 平台數 |
|------|------|----------|--------|
| **Understand-Anything** | 程式碼知識圖譜 | 多 Agent + 業務邏輯 + 互動視覺化 | 17+ |
| [[colbymchenry-codegraph\|CodeGraph]] | 程式碼圖譜生成 | 自動生成依賴圖 | CLI |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | 程式碼記憶 | Knowledge Graph、tree-sitter | MCP |
| [[harness-engineering]] | Harness 工程 | Agent 配置方法论 | — |

**關鍵差異**：Understand-Anything 不只生成依賴圖，還提供 Domain 視圖（業務邏輯映射）、語意搜尋、引導式導覽、diff 影響分析、人格適應 UI，以及 Tree-sitter + LLM 混合架構保證結構可重現 + 語意有深度。

## 相關概念


← [[Knowledge-Graph]] · [[AI-Agent]] · [[code-intelligence]] · [[Coding-Agent-CLI]] · [[llm-knowledge-base]]

## 來源

- 📦 GitHub：[Egonex-AI/Understand-Anything](https://github.com/Egonex-AI/Understand-Anything)（原 [Lum1104/Understand-Anything](https://github.com/Lum1104/Understand-Anything)）
- 🌐 官網：[understand-anything.com](https://understand-anything.com/)
- 🎬 Live Demo：[understand-anything.com/demo](https://understand-anything.com/demo/)
- 📁 raw：`raw/2026-09-07-Egonex-AI-Understand-Anything.md`（本次 README 與 metadata 快照）
- 📁 raw：`raw/2026-06-20-Egonex-AI-Understand-Anything.md`（歷史版本）
- 📁 raw：`raw/2026-05-23-Lum1104-Understand-Anything.md`（原始版本）

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Egonex-AI/Understand-Anything |
| Stars | ⭐81,724（2026-09-07） |
| License | MIT |
| 收錄日期 | 2026-05-10 |
