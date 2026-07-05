---
title: MiroFish
slug: 666ghj-MiroFish
created: 2026-05-26
date: 2026-05-25
stars: 62147
repo: 666ghj/MiroFish
url: https://github.com/666ghj/MiroFish
language: Python
topics: [AI Agent, 世界模型, 群體智慧, 金融預測]
updated: 2026-06-14
---

# MiroFish

> ⭐62147

⭐ 62k · 簡潔通用的群體智慧引擎，預測萬物——用多 Agent 模擬社會演化來推演未來。

## 一句話

MiroFish 是用多 Agent 技術打造的 AI 預測引擎：從種子資訊（新聞、政策、金融訊號）自動建構高保真平行數位世界，千個獨立人格的智慧體在裡面自由互動和社會演化，你從上帝視角動態注入變數來精準推演未來軌跡。

## 快速導航

- ⚡ [[AI-Agent]] · [[world-model]] · [[financial-forecasting]] · [[AI-Agent]]

## 是什麼

MiroFish 是一個下一代 AI 預測引擎，核心技術是多 Agent 社會模擬。使用者只需上傳種子素材（數據分析報告、小說文本等）並用自然語言描述預測需求，MiroFish 就會：

1. 從種子資訊中提取實體與關係，用 GraphRAG 建構集體記憶圖譜
2. 基於圖譜為每個 Agent 生成獨立人格（Persona）、長期記憶和行為邏輯
3. 在平行數位世界中啟動多個 Agent 進行自由互動和社會演化
4. 以「上帝視角」動態注入變數，觀察蝴蝶效應
5. 由 ReportAgent 生成結構化預測報告，並支援與模擬世界深度互動

它基於 [OASIS (Open Agent Social Interaction Simulations)](https://github.com/camel-ai/oasis) 引擎驅動，由盛大集團戰略支援和孵化。

## 核心特色

- **群體智慧預測** — 千個獨立人格 Agent 同時互動，湧現出群體智慧，超越單一模型預測
- **GraphRAG 種子建圖** — 從文件自動抽取實體關係，注入集體記憶，建構社交知識圖譜
- **Persona 生成引擎** — 為每個 Agent 生成獨立人格、長期記憶、行為邏輯，非一次性 prompt
- **雙平台平行模擬** — 同時跑多個模擬場景，動態更新時序記憶，對照不同未來軌跡
- **上帝視角控制** — 動態注入變數（政策、事件、謠言），觀察蝴蝶效應和連鎖反應
- **ReportAgent 深度互動** — 模擬結束後用工具集與模擬世界互動，生成結構化預測報告
- **Docker 一鍵部署** — 支援源碼部署和 Docker Compose 一鍵啟動

## 怎麼用

### 安裝

```bash
# 方式一：源碼部署（推薦）
git clone https://github.com/666ghj/MiroFish.git
cp .env.example .env
# 編輯 .env 填入 LLM API Key 和 Zep API Key
npm run setup:all
npm run dev

# 方式二：Docker 部署
cp .env.example .env
docker compose up -d
```

### 前置需求

- Node.js 18+
- Python ≥3.11, ≤3.12
- uv（Python 套件管理器）

### 使用流程

1. 上傳種子素材（新聞、政策文件、小說文本等）
2. 用自然語言描述預測需求
3. 系統自動建構 GraphRAG → 生成 Persona → 啟動模擬
4. 從上帝視角注入變數、觀察結果
5. 透過 ReportAgent 取得預測報告

### Demo

- [線上 Demo](https://666ghj.github.io/mirofish-demo/)
- 武漢大學輿論模擬影片
- 紅樓夢佚稿推演影片

## 跟其他方案的關係

| 特性 | MiroFish | 傳統預測模型 | 單 Agent 模擬 | 社群媒體輿情分析 |
|------|----------|------------|-------------|--------------|
| 預測方式 | 多 Agent 群體智慧 | 統計/機器學習 | 單一推理鏈 | 情感分析 |
| 社會模擬 | ✅ 千人互動 | ❌ | ❌ | 部分 |
| 動態注入變數 | ✅ 上帝視角 | ❌ | ❌ | ❌ |
| 人格多樣性 | ✅ 獨立人格 | ❌ | ❌ | ❌ |
| GraphRAG | ✅ 自動建圖 | ❌ | ❌ | 部分 |
| 輸出格式 | 結構化報告 + 互動 | 數據/圖表 | 文字 | 圖表/分數 |

## 相關概念

← [[AI-Agent]] · [[world-model]] · [[financial-forecasting]] · [[AI-Agent]]

## 為什麼重要

傳統預測依賴單一模型，但社會現象來自群體互動的湧現。MiroFish 的核心創新是用 GraphRAG 建構實體關係圖，為每個 Agent 生成獨立人格和長期記憶，讓它們在平行世界中自由交互。這不只是「預測」——而是「排演未來」。從武漢大學輿論模擬到紅樓夢佚稿推演，都展示了群體智慧的預測潛力。

## 來源

- GitHub：https://github.com/666ghj/MiroFish
- Raw 檔案：`raw/2026-05-25-666ghj-MiroFish.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [666ghj/MiroFish](https://github.com/666ghj/MiroFish) |
| Stars | ⭐62147 |
| License | — |
| Language | Python |
| 收錄日期 | 2026-05-25 |
