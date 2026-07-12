---
title: AI Job Search
slug: MadsLorentzen-ai-job-search
created: 2026-07-08
updated: 2026-07-08
stars: 10898
language: TypeScript
topics:
  - claude-code
  - job-search
  - ai-agent
  - latex
  - cover-letter
  - cv
---

# AI Job Search

> ⭐10.9k · 基於 Claude Code 的 AI 求職框架——Fork 它、填入你的履歷，讓 Claude 評估職缺、客製化 CV、寫求職信、準備面試

## 快速導航
- [[Coding-Agent-CLI]]
- [[AI-Skills]]
- [[productivity]]
- [[santifer-career-ops]]


快速導航：[[Coding-Agent-CLI]] · [[AI-Skills]] · [[productivity]]

## 是什麼

AI Job Search 是一個建立在 Claude Code 之上的求職應用框架。它把 Claude Code 變成全端求職助理——從自我剖析、職缺搜尋、適配評估，到 CV 客製化和求職信撰寫，全部由 AI 驅動。你只需要 Fork 專案、填入個人資料，就能讓 Claude 幫你跑完整求職流程。

核心工作流包含三個指令：`/setup` 讓 Claude 讀取你的履歷和文件建立候選人画像；`/scrape` 搜尋多個求職平台的職缺並按適配度排序；`/apply` 則執行完整的申請流程——評估適配度、起草客製化 CV 和求職信（LaTeX）、用第二個 Agent 審稿修訂、編譯 PDF 並驗證 ATS 可讀性。

框架還提供 `/rank` 批量評分、`/expand` 從 GitHub/作品集挖掘隱藏技能、`/upskill` 分析技能缺口並生成學習計畫、`/outcome` 追蹤申請結果。雖然求職平台搜尋 Skill 目前針對丹麥市場，但整個模式設計為可替換成任何國家的求職網站。

## 核心特色

- **Drafter-Reviewer 雙 Agent 工作流**：起草 Agent 寫 CV 和求職信後，另一個 Claude Agent 用全新 context 研究公司並批評草稿，起草 Agent 再修訂。這能抓住單次寫作遺漏的關鍵字和弱框架
- **PDF 驗證迴圈**：自動編譯 LaTeX 並視覺檢查每一頁 PDF——CV 精確 2 頁、求職信精確 1 頁、無孤行標題、字型一致。發現問題就用 `\needspace`、`\enlargethispage` 等技巧修復
- **ATS 可讀性驗證**：用 `pdftotext` 提取 PDF 文字層，模擬 ATS 解析器視角驗證聯絡資訊、閱讀順序和關鍵字覆蓋率。誠實原則：不支援的關鍵字標記為缺口，絕不灌水
- **相關性加權 CV 裁切**：當 CV 超過 2 頁時，不是機械式刪最舊的內容，而是按 (a) 與目標職缺相關性 (b) 文件中獨特性 (c) 求職信是否依賴它 來評分，裁掉總分最低的行
- **多平台求職搜尋**：內建 Jobindex、Jobnet、Akademikernes Jobbank、LinkedIn 等搜尋 Skill，支援 `/add-portal` 為你的市場自動生成新的求職平台搜尋 Skill
- **完整檔案結構**：CLAUDE.md 候選人画像、Skills 目錄結構化存放 CV 範本/求職信範本/面試準備/行為画像、documents/ 資料夾管理原始文件

## 怎麼用

### 安裝

```bash
# Fork 並 clone
gh repo fork MadsLorentzen/ai-job-search --clone
cd ai-job-search

# 安裝求職搜尋工具
cd .agents/skills/jobbank-search/cli && bun install && cd ../../../..
cd .agents/skills/jobindex-search/cli && bun install && cd ../../../..
```

### 設定個人資料

```bash
claude
# 在 Claude Code 中執行：
/setup
```

`/setup` 提供三條路徑：讀取 `documents/` 資料夾（CV PDF、LinkedIn 匯出、文憑、推薦信）、匯入貼上的 CV、或訪談式引導。它會自動偵測你有的材料並建立結構化候選人画像。

### 搜尋並申請

```bash
# 搜尋職缺
/scrape

# 申請特定職缺（URL 或貼上職缺描述）
/apply https://jobindex.dk/job/1234567

# 批量評分排序
/rank
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | AI 驅動 | 雙 Agent 審稿 | ATS 驗證 | LaTeX 輸出 |
|------|-------|------|---------|-------------|---------|-----------|
| **AI Job Search** | ⭐10.9k | 求職框架 | ✅ Claude Code | ✅ | ✅ | ✅ |
| Teal HQ | — | 求職追蹤 | 部分 | ❌ | ❌ | ❌ |
| Jobscan | — | ATS 優化 | 部分 | ❌ | ✅ | ❌ |
| [[santifer-career-ops\|Career Ops]] | ⭐41.9k | AI Agent 求職 | ✅ | ❌ | ❌ | ❌ |

← [[Coding-Agent-CLI]] · [[AI-Skills]] · [[productivity]]

## 相關概念

← [[Coding-Agent-CLI] · [[AI-Skills] · [[productivity] · [[santifer-career-ops]

## 來源

- GitHub: <https://github.com/MadsLorentzen/ai-job-search>
- 原始 README: `raw/2026-07-08-MadsLorentzen-ai-job-search.md`
- 授權: MIT

---

| 項目 | 值 |
|------|-----|
| GitHub | [MadsLorentzen/ai-job-search](https://github.com/MadsLorentzen/ai-job-search) |
| Stars | ⭐10,898 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-07-08 |