---
title: AIPOCH Open Science
slug: aipoch-open-science
created: 2026-09-07
updated: 2026-09-07
stars: 3857
language: zh-TW
topics: ["AI-Agent", "AI-Skills", "data-analysis"]
---

# AIPOCH Open Science

> ⭐3.9k · 整合科學 Agent、Python／R、資料連接器與可追溯成果的本地優先研究工作台。

## 快速導航

- [[AI-Agent]] — 相關概念與延伸閱讀
- [[AI-Skills]] — 相關概念與延伸閱讀
- [[data-analysis]] — 相關概念與延伸閱讀

## 是什麼

AIPOCH Open Science 是跨 macOS、Windows、Linux 的研究桌面應用。它以專案與 session 組織檔案、對話、工具執行及產出，支援從文獻整理、假說探索到程式執行、資料分析和視覺化的流程。

它不是新的基礎模型，而是連接不同 Agent runtime 與模型供應商的工作環境。README 列出 Claude Code、OpenCode、Codex、CodeBuddy 等 runtime 選項，以及可選的 Python／R notebook 執行環境。

其重點在可檢視與可追溯：成果以不可變版本及 checksum 儲存，Provenance 顯示實際可取得的輸入、程式、環境與對話分支證據。證據不足會標記 unavailable，不能因此把產出視為已完成科學驗證。

## 核心特色

- **專案化研究**：讓 session、附件、報告、圖表與預覽留在同一工作區。
- **成果來源追蹤**：將產出版本連結到觀察到的執行歷史、輸入及環境資料。
- **Python 與 R**：可選 notebook runtime，執行時能唯讀檢視變數名稱、型別與形狀等資訊。
- **科學 Skills**：支援檔案式研究流程、GitHub 匯入與安裝前預覽確認。
- **研究連接器**：包含 PubMed、bioRxiv、化學及基因等資料來源，工具權限可逐項設定。
- **對話分支**：改寫舊提示時建立新分支，成果仍對應實際產生它的分支。

## 怎麼用

一般研究者可下載 Releases 安裝包，再依導引設定資料位置、Agent runtime、模型及可選 notebook。原始碼開發需要 Git、Node.js 22 與 npm。

```bash
git clone https://github.com/aipoch/open-science.git
cd open-science
npm install
npm run dev
```

1. 建立研究專案，說明目標、資料、限制及驗證方式。
2. 連接模型後先通過 connection test，再附上非敏感測試資料。
3. 初次使用選 `Ask for approval`，逐一審查命令、網路與連接器請求。
4. 開啟產出的 Provenance，確認程式、資料與環境證據是否足夠。

### 使用限制

- 本地儲存不等於完全離線：模型請求會傳送必要上下文，外部連接器會送出查詢參數。
- `Full access` 會自動允許編輯、命令、網路及連接器，不適合不熟悉或敏感的工作流。
- 科學方法、結果解讀、隱私及有效性仍由研究者負責；本頁未重跑其 benchmark。

## 跟其他方案的關係

| 方案 | 定位 | 與本專案的關係 |
|---|---|---|
| Open Science | 科學研究工作台 | 將 runtime、資料連接器、notebook 及成果溯源包成專案流程 |
| Claude Code / Codex / OpenCode | Agent runtime | 是可選的執行層，不等於整個研究工作台 |
| 單獨的 Python／R notebook | 程式與資料探索 | Open Science 在執行之外加入對話、權限、Skills 及成果版本證據 |

若已有成熟研究管線，宜先測試其 provenance 是否能保留所需證據，而非只確認 Agent 能產生一份看似完整的報告。

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[data-analysis]]

## 來源

- [GitHub：aipoch/open-science](https://github.com/aipoch/open-science)
- [README](https://github.com/aipoch/open-science/blob/main/README.md)
- 原始快照：`raw/2026-09-07-aipoch-open-science.md`
- GitHub metadata 擷取日期：2026-09-07；功能描述以本次 README 為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [aipoch/open-science](https://github.com/aipoch/open-science) |
| Stars | 3,857（2026-09-07 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-07 |
