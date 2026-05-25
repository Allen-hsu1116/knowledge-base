# Context Database

> Context Database 是專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理 Agent 所需的記憶、資源和技能。告別傳統 RAG 的碎片化儲存，走向結構化、分層、可觀察的上下文管理。

## 快速導航

- 🗄️ **OpenViking** → [[volcengine-OpenViking]]（Context Database 的開源實作）
- 📝 **概念頁** → [[openviking]]（OpenViking 的方法論分析與對比）
- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（我們的雙層結構與 Context DB 的對比）
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]（知識圖譜是另一種 context 組織方式）
- 🏛️ **MemPalace** → [[mempalace]]（宮殿索引式記憶系統）

## 解決的問題

AI Agent 開發面臨五大上下文挑戰：

| 問題 | 說明 | 傳統方案的失敗 |
|------|------|----------------|
| **碎片化** | 記憶在程式碼、資源在向量庫、技能散落各處 | 各系統互不相通 |
| **需求暴增** | 長期任務產生大量上下文 | 截斷或壓縮會遺失資訊 |
| **檢索效果差** | flat 向量搜尋缺乏全局視角 | 只能找到局部片段 |
| **不可觀察** | 隱式檢索鏈像黑盒子 | 出錯時無法除錯 |
| **記憶迭代有限** | 只有使用者互動記錄 | Agent 無法從任務中學習 |

## 核心架構

### 檔案系統範式

Context Database 的核心創新：**像管理本地檔案一樣管理上下文**。

```
context/
├── L0/          # 系統層 — 永遠載入（角色設定、技能定義）
├── L1/          # Session 層 — 按需載入（當前對話、最近任務）
└── L2/          # 長期層 — 搜尋載入（歷史記憶、資源索引）
```

### 三層載入（Tiered Context Loading）

| 層級 | 內容 | 載入方式 | Token 消耗 |
|------|------|----------|-----------|
| **L0** | 系統提示、角色設定 | 永遠載入 | 固定 |
| **L1** | 當前對話、最近任務 | 按需載入 | 中等 |
| **L2** | 歷史記憶、資源索引 | 搜尋載入 | 按需 |

### 目錄遞迴檢索

不只是向量搜尋，而是**目錄定位 + 語意搜尋**的雙重篩選：

1. 先用目錄結構縮小範圍（如 `context/programming/python/`）
2. 再用語意搜尋精確匹配
3. 支援視覺化檢索軌跡，可追蹤每次檢索的路徑

## 與其他方法的對比

| 方法 | 策略 | 代表專案 | Token 效率 | 可觀察性 |
|------|------|----------|-----------|----------|
| **Context Database** | 檔案系統 + 分層 | [[volcengine-OpenViking]] | 高（L0/L1/L2） | 高（視覺化軌跡） |
| **知識庫編譯** | raw→wiki 編譯 | [[llm-knowledge-base]] | 高（編譯後載入） | 中（雙層結構） |
| **宮殿索引** | 原文逐字 + 語意搜尋 | [[mempalace]] | 中（全文檢索） | 中（宮殿結構） |
| **知識圖譜** | 圖結構 + 節點邊 | [[safishamsi-graphify]] | 高（71.5x 縮減） | 高（互動式視覺化） |
| **增量索引** | 只索引變更 | [[cocoindex]] | 最高（delta-only） | 中 |
| **傳統 RAG** | flat 向量搜尋 | 各種 | 低（全量載入） | 低（黑盒） |

## 實作

- [[volcengine-OpenViking]] — 字節跳動開源的 Context Database
- [[openviking]] — 概念頁（含方法論對比）

## 相關專案

- [[volcengine-OpenViking]] — Context Database 的開源實作
- [[mempalace]] — 宮殿索引式記憶系統
- [[safishamsi-graphify]] — 知識圖譜工具
- [[cocoindex]] — 增量索引引擎

## 相關概念

← [[AI-Agent]] · [[LLM]] · [[Knowledge-Graph]] · [[llm-knowledge-base]] · [[openviking]]

## 來源
- 相關 GitHub/文章資料

---

_此頁由 daily-llm-trending 自動維護_