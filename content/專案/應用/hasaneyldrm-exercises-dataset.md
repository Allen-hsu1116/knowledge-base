---
title: Exercises Dataset
slug: hasaneyldrm-exercises-dataset
created: 2026-07-17
updated: 2026-07-17
stars: 15034
language: HTML
topics:
  - dataset
  - exercise-database
  - fitness
  - json
  - react-native
---

# Exercises Dataset

> ⭐15k · 1,324 個健身動作的完整資料集，含動畫 GIF、縮圖、肌群分類、器材資訊和 10 種語言的步驟說明


## 快速導航
快速導航：[[data-analysis|資料分析]] · [[generative-AI|生成式 AI]] · [[self-hosted|自架]]

## 是什麼

Exercises Dataset 是一個包含 1,324 個健身動作的完整資料集，每個動作都附有動畫 GIF、180×180 縮圖、肌群分類、器材資訊和 10 種語言的步驟說明。它是 LogPress AI 健身追蹤 App 的資料層，也可以直接嵌入到任何健身應用中。

資料集涵蓋上臂（292）、上腿（227）、背部（203）、腰部（169）、胸部（163）、肩膀（143）、小腿（59）、前臂（37）、有氧（29）、頸部（2）等身體部位，以及多種器材類型和運動分類。每筆記錄包含唯一 ID、名稱、類別、目標肌群、協同肌群、所需器材和詳細步驟說明。

資料集提供 JSON Schema（Draft 2020-12）規範所有欄位的型別和約束，可用任何標準 JSON Schema 驗證器驗證。同時附帶互動式瀏覽器和開發者設定指南，讓整合變得簡單。

## 核心特色

- **1,324 個完整動作記錄**：每個動作包含 ID、名稱、類別、目標肌群、協同肌群、器材、步驟說明，結構化程度高
- **動畫 GIF + 縮圖**：每個動作都有 180×180 動畫 GIF 和縮圖（媒體版權 © Gym visual，已獲授權使用）
- **10 種語言步驟說明**：英文、西班牙文、義大利文、土耳其文、俄文、中文、印地文、波蘭文、韓文、法文
- **JSON Schema 規範**：提供 Draft 2020-12 JSON Schema，可驗證資料集或自訂新增項目
- **開發者設定指南**：附帶 SQL（SQL Server、PostgreSQL、MySQL、SQLite）和 API 整合範例（JS、Python、C#、Java、PHP、Go、cURL），以及 LLM prompt 一鍵生成 REST API
- **互動式瀏覽器**：`index.html` 提供即時搜尋、分類篩選、無限滾動的動作瀏覽器，無需伺服器

## 怎麼用

```bash
# 克隆資料集
git clone https://github.com/hasaneyldrm/exercises-dataset.git

# 資料位於 data/exercises.json
# 可直接在後端使用：

# Python 範例
import json
with open('data/exercises.json') as f:
    exercises = json.load(f)
    print(f"載入 {len(exercises)} 個動作")

# 或用 setup.html 生成 SQL INSERT 語句
# 直接在瀏覽器中開啟 setup.html，選擇資料庫類型
```

互動式瀏覽器：直接在瀏覽器中開啟 `index.html` 即可使用，無需伺服器。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心差異 |
|------|-------|------|----------|
| **Exercises Dataset** | ⭐15k | 健身資料集 | 1,324 動作 + GIF + 10 語言，開箱即用 |
| ExerciseDB API | — | 商業 API | 付费 API 服務，Exercises Dataset 開源免費 |
| wger | ⭐— | 開源健身 | 開源健身追蹤器 + 運動資料庫，含 API |
| [[data-analysis\|資料分析]] | — | 概念 | 資料集分析的通用方法 |

← [[data-analysis|資料分析]] · [[generative-AI|生成式 AI]] · [[self-hosted|自架]]

## 來源

- GitHub: <https://github.com/hasaneyldrm/exercises-dataset>
- LogPress App: <https://github.com/hasaneyldrm/logpress-public>
- 原始 README: `raw/2026-07-17-hasaneyldrm-exercises-dataset.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [hasaneyldrm/exercises-dataset](https://github.com/hasaneyldrm/exercises-dataset) |
| Stars | ⭐15,034 |
| License | MIT + 媒體授權條款 |
| Language | HTML |
| 收錄日期 | 2026-07-17 |