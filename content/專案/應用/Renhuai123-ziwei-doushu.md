---
title: 紫微斗數開源排盤引擎
slug: Renhuai123-ziwei-doushu
created: 2026-10-24
updated: 2026-10-24
stars: 6863
language: zh-TW
topics: [rag, self-hosted]
---

# 紫微斗數開源排盤引擎

> ⭐6.9k · TypeScript 排盤引擎、Next.js Demo 與命理文本資料集；AI API 和商業版斷語庫不在開源範圍。

## 快速導航

- [[rag]] — 官方將資料集列為可用的檢索來源，但不附完整 RAG 管線。
- [[self-hosted]] — 可本地執行排盤 Demo，不能直接複製線上商業版。

## 是什麼

Renhuai123/ziwei-doushu 以倪海廈《天紀》體系整理紫微斗數排盤演算法、四化與格局規則，另附古籍文本和最小可運作的網頁介面。核心引擎位於 `lib/ziwei/`，前端採 Next.js 16 與 TypeScript。

專案也在 Releases 發布結構化命盤與解讀資料，README 將小模型微調及 AI 對話 RAG 列為用途。v4.0 解讀由排盤引擎與斷語庫確定性生成，不經 AI；因此它是領域資料來源，不是已訓練模型或完整的 AI 問答服務。

開源與商業站有明確落差：後端 API、AI prompts、正式斷語庫、會員支付與商業 UI 不公開。命理文本是傳統文化資料，不能視為經科學驗證的預測，更不能拿來做健康診斷或投資決策。

## 核心特色

### 1. 可配置的排盘口徑

包含真太陽時、中國夏令時、閏月與晚子時處理，以及可切換的星曜亮度流派；比單純出生時間輸入更需要版本與設定紀錄。

### 2. 引擎與網頁 Demo 分離

排盤與命盤展示直接在瀏覽器使用本地引擎，不需 API Key；AI 解讀與合盤 AI 分析則必須自行實作後端。

### 3. 可作研究語料的解讀資料集

官方 v4.0 規格為 674,976 張命盤、8,774,688 段解讀，按年份提供 JSON Lines 壓縮檔。這是作者提供的規模，並非本次下載全量重新統計。

### 4. 古籍與來源線索

包含古籍原文與帶時間碼的《天紀》語料，適合研究引用追溯；不同素材有不同授權，不能一律套用程式碼 MIT。

### 5. 型別檢查與回歸測試

README 提供 `npm run typecheck`、`npm test`，CI 在 push 與 PR 執行；測試通過僅代表程式規則一致，不證明命理判斷有效。

## 怎麼用

以下為官方 README 的本地 Demo 流程。本次只收錄文件，沒有安裝套件、執行應用或下載大型資料集。

```bash
git clone https://github.com/Renhuai123/ziwei-doushu.git
cd ziwei-doushu
npm install
npm run typecheck
npm test
npm run dev
```

### AI 與資料使用注意事項

- 純排盤不需環境變數或 API Key；只有自行實作 API 後才評估 `.env.example`。
- `/api/interpret`、`/api/heming` 不包含在開源版，填入金鑰不會自動啟用。
- `db-analysis.ts` 是占位實作，Demo 不會輸出商業站完整解讀。
- v4.0 資料生成於 2026-10-15；10-20 預設亮度口徑已變更，不能假設最新引擎與資料完全一致。
- v3.0 有不存在日期產生的重複樣本問題；若做訓練或評測，需先檢查版本與清理策略。
- 健康、財運等內容僅作文化文本研究，不應包裝成醫療或投資建議。

## 跟其他方案的關係

| 方案 | 定位 | 使用邊界 |
| --- | --- | --- |
| 開源引擎與 Demo | 本地排盤、命盤展示、古籍瀏覽 | 缺少 AI API、正式斷語與會員系統 |
| v4.0 解讀資料集 | 確定性生成的命理文本快照 | 可作語料；不是模型，也不證明預測可靠 |
| 線上商業版 | 作者維運的完整產品 | UI、後端與 prompts 不在本倉庫開源範圍 |
| 自建 RAG 管線 | 對領域資料檢索後生成回答 | embedding、檢索、引用與安全限制須另行實作 |

## 相關概念

← [[rag]] · [[self-hosted]]

## 來源

- [GitHub：Renhuai123/ziwei-doushu](https://github.com/Renhuai123/ziwei-doushu)
- [v4.0 資料發布](https://github.com/Renhuai123/ziwei-doushu/releases/tag/v4.0-13d)
- [資料授權](https://github.com/Renhuai123/ziwei-doushu/blob/main/DATASET-LICENSE)
- README 快照：`raw/2026-10-24-Renhuai123-ziwei-doushu.md`
- GitHub metadata：`raw/2026-10-24-Renhuai123-ziwei-doushu-metadata.json`

---

| Metadata | 值 |
| --- | --- |
| GitHub | [Renhuai123/ziwei-doushu](https://github.com/Renhuai123/ziwei-doushu) |
| Stars | 6,863（2026-10-24 快照） |
| License | 程式 MIT；資料 CC BY 4.0；倪師語料另採 CC BY-NC-SA 4.0，且不在資料授權範圍 |
| Language | TypeScript（程式）；zh-TW（本頁） |
| 收錄日期 | 2026-10-24 |
