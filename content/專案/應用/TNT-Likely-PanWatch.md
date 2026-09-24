---
title: PanWatch（盯盤俠）
slug: TNT-Likely-PanWatch
created: 2026-09-24
updated: 2026-09-24
stars: 1504
language: zh-TW
topics: ["a-share", "agent", "ai", "ai-agent", "akshare", "deepseek", "fastapi", "fintech", "langgraph", "llm", "mcp", "openai", "pwa", "quant", "self-hosted", "stock", "stock-analysis", "stock-market", "trading-agents", "trading-bot"]
---

# PanWatch（盯盤俠）

> ⭐1.50k · 整合 TradingAgents、多市場持倉追蹤與通知的自架 AI 盯盤助手。

## 快速導航

- 🧠 [[AI-Agent]] — 主要技術脈絡
- 🛠 [[financial-forecasting]] — 設計或部署背景

## 是什麼

PanWatch 將 A 股、港股與美股監控、持倉管理、技術分析及通知整合成 Web 應用，並提供可加入手機主畫面的 PWA。後端採 FastAPI、SQLAlchemy、APScheduler 與 OpenAI SDK，前端採 React 與 TypeScript。

專案接入 TradingAgents 的多 Agent 投研流程，將技術、情緒、新聞與基本面分析接上多空辯論、風控審查和 PM 決策。這些是輔助分析與監控能力，不代表已驗證的獲利策略；README 沒有把台股列為支援市場，也不能把持倉管理等同券商自動下單。

## 核心特色

- **投研流程**：從多類分析師到多空辯論及風險審查，呈現節點進度與分析結論。

- **排程監控**：盤前分析、盤中異動、盤後日報與新聞速遞可按情境運作。

- **條件提醒**：價格、漲跌幅、成交額、量比等條件支援 AND／OR，並可設定冷卻與日上限。

- **多市場多帳戶**：彙整不同券商帳戶持倉，並區分短線、波段與長線風格。

- **通知與觀測**：提供 Telegram、企業微信、釘釘、飛書、Bark、Webhook，選配 OTel 匯出。

## 怎麼用

### 安裝入口

以下為文件整理，未在本次收錄中安裝或執行候選軟體。

```bash
docker run -d \
  --name panwatch \
  -p 127.0.0.1:8000:8000 \
  -v panwatch_data:/app/data \
  sunxiao0721/panwatch:latest
```

### 基本操作

1. 開啟 http://localhost:8000，首次使用設定帳號與密碼。
2. 在「AI 服務商」設定 OpenAI 相容 API 或 Ollama 等服務。
3. 加入自選與持倉，再選擇通知管道及需要啟用的 Agent。
4. 先以非敏感測試資料檢查分析、通知和成本，再接入真實持倉。

### 限制與注意

- 上述指令將官方範例的對外連接埠改綁 127.0.0.1，避免預設暴露到所有網路介面。
- 首次啟動可能下載 Chromium 到資料卷；不需要瀏覽器功能時可設定 PLAYWRIGHT_SKIP_BROWSER_INSTALL=1。
- 自架不等於資料完全不外流：雲端 LLM、行情來源與通知平台仍可能接收請求或持倉內容。
- README 的分析耗時與單次成本是作者估計，不是本站實測；行情延遲、API 成本和投資結論都需另行驗證。

## 跟其他方案的關係

下表依官方 README 的定位整理，不是效能評測。

| 方案 | 定位差異 | 適合情境 |
| --- | --- | --- |
| PanWatch | Web 持倉、監控、排程及通知應用 | 希望以介面整合日常盯盤 |
| TradingAgents | PanWatch 引用的多 Agent 投研框架 | 研究或客製分析決策流程 |
| 單純價格提醒 | 僅對行情條件觸發通知 | 不需要 LLM 推論與多 Agent 分析 |

## 相關概念

← [[AI-Agent]] · [[financial-forecasting]]

## 來源

- [GitHub：TNT-Likely/PanWatch](https://github.com/TNT-Likely/PanWatch)
- README 快照：`raw/2026-09-24-TNT-Likely-PanWatch.md`
- GitHub metadata：`raw/2026-09-24-TNT-Likely-PanWatch.metadata.json`
- 資料查閱日：2026-09-24；功能敘述依當日 README，非本站實測。

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [TNT-Likely/PanWatch](https://github.com/TNT-Likely/PanWatch) |
| Stars | 1,504（2026-09-24 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-09-24 |
