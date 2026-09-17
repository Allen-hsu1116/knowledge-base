---
title: "Anki"
slug: "ankitects-anki"
created: "2026-09-17"
updated: "2026-09-17"
stars: 30861
language: "Rust"
topics: ["self-education", "productivity"]
---

# Anki

> ⭐30.9k · Rust · 以主動回想與間隔重複安排複習的桌面記憶卡工具；不是 LLM 專案。

## 快速導航

- [[self-education]]
- [[productivity]]

## 是什麼

Anki 是桌面版間隔重複記憶卡軟體，依使用者對答案的回想狀況安排後續複習。它把時間集中在不熟悉的材料，而不是讓所有卡片用同樣頻率反覆出現。

此 repository 收錄電腦版原始碼；AnkiWeb、AnkiMobile 與 AnkiDroid 是相關生態系，不應混為本 repo 的所有程式碼。官方手冊也區分 note、field、card 與 deck：同一份筆記可以經不同卡片模板產生多種練習。

本次由 GitHub Trending 候選收錄，歸為一般應用與自主學習工具，而非宣稱它內建 LLM。編輯建議是把經人工核對的 AI 學習摘要轉成小型問答卡，讓知識庫負責查找脈絡、Anki 負責主動回想。

## 核心特色

- **依回想安排複習**：看完答案後評估記憶狀況，系統據此排定下次出現時間。

- **筆記與卡片分離**：利用欄位與卡片類型，從同一筆資料建立不同問答方向。

- **多媒體與排版**：支援聲音、圖片、影片與科學標記，可調整卡片版面。

- **跨裝置同步**：AnkiWeb 提供同步；桌面、iOS 與 Android 用戶端各有其定位。

- **擴充套件**：可透過 add-ons 擴充，但第三方套件的維護與相容性需另外確認。

## 怎麼用

一般使用者建議從官方網站下載對應平台安裝包。下列為開發文件提供的原始碼建置路徑，須先備妥 Rustup、N2/Ninja 與平台相依套件；不是一條免依賴的安裝捷徑。

```bash
git clone https://github.com/ankitects/anki.git
cd anki
./run
```

### 建議操作流程

1. 日常學習以正式安裝版為主，建立 deck，再加入包含題目與答案的 note。
2. 先自行回想再顯示答案，誠實選擇回想程度，而非直接翻頁。
3. 開發時使用獨立測試 profile；官方文件指出 ./run 會啟用 ANKIDEV 並停用自動備份。

### 使用限制與驗證邊界

背熟卡片不等於理解。官方手冊提醒複雜主題仍需教材、解釋與情境；AI 產生的卡片也必須先核對，避免把錯誤練得更牢。

本次僅完成來源擷取與文件整理，未安裝、啟動或評測此專案。

## 跟其他方案的關係

| 方案 | 主要定位 | 適用與限制 |
|---|---|---|
| Anki | 主動回想與複習排程 | 適合需要長期記住的精簡知識 |
| Wiki／筆記系統 | 保存長文、脈絡與交叉連結 | 適合查閱，不以安排回想為主要目的 |
| LLM 教學對話 | 即時解釋與生成練習 | 需要驗證答案；不等同 Anki 的排程系統 |

把筆記與卡片視為互補：先理解和保存來源，再挑出值得記住的問題。這是編輯建議，不是官方 LLM 整合功能。

## 相關概念

← [[self-education]] · [[productivity]]

## 來源

- GitHub：https://github.com/ankitects/anki
- README 快照：`raw/2026-09-17-ankitects-anki.md`
- Metadata 快照：`raw/2026-09-17-ankitects-anki-metadata.json`
- https://apps.ankiweb.net/
- https://docs.ankiweb.net/getting-started.html
- https://github.com/ankitects/anki/blob/main/docs/development.md
- https://github.com/ankitects/anki/blob/main/LICENSE

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/ankitects/anki |
| Stars | ⭐30,861（2026-09-17 擷取） |
| License | AGPL-3.0-or-later（含其他授權元件） |
| Language | Rust |
| 收錄日期 | 2026-09-17 |
