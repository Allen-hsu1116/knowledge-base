---
title: LLM 知識庫系統
slug: llm-knowledge-base
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# LLM 知識庫系統

> 用 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材，AI 負責整理。

## 快速導航
- 📝 **Karpathy 方法** → [[karpathy-gist-llm-wiki]]（原始 Gist）
- 🔧 **Skill 版** → [[karpathy-skills]]（標準化 SKILL.md 格式）
- 📰 **中文報導** → [[llm-knowledge-base-obsidian-claude-code]]（數位時代中文版）
- 🛠️ **記憶系統對比** → MemPalace、Project Golem、OpenViking、Hermes Agent 等

## 是什麼

LLM 知識庫系統是一種知識管理方法論，核心觀念是讓 LLM 當「編譯器」，把原始素材編譯成結構化的個人知識庫。人負責找素材、定方向、問好問題；AI 負責摘要、交叉連結、一致性維護。

這個方法論由 Andrej Karpathy 在 2026 年 4 月公開（原始 Gist），靈感來自軟體工程的 compile/lint 循環。知識庫不是一次性的，而是一個持續成長的系統：Ingest → Compile → Query → Lint → Compile → ...

**關鍵差異**：跟傳統 RAG 不同，LLM 知識庫是「編譯式」而非「檢索式」。知識編譯一次後持續更新，而非每次查詢重新推導。

## 核心特色

- **三層架構**：Raw sources（不可改）→ The wiki（LLM 擁有）→ The schema（共同演化）
- **四個 Phases**：Ingest（蒐集）→ Compile（整理）→ Query（提問）→ Lint（健康檢查）
- **知識複利**：每次提問都讓知識庫更強，探索也會複利
- **人類策展 + LLM 書記**：人類負責策展，LLM 負責所有書記工作
- **不需要 embedding-based RAG**：在中等規模（~100 來源、~數百頁）效果很好

## 核心概念

### Karpathy 方法論
Andrej Karpathy 在 2026 年 4 月公開了他的 LLM 知識庫系統，核心觀念是讓 AI 代替人做知識整理的苦工。這套系統的靈感來自軟體工程的 compile/lint 循環。

### 四個 Phases

**Phase 1: Ingest（蒐集）**
- 所有素材只進 raw/ 不改
- 工具：Obsidian Web Clipper、手動貼上、agent-browser 自動擷取
- 原則：不整理、不分類、不改名——那是 AI 的事

**Phase 2: Compile（整理/編譯）**
- LLM 讀取 raw/ 並建立結構化 wiki/
- 產出：
  - Index & Summaries：自動維護的索引
  - Concept Articles：按主題組織的筆記，帶 backlinks 和交叉引用
  - Derived Outputs：簡報、圖表、回存的問答答案

**Phase 3: Query & Enhance（提問與增強）**
- 對 wiki/ 提問，獲得跨文章的深度分析
- 關鍵洞察：問答輸出回存 wiki——每次探索都有累積
- 知識複利效應：每次提問都讓下一次回答更精準

**Phase 4: Lint & Maintain（清理與維護）**
- 掃描不一致、補充缺漏、發現新連結
- 建議值得深入探索的問題
- Linting 完成後循環回 Phase 2——wiki 持續成長

### 回饋迴圈
```
Ingest → Compile → Query → Lint → Compile → ...
```
知識庫不是一次性的，而是一個持續成長的系統。

## 實作方式

### 純資料夾版本（Nick Spisak 拆解）
不需要 Obsidian，只要三個資料夾 + SCHEMA.md：
```
my-knowledge-base/
  raw/      ← 原始素材
  wiki/     ← AI 整理的知識庫（人不動）
  outputs/  ← AI 產出的報告
  SCHEMA.md ← 規則設定檔
```

SCHEMA.md 的品質決定一切——寫得模糊，輸出就模糊。

### Obsidian 版本
額外獲得：
- 全文搜尋
- 筆記互連（backlinks）
- 圖譜視覺化（Graph View）

### 需要的工具
1. **Obsidian**（免費）— 筆記桌面應用
2. **Obsidian Web Clipper**（免費）— 瀏覽器擴充功能
3. **Claude Code**（~$20/月）— 核心 AI

## Karpathy 原始 Prompt（可直拿用）

Karpathy 的 Gist 是一份 **idea file**，設計來直接 copy-paste 給你的 LLM Agent（Claude Code、Codex、OpenCode 等）。以下是核心架構：

### 三層架構
1. **Raw sources（原始素材）**— 不可變，LLM 只讀不寫。這是你的 source of truth。
2. **The wiki（知識庫）**— LLM 擁有這層。它建頁面、更新、維護交叉連結、保持一致性。你讀；LLM 寫。
3. **The schema（設定檔）**— 告訴 LLM wiki 的結構、慣例、工作流程。這是讓 LLM 變成「有紀律的 wiki 維護者」而不是「通用聊天機器人」的關鍵。你和 LLM 共同演化這份文件。

### Operations 詳解

**Ingest**：一個素材可能觸及 10-15 個 wiki 頁面。Karpathy 建議一次 ingest 一個素材並保持參與——讀摘要、看更新、引導強調重點。

**Query**：答案可以是 markdown 頁面、比較表、Marp 簡報、matplotlib 圖表。**重點：好的答案要回存到 wiki。** 你發現的比較、分析、連結不該消失在聊天歷史裡。

**Lint**：檢查項目——
- 頁面間的矛盾
- 被新來源推翻的過時主張
- 沒有入站連結的孤立頁面
- 提到了但沒有獨立頁面的重要概念
- 缺少的交叉連結
- 可以用網路搜尋填補的資料缺口

### Index 和 Log 的設計

**index.md**（內容導向）：每頁一條，含連結、一行摘要、可選 metadata。LLM 每次都先讀 index 再深入。在中等規模（~100 來源、~數百頁）效果很好，不需要 embedding-based RAG。

**log.md**（時間導向）：append-only，格式建議：`## [2026-04-02] ingest | Article Title`，這樣 `grep "^## \[" log.md | tail -5` 就能看最近 5 筆。

### 進階工具
- **qmd**（tobi/qmd）：本地 markdown 搜尋引擎，hybrid BM25/向量搜尋 + LLM re-ranking
- **Marp**：markdown 簡報格式
- **Dataview**：Obsidian 外掛，對 frontmatter 做查詢
- **llmwiki-cli**（doum1004）：CLI 工具，處理檔案操作，LLM 透過 shell 命令操作

## 怎麼用

### 最快開始方式
1. 建立 raw/ 和 wiki/ 兩個目錄
2. 把新素材丟進 raw/
3. 讓 LLM 讀取 raw/ 並建立 wiki/ 頁面
4. 對 wiki/ 提問，好的答案回存
5. 定期 Lint 檢查矛盾和缺漏

### Schema 決定一切
SCHEMA.md 是最重要的一步：
- 寫得模糊，輸出就模糊
- 把你想要的所有格式、風格、分類規則都寫進去
- 隨著使用共同演化

### 知識複利
每次提問都回存到 wiki——你發現的比較、分析、連結不該消失在聊天歷史裡。

## 關鍵洞見

1. **「不整理」反而有效**——人不擅長預先分類，AI 能在秒級完成交叉比對
2. **Schema 品質決定一切**——設定檔是唯一的前期投入
3. **錯誤會複利**——定期 lint 不是選配，是必要步驟
4. **知識複利**——每次提問都讓知識庫更強
5. **工具不是重點**——資料夾結構和設定檔才是核心

### 記憶系統對比

不同的知識/記憶系統採取不同策略：

| 系統 | 策略 | 核心做法 |
|------|------|----------|
| **Karpathy 方法論** | 編譯式 | raw → compile → wiki → lint，LLM 當編譯器 |
| **MemPalace** | 索引式 | 原文逐字儲存 + 宮殿結構索引，不改寫 |
| **Project Golem** | 向量式 | lancedb-pro 向量記憶 + 金字塔摘要 |
| **Hermes Agent** | 建模式 | Honcho dialectic 建立使用者深層模型 |
| **OCR-Memory** | 視覺式 | 歷史軌跡渲染成圖片 + 視覺錨點檢索原文，ACL 2026 |
| **OpenViking** | 檔案系統式 | L0/L1/L2 分層載入 + 目錄遞迴檢索，Volcengine 開源 |
| **CocoIndex** | 增量索引式 | 宣告目標狀態，只跑 delta，Rust 引擎 |
| **RAGFlow** | RAG+Agent 引擎 | 深度文件理解 + 模板分塊 + 接地引用，有 OpenClaw Skill |

Karpathy 方法論重「提煉」，MemPalace 重「檢索」，兩者互補：MemPalace 負責精準找到原文，我們的知識庫負責概念整理和交叉連結。👉 詳見 [[mempalace]]、[[project-golem]]、[[hermes-agent]]

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[karpathy-gist-llm-wiki]] | 原始 Gist | 本頁方法論的直接來源 |
| [[karpathy-skills]] | Skill 版 | 將方法論封裝成可安裝的 Skill |
| [[mempalace]] | 索引式記憶 | 互補：MemPalace 重檢索，知識庫重提煉 |
| [[project-golem]] | 向量式記憶 | 另一種知識持久化方案 |
| [[volcengine-OpenViking]] | Context DB | L0/L1/L2 分層載入跟知識庫雙層結構異曲同工 |
| [[context-engineering-basics]] | Context Engineering | 知識庫是 CE 的實作——精煉後的知識取代原始資料 |

## 未來方向
從 wiki 生成合成資料來微調 LLM，把知識「燒進」權重而不只是靠 context window。

## 相關概念
- [[agent-skills-ecosystem]] — Skill 格式標準化讓知識庫方法更容易部署
- [[AI-Agent]] — AI 工作流整體趨勢
- [[agent-persona]] — Persona 設計影響知識庫整理的風格和深度
- [[mempalace]] — 宮殿索引記憶系統，跟我們的編譯式方法互補
- [[project-golem]] — 向量式記憶系統（lancedb-pro）
- [[hermes-agent]] — 建模式記憶（Honcho user modeling）
- [[ocr-memory]] — 視覺壓縮記憶（用圖片壓縮軌跡，ACL 2026）
- [[openviking]] — 檔案系統 Context DB（L0/L1/L2 分層載入）
- [[cocoindex]] — 增量索引引擎（delta-only，Rust）
- [[ragflow]] — RAG+Agent 引擎（深度文件理解 + 接地引用）

## 相關影片
- [[context-engineering-basics]] — Context Engineering：管理 LLM 看到的內容
- [[llm-internals]] — KV Cache：存下來就不用重算
- [[llm-internals]] — Positional Embedding 演進
- [[llm-internals]] — Flash Attention：少搬資料就是加速
- [[self-correction]] — AI 自我修正

## 來源
- raw/2026-04-28-llm-knowledge-base-obsidian-claude-code.md
- raw/2026-04-28-andrej-karpathy-ai-how.md
- raw/2026-04-28-karpathy-skills.md
- raw/2026-04-28-karpathy-gist-llm-wiki.md（Karpathy 原始 Gist）