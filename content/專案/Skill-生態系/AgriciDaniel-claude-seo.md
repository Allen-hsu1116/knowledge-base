---
title: Claude SEO
slug: AgriciDaniel-claude-seo
created: 2026-10-26
updated: 2026-10-26
stars: 20882
language: zh-TW
topics: ["AI-Skills", "AI-Agent", "網頁爬蟲"]
---

# Claude SEO

> ⭐20.9k · 把技術 SEO、內容、結構化資料與 AI 搜尋稽核封裝成 Claude Code 插件。

## 快速導航

- [[AI-Skills]]
- [[AI-Agent]]
- [[網頁爬蟲]]

## 是什麼

Claude SEO 是 AgriciDaniel 提供的 Claude Code SEO 插件，不是獨立搜尋引擎或模型。使用者交付網站網址後，可針對技術 SEO、內容品質、Schema.org、地方商家、電商與 AI 搜尋可見性進行分析。

README 描述由 26 個子技能與 19 個專業 Agent 組成，完整稽核最多平行運用 17 個 Agent。輸出重點是有優先順序的行動計畫，並附建議依據、依賴條件及驗證方式，而非只列出警告。

免費 MIT 公開版本仍需 Claude Code 與模型使用額度；選用擴充可能需要外部服務。官方展示的排名與流量案例屬專案自述，不是可普遍保證的成效；AI 搜尋評估也不能保證被引用。

## 核心特色

- **技術稽核**：檢查爬取、索引、sitemap、robots.txt、重新導向及 Core Web Vitals。

- **內容與結構化資料**：涵蓋 E-E-A-T、內容覆蓋與 Schema.org 偵測、驗證及產生。

- **AI 搜尋與 Agent readiness**：提供 GEO、AI 存取、llms.txt 與 WebMCP 等評估入口。

- **領域化 Agent 分工**：技術、內容、速度、地方商家與電商等角色協作。

- **可持續追蹤**：drift 使用 SQLite 快照比較變化，報告可保存為 Markdown，另有 PDF 產出指令。

## 怎麼用

### 安裝

以下為官方流程的操作參考；本次收錄未安裝或執行此專案。

```text
/plugin marketplace add AgriciDaniel/claude-seo
/plugin install claude-seo@agricidaniel-claude-seo
/seo setup
```

### 使用與驗證

1. 需要 Claude Code 1.0.33 或更新版本；上方指令在 Claude Code 內執行，不是 shell 指令。

2. /seo setup 準備隔離 Python runtime 與 headless browser；以 /seo doctor 檢查就緒狀態。

3. 先用 /seo page https://example.com 做單頁分析，再考慮 /seo audit https://example.com。

4. 人工核對建議與實際網站證據，修正後重跑量測；不要把評分直接當成排名保證。

### 限制與注意事項

本機執行不等於資料全程離線；網站內容可能傳至模型或外部 SEO API。只分析已獲授權的網站，啟用擴充前核對金鑰與計費。

## 跟其他方案的關係

以下是依官方 README 整理的定位比較，不是效能實測。

| 方案 | 定位 | 適用情境 |
| --- | --- | --- |
| Claude SEO | SEO 領域技能、Agent 與檢查工作流 | 有 Claude Code 且要重複網站稽核 |
| 通用 Claude Code | 提供宿主模型與工具操作能力 | 需另外提供 SEO 方法與輸出規範 |
| 手動 SEO 檢查 | 由人員選用爬蟲、瀏覽器與搜尋數據 | 適合人工複核與補足上下文 |

## 相關概念

← [[AI-Skills]] · [[AI-Agent]] · [[網頁爬蟲]]

## 來源

- [GitHub](https://github.com/AgriciDaniel/claude-seo)
- [官方 README](https://github.com/AgriciDaniel/claude-seo/blob/main/README.md)
- 原始快照：`raw/2026-10-26-AgriciDaniel-claude-seo.md`
- Metadata 快照：`raw/2026-10-26-AgriciDaniel-claude-seo.metadata.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) |
| Stars | 20,882（2026-10-26 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-10-26 |
