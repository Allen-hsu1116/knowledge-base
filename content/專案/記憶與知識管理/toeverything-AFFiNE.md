---
title: "AFFiNE"
slug: toeverything-AFFiNE
created: 2026-11-20
updated: 2026-11-20
stars: 75172
language: zh-TW
topics: ["llm-knowledge-base", "self-hosted"]
---

# AFFiNE

> ⭐75.2k · 整合文件、無邊畫布與 AI 的 local-first 知識工作空間。

## 快速導航

- [[llm-knowledge-base]]
- [[self-hosted]]

## 是什麼

AFFiNE 把文件、白板與表格視為可以共同編輯的內容積木。它不是單純聊天介面，而是用來整理 wiki、簡報、數位資產及團隊知識的工作空間，README 將其定位為 Notion 與 Miro 的替代選擇。

其 local-first 設計強調資料保存在本機，同時提供跨平台客戶端、同步及即時協作。AI 是工作空間裡的輔助能力，可協助寫作、整理心智圖與產生簡報；不能把所有協作與 AI 功能都理解成完全離線。

## 核心特色

- 文件與畫布融合：文字、便利貼、網頁嵌入、資料庫與投影片可放在同一無邊畫布。

- 多模態 AI：官方展示報告、簡報、心智圖與原型生成用途。

- Local-first：保留本機資料所有權，同時支援即時同步與協作。

- 可自行部署：官方提供 self-host 文件，亦可 fork 與修改專案。

- BlockSuite 生態：README 指向底層編輯器；第三方 blocks 與插件仍須確認當前成熟度。

## 怎麼用

### 安裝與起步

```bash
git clone https://github.com/toeverything/AFFiNE.git
cd AFFiNE
```

一般使用者從官方下載頁安裝桌面客戶端；上面指令只取得原始碼，不代表完成安裝。自架須按官方 self-host 文件準備服務與環境，不應猜測 Docker 指令。

### 使用與驗證邊界

自架前需分別確認 AI 服務成本、資料傳輸與授權範圍。README 的插件願景不是所有能力已穩定發布的保證。

本頁是官方文件閱讀與收錄結果，未在本機安裝或實測此專案。

## 跟其他方案的關係

下表比較工作層次，不是效能排名或替代方案的實測結論。

| 方案 | 定位 | 選擇時的界線 |
|---|---|---|
| AFFiNE | 文件與白板融合 | 適合視覺化知識工作 |
| 純 Markdown wiki | 文字檔與版本控制 | 現有知識庫不必因此全部搬遷 |
| 獨立聊天介面 | 模型對話入口 | 與知識編輯工作空間目的不同 |

## 相關概念

← [[llm-knowledge-base]] · [[self-hosted]]

## 來源

- [GitHub 與 README](https://github.com/toeverything/AFFiNE)
- [官方使用文件](https://docs.affine.pro/self-host-affine)
- 原始快照：`raw/2026-11-20-toeverything-AFFiNE.md`
- API metadata：`raw/2026-11-20-toeverything-AFFiNE.metadata.json`
- [授權條款](https://github.com/toeverything/AFFiNE/blob/canary/LICENSE)

Stars 是收錄當日快照；安裝方式與功能以官方最新文件為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/toeverything/AFFiNE |
| Stars | 75,172 |
| License | 混合授權：一般部分 MIT；backend 與 common/native 另依 backend/server/LICENSE |
| Language | TypeScript |
| 收錄日期 | 2026-11-20 |
