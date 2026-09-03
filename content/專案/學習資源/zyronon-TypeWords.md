---
title: TypeWords
slug: zyronon-TypeWords
created: 2026-09-03
updated: 2026-09-03
stars: 9306
language: Vue
topics: [english-learning, vocabulary, typing-practice, memorization, self-hosted]
---

# TypeWords

> ⭐9.3k · 以鍵盤輸入、聽寫、記憶曲線與錯題追蹤練習英文單字和文章的開源工具。

## 快速導航

- 🎓 **個人化學習** → [[AI-Tutoring]]（依表現調整複習內容與難度）
- 📚 **自我進修** → [[self-education]]（免費、可自行部署的語言學習資源）
- ⚡ **學習效率** → [[productivity]]（用快捷鍵、統計與回顧縮短練習迴圈）

## 是什麼

TypeWords 是一個開源英文單字與文章練習網站，核心互動不是選擇題，而是讓學習者透過鍵盤輸入、聽寫、自測與默寫反覆提取記憶。官方也提供 `typewords.cc` 線上版本。

單字模式提供跟打、聽寫、自測與拼寫回憶，智慧模式會根據記憶曲線安排內容；自由模式則讓使用者自行規劃。系統同時顯示音標、美英發音、例句、片語、同義詞、字根與詞源等資訊。

文章模式可使用內建教材或匯入自訂文章，支援翻譯、中英對照、逐句輸入與邊聽邊默寫。專案可完全在本機運行並保存資料，但跨裝置前需要手動備份。

## 核心特色

- **多種主動回憶模式**：跟打、聽寫、自測與默寫，避免只被動瀏覽單字。
- **記憶曲線排程**：智慧模式自動計算待學與待複習內容，透過聽寫加深記憶。
- **文章背誦**：逐句輸入、雙語比較與語音播放，從單字延伸到上下文。
- **錯題與掌握狀態**：錯字自動進入錯題本，已掌握單字可在後續練習略過。
- **完整詞彙資訊**：音標、發音、例句、片語、同義詞、字根、詞源與錯誤統計。
- **考試詞庫**：內建 CET、GMAT、GRE、IELTS、SAT、TOEFL、TEM 等常用詞庫。
- **開源且可本機執行**：無廣告、無強制訂閱，可自行部署與控制學習資料。

## 怎麼用

專案以 Nuxt 建構，需要 Node.js 與 pnpm。README 建議 shallow clone，因為直接下載 ZIP 可能無法正常運作：

```bash
git clone --depth 1 https://github.com/zyronon/TypeWords.git
cd TypeWords
pnpm install
pnpm run dev
# 開啟 http://localhost:5567
```

產生靜態建置：

```bash
pnpm run generate
```

若不想自行維護，也可直接使用官方網站；若在本機保存進度，換裝置前應先手動備份資料。

## 跟其他方案的關係

| 方案 | 核心互動 | 自適應複習 | 文章練習 | 可自架 |
|------|----------|------------|----------|--------|
| TypeWords | 鍵盤輸入與聽寫 | 有 | 有 | 是 |
| Anki | 間隔重複卡片 | 有 | 需自行製作 | 是／桌面程式 |
| Quizlet | 卡片與測驗 | 有 | 較弱 | 否 |
| Duolingo | 遊戲化課程 | 有 | 課程內建 | 否 |
| [[HKUDS-DeepTutor\|DeepTutor]] | LLM Agent 對話教學 | 有 | 依教材 | 是 |

TypeWords 聚焦「打出來」的主動回憶與英文語料，不是通用課程平台，也不是以 LLM 對話為中心。它可與 Anki 互補：Anki 管理跨領域卡片，TypeWords 提供更完整的英文輸入與文章默寫體驗。

## 相關概念

← [[AI-Tutoring]] · [[self-education]] · [[productivity]]

## 來源

- [GitHub：zyronon/TypeWords](https://github.com/zyronon/TypeWords)
- [線上版本](https://typewords.cc)
- [Raw README + metadata](../raw/2026-09-03-zyronon-TypeWords.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/zyronon/TypeWords |
| Stars | ⭐9,306 |
| License | GPL-3.0 |
| Language | Vue |
| 收錄日期 | 2026-09-03 |
