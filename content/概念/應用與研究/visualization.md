---
title: 資料視覺化
slug: visualization
created: 2026-05-28
updated: 2026-08-21
language: zh-TW
---

# 資料視覺化

> 將數據轉為圖形表示，幫助理解趨勢、模式和異常。在 AI 時代從「人看圖表」進化為「AI 生成圖表」和「知識圖譜互動式探索」。

## 核心內容

資料視覺化（Visualization）是將抽象數據轉為視覺表示的過程。好的視覺化讓人在幾秒內理解數據的關鍵訊息，而不需要閱讀大量數字。視覺化不只是一種呈現方式，更是一種分析方法——透過視覺化才能發現數據中隱藏的模式、離群值和關聯。

在 AI 時代，視覺化的角色從「人類看圖表」擴展到三個新方向。首先是 AI 生成視覺化：LLM 能根據資料自動分析結構、選擇圖表類型、生成 D3/Matplotlib/Chart.js 程式碼，大幅降低視覺化門檻。其次是互動式儀表盤：即時更新的資料面板支援篩選、縮放、鑽取等操作，從靜態報告進化為動態探索工具。第三是知識圖譜視覺化：實體關係圖讓複雜知識結構一目了然，支援社群偵測和關鍵節點發現。

對 AI Agent 而言，視覺化是將推理結果傳達給使用者的關鍵介面。Agent 分析資料後，透過視覺化工具呈現洞見，讓使用者能快速理解 Agent 的分析結論和決策依據。

## 關鍵要素

- **AI 生成視覺化** — LLM 自動偵測資料結構（數值/類別/時間），推薦並生成最適合的圖表
- **互動式儀表盤** — 即時更新的資料面板，支援篩選、縮放、鑽取等互動操作
- **知識圖譜視覺化** — 實體關係圖呈現複雜知識結構，支援社群偵測和關鍵節點發現
- **程式碼生成** — AI 寫出 D3/Matplotlib/Chart.js 程式碼，平衡客製化與自動化
- **多格式輸出** — 同一資料可輸出為靜態圖片、互動式 HTML、PDF 報告等格式
- **即時監控** — 股市走勢、系統指標、業務 KPI 的即時視覺化追蹤

## 各框架的做法

- **Graphify** → 一行指令建知識圖譜，輸出互動式 HTML 和多種格式
  👉 詳見 [[safishamsi-graphify|Graphify]]
- **Fireworks Tech Graph** → 開源技術關係圖譜視覺化
  👉 詳見 [[fireworks-tech-graph|Fireworks Tech Graph]]
- **Next AI Draw.io** → AI 驅動的 draw.io，MCP 整合資料視覺化
  👉 詳見 [[DayuanJiang-next-ai-draw-io|Next AI Draw.io]]
- **Daily Stock Analysis** → 即時股市資料面板和視覺化分析
  👉 詳見 [[daily-stock-analysis|Daily Stock Analysis]]
- **CodeGraph** → 程式碼知識圖譜視覺化，MCP 整合
  👉 詳見 [[colbymchenry-codegraph|CodeGraph]]
- **Understand Anything** — 程式碼智慧視覺化，Domain View 和 tree-sitter+LLM
  👉 詳見 [[Understand-Anything|Understand Anything]]
- **Google Timeline Visualizer** → 將個人 Timeline JSON 在裝置端轉成旅行軌跡動畫 MP4
  👉 詳見 [[mahlernim-google-timeline-visualizer|Google Timeline Visualizer]]

## 相關概念

- [[Knowledge-Graph|知識圖譜]] — 知識圖譜提供結構化資料，視覺化是呈現層
- [[rag|RAG]] — RAG 檢索結果可透過視覺化呈現給使用者
- [[AI-Agent|AI Agent]] — Agent 使用視覺化工具呈現分析結果
- [[document-parsing|文件解析]] — 解析後的結構化資料是視覺化的輸入
- [[financial-forecasting|金融預測]] — 金融預測結果需要視覺化呈現
- [[harness-engineering|Harness Engineering]] — 視覺化是 Agent Harness 的結果呈現環節

## 來源

- Graphify 知識圖譜視覺化工具文件
- Fireworks Tech Graph 技術圖譜
- AI 生成視覺化工具趨勢整理
- D3.js、Matplotlib、Plotly 等視覺化庫實踐