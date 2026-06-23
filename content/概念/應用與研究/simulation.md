---
title: 模擬
slug: simulation
language: zh-TW
---

# 模擬

> 用多 Agent 社會演化模擬來推演未來事件——從種子資訊自動建構高保真數位世界，動態注入變數觀察蝴蝶效應。

## 核心內容

模擬（Simulation）在 AI 領域是指建構數位環境，讓多個具備獨立人格、記憶和行為邏輯的 Agent 在其中互動，透過社會演化觀察事件的可能走向。不同於傳統統計預測，AI 模擬強調從微觀行為湧現宏觀現象，捕捉「蝴蝶效應」和複雜系統的非線性特徵。

模擬的核心概念包括種子資訊（從真實世界的文件、新聞、數據中抽取事件、實體和關係作為初始條件）、Agent 人格（每個 Agent 擁有獨立的人格特質、長期記憶和行為邏輯）、社會演化（Agent 之間自由互動，集體行為湧現出宏觀模式）和上帝視角（動態注入變數如政策和事件，觀察系統反應）。

模擬工作流從圖譜建構開始：種子抽取 → 個體/集體記憶注入 → GraphRAG 建構 → 實體關係抽取 → 人格生成 → Agent 配置注入 → 雙平台平行模擬 → 自動解析預測需求 → 報告生成 → 與模擬中 Agent 深度互動。應用場景涵蓋輿論預測、金融市場模擬、政策測試和創意推演。

## 關鍵要素

- **從種子到圖譜**：自動從種子文件建構實體關係圖（GraphRAG），為模擬提供結構化背景知識
- **千 Agent 群體智慧**：大規模 Agent 同時運行，從微觀互動湧現宏觀預測
- **動態變數注入**：從上帝視角即時加入新變數，觀察蝴蝶效應
- **報告生成**：模擬結束後自動產生預測報告，並可與模擬中的 Agent 深度對話
- **跨領域應用**：從輿論預測到金融分析，從政策模擬到創意推演

## 各框架的做法

- **MiroFish** → 多 Agent 群體智慧預測引擎，用 GraphRAG 建構實體關係圖進行社會模擬
  👉 詳見 [[666ghj-MiroFish|MiroFish]]
- **Agency Agents 144 人格** → 開源人格庫，為模擬提供多樣化的 Agent 人格
  👉 詳見 [[agency-agents-144-personas|Agency Agents 144 人格]]
- **TradingAgents** → 多 Agent 交易模擬，LLM 驅動的金融市場預測
  👉 詳見 [[TauricResearch-TradingAgents|TradingAgents]]
- **NVIDIA Cosmos** → 世界模型平台，為機器人和自駕車提供物理模擬環境
  👉 詳見 [[NVIDIA-cosmos|NVIDIA Cosmos]]

## 相關概念

- [[AI-Agent|AI Agent]] — 多 Agent 系統是模擬的基礎
- [[world-model|世界模型]] — 世界模型為模擬提供環境理解和生成
- [[GraphRAG]] — GraphRAG 為模擬提供建圖基礎
- [[financial-forecasting|金融預測]] — 金融預測是模擬的重要應用場景
- [[sandbox|沙箱]] — 模擬需要在沙箱環境中安全運行

## 來源

- MiroFish、TradingAgents 等模擬相關專案文件
- 知識庫內多 Agent 系統與社會模擬相關專案頁面