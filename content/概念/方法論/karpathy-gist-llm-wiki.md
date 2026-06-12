---



title: Karpathy 原始 Gist：LLM Wiki 完整 prompt
slug: karpathy-gist-llm-wiki
source: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
date: 2026-04-28

stars: '⭐5000'


updated: TODO
language: zh-TW
topics: []
---

# Karpathy 原始 Gist：LLM Wiki 完整 prompt

> Karpathy 提出的 LLM Wiki 模式——用 LLM 增量建構和維護持久化的個人知識庫，而非每次重新檢索。知識編譯一次後持續更新，而非每次查詢重新推導。

**來源**: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
**Stars**: 5,000+
**建立日期**: 2026-04-04

## 是什麼

Karpathy 在 2026 年 4 月公開的 LLM Wiki 系統方法論。核心觀念：讓 LLM 當「編譯器」，把原始素材增量建構成一個持久的、互相連結的 wiki，放在你和原始素材之間。新素材進來時，LLM 不只是索引它，而是讀取、提取關鍵資訊、整合進現有 wiki——更新實體頁面、修正主題摘要、標記矛盾。

**關鍵差異**：wiki 是一個持久的、複利的產物。交叉引用已經存在、矛盾已經被標記、綜合分析已經反映所有讀過的內容。這跟傳統 RAG 每次重新檢索不同——知識編譯一次後持續更新，而非每次查詢重新推導。

## 核心特色

- **三層架構**：Raw sources（不可改）→ The wiki（LLM 擁有）→ The schema（你和 LLM 共同演化）
- **三種操作**：Ingest（一個素材觸及 10-15 個 wiki 頁面）、Query（好的答案回存 wiki）、Lint（健康檢查）
- **知識複利**：每次提問都讓知識庫更強，探索也會複利
- **人類負責策展、LLM 負責書記**：人類找素材、定方向；LLM 做摘要、交叉連結、一致性維護
- **不需要 embedding-based RAG**：在中等規模（~100 來源、~數百頁）效果很好

## 快速導航

- 📝 **中文報導** → [[llm-knowledge-base-obsidian-claude-code]]（數位時代中文版）
- 🔧 **Skill 版** → [[karpathy-skills]]（標準化 SKILL.md 格式）
- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（通用知識庫方法論）
- 🛠️ **Agent 技能** → [[agent-skills-ecosystem]]（Skill 標準生態）

## 核心內容

傳統 RAG 的問題：每次提問，LLM 都要重新從原始文件檢索和拼湊知識，沒有積累。LLM Wiki 的做法不同——LLM 增量建構一個持久的、互相連結的 wiki，放在你和原始素材之間。新素材進來時，LLM 不只是索引它，而是讀取、提取關鍵資訊、整合進現有 wiki——更新實體頁面、修正主題摘要、標記矛盾。

**關鍵差異**：wiki 是一個持久的、複利的產物。交叉引用已經存在、矛盾已經被標記、綜合分析已經反映所有讀過的內容。

### 三層架構

| 層級 | 說明 |
|------|------|
| **Raw sources** | 原始素材，不可修改。LLM 只讀不寫 |
| **The wiki** | LLM 產生的 markdown 檔案目錄。LLM 完全擁有這層 |
| **The schema** | CLAUDE.md / AGENTS.md 設定檔，告訴 LLM 如何維護 wiki |

### 三種操作

1. **Ingest（攝入）**：丟新素材到 raw/，LLM 讀取、摘要、更新相關頁面、更新索引。一個素材可能觸及 10-15 個 wiki 頁面。
2. **Query（查詢）**：對 wiki 提問。LLM 搜尋相關頁面、綜合回答。好的回答可以回存為新頁面——探索也會複利。
3. **Lint（健康檢查）**：定期讓 LLM 檢查 wiki：頁面間矛盾、過時聲明、孤立頁面、缺失的交叉引用、資料缺口。

### 索引與日誌

- **index.md**：內容導向的目錄，列出每個頁面、一行摘要和 metadata
- **log.md**：時間順序的 append-only 日誌，記錄所有 ingest、query、lint 操作

### 為什麼有效

維護知識庫的枯燥部分——更新交叉引用、保持摘要最新、標記矛盾——人類會放棄，但 LLM 不會。人類負責策展素材、提好問題、思考意義；LLM 負責所有書記工作。

### 適用場景

- 個人目標/健康/心理追蹤
- 深度研究（論文、文章、報告）
- 讀書筆記（角色、主題、情節）
- 團隊內部 wiki（Slack、會議記錄、專案文件）
- 競品分析、盡職調查、旅行規劃、課程筆記

## 各框架的做法

- 👉 [[karpathy-skills]] — 標準化 SKILL.md 版本，可透過 `npx skills add` 安裝
- 👉 [[llm-knowledge-base-obsidian-claude-code]] — 數位時代中文報導版
- 👉 [[thedotmack-claude-mem]] — Claude Code 記憶壓縮系統，session 級別的知識持久化
- 👉 [[tinyhumansai-openhuman]] — OpenHuman 的 Memory Tree，直接受 Karpathy 方法啟發
- 👉 [[project-golem]] — Golem 的 lancedb-pro 向量記憶，另一種知識持久化方案
- [qmd](https://github.com/tobi/qmd) — 本地 markdown 搜尋引擎（BM25 + vector + LLM re-ranking）

## 怎麼用

### 工具建議

- **Obsidian**（免費）— 筆記桌面應用
- **Obsidian Web Clipper**（免費）— 瀏覽器擴充功能
- **Claude Code**（需 Anthropic 帳號）— 核心 AI
- **[qmd](https://github.com/tobi/qmd)** — 本地 markdown 搜尋引擎
- **Marp** — 從 wiki 內容產生簡報
- **Dataview plugin** — 查詢頁面 frontmatter

### 核心 LLM 操作

```bash
# Ingest：將新素材放入 raw/
# LLM 自動讀取 raw/ 並更新 wiki/ 中的相關頁面

# Query：對 wiki 提問
# LLM 搜尋相關頁面、綜合回答
# 好的回答可以回存為新頁面

# Lint：健康檢查
# LLM 掃描 wiki 中的矛盾、過時聲明、孤立頁面、缺失交叉引用
```

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[karpathy-skills]] | Skill 標準版 | 將此方法論封裝成可安裝的 Skill |
| [[llm-knowledge-base-obsidian-claude-code]] | 中文報導 | 本 Gist 的中文解讀版 |
| [[thedotmack-claude-mem]] | 記憶壓縮 | 互補：wiki 做持久知識，claude-mem 做 session 記憶 |
| [[tinyhumansai-openhuman]] | 桌面助手 | OpenHuman 的 Memory Tree 直接受此方法啟發 |

## 相關概念

← [[karpathy-skills]] · [[llm-knowledge-base]] · [[agent-skills-ecosystem]] · [[llm-knowledge-base-obsidian-claude-code]]

## 來源

- [Karpathy Gist 原文](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)

---

GitHub: [karpathy/gist](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) · Stars: 5,000+ · 收錄日期: 2026-04-28