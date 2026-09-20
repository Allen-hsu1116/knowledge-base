---
title: "Enjoy／人人都能用英語"
slug: ZuodaoTech-everyone-can-use-english
created: 2026-09-20
updated: 2026-09-20
stars: 37792
language: zh-TW
topics: ["AI-Tutoring", "self-education"]
---

# Enjoy／人人都能用英語

> ⭐37.8k · 以 Enjoy 網頁與瀏覽器工具配合英語訓練教材的 AI 語言學習專案。

## 快速導航

- [[AI-Tutoring]]
- [[self-education]]

## 是什麼

everyone-can-use-english 同時包含英語學習內容與 Enjoy 應用入口。README 將 Enjoy 定位為 AI 外語老師的助教，提供網頁版、瀏覽器插件，以及「一千小時」和《人人都能用英語》的閱讀資源。

目前 README 明確表示網頁版已上線，插件支援 YouTube 與 Netflix；新版桌面版則描述為即將發布的網頁版封裝與增強。不能因為倉庫已有 Electron 程式碼，就把新版桌面版說成已正式發布。

## 核心特色

- **網頁使用入口**：可由 enjoy.bot 直接進入產品，不必先編譯倉庫。
- **影片場景插件**：官方 README 指向 Chrome Web Store，列出 YouTube 與 Netflix 支援。
- **多種學習介面**：README 展示影片、電子書、閃卡與課程畫面；展示不等於所有功能免費。
- **系統化訓練教材**：「一千小時」涵蓋訓練任務、語音塑造與自我訓練。
- **書籍內容保留**：book/ 內有口語、語音、朗讀、詞典、語法和精讀等章節。

## 怎麼用

### 安裝與取得

一般使用者優先開啟網頁版或依官方商店安裝插件。下列 Git 指令只取得教材與原始碼，不代表已安裝完整服務。

```bash
git clone --depth 1 https://github.com/ZuodaoTech/everyone-can-use-english.git
cd everyone-can-use-english
# 教材入口：book/README.md
# 網頁版：https://enjoy.bot
```

### 建議操作流程

1. 到 enjoy.bot 使用網頁版；帳號、收費與模型條件以產品當下說明為準。
2. 需要影片學習時，透過 README 的官方 Chrome Web Store 連結安裝 Enjoy Echo。
3. 按「一千小時」訓練任務安排練習，再搭配書籍章節理解方法。

### 使用限制與核查邊界

- **版本邊界**：本文未測試登入後服務，也未實際編譯桌面端。
- **授權差異**：GitHub 倉庫 metadata 為 GPL-3.0，enjoy/package.json 另標 MIT；再利用時應按具體檔案與授權文字核查。

## 跟其他方案的關係

以下是用途與分層比較，不是實测效能排行。

| 方案 | 主要角色 | 選擇重點 |
|---|---|---|
| Enjoy | 英語學習應用與教材入口 | 把 AI 輔助放進語言學習情境 |
| 《人人都能用英語》 | 書籍章節與學習方法 | 提供閱讀內容，不等同互動式工具 |
| 「一千小時」 | 訓練任務與自我訓練材料 | 提供練習方法，與應用互補 |

## 相關概念

← [[AI-Tutoring]] · [[self-education]]

## 來源

- [GitHub](https://github.com/ZuodaoTech/everyone-can-use-english)
- README 快照：`raw/2026-09-20-ZuodaoTech-everyone-can-use-english.md`
- Metadata 快照：`raw/2026-09-20-ZuodaoTech-everyone-can-use-english.metadata.json`
- [Enjoy 網頁版](https://enjoy.bot)
- [一千小時](https://1000h.org/intro.html)
- [桌面端 package.json](https://github.com/ZuodaoTech/everyone-can-use-english/blob/main/enjoy/package.json)

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/ZuodaoTech/everyone-can-use-english |
| Stars | 37,792（2026-09-20 快照） |
| License | GPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-09-20 |
