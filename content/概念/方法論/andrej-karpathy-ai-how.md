---
source: https://www.bnext.com.tw/article/90650/andrej-karpathy-ai-how
date: 2026-04-28
---

# Karpathy 同款「AI 知識庫」完整拆解

> 不用 Obsidian 也能建 AI 知識庫！Nick Spisak 拆解了 Karpathy 的 LLM 知識庫方法，只要三個資料夾加一份文字檔。核心觀念：你只管把東西往裡丟，整理是 AI 的事。

## 快速導航
- 🧠 **LLM 知識庫方法** → [[llm-knowledge-base]]（我們實作的 Karpathy 方法延伸）
- 📝 **CLAUDE.md** → [[CLAUDE-md]]（知識庫的 Schema 設定檔）
- 🔧 **Context Engineering** → [[context-engineering-basics]]（管理 LLM 看到的內容）
- 🛠 **Agent Skills 生態系** → [[agent-skills-ecosystem]]（Skills 和知識庫是 Agent 兩大支柱）

## 核心內容

Andrej Karpathy 的 LLM Wiki 方法是一套極簡的 AI 知識庫建構方法，核心觀念是「你只管把東西往裡丟，整理是 AI 的事」。2026 年 4 月，Nick Spisak 拆解了 Karpathy 的方法，簡化為三個資料夾 + 一份 CLAUDE.md 設定檔的架構。

### 三層架構

- **raw/**：原始素材暫存區（文章、筆記、截圖、PDF），AI 讀但不改
- **wiki/**：AI 整理後的知識庫，由 AI 全權維護，每個主題一份 .md
- **outputs/**：AI 產出的回答、報告、分析

### 關鍵原則

1. **不整理**——人不擅長預先分類，AI 能秒級完成交叉比對
2. **Schema 品質決定一切**——CLAUDE.md 寫清楚規則是唯一的前期投入
3. **錯誤會複利**——AI 寫的錯存回知識庫會滾雪球，定期健康檢查是必要步驟
4. **工具不是重點**——資料夾結構和設定檔才是核心

### 與我們知識庫的關係

我們的知識庫系統（raw→wiki→lint→compile）正是 Karpathy 方法的完整實作：raw 是原始素材，wiki 是 AI 整理後的概念筆記，CLAUDE.md（AGENTS.md）是 Schema。差異在於我們多了 lint 層做品質檢查和交叉連結。

**來源**: 數位時代 BusinessNext
**日期**: 2026.04.15
**作者**: 李先泰
**原始拆解者**: Nick Spisak

## 系統架構：三個資料夾 + 一份設定檔

### 資料夾結構

```
my-knowledge-base/
  raw/      ← 原始素材（文章、筆記、截圖、PDF）
  wiki/     ← AI 整理後的知識庫（你不動，AI 維護）
  outputs/  ← AI 產出的回答、報告、分析
```

### CLAUDE.md 設定檔模板

```markdown
# 知識庫規則說明

## 這個知識庫是什麼
一份關於 [你的主題] 的個人知識庫。

## 資料夾結構
- raw/：原始素材暫存區，AI 不得修改
- wiki/：整理後的知識庫，由 AI 全權維護
- outputs/：AI 產出的報告、回答、分析歸檔

## Wiki 維護規則
- 每個主題建立一份獨立的 .md 檔案，放在 wiki/
- 每份 wiki 檔案開頭必須有一段摘要
- 相關主題之間用 wiki 連結格式互相連結
- wiki/ 中維護一份 INDEX.md，列出所有主題
- 當 raw/ 新增素材時，主動更新相關 wiki 文章

## 我的關注方向
[列出 3 到 5 個你希望知識庫聚焦的方向]
```

## 六步完整流程

### 第 1 步：建立三個資料夾（2 分鐘）

建一個專案資料夾，裡面放 `raw/`、`wiki/`、`outputs/` 三個子目錄。

### 第 2 步：把所有素材倒進 raw/（10 分鐘）

- 網頁文章存成 `.md` 或 `.txt`、會議紀錄、研究報告、書籤、截圖全丟進 `raw/`
- **不要整理、不要改名、不要分類**——那是 AI 的工作
- 加速收集：可用 Vercel Labs 的 agent-browser 自動擷取網頁內容

### 第 3 步：寫一份 Schema 設定檔（5 分鐘）

在專案根目錄建 `CLAUDE.md`。Schema 品質決定一切——寫得模糊，輸出就模糊。

### 第 4 步：讓 AI 編譯知識庫（15 分鐘）

- 輸入：「讀取 raw/ 裡所有內容，按照 CLAUDE.md 規則在 wiki/ 中編譯知識庫」
- AI 會建 `INDEX.md`、為每個主題建獨立 `.md`、串聯相關主題、為每份素材寫摘要
- **關鍵原則：不手動編輯 wiki/。讀和提問是你的事，維護是 AI 的事。**

### 第 5 步：提問，然後把答案存回去（持續進行）

- 當 wiki/ 超過 10 篇筆記開始提問
- 問題範例：「我對某主題的理解有哪三個最大盲點？」、「比較來源 A 和 B 的說法有什麼矛盾？」
- 把回答存進 `outputs/` 或讓 AI 更新 wiki
- **知識複利**：每次提問都讓下一次回答更精準

### 第 6 步：每月跑一次健康檢查

- 輸入：「檢查整個 wiki/，標記矛盾、找出沒解釋的主題、列出缺乏來源支持的論點」
- **錯誤會複利累積**——AI 寫的錯存回知識庫會滾雪球，健康檢查是必要步驟

## 關鍵洞見

1. **「不整理」反而有效**——人不擅長預先分類，AI 能在秒級完成交叉比對
2. **Schema 品質決定一切**——CLAUDE.md 寫清楚規則是唯一的前期投入
3. **錯誤會複利**——定期健康檢查不是選配，是必要步驟
4. **工具不是重點**——資料夾結構和設定檔才是核心

## 與 Obsidian 版本的差異

- **純資料夾版本**：最簡單，不需要額外工具
- **Obsidian 版本**：多全文搜尋、筆記互連、圖譜視覺化功能
- 核心邏輯一樣，差別只在最上層有沒有筆記 App 當介面

## 相關主題

- [[llm-knowledge-base|LLM 知識庫方法]]
- [[claude-code-boris-cherny-advanced-techniques|Claude Code 進階技巧]]
- [[agent-skills-ecosystem|Agent Skills 生態系]]

## 相關概念

- [[llm-knowledge-base|LLM 知識庫方法]] — 我們實作的知識庫系統，就是 Karpathy 方法的延伸
- [[claude-code-boris-cherny-advanced-techniques|Claude Code 進階技巧]] — Claude Code 是實作 LLM Wiki 的工具之一
- [[agent-skills-ecosystem|Agent Skills 生態系]] — Skills 和知識庫是 Agent 的兩大支柱
- [[MemPalace-mempalace|MemPalace]] — 另一種記憶系統實作，不改寫原文
- [[context-engineering-basics|Context Engineering]] — 管理 LLM 看到的內容，是知識庫設計的核心
- [[karpathy-skills|Karpathy Skills]] — Karpathy 的其他 AI 觀點

## 參考資料

- [Nick Spisak X 貼文](https://x.com/nickspisak_/status/2040448463540830705)
- [數位時代報導](https://www.bnext.com.tw/article/90650/andrej-karpathy-ai-how)
- [Karpathy LLM Wiki Gist](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)

## 來源
- raw/2026-04-28-andrej-karpathy-ai-how.md