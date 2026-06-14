---
title: 資料視覺化 (Visualization)
slug: visualization
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# 資料視覺化 (Visualization)

> 將數據轉為圖形表示的技術，幫助人類理解趨勢、模式和異常值。在 AI 時代，視覺化從「人看圖表」進化為「AI 生成圖表」和「知識圖譜互動式探索」。

## 快速導航

- ⚡ [[Knowledge-Graph]] · [[AI-Agent]] · [[web-scraping]] · [[rag]]
- 🕸️ **Graphify** → [[safishamsi-graphify]]（知識圖譜視覺化工具）
- 📈 **Tech Graph** → [[fireworks-tech-graph]]（技術關係圖）
- 📊 **Daily Stock Analysis** → [[ZhuLinsen-daily_stock_analysis]]（即時資料面板）

## 是什麼

資料視覺化（Visualization）是將抽象數據轉為視覺表示的過程。好的視覺化讓人在幾秒內理解數據的關鍵訊息，而不需要閱讀大量數字。在 AI 時代，視覺化的角色從「人類看圖表」擴展到「AI 自動生成圖表」和「互動式知識探索」。

視覺化不只是一種呈現方式，更是一種分析方法——透過視覺化才能發現數據中隱藏的模式、離群值和關聯。對 AI Agent 而言，視覺化是將推理結果傳達給使用者的關鍵介面。

### 視覺化層級

| 層級 | 說明 | 範例 |
|------|------|------|
| **探索性** | 理解資料分佈和模式 | 散佈圖、直方圖 |
| **解釋性** | 傳達特定結論 | 折線圖、長條圖 |
| **關聯性** | 展示實體之間的關係 | 網路圖、知識圖譜 |
| **互動式** | 讓使用者主動探索 | 儀表盤、互動式圖表 |

### 常見圖表類型

| 圖表 | 適用場景 |
|------|----------|
| 折線圖 | 時間序列趨勢 |
| 長條圖 | 類別比較 |
| 散佈圖 | 兩變數關聯 |
| 熱力圖 | 密度/強度分佈 |
| 網路圖 | 關係與連結 |
| 樹狀圖 | 層級結構 |
| 地圖 | 地理分佈 |

## 核心特色

- **AI 生成視覺化**：LLM 根據資料自動選擇圖表類型和配置，從「人寫 .chart()」到「AI 看 data → 選 chart → 寫 code」，大幅降低視覺化門檻。AI 能理解資料結構（數值/類別/時間），自動推薦最適合的圖表類型
- **互動式儀表盤**：即時更新的資料面板（如 Daily Stock Analysis），支援篩選、縮放、鑽取等互動操作，讓使用者主動探索資料。不再是靜態報告，而是動態探索工具
- **知識圖譜視覺化**：實體關係圖（如 Graphify、Fireworks Tech Graph），讓複雜知識結構一目了然。支援社群偵測和 God Nodes 發現，找出知識網絡中的關鍵節點和集群
- **程式碼生成視覺化**：AI 寫出 D3/Matplotlib/Chart.js 程式碼，達到客製化與自動化的平衡。適合需要精確控制視覺元素的場景，如學術論文圖表和品牌風格儀表盤
- **多格式輸出**：同一資料可輸出為靜態圖片、互動式 HTML、PDF 報告等格式，適應不同展示需求

## 怎麼用

### 選擇視覺化工具

| 場景 | 推薦工具 | 說明 |
|------|----------|------|
| 知識圖譜 | [[safishamsi-graphify\|Graphify]] | 一行指令建知識圖譜，輸出互動式 HTML |
| 技術關係 | [[fireworks-tech-graph\|Fireworks Tech Graph]] | 開源技術圖譜視覺化 |
| 股市分析 | [[ZhuLinsen-daily_stock_analysis\|Daily Stock Analysis]] | 即時股票資料面板 |
| 快速探索 | Matplotlib / Seaborn | Python 資料視覺化基礎套件 |
| 互動式圖表 | D3.js / Plotly | 網頁互動式視覺化 |
| 儀表盤 | Dash / Streamlit | Python 儀表盤框架 |

### AI 生成視覺化流程

```
資料 → AI 分析結構 → 選擇圖表類型 → 生成程式碼 → 渲染圖表
  │                    │                  │            │
  CSV/JSON          自動偵測          D3/Chart.js   互動式
  資料庫查詢        數值/類別/時間    Matplotlib    靜態圖
```

### Graphify 使用範例

```bash
# 建立知識圖譜
/graphify ./raw

# 查詢特定關係
/graphify query "attention 和 optimizer 的關係"

# 輸出格式：互動式 HTML、Obsidian vault、Wiki、JSON、GraphML
```

### 常見應用場景

- **知識管理**：將筆記和文件轉為知識圖譜，視覺化概念關聯
- **資料分析**：股市走勢、用戶行為、A/B 測試結果
- **報告生成**：自動將資料轉為圖表嵌入報告
- **監控儀表盤**：即時追蹤系統指標和業務 KPI
- **AI 推理視覺化**：將 LLM 的思考過程、決策路徑視覺化

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[Knowledge-Graph]] | 上游 | 知識圖譜提供結構化資料，視覺化是呈現層 |
| [[rag]] | 串接 | RAG 檢索結果可透過視覺化呈現給使用者 |
| [[AI-Agent]] | 工具 | Agent 使用視覺化工具向使用者呈現分析結果 |
| [[document-parsing]] | 上游 | 解析後的結構化資料是視覺化的輸入 |
| [[web-scraping]] | 上游 | 爬取的網頁資料可透過視覺化呈現 |
| [[harness-engineering]] | 整合 | 視覺化是 Agent Harness 的一部分（結果呈現） |
| [[financial-forecasting]] | 應用 | 金融預測結果需要視覺化呈現 |

## 相關專案

| 專案 | 特色 |
|------|------|
| [[safishamsi-graphify\|Graphify]] | 知識圖譜視覺化 |
| [[fireworks-tech-graph\|Fireworks Tech Graph]] | 技術關係圖 |
| [[ZhuLinsen-daily_stock_analysis\|Daily Stock Analysis]] | 即時股市資料面板 |

## 相關概念

← [[Knowledge-Graph]] · [[rag]] · [[AI-Agent]] · [[document-parsing]] · [[web-scraping]] · [[harness-engineering]] · [[financial-forecasting]]

## 來源

- D3.js、Matplotlib、Observable 等視覺化工具文件
- [Graphify 知識圖譜視覺化](../raw/safishamsi-graphify.md)
- [Tech Graph 技術圖譜](../raw/2026-05-09-fireworks-tech-graph.md)

---

_此頁由 daily-llm-trending 自動維護_