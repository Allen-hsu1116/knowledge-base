---
title: System Design Notes
slug: liquidslr-system-design-notes
created: 2026-10-09
updated: 2026-10-09
stars: 24620
language: zh-TW
topics: [self-education, system-design, web-crawling]
---

# System Design Notes

> ⭐24.6k · 依 Alex Xu 系統設計書籍章節整理的架構學習筆記；不是 LLM 框架。

## 快速導航

- 📚 [[self-education]] — 以章節筆記建立自主學習路線。
- 🕸 [[網頁爬蟲]] — 對照第九章的 Web Crawler 設計題。

## 是什麼

System Design Notes 是 liquidslr 整理的系統設計閱讀筆記，README 明確指出內容以《System Design Interview - An Insider’s Guide》第一、二冊為基礎。它提供章節目錄、各題的資料夾與延伸閱讀連結，適合準備系統設計面試或補足後端架構基礎。

內容從擴展服務、粗略容量估算與面試框架出發，延伸到限流、一致性雜湊、Key-Value Store、訊息系統和支付等題目。README 標示筆記仍在進行中，因此不能把章節目錄當成內容完整性或正確性的保證。

本次來源是一般 GitHub Trending，而非 LLM 專屬搜尋結果。它對 AI 服務的系統工程有間接參考價值，但沒有證據顯示提供模型推論、Agent 或 RAG 功能，故歸入「學習資源」。

## 核心特色

- **沿原書章節組織**：README 列出從擴展到股票交易所的 28 個主題。
- **基礎與應用並列**：先看估算、限流與分散式儲存，再看聊天、影片、地圖和支付。
- **可直接閱讀**：主要交付物是筆記與資料夾，不必部署模型或啟動應用。
- **提供外部延伸來源**：涵蓋 Dynamo、BigTable、Discord、Slack 等論文或工程文章。
- **有網頁閱讀入口**：README 另連到 Pagefy；仍應以實際內容及原始來源核對。

## 怎麼用

### 取得筆記

這不是需要套件安裝的程式；下列指令只下載文件，並非啟動服務：

```bash
git clone https://github.com/liquidslr/system-design-notes.git
cd system-design-notes
open Readme.md
```

`open` 是 macOS 的開啟指令；其他平台可用 Markdown 編輯器閱讀 `Readme.md`。

### 建議閱讀流程

1. 先閱讀 Scaling、Back Of the Envelope Estimation 與 System Design Framework。
2. 選一個基礎題，例如 Rate Limiter，先自行列出需求與限制。
3. 對照筆記的架構，再回查 README 提供的論文或工程文章。
4. 選一個產品題，把流量、資料量、故障處理與取捨寫成自己的設計。

以上是知識庫編輯建議，並非專案提供的自動評分或實驗流程。

### 使用界線

- README 明示 work in progress，不應以 Stars 取代內容審查。
- GitHub metadata 沒有辨識到授權，根目錄亦未列出 LICENSE。
- 公開可讀不代表可以任意轉售、再散布或將書籍內容納入商業產品。
- 本次僅保存來源與整理筆記，沒有執行候選 repo 的程式。

## 跟其他方案的關係

以下比較的是資源定位，不是效能評測：

| 方案 | 主要用途 | 與本專案的差異 |
|------|----------|----------------|
| System Design Notes | 章節式架構筆記與複習 | 以原書主題為閱讀線索，內容仍在整理 |
| 原版 System Design Interview 書籍 | 原作者完整教材 | 筆記不能視為原書替代品或官方勘誤 |
| [[codecrafters-io-build-your-own-x\|Build Your Own X]] | 從零實作各式系統 | 更偏向動手重建，不是同一本書的章節筆記 |

## 相關概念

← [[self-education]] · [[網頁爬蟲]]

## 來源

- [GitHub](https://github.com/liquidslr/system-design-notes)
- [README](https://github.com/liquidslr/system-design-notes/blob/main/Readme.md)
- README 快照：`raw/2026-10-09-liquidslr-system-design-notes.md`
- Metadata 快照：`raw/2026-10-09-liquidslr-system-design-notes.metadata.json`

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/liquidslr/system-design-notes |
| Stars | 24,620（2026-10-09 快照） |
| License | 未標示；不推定為開源授權 |
| Language | 未偵測到主要程式語言；以文件為主 |
| 收錄日期 | 2026-10-09 |
