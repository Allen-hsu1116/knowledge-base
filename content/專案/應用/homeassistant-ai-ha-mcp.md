---
title: HA-MCP
slug: homeassistant-ai-ha-mcp
created: 2026-11-10
updated: 2026-11-10
stars: 5975
language: zh-TW
topics: [MCP, AI-Agent, Home-Automation]
---

# HA-MCP

> ⭐6.0k · 讓 AI 助理透過 MCP 查詢、設定與自動化 Home Assistant。

## 快速導航

- [[MCP]] — 用統一工具介面連接 AI 客戶端。
- [[AI-Agent]] — 把對話轉成可驗證的智慧家庭操作。

## 是什麼

HA-MCP 是以 Python 與 FastMCP 建立的 Home Assistant MCP server，讓 Claude、ChatGPT 和其他支援 MCP 的客戶端查詢裝置狀態、調整自動化與管理儀表板。它是 Home Assistant 的工具接入層，不是取代 Home Assistant 的新家庭控制平台。

截至收錄時，官方 README 列出 87 個工具，涵蓋搜尋、控制、設定、監控、備份及安全政策。實際可用工具仍會受版本、權限、feature flags 與是否啟用 beta 功能影響，不能把列表視為所有安裝預設全開。

官方目前優先推薦內嵌於 Home Assistant 的 integration，以單一程序提供完整服務；另有 app、Docker、PyPI 等替代部署方法。各方法是替代選項而非需要疊加安裝的元件，客戶端應只連到其中一套 server。

## 核心特色

- **實體與設定搜尋**：支援模糊搜尋、深入設定搜尋及系統總覽。
- **裝置與服務操作**：可讀取即時狀態、呼叫服務與批次控制裝置。
- **自動化與介面管理**：管理 automation、script、helper、dashboard、區域及場景。
- **問題追蹤**：查詢歷史、統計、日誌及 automation traces，協助定位觸發與執行問題。
- **安全控制**：提供唯讀模式、逐工具開關、工具安全政策及編輯備份；仍需管理端妥善設定。
- **多種接入方式**：內嵌 integration、app 或外部 HTTP server 可配合不同 Home Assistant 安裝環境。
- **可選進階編輯**：檔案與 YAML 工具屬 opt-in／beta 範圍，不是基本連線必備功能。

## 怎麼用

### 建議：Home Assistant integration

README 的安裝說明適用於 HA-MCP 9.0.0 及之後版本，integration 要求 Home Assistant 2026.8.0 或更新版本。

1. Home Assistant 2026.8–2026.10 從 HACS 搜尋 HA-MCP；2026.11 之後可從 Settings → Marketplace 安裝。
2. 備份相關設定後重新啟動 Home Assistant。
3. 準備管理員身分；官方建議考慮專用、僅允許本地登入的管理員帳號，而非共用個人登入。
4. 在 Devices & Services 新增 HA-MCP Server，設定憑證及要開放的連線方式。
5. 從 Configure 複製連線 URL，貼入支援 MCP 的客戶端。

僅本地使用時維持遠端存取關閉。Secret URL 本身是存取憑證，不可貼到公開 issue、截圖或 wiki。

### 安裝指令：macOS 示範環境

以下為官方 macOS demo installer 的先下載、後檢查版本；它連的是示範環境，不是自動接管自己的 Home Assistant。

```bash
curl -fLsS \
  https://raw.githubusercontent.com/homeassistant-ai/ha-mcp/master/scripts/install-macos.sh \
  -o /tmp/ha-mcp-install-macos.sh
# 先閱讀腳本並備份它可能修改的客戶端設定，再決定是否執行：
sh /tmp/ha-mcp-install-macos.sh
```

本文僅保存安裝說明，收錄時未執行 installer。demo 使用 stdio；官方指出此 transport 有已知連線問題，正式使用建議採 integration 或 HTTP，而非沿用 demo 路徑。

### 驗證與操作風險

- 先查詢系統總覽與裝置狀態，確認連到正確實例，再嘗試寫入。
- 高影響操作應先建立備份、確認安全政策，並在操作後讀回狀態。
- 門鎖、暖氣等具有實體世界影響的設備，不宜直接交給無審批的自動化。
- OIDC 模式下，登入使用者共用 server 的 Home Assistant 憑證；不能將登入誤認為每人獨立後端權限。

## 跟其他方案的關係

以下比較部署定位與使用邊界，不代表經過本次效能測試。

| 方案 | 適合情境 | 注意事項 |
|---|---|---|
| HA-MCP integration | 官方優先推薦的內嵌服務 | 需相容 Home Assistant 版本與管理員設定 |
| HA-MCP app | OS／Supervised 的另一部署方式 | 不必與 integration 重複啟動 |
| Docker／PyPI HTTP | 需要分離服務或獨立主機 | 自行管理 URL、憑證及服務維運 |
| 本地 stdio demo | 試用與測試 | 官方標示已知 transport 問題，不建議正式環境 |
| Home Assistant 原生 UI | 人工管理與核對狀態 | 可用來確認 AI 操作的實際結果 |

## 相關概念

← [[MCP]] · [[AI-Agent]]

## 來源

- [GitHub：homeassistant-ai/ha-mcp](https://github.com/homeassistant-ai/ha-mcp)
- [官方 README](https://github.com/homeassistant-ai/ha-mcp/blob/master/README.md)
- [官方 Setup Wizard](https://homeassistant-ai.github.io/ha-mcp/setup/)
- 原始快照：`raw/2026-11-10-homeassistant-ai-ha-mcp.md`
- Metadata 快照：`raw/2026-11-10-homeassistant-ai-ha-mcp.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/homeassistant-ai/ha-mcp |
| Stars | 5,975（2026-11-10 擷取） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-10 |
