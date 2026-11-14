---
title: Graphify (Graphify-Labs)
slug: Graphify-Labs-graphify
created: 2026-08-09
date: 2026-08-09
updated: 2026-11-15
stars: 147623
language: Python
topics: [Knowledge Graph, RAG, MCP, AI Skills, Code Intelligence]
source: https://github.com/Graphify-Labs/graphify
default_branch: v8
source_commit: 52cb28218eea0c68d80a9f4b2ae102d2fa63e267
release: v0.9.108
---

# Graphify (Graphify-Labs)

> 將程式碼及文件映射成可追蹤來源的知識圖譜，以本地 AST 解析建立結構，再透過 CLI、AI assistant skill 或 MCP 查詢；不以向量資料庫為必要條件。

## 快速導航

- 🕸️ **知識圖譜** → [[Knowledge-Graph]]
- 🔍 **檢索與上下文** → [[rag|RAG]]
- 🛠️ **AI Skills** → [[AI-Skills]]
- 🧩 **程式碼智慧** → [[code-intelligence|Code Intelligence]]

## 是什麼

Graphify 是 Graphify Labs 維護的開源知識圖譜工具，官方 Python 套件名稱是 **`graphifyy`（雙 y）**，CLI 指令則是 `graphify`。它能解析程式碼、SQL schema、設定與文件等專案材料，產生可查詢的 `graph.json`、互動視覺化及架構報告。使用者可在 coding assistant 呼叫 `/graphify .`，也能在終端機使用查詢指令。

核心區分是「結構關係」與「語意抽取」：程式碼透過 tree-sitter AST 在本地處理，不需要 LLM；文件、PDF、圖片及影音轉錄後的語意分析可能使用 assistant 的模型或設定的 backend。`EXTRACTED` 表示來源中明示的關係，`INFERRED` 表示經解析／推導得到的關係，**並不代表每條 INFERRED 邊都由 LLM 生成，也不是正確性的保證**。

**名稱沿革修正：**截至 2026-11-15，GitHub API 查詢 `safishamsi/graphify` 會解析到 `Graphify-Labs/graphify`，不是兩個可直接比較的獨立專案。保留舊筆記 [[safishamsi-graphify]] 作為歷史入口，不再沿用「不同作者版本」的說法；本頁 slug 與收錄日期不變。

## 核心特色

- **本地程式碼圖譜**：README 宣稱約 40 種程式語言的跨檔 `calls`、`imports`、`inherits`、`mixes_in` 關係；這是文件所述範圍，不代表每種語言的語法都能完整解析。
- **可追蹤的查詢**：`query` 回傳限定範圍的子圖，`path` 追蹤兩節點間的連接，`explain` 列出節點來源與關係；路徑整體信心取決於最弱的一跳。
- **架構與設計理由**：高連接度節點、社群、`# NOTE:`／`# WHY:` 註解，以及 ADR/RFC 引用可協助理解模組與設計原因。
- **社群與視覺化有明確限制**：Leiden 需額外安裝 `leiden` extra，未安裝時會退回 NetworkX Louvain；`export html` 預設 5,000 節點門檻，超過時採社群聚合視圖，不能把「互動式」理解成不限規模。
- **增量及團隊工作流**：提供 `--update`、watch extra、git hook、PR dashboard／triage 與圖譜合併；hook 的 commit／checkout 更新不能代替 `git pull` 後的 `graphify update .`。
- **圖譜格式可辨識**：保存的圖含 `graph.schema_version` 與 `graph.graphify_version`，供整合端識別格式及產生版本。
- **CLI skill 與 MCP 分開**：`graphify install` 安裝 assistant 整合，**不等於建立 MCP 連線**。MCP 要使用連線實際提供的工具，且可能服務不同於本地目錄的圖譜。
- **平台與專案範圍**：支援 Claude Code、Cursor、Codex、Gemini CLI 等；可用 `--project` 將 skill 寫入專案，而不是使用者設定目錄。各平台的 hooks、指令檔和並行支援不同。

### 隱私、成本與評測界線

純程式碼抽取可離線運作；混合資料夾若要跳過需模型處理的文件，可使用 `--code-only`。README 說明 `GRAPHIFY_BACKEND=none` 可停用 LLM backend，`--backend` 或 `GRAPHIFY_BACKEND` 可明確選擇資料送往哪個服務。**本地 AST 不等於 assistant 後續問答、文件語意分析也完全不出網或不花 token。**

README 表示不蒐集 telemetry，但查詢預設仍寫入本地 `~/.cache/graphify-queries.log`（問題、corpus、時間等；預設不保存完整子圖回應）。可設 `GRAPHIFY_QUERY_LOG_DISABLE=1` 停用；處理機密問題時應檢查這項本地紀錄。

官方 README 自報 LOCOMO（n=300）recall@10 為 0.497、QA accuracy 為 45.3%，LongMemEval-S（n=50）QA accuracy 為 76%（與 dense RAG 同分）。這些是特定測試設定下的上游結果，本次沒有重跑，**不能概括為所有任務領先**，也不應把建圖零 LLM credits 擴張成完整流程零成本。

## 怎麼用

以下是固定 SHA README 支援的操作範例，供讀者執行；本次更新僅查閱來源，**沒有安裝或執行上游程式**。

### 1. 安裝 CLI 與 assistant skill

需 Python 3.10+，官方建議 uv 或 pipx 的隔離環境：

```bash
uv tool install graphifyy
# 替代方式：pipx install graphifyy
graphify install
```

若希望由專案管理整合檔，選擇專案範圍安裝：

```bash
graphify install --project
graphify install --project --platform codex
```

這些命令會寫入 skill／平台設定；請先確認範圍。README 同時提到自動偵測與裸指令預設單一平台（Claude Code）的行為，非 Claude 平台建議明確指定 `--platform`，不要假設一次安裝會啟用所有平台。Codex 使用 **`$graphify`** 而不是 `/graphify`；需要並行抽取時，README 另要求 Codex 設定的 `[features]` 啟用 `multi_agent = true`。

### 2. 在 assistant 建圖或更新

```text
/graphify .
/graphify ./docs --update
/graphify . --no-viz
/graphify . --wiki
/graphify add https://arxiv.org/abs/1706.03762
```

`--wiki` 是從圖譜產生 Markdown wiki 的功能，不能視為已驗證的完整知識庫同步或部署流程。PDF、影音、Office、MCP 等能力依需求安裝對應 extra，例如 `graphifyy[pdf]`、`graphifyy[video]`、`graphifyy[office]`、`graphifyy[mcp]`。

### 3. 在終端機查詢

```bash
graphify query "what connects auth to the database?"
graphify path "FastAPI" "ModelField"
graphify explain "APIRouter"
graphify update .
```

這些節點名稱來自官方範例，需要自己的圖中有對應節點，不是通用固定輸出。名稱符合多個節點時工具會列候選而非直接猜測；README 記載答案／歧義／無匹配的 exit code 分別為 `0`／`3`／`4`。

基本輸出：

```text
graphify-out/
├── graph.html       互動式節點搜尋、篩選
├── GRAPH_REPORT.md  關鍵概念、社群、路徑與建議問題
└── graph.json       可重複查詢的完整圖譜
```

### 4. 專案設定與排除

Graphify 遵守 `.gitignore`，也支援 `.graphifyignore` 與 `--exclude`。`--no-gitignore` 只繞過 VCS ignore，不會停用另外兩者。可在掃描根目錄放置 `.graphifyrc`，明確宣告歧義副檔名及查詢預設：

```ini
# .inc 在此專案代表 PHP，避免解析成錯誤語言
language.inc=php
query_budget=4000
query_depth=3
```

CLI 明確給定 `--budget`／`--depth` 會覆蓋各自的專案設定；這些設定不會改變 MCP server 的預設值。

## 跟其他方案的關係

以下是用途對照，不是本次實測排名；不沿用舊頁對其他專案語言數、向量庫及成本的未核實斷言。

| 方案／入口 | 與本頁的關係 | 選擇重點 |
|---|---|---|
| **Graphify 開源 CLI／skill** | 本地抽取、圖譜檔案、assistant 整合 | 需要可追蹤的程式結構與限定範圍圖查詢 |
| Graphify MCP 連線 | 同一生態的另一種查詢入口 | 依 server 列出的工具及所服務圖譜操作，不與 CLI 安裝混為一談 |
| Graphify Cloud | README 另列的託管產品 | 官方宣傳跨 repo、持續更新、形式驗證、Sentry/Jira 整合；不推定開源安裝已具備相同服務，也未驗證其「省 80% token」行銷數字 |
| [[safishamsi-graphify\|舊 Graphify 筆記]] | 舊 GitHub 名稱現解析到本官方 repo | 歷史閱讀入口，不是競品或不同作者版本 |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | 既有程式碼智慧／MCP 相關筆記 | 比較整合介面與工作流，詳細能力應看該專案自己的來源 |
| [[rag\|RAG]] | 較廣義的檢索增強方法 | Graphify 提供結構圖檢索；RAG 並不必然要求向量資料庫，兩者不是互斥分類 |

## 相關概念

← [[Knowledge-Graph]] · [[rag]] · [[AI-Skills]] · [[code-intelligence]]

## 來源

- [官方 GitHub repository](https://github.com/Graphify-Labs/graphify)；2026-11-15（Asia/Taipei，CST）查核 metadata、預設分支、HEAD 與 latest release。
- [本頁依據的固定 SHA README](https://github.com/Graphify-Labs/graphify/blob/52cb28218eea0c68d80a9f4b2ae102d2fa63e267/README.md)；功能、指令、限制與隱私說明以此快照為準。
- [最新正式 release：v0.9.108](https://github.com/Graphify-Labs/graphify/releases/tag/v0.9.108)，發布時間 `2026-11-12T21:48:11Z`。此版說明包含 C#／Java／SQL 解析修正、路徑選擇、報告成本保留、stale graph hook、MCP reload 與 query heritage filter 修正，AST cache schema 升至 45。
- [GitHub repository API](https://api.github.com/repos/Graphify-Labs/graphify)；[舊名稱 API](https://api.github.com/repos/safishamsi/graphify) 查詢回傳相同 canonical repository。
- [官方使用文件](https://docs.graphify.com)與 [PyPI graphifyy](https://pypi.org/project/graphifyy/) 為後續操作入口；本次未安裝套件或驗證 PyPI 發布內容。
- 完整不可變 README 快照：`raw/2026-11-15-Graphify-Labs-graphify-52cb28218eea.md`。
- Metadata／release 原始回應：`raw/2026-11-15-Graphify-Labs-graphify-52cb28218eea-metadata.json`。
- 舊快照保留：`raw/2026-08-09-Graphify-Labs-graphify.md`。

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/Graphify-Labs/graphify |
| Stars | ⭐147623（2026-11-15 查核，會變動） |
| 主要語言／授權 | Python／Apache-2.0（GitHub metadata 與 README） |
| 預設分支 | `v8`（分支名稱，不是 release 版本號） |
| 分支 HEAD SHA | `52cb28218eea0c68d80a9f4b2ae102d2fa63e267` |
| 最新正式 release | `v0.9.108`，此次 tag 解析到與 HEAD 相同的 SHA |
| 收錄／更新日期 | 2026-08-09／2026-11-15（CST） |
| 驗證範圍 | 官方來源唯讀查核；未安裝、執行或重跑 benchmark |
