# MemPalace

> 本地優先 AI 記憶系統，逐字儲存對話歷史，結構化宮殿索引 + 語意搜尋，LongMemEval 96.6% R@5 零 API 呼叫。

## 快速導航

- 📚 **記憶方法對比** → [[llm-knowledge-base]]
- 🛠 **MCP 整合** → [[project-golem]]
- 🧠 **跨 session 記憶** → [[hermes-agent]]
- 🔄 **Agent 工作流** → [[AI-Agent]]

## 是什麼

MemPalace 是一個 local-first 的 AI 記憶系統。跟 Mem0、Zep 等競品不同，它**不摘要、不提取、不改寫** — 原文逐字儲存，用結構化索引 + 語意搜尋做檢索。宮殿結構（Wings → Rooms → Drawers）讓搜尋可以限定範圍，比單純的向量搜尋更精準。所有資料留在本機，除非你選擇送出。

## 核心特色

- **宮殿隱喻索引** — Wings（人和專案）→ Rooms（主題）→ Drawers（原始內容），scoped search 取代 flat search
- **LongMemEval 96.6% R@5** — 零 API 呼叫、零雲端、零 LLM，開源 AI 記憶系統最高基準之一
- **知識圖譜** — 時序性實體關係圖，帶有效期間（validity windows），支援 add、query、invalidate、timeline 操作，底層 SQLite
- **MCP Server** — 29 個 MCP 工具涵蓋 palace 讀寫、知識圖譜操作、跨 wing 導航、drawer 管理、agent 日記，原生支援 Claude Code、Gemini CLI，有 OpenClaw 整合
- **可插拔後端** — 預設 ChromaDB，介面定義在 `mempalace/backends/base.py`，可替換後端而不動其他系統
- **Auto-save Hooks** — Claude Code hooks 定期存檔 + context 壓縮前存檔，`mempalace sweep` 存逐字 drawer

## 怎麼實現的

### 宮殿結構（Wings → Rooms → Drawers）

MemPalace 的核心架構是三層宮殿隱喻，每一層都有明確的職責：

1. **Wing（翼）= 人或專案**
   - 每個使用者、每個 Agent、每個專案各有一個 Wing
   - 搜尋時可以先鎖定 Wing，大幅縮限範圍
   - 例如：`wing:老綸`、`wing:project-A`
   - 每個專門 Agent 有自己的 wing 和日記，runtime 可透過 `mempalace_list_agents` 發現

2. **Room（室）= 主題**
   - 一個 Wing 底下依照主題分類
   - 例如：`room:API設計`、`room:效能優化`、`room:bug討論`
   - 主題分類讓搜尋可以進一步縮限到相關領域

3. **Drawer（抽屜）= 原始內容**
   - 逐字儲存（verbatim），不做摘要、不改寫
   - 每段對話原文直接存入對應的 Drawer
   - `mempalace sweep` 負責採礦：從 transcript 目錄抓取對話原文，冪等且可續傳

### 不改寫原文的關係建立

MemPalace 雖然不改寫原文，但透過兩層結構建立關係：

**結構化索引**：Wing/Room/Drawer 本身就是一種關係 — 哪個人、哪個主題、哪段原文，搜尋時先走結構再走向量。

**知識圖譜**：獨立於宮殿結構之外的時序性實體關係圖：
- 實體和關係帶「有效期間」（validity windows）
- 例如：「A 專案」→ 使用了 →「技術 X」→ 從 2026-03 到 2026-05
- 支援 add / query / invalidate / timeline 四種操作
- 底層用 SQLite，不是向量 DB
- 搜尋時可以先用知識圖譜走關係，再用向量做語意比對

### 語意搜尋流程

1. 原文存進 ChromaDB 做向量索引
2. 搜尋時先縮限到相關 Wing/Room
3. 在 Drawer 裡做語意比對
4. 這就是為什麼 R@5 能到 96.6% 不需要 LLM — 結構化索引已經大幅過濾掉無關內容

傳統 RAG 的問題：`文件 → chunk → 向量化 → flat 搜尋 → top-k → 餵給 LLM`（chunk 沒結構、flat search 雜訊多、關係丟失）

MemPalace 的流程：`原文 → 結構化索引（Wing/Room/Drawer）→ 知識圖譜（實體+關係+時間）→ 縮限範圍後語意搜尋 → 精準結果`

### 可插拔後端

- 預設 ChromaDB，但介面定義在 `mempalace/backends/base.py`
- 只要實作 backend 介面就能替換向量存儲，其他系統不用改
- 這讓你可以換成 Pinecone、Weaviate、Qdrant 等

### Auto-save Hooks

Claude Code hooks 分兩種觸發：
- **定期存檔**：按時間間隔自動把對話存進宮殿
- **Context 壓縮前存檔**：在 Claude Code 壓縮 context 之前，先 `mempalace sweep` 存逐字 drawer，防止壓縮丟失重要內容

### 效能基準

| 模式 | R@5 | 需要 LLM |
|------|-----|----------|
| Raw（純語意搜尋） | 96.6% | 否 |
| Hybrid v4（held-out） | 98.4% | 否 |
| Hybrid v4 + LLM rerank | ≥99% | 是 |

其他基準：LoCoMo R@10 88.9%（hybrid v5）、ConvoMem 92.9%（250 items）、MemBench R@5 80.3%（8,500 items）

## 怎麼用

```bash
pip install mempalace
mempalace init ~/projects/myapp

# 採礦內容到宮殿
mempalace mine ~/projects/myapp                    # 專案檔案
mempalace mine ~/.claude/projects/ --mode convos   # Claude Code sessions

# 搜尋
mempalace search "why did we switch to GraphQL"

# 載入 context 給新 session
mempalace wake-up

# 啟動 MCP server（Claude Code / Gemini CLI）
mempalace serve

# 手動存檔
mempalace sweep
```

## 跟其他方案的關係

MemPalace 的宮殿結構（Wings → Rooms → Drawers）跟 [[llm-knowledge-base]] 三層架構（raw → wiki → schema）概念相似但方向不同：
- 我們：用 LLM 當編譯器，把原始素材「提煉」成概念筆記
- MemPalace：不改寫原文，用結構化索引 + 語意搜尋做精準檢索

兩者可以互補：MemPalace 負責儲存和檢索，我們的知識庫負責概念整理和交叉連結。

### 為什麼不能當通用 RAG 替代品

1. **設計目標不同** — MemPalace 是為「對話記憶」設計的，不是「文件檢索」
   - Wing = 人/Agent，Room = 主題，Drawer = 對話內容
   - 適合「誰在什麼時候說了什麼」
   - 不適合「幫我找出公司所有關於退貨政策的文件」

2. **沒有文件解析管線** — 通用 RAG 要處理 PDF、Word、資料庫、內部 Wiki，MemPalace 的 `mine` 只吃純文字和對話紀錄

3. **縮限範圍假設強** — 搜得準是因為「知道」要搜哪個 Wing/Room，跨部門/跨系統 RAG 分類邊界沒那麼清楚

4. **更新策略不同** — MemPalace 是 append-only（對話只增不刪），文件會改版、過期、淘汰

5. **規模假設不同** — MemPalace 基準測試是數百到數千條對話，企業 RAG 是數萬到數十萬份文件

### 改善 RAG 可以從 MemPalace 借鏡什麼

1. **加結構化索引** — 不要只靠 flat vector search，先根據文件類型、部門、時間分類，縮限搜尋範圍
2. **加知識圖譜** — 把實體和關係存進圖資料庫（Neo4j、SQLite），檢索時先走圖再走向量
3. **不要過度 chunk** — 原文保留完整語境，用 metadata + 結構代替硬切
4. **加 reranking** — 檢索結果用 LLM 或 cross-encoder 重排，精準度會跳一級

| | MemPalace | 通用 RAG | 我們的知識庫 |
|---|---|---|---|
| 設計目標 | Agent 對話記憶 | 任意文件檢索 | raw→wiki 概念整理 |
| 資料來源 | 對話紀錄、程式碼 | PDF/Word/DB/API... | URL、文字素材 |
| 結構假設 | 人→主題→原文 | 需要彈性的 metadata schema | raw→wiki→schema 三層 |
| 更新模式 | append-only | 版本更新、過期淘汰 | compile 更新、lint 維護 |
| 規模 | 數千條 | 數十萬份文件 | 數十到數百篇 |

如果要改善公司的 RAG，參考 MemPalace 的**設計思路**（結構化索引 + 知識圖譜 + 縮限搜尋），而不是直接拿來用。或者把 MemPalace 當記憶層，另外搭一個文件 RAG 層，兩層互補。

[[project-golem]] 的記憶系統（lancedb-pro）是另一種記憶架構實作，[[hermes-agent]] 的跨 session 記憶跟 MemPalace 的功能互補，[[agent-persona]] 的人格設計需要記憶系統支撐。

## 相關概念

← [[llm-knowledge-base]] · [[project-golem]] · [[hermes-agent]] · [[agent-persona]]

## 來源

- raw/2026-05-02-mempalace.md
- raw/2026-05-07-mempalace-usage-discussion.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [MemPalace/mempalace](https://github.com/MemPalace/mempalace) | ⭐50,787 | MIT | 2026-05-02 |