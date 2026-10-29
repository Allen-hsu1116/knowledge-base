---
title: 自學是門手藝
slug: xiaolai-the-craft-of-selfteaching
created: 2026-10-29
updated: 2026-10-29
stars: 18509
language: Jupyter Notebook
topics: [self-education, Python, learning]
---

# 自學是門手藝

> ⭐18.5k · Jupyter Notebook · 以 Python 程式設計作為入口，練習閱讀、實作與自主學習的中文教材。

## 快速導航

- [[self-education]]：自主學習與刻意練習。
- [[projects]]：返回專案索引的學習資源分類。

## 是什麼

《自學是門手藝》是李笑來撰寫、以 Jupyter Notebook 發布的自學教材。它不只列出 Python 語法，而是把程式設計當成練習自學能力的具體入口，討論如何閱讀、面對不懂的概念，以及透過練習形成作品。

README 的目錄由閱讀準備、值與運算、流程控制和函數，逐步延伸到測試驅動開發、類別、正規表示式與學習習慣。讀者可以在 Notebook 中閱讀文字並操作程式，將理解轉成可觀察的結果。

這是 GitHub Trending 帶入的通用學習資源，**不是 LLM、Agent 框架或 AI 訓練教材**。它對 AI 工具使用者的關聯屬於基礎能力補充：能讀懂與驗證程式，比只接受模型回答更重要；這是本知識庫的應用解讀，不是原書對 LLM 的主張。

## 核心特色

- **以程式設計練自學**：先選擇能實作、能檢查結果的技能作為入口。
- **Notebook 形式**：章節以 `.ipynb` 發布，可結合閱讀與互動程式執行。
- **循序學習路線**：涵蓋 Python 基礎、函數、模組、測試與進階語法。
- **刻意練習與思考**：目錄設有耐心、練習、思考及處理難點的專章。
- **重視閱讀能力**：包括只靠閱讀學新技能、處理過早引用的知識等議題。
- **工具附錄**：提供 JupyterLab、VS Code 與 Git 的入門材料。

## 怎麼用

### 先在線閱讀

從 GitHub README 的目錄挑選章節，先讀前言與 JupyterLab 安裝附錄。
README 也連向 selfteaching 組織下的 Markdown 版本；本頁收錄識別仍保留原始候選 `xiaolai/the-craft-of-selfteaching`。

### 本機安裝閱讀環境

以下是本知識庫整理的標準虛擬環境方式，不是原書逐字安裝指令。
需要 Git、Python 與可用的 venv / pip；尚未在本次任務實際安裝教材環境。

```bash
git clone https://github.com/xiaolai/the-craft-of-selfteaching.git
cd the-craft-of-selfteaching
python3 -m venv .venv
source .venv/bin/activate
python -m pip install jupyterlab
jupyter lab
```

Windows 使用者需改用相應的虛擬環境啟用方式。
若 Python 發行版未提供 pip / ensurepip，先依該發行版說明準備環境，不要混用另一個 Python 的 pip。
開啟外部 Notebook 後先閱讀程式碼，再決定是否執行，避免直接執行未知內容。

### 建議練習流程

1. 先閱讀一小節，再自己重做其中的程式。
2. 改動輸入與條件，確認能解釋輸出為何改變。
3. 遇到不懂的概念，記下問題並回到文件查證。
4. 若搭配 AI 解說，仍以程式執行結果與原始文件驗證。

以上是編輯建議，不是承諾特定學習成效。

## 跟其他方案的關係

| 資源類型 | 主要用途 | 與本教材的關係 |
| --- | --- | --- |
| 自學是門手藝 | 以 Python 練習自主學習 | 將語法、實作與學習方法放在同一路線 |
| Python 官方教程 | 查證語言與基本用法 | 本教材目錄也包含官方教程相關章節，可配合閱讀 |
| LLM / Agent 專門課程 | 學模型與應用工程 | 本教材是基礎補充，不能取代模型與 Agent 課程 |
| AI 問答工具 | 即時取得解釋與範例 | 可輔助閱讀，但不能替代親自驗證與練習 |

## 相關概念

← [[self-education]] · [[projects]]

## 來源

- [GitHub：xiaolai/the-craft-of-selfteaching](https://github.com/xiaolai/the-craft-of-selfteaching)
- [README 連出的 Markdown 版本](https://github.com/selfteaching/the-craft-of-selfteaching/tree/master/markdown)
- [README 指定授權](https://creativecommons.org/licenses/by-nc-nd/3.0/deed.zh)
- README 快照：`raw/2026-10-29-xiaolai-the-craft-of-selfteaching.md`
- Metadata 快照：`raw/2026-10-29-xiaolai-the-craft-of-selfteaching.json`

---

| 欄位 | 值 |
| --- | --- |
| GitHub | https://github.com/xiaolai/the-craft-of-selfteaching |
| Stars | 18,509（2026-10-29 快照） |
| License | CC BY-NC-ND 3.0（README；GitHub license 欄位為 null） |
| Language | Jupyter Notebook |
| 收錄日期 | 2026-10-29 |
