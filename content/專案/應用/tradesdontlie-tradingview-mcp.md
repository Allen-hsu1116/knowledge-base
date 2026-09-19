---
title: TradingView MCP Bridge
slug: tradesdontlie-tradingview-mcp
created: 2026-09-19
updated: 2026-09-19
stars: 6472
language: zh-TW
topics: [MCP, TradingView, Pine-Script, chart-analysis]
---

# TradingView MCP Bridge

> ⭐6.5k · 透過本機 CDP 將 TradingView Desktop 圖表與 Pine Script 工作流接到 MCP／CLI。

## 快速導航

- 🛠 [[MCP]] — stdio 工具橋接。
- 🧠 [[agent-trading]] — 金融介面輔助，與實盤執行區分。

## 是什麼

TradingView MCP Bridge 是第三方桌面介面橋接器，讓 Claude Code 等支援 MCP 的工具透過 Chrome DevTools Protocol 操作使用者本機的 TradingView Desktop。能力包括切換圖表、讀指標、開發 Pine Script、繪圖與 replay 練習。

它不是 TradingView 官方產品，也不是獨立行情 API 或自動實盤交易引擎。README 要求有效 TradingView 訂閱與桌面程式，並提醒內部未公開介面可能隨更新失效；付費訂閱並不自動代表取得所有交易所的即時行情授權。

適合研究「Agent 如何理解有狀態的專業金融 UI」。即使橋接本身走 localhost，MCP 回傳值仍可能被雲端模型客戶端送往其供應商；不得把本機橋接宣稱等同整個 AI 工作流無資料外傳。

## 核心特色

- **雙入口**：MCP stdio 與可輸出 JSON 的 `tv` CLI。
- **圖表操作**：切商品、週期、指標與多 pane 版面。
- **Pine Script 迴圈**：寫入、編譯、查看錯誤、讀回程式與 console。
- **結構化讀取**：讀取指標值及 Pine lines／labels／tables／boxes。
- **輸出節制**：以 `summary`、`study_filter`、去重與數量上限減少 context。
- **圖表輔助**：繪圖、警示管理、截圖與歷史 replay。
- **本機串流**：輪詢 CDP 並將差異輸出為 JSONL；不因此免除資料授權限制。

## 怎麼用

### 先確認使用邊界

需要 Node.js 18+、TradingView Desktop、有效訂閱與 MCP client。
使用前審閱 TradingView 條款及資料供應商授權；不確定自動化是否被允許時不要使用。

```bash
git clone https://github.com/tradesdontlie/tradingview-mcp.git
cd tradingview-mcp
npm install
# macOS：僅在確認授權與除錯介面安全後啟用
./scripts/launch_tv_debug_mac.sh
```

README 提供的 MCP server 啟動配置如下；實際設定位置請依所用客戶端確認。

```json
{
  "mcpServers": {
    "tradingview": {
      "command": "node",
      "args": ["/absolute/path/to/tradingview-mcp/src/server.js"]
    }
  }
}
```

### 驗證與只讀起步

1. 確認 CDP 9222 只供本機可信程序存取，勿轉發到網際網路。
2. 先使用 `tv_health_check` 檢查連線，再讀 chart state。
3. 讀 OHLCV 時優先 summary，避免整份長資料塞滿上下文。
4. 修改腳本、刪除警示或更動圖表前，先保留可還原版本並經人工確認。

```bash
# 無需 npm link，直接執行 CLI
node src/cli/index.js status
```

本次僅收錄，不曾安裝 bridge、修改 MCP 設定或開啟 TradingView 除錯埠。

### 文件矛盾與限制

- README 工具清單標 78、架構段落標 84，故不把任一數字當已驗證的精確總數。
- README 泛稱不連遠端，但也列出雲端儲存與 server-side compile；須逐工具審核，不能宣稱所有功能完全離線。
- README 明確不提供實盤交易，replay trade 不應混同真實下單。
- 專案免責聲明禁止以擷取資料做自動交易／演算法決策，並警告自動化及 non-display 使用可能違反平台條款。

## 跟其他方案的關係

| 方案／層次 | 主要角色 | 與此橋接器的差別 |
|---|---|---|
| TradingView Desktop 手動操作 | 人類使用圖表 | 不授予 Agent CDP 控制權 |
| 合法授權行情 API | 按契約取得資料 | 不是透過未公開桌面介面讀值 |
| 券商交易 API | 訂單與帳戶管理 | 本專案未提供實盤執行 |
| TradingView MCP Bridge | 個人圖表與 Pine 工作流 | 依賴已開啟桌面、除錯埠及內部介面 |

## 相關概念

← [[MCP]] · [[agent-trading]]

## 來源

- [GitHub：tradesdontlie/tradingview-mcp](https://github.com/tradesdontlie/tradingview-mcp)
- [LICENSE 原文](https://github.com/tradesdontlie/tradingview-mcp/blob/main/LICENSE)
- 原始 README、metadata 與 LICENSE：`raw/2026-09-19-tradesdontlie-tradingview-mcp.md`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/tradesdontlie/tradingview-mcp |
| Stars | 6,472（2026-09-19 擷取） |
| License | MIT；另附平台條款與商標聲明，API 辨識為 NOASSERTION |
| Language | JavaScript |
| 收錄日期 | 2026-09-19 |
