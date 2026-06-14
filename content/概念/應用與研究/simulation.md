---
title: 模擬
slug: simulation
stars: —
updated: 2026-06-14
language: zh-TW
---

# 模擬

> 用多 Agent 社會演化模擬來推演未來事件——從種子資訊自動建構高保真數位世界，動態注入變數觀察蝴蝶效應。

## 快速導航

- ⚡ [[AI-Agent]] · [[world-model]] · [[GraphRAG]] · [[financial-forecasting]]
- 🐟 **MiroFish** → [[666ghj-MiroFish]]（多 Agent 群體智慧預測引擎）
- 🌍 **世界模型** → [[world-model]]（模擬的底層模型支援）
- 📈 **金融預測** → [[financial-forecasting]]（模擬的重要應用場景）

## 是什麼

模擬（Simulation）在 AI 領域是指建構數位環境，讓多個具備獨立人格、記憶和行為邏輯的 Agent 在其中互動，透過社會演化觀察事件的可能走向。不同於傳統統計預測，AI 模擬強調從微觀行為湧現宏觀現象，捕捉「蝴蝶效應」和複雜系統的非線性特徵。

### 核心概念

- **種子資訊**：從真實世界的文件、新聞、數據中抽取事件、實體和關係，作為模擬的初始條件
- **Agent 人格**：每個 Agent 擁有獨立的人格特質、長期記憶和行為邏輯，能在模擬中自主決策
- **社會演化**：Agent 之間自由互動，集體行為湧現出宏觀模式
- **上帝視角**：動態注入變數（政策、事件），觀察系統反應

## 核心特色

- **從種子到圖譜**：自動從種子文件建構實體關係圖（GraphRAG），為模擬提供結構化背景知識
- **千 Agent 群體智慧**：大規模 Agent 同時運行，從微觀互動湧現宏觀預測
- **動態變數注入**：從上帝視角即時加入新變數，觀察蝴蝶效應
- **報告生成**：模擬結束後自動產生預測報告，並可與模擬中的 Agent 深度對話
- **跨領域應用**：從輿論預測到金融分析，從政策模擬到創意推演

## 怎麼用

### 模擬工作流

```
1. 圖譜建構：種子抽取 → 個體/集體記憶注入 → GraphRAG 建構
2. 環境設置：實體關係抽取 → 人格生成 → Agent 配置注入
3. 模擬運行：雙平台平行模擬 → 自動解析預測需求 → 動態記憶更新
4. 報告生成：ReportAgent 深度互動模擬環境
5. 深度互動：與模擬中任意 Agent 對話
```

### 使用 MiroFish 進行模擬

```bash
# 部署 MiroFish
git clone https://github.com/666ghj/MiroFish.git
cd MiroFish
cp .env.example .env
# 編輯 .env 填入 API 金鑰
npm run setup:all
npm run dev
# 前端：http://localhost:3000
# 後端：http://localhost:5001
```

### 常見模擬場景

- **輿論預測**：從新聞事件模擬大眾反應和輿論走向
- **金融市場**：模擬投資者行為和市場波動
- **政策測試**：零風險測試政策和公關策略
- **創意推演**：如模擬紅樓夢的失落結局

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 基礎 | 多 Agent 系統是模擬的基礎 |
| [[world-model]] | 底層 | 世界模型為模擬提供環境理解和生成 |
| [[GraphRAG]] | 建構 | GraphRAG 為模擬提供建圖基礎 |
| [[financial-forecasting]] | 應用 | 金融預測是模擬的重要應用場景 |
| [[sandbox]] | 安全 | 模擬需要在沙箱環境中運行 |

## 相關概念

← [[AI-Agent]] · [[world-model]] · [[GraphRAG]] · [[financial-forecasting]] · [[sandbox]]

## 來源

- [MiroFish 專案文件](../raw/2026-05-25-666ghj-MiroFish.md)
- [144 Personas Agent 模擬](../raw/2026-04-28-agency-agents-144-personas.md)

---

_此頁由 daily-llm-trending 自動維護_