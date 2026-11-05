---
title: "Horizon"
slug: "Thysrael-Horizon"
created: "2026-11-05"
updated: "2026-11-05"
stars: 12491
language: "Python"
topics: ["aggregator", "feishu-bot", "llm", "mcp", "news", "openclaw", "python", "webhook"]
---

# Horizon

> ⭐12.5k · 用 profiles 驅動多來源篩選、去重與補充背景的中英文 AI 新聞簡報工具。

## 快速導航

- [[workflow-automation]]
- [[MCP]]

## 是什麼

Horizon 將分散在 RSS、論壇、社群與 GitHub 的資訊整理為每日新聞簡報。它不只彙整標題，而是先按閱讀目的進行評分、篩選與去重，再補充背景、摘要及社群討論。

核心設計是 profile：每類內容定義自己的編輯規則與輸出格式。使用者可區分科技事件、工程長文與創作素材，搭配執行時門檻及類別配額，避免單一熱門主題佔滿報告；結果可存為 Markdown 或接入發布管線。

## 核心特色

- **多來源收集**：涵蓋 RSS、Hacker News、Reddit、Telegram、GitHub 等，部分來源需要額外服務。

- **Profile 路由**：來源可指定 profile，或讓 AI 在候選 profiles 中選擇，每筆資料只路由到一個 profile。

- **分階段處理**：分析、篩選和去重先於 enrichment，降低為不保留內容補資料的浪費。

- **平衡簡報**：可限制總篇數、類別群組份額與預設群組數量。

- **雙語與多種交付**：Markdown、Pages、Email、Webhook，以及 MCP 分階段工具接口。

## 怎麼用

### 安裝與基本入口

```bash
git clone https://github.com/Thysrael/Horizon.git
cd Horizon
uv sync
uv run horizon-wizard
uv run horizon --hours 24
```

### 執行流程

1. 用 wizard 建立設定並選擇模型、新聞來源與關注主題。

2. API key 放環境或 .env，config 的 api_key_env 填變數名稱而非密鑰。

3. 檢查 data/summaries/ 生成的簡報，確認來源、摘要與去重效果。

4. 需要排程時自行配置並啟用 daily-summary.yml.disabled 模板；預設不是已啟用的每日排程。

### 限制與查核

- PyPI 發布仍列在規劃中，不能將 `pip install horizon` 當作官方已支援的安裝方式。

- Discord 可作 webhook 接收端，但將 Discord 當作輸入來源仍列在規劃中，兩者不可混淆。

- 評分、背景與摘要是模型輸出，重要消息仍要回查原始來源；來源與模型服務可能有費用。

以上為上游文件提供的使用入口；本次收錄沒有安裝或執行此專案。

## 跟其他方案的關係

以下是依專案定位整理的比較，不代表同硬體實測排名。

| 方案 | 定位 | 選擇重點 |
| --- | --- | --- |
| Horizon | 領域特化的新聞評分與編輯管線 | 現成 profiles 與中英文簡報 |
| 一般 RSS 閱讀器 | 訂閱與閱讀文章 | 未必提供 AI 評分、背景補充和跨來源去重 |
| 通用工作流平台 | 自由組合資料源、模型與發送節點 | 彈性較大，但需自行設計新聞編輯流程 |

## 相關概念

← [[workflow-automation]] · [[MCP]]

## 來源

- GitHub：https://github.com/Thysrael/Horizon
- README：https://github.com/Thysrael/Horizon/blob/main/README.md
- 原始快照：`raw/2026-11-05-Thysrael-Horizon.md`
- metadata 快照：`outputs/2026-11-05-trending/Thysrael-Horizon.json`

---

| 欄位 | 資訊 |
| --- | --- |
| GitHub | https://github.com/Thysrael/Horizon |
| Stars | 12,491（2026-11-05 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-05 |
