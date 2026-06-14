---
title: Context Database
slug: Context-Database
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Context Database

> Context Database 是專為 AI Agent 設計的上下文資料庫，以檔案系統範式統一管理 Agent 所需的記憶、資源和技能。告別傳統 RAG 的碎片化儲存，走向結構化、分層、可觀察的上下文管理。

## 快速導航

- ⚡ [[AI-Agent]] · [[LLM]] · [[Knowledge-Graph]] · [[llm-knowledge-base]]
- 🗄️ **OpenViking** → [[volcengine-OpenViking]]（Context Database 的開源實作）
- 📝 **概念頁** → [[openviking]]（OpenViking 的方法論分析與對比）
- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（我們的雙層結構與 Context DB 的對比）
- 🕸️ **Knowledge Graph** → [[Knowledge-Graph]]（知識圖譜是另一種 context 組織方式）
- 🏛️ **MemPalace** → [[mempalace]]（宮殿索引式記憶系統）

## 是什麼

Context Database 是專為 AI Agent 設計的上下文資料庫，核心創新是**像管理本地檔案一樣管理上下文**。不同於傳統 RAG 的 flat 向量搜尋，Context Database 採用檔案系統範式——分層目錄、按需載入、視覺化檢索軌跡，讓 Agent 的記憶、資源和技能統一管理。

Context Database 解決了 AI Agent 開發的五大上下文挑戰：碎片化（記憶散落各處）、需求暴增（長期任務產生大量上下文）、檢索效果差（flat 向量搜尋缺乏全局視角）、不可觀察（隱式檢索鏈像黑盒子）、記憶迭代有限（只有使用者互動記錄）。

## 核心特色

- **檔案系統範式**：像管理本地檔案一樣管理上下文，開發者熟悉的目錄結構和路徑語義，讓上下文管理直覺且可預測
- **三層載入（Tiered Context Loading）**：L0 永遠載入（系統提示、角色設定）、L1 按需載入（當前對話、最近任務）、L2 搜尋載入（歷史記憶、資源索引），精確控制 token 消耗
- **目錄遞迴檢索**：不只是向量搜尋，而是**目錄定位 + 語意搜尋**的雙重篩選，先縮小範圍再精確匹配，支援視覺化檢索軌跡
- **可觀察性**：每次檢索都有視覺化軌跡，可以追蹤為什麼載入某段上下文，出錯時可以除錯
- **統一管理**：記憶、資源、技能統一在一個檔案系統中，告別記憶在程式碼、資源在向量庫、技能散落各處的碎片化

## 解決的問題

AI Agent 開發面臨五大上下文挑戰：

| 問題 | 說明 | 傳統方案的失敗 |
|------|------|----------------|
| **碎片化** | 記憶在程式碼、資源在向量庫、技能散落各處 | 各系統互不相通 |
| **需求暴增** | 長期任務產生大量上下文 | 截斷或壓縮會遺失資訊 |
| **檢索效果差** | flat 向量搜尋缺乏全局視角 | 只能找到局部片段 |
| **不可觀察** | 隱式檢索鏈像黑盒子 | 出錯時無法除錯 |
| **記憶迭代有限** | 只有使用者互動記錄 | Agent 無法從任務中學習 |

## 怎麼用

### Context Database 架構

```
context/
├── L0/          # 系統層 — 永遠載入（角色設定、技能定義）
│   ├── persona.md    # 角色定義
│   ├── skills/       # 技能定義
│   └── rules.md      # 行為規則
├── L1/          # Session 層 — 按需載入（當前對話、最近任務）
│   ├── conversation/  # 當前對話摘要
│   └── recent/       # 最近任務結果
└── L2/          # 長期層 — 搜尋載入（歷史記憶、資源索引）
    ├── knowledge/    # 歷史知識
    └── resources/    # 資源索引
```

### 使用 OpenViking（開源實作）

```python
# OpenViking 的 Context Database 使用方式
from openviking import ContextDB

db = ContextDB("./context")

# L0 永遠載入：系統提示和角色設定
system_context = db.load_l0()

# L1 按需載入：當前對話相關上下文
session_context = db.load_l1(task="code_review")

# L2 搜尋載入：從歷史記憶中搜尋
relevant_memory = db.search_l2(
    query="authentication best practices",
    max_tokens=2000
)

# 組合成完整上下文
full_context = system_context + session_context + relevant_memory
```

### 常見使用場景

- **長期運行 Agent**：跨 session 保持記憶，越用越懂使用者偏好
- **多任務 Agent**：不同任務載入不同的 L1 上下文
- **知識密集型任務**：從 L2 搜尋載入相關專業知識
- **除錯與審計**：視覺化檢索軌跡，追蹤上下文來源

## 跟其他方案的關係

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