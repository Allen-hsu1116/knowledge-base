---
title: "Browser Harness"
slug: browser-use-browser-harness
created: 2026-10-12
updated: 2026-10-12
stars: 18393
language: "Python"
topics: ["ai-agent", "browser-agent", "browser-automation", "browser-use", "browser-use-box", "browser-use-cloud", "cdp", "cloud-browser", "llm", "persistent-browser", "playwright", "telegram-agent", "vps-agent", "web-automation"]
---

# Browser Harness

> ⭐18.4k · 以 CDP 連接真實瀏覽器，讓 Agent 在本地工作區累積可重用操作 helper 的執行框架。

## 快速導航

- [[computer-use-agent]] — 對應的知識庫概念與其他實作。
- [[harness-engineering]] — 對應的知識庫概念與其他實作。

## 是什麼

Browser Harness 把 LLM Agent 連到使用者的真實瀏覽器，透過 CDP websocket 執行瀏覽器任務。與只提供一組固定高階動作的工具不同，專案鼓勵 Agent 在執行中補上缺少的 helper，讓後續任務可沿用工作區中的程式。

這裡的自我改善指的是輔助程式與操作工作流可以增補，不代表模型權重會自動訓練。README 區分受保護的核心套件與可修改的 Agent 工作區，並提供本地瀏覽器、選用雲端瀏覽器及 MCP stdio 入口。實際效果仍取決於網站狀態、權限、Agent 與 helper 品質。

## 核心特色

### 真實登入瀏覽器

本地模式可操作現有瀏覽器工作階段，因此也必須特別保護登入狀態。

### 可持續累積 helper

缺少上傳等能力時可在 Agent 工作區增補，不需改寫核心套件。

### MCP 介面

browser-harness-mcp 以 stdio 暴露控制 helper，方便 MCP client 整合。

### 雲端可選

本地 Chrome 不需要 Browser Use API key；大量平行瀏覽器可另行採用雲端服務。

### 錄製需同意

安裝文件要求先詢問錄製偏好，預設不同意；截圖與 trace 可能含敏感資料。

## 怎麼用

以下為上游文件的安裝／取得方式，僅作操作參考；本次收錄未安裝或執行第三方專案。

```bash
uv tool install --python 3.12 --upgrade --force browser-harness
browser-harness skill
browser-harness --doctor
```

1. 依 install.md 安裝並把 browser-harness skill 的輸出註冊到所用 Agent 的技能目錄。
2. 首次連線依文件在 Chrome 的 remote-debugging 頁允許連線；只開給可信任的本地程序。
3. 先驗證 page_info() 可以讀到目標頁，再执行任務；錄製預設關閉並保留既有偏好。

使用／驗收任務示例：

```text
先連到我已授權的測試頁並列出頁面狀態，
不要送出表單、登入或修改帳號設定。
```

**限制與注意事項：** 真實瀏覽器含有登入 cookie 與私人資料。不要公開暴露 CDP 或把錄製檔上傳到不可信任位置；helper 也應視為需要審核的程式碼。

## 跟其他方案的關係

下表是依上游定位整理的用途比較，不是效能測試結果。

| 方案 | 定位 | 與本專案的差異 |
|---|---|---|
| 固定瀏覽器自動化腳本 | 事先寫好選擇器及控制流程 | 本專案讓 Agent 按任務動態操作並累積 helper。 |
| 純截圖桌面操作 | 透過視覺與滑鼠鍵盤控制介面 | 本專案以 CDP 連接瀏覽器，並提供可程式化介面。 |
| 雲端瀏覽器服務 | 提供隔離或大量平行的瀏覽器環境 | 本專案可先連本地瀏覽器，雲端是另外的選項。 |

## 相關概念

← [[computer-use-agent]] · [[harness-engineering]]

## 來源

- [GitHub：browser-use/browser-harness](https://github.com/browser-use/browser-harness)
- 原始資料：`raw/2026-10-12-browser-use-browser-harness.md`（README 與完整 metadata 快照）。
- [上游 install.md](https://github.com/browser-use/browser-harness/blob/main/install.md)

Stars 與文件內容以 2026-10-12 抓取快照為準；專案描述不是本次實測背書。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [browser-use/browser-harness](https://github.com/browser-use/browser-harness) |
| Stars | ⭐18,393 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-10-12 |
