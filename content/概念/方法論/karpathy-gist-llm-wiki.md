---
source: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
date: 2026-04-28
tags: [karpathy, llm-wiki, prompt-template, knowledge-base, raw-compile-wiki-lint]
---

# Karpathy 原始 Gist：LLM Wiki 完整 prompt

> Karpathy 提出的 LLM Wiki 模式——用 LLM 增量建構和維護持久化的個人知識庫，而非每次重新檢索。知識編譯一次後持續更新，而非每次查詢重新推導。

**來源**: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
**Stars**: 5,000+
**建立日期**: 2026-04-04

## 核心觀念

傳統 RAG 的問題：每次提問，LLM 都要重新從原始文件檢索和拼湊知識，沒有積累。LLM Wiki 的做法不同——LLM 增量建構一個持久的、互相連結的 wiki，放在你和原始素材之間。新素材進來時，LLM 不只是索引它，而是讀取、提取關鍵資訊、整合進現有 wiki——更新實體頁面、修正主題摘要、標記矛盾。

**關鍵差異**：wiki 是一個持久的、複利的產物。交叉引用已經存在、矛盾已經被標記、綜合分析已經反映所有讀過的內容。

## 三層架構

| 層級 | 說明 |
|------|------|
| **Raw sources** | 原始素材，不可修改。LLM 只讀不寫 |
| **The wiki** | LLM 產生的 markdown 檔案目錄。LLM 完全擁有這層 |
| **The schema** | CLAUDE.md / AGENTS.md 設定檔，告訴 LLM 如何維護 wiki |

## 三種操作

### Ingest（攝入）
丟新素材到 raw/，LLM 讀取、摘要、更新相關頁面、更新索引。一個素材可能觸及 10-15 個 wiki 頁面。

### Query（查詢）
對 wiki 提問。LLM 搜尋相關頁面、綜合回答。好的回答可以回存為新頁面——探索也會複利。

### Lint（健康檢查）
定期讓 LLM 檢查 wiki：頁面間矛盾、過時聲明、孤立頁面、缺失的交叉引用、資料缺口。

## 索引與日誌

- **index.md**：內容導向的目錄，列出每個頁面、一行摘要和 metadata
- **log.md**：時間順序的 append-only 日誌，記錄所有 ingest、query、lint 操作

## 適用場景

- 個人目標/健康/心理追蹤
- 深度研究（論文、文章、報告）
- 讀書筆記（角色、主題、情節）
- 團隊內部 wiki（Slack、會議記錄、專案文件）
- 競品分析、盡職調查、旅行規劃、課程筆記

## 為什麼有效

維護知識庫的枯燥部分——更新交叉引用、保持摘要最新、標記矛盾——人類會放棄，但 LLM 不會。人類負責策展素材、提好問題、思考意義；LLM 負責所有書記工作。

## 工具建議

- [qmd](https://github.com/tobi/qmd)：本地 markdown 搜尋引擎（BM25 + vector + LLM re-ranking）
- Obsidian Web Clipper：網頁轉 markdown
- Obsidian graph view：視覺化 wiki 結構
- Marp：從 wiki 內容產生簡報
- Dataview plugin：查詢頁面 frontmatter

## 相關主題

- [[andrej-karpathy-ai-how|Karpathy 知識庫完整拆解]]
- [[llm-knowledge-base|LLM 知識庫方法]]
- [[agent-skills-ecosystem|Agent Skills 生態系]]

## 參考資料

- [Karpathy Gist 原文](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)