---
title: free-for.dev
slug: ripienaar-free-for-dev
created: 2026-08-23
updated: 2026-08-23
stars: 133911
language: HTML
topics: [free-for-developers, awesome-list, free-software, developer-infrastructure]
---

# free-for.dev

> ⭐133.9k · 為開發者與 DevOps 工作者整理 SaaS、PaaS、IaaS 等長期免費方案的社群策展清單。

## 快速導航

- 💸 **免費開發資源** → [[free-software]]（理解免費方案、開源與零成本工具的差異）
- 🧱 **開發基礎設施** → [[self-hosted]]（比較代管免費層與自行架設的取捨）
- 📚 **自主學習** → [[self-education]]（用低成本資源建立實作環境）

## 是什麼

free-for.dev 是一份由社群長期維護的開發者免費服務清單，集中整理 SaaS、PaaS、IaaS、API、資料庫、監控、CI/CD、網域與雲端運算等產品的免費額度。它處理的是「免費方案分散在不同供應商頁面，難以快速比較」的資訊發現問題。

這個清單特別面向系統管理員、DevOps 與基礎設施開發者，而不是收錄所有一般消費型免費軟體。內容由 1600 多位貢獻者透過 Pull Request、審查與持續修訂共同維護，因此也能反映免費額度的變更與服務退場。

收錄門檻相對明確：必須是真正的 free tier，而非短期試用；若免費額度有時間限制，至少應維持一年。專案也從安全角度審查服務，不接受把 TLS 等基礎安全能力鎖在付費層後的方案。

## 核心特色

- **廣泛的基礎設施分類**：涵蓋主要雲端、IaaS、PaaS、BaaS、資料庫、儲存、CDN、DNS、CI/CD、監控、日誌與安全服務。
- **清楚的收錄邊界**：聚焦 as-a-Service 產品，不把可自行架設的軟體混入同一張清單，降低選型時的語意混亂。
- **長期免費而非短期試用**：要求方案具有可持續使用的免費層，讓 PoC、學習專案與小型服務能真正落地。
- **逐項列出額度限制**：條目通常直接標示請求數、儲存量、運算時間、席次或流量，便於快速篩選。
- **涵蓋生成式 AI 資源**：獨立整理 Generative AI 類別，也在雲端供應商段落記錄 AI Studio、模型 API 與 Notebook 額度。
- **大型社群維護**：1600+ 貢獻者持續更新已變更或退場的服務，降低完全依賴單一作者的維護風險。

## 怎麼用

最直接的方式是在網站或 GitHub README 依目錄跳到需要的分類，再到供應商官網確認目前方案。免費層可能隨時調整，正式採用前仍應重新核對價格頁、地區限制、信用卡需求與超額計費規則。

若希望離線搜尋、提交修正或製作自己的篩選版本，可以複製儲存庫：

```bash
git clone https://github.com/ripienaar/free-for-dev.git
cd free-for-dev
# 使用編輯器搜尋 Generative AI、CI and CD、Monitoring 等分類
```

建議選型流程：

1. 先依工作負載選分類，例如託管資料庫、物件儲存或 Generative AI。
2. 比較免費額度、有效期間、地區、網路輸出與超額後的價格。
3. 到官方定價頁確認資訊仍有效，不把策展清單當作合約依據。
4. 為測試帳號設定預算告警與用量上限，避免免費額度用完後意外計費。

## 跟其他方案的關係

| 方案 | 主要內容 | 收錄對象 | 是否偏向 AI | 使用方式 |
|---|---|---|---|---|
| **free-for.dev** | 開發者服務免費層 | SaaS／PaaS／IaaS | 部分分類涵蓋 | 瀏覽與篩選清單 |
| [[Axorax-awesome-free-apps\|Awesome Free Apps]] | 免費應用程式 | 一般軟體與工具 | 非主要焦點 | 尋找可直接使用的 App |
| [[DigitalPlatDev-FreeDomain\|FreeDomain]] | 免費網域 | 單一資源類型 | 否 | 申請或管理網域 |
| [[codecrafters-io-build-your-own-x\|Build Your Own X]] | 實作教學清單 | 學習專案 | 部分涵蓋 | 跟著教程自行建構 |
| [[microsoft-generative-ai-for-beginners\|Generative AI for Beginners]] | 生成式 AI 課程 | 教學與程式範例 | 是 | 依章節學習與實作 |

free-for.dev 與 Awesome Free Apps 都是策展型專案，但前者關注「開發服務的免費額度」，後者更偏向一般使用者可直接安裝或使用的免費應用。它也不同於自架軟體目錄：清單刻意只收 as-a-Service，因此在資料控制與長期成本上，仍需搭配 [[self-hosted]] 的觀點評估。

## 相關概念

← [[free-software]] · [[self-hosted]] · [[self-education]]

## 來源

- GitHub：https://github.com/ripienaar/free-for-dev
- 原始 README 與 metadata：`raw/2026-08-23-ripienaar-free-for-dev.md`
- 注意：免費額度會變動，實際採用前應以各供應商官方定價頁為準。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/ripienaar/free-for-dev |
| Stars | ⭐133,911 |
| License | 未標示 |
| Language | HTML |
| 收錄日期 | 2026-08-23 |
