---
title: LocalSend
slug: localsend-localsend
created: 2026-09-15
updated: 2026-09-15
stars: 91323
language: zh-TW
topics: [privacy, productivity, file-sharing, flutter]
---

# LocalSend

> ⭐91.3k · 透過區域網路，以 HTTPS 在不同平台之間分享檔案與訊息。

## 快速導航

- 🔒 [[privacy]] — 本地傳輸與資料流通範圍。
- 🧰 [[productivity]] — 手機與桌面之間的檔案交接。

## 是什麼

LocalSend 是免費、開源的跨平台傳檔應用，定位接近跨作業系統的 AirDrop 替代方案。
它讓附近裝置透過區域網路分享檔案與文字訊息，不需要網際網路或第三方中繼伺服器。
支援 Windows、macOS、Linux、Android、iOS 等平台，主要應用以 Dart／Flutter 開發。

專案透過 REST API 和 HTTPS 通訊，每部裝置動態產生 TLS 憑證。
README 也介紹基於 LocalSend Protocol v2 的命令列客戶端，可用互動選單或指定裝置別名、IP 傳檔。
這是一般生產力與資料傳輸工具，不是 LLM、RAG 系統或 Agent 框架；本次因 GitHub Trending 候選而收錄。

## 核心特色

- **跨平台互傳**：不把檔案交換限制在單一廠商的裝置生態。
- **無須雲端中繼**：傳輸留在區域網路，不依賴外部服務可用性。
- **HTTPS 通訊**：README 記載使用每裝置產生的 TLS 憑證。
- **檔案與訊息分享**：適合臨時傳送文件、照片與文字。
- **CLI 傳輸**：可指定多個檔案與目錄，保留目錄根名稱和巢狀路徑。
- **可攜與背景啟動**：支援旁置 settings.json 的可攜模式及 --hidden 參數。

## 怎麼用

### 安裝應用

macOS 可使用 README 連結的 Homebrew cask；以下是文件示例，本次未執行安裝。

```bash
brew install --cask localsend
```

其他平台可由官方下載頁、應用商店或 Releases 取得。
README 建議使用商店或套件管理器，因為應用本身沒有自動更新功能。

### 交換檔案

1. 在收發兩端安裝並開啟 LocalSend，連上可互通的區域網路。
2. 在發送端選擇檔案或訊息，再選擇接收裝置。
3. 檢查裝置名稱與內容，於接收端完成接收流程。
4. 若找不到裝置，檢查防火牆與路由器的 AP isolation，而不是直接停用全部防護。

### CLI 與網路限制

以下需另有可用的 localsend-cli；不能假設 GUI 套件一定附帶 CLI。

```bash
localsend-cli --help
localsend-cli send report.pdf photo.jpg ./project-backup
localsend-cli send --to "Cute Tomato" report.pdf
```

README 列出的入站埠為 TCP／UDP 53317；請限於可信任區網開放。
CLI 的別名必須唯一，目錄會遞迴收集，但空目錄不會傳送。
HTTPS 不代表可以忽略接收對象確認，也不要把區網服務直接暴露至公網。

## 跟其他方案的關係

以下為定位比較，不是效能或安全性實測。

| 方案 | 主要用途 | 適用界線 |
|---|---|---|
| LocalSend | 區網跨平台傳檔 | 兩端需能透過區網互通 |
| AirDrop | Apple 裝置間臨時分享 | 適合 Apple 生態的內建工作流 |
| 雲端檔案分享 | 非同區網的非同步交換 | 需另評估帳號、服務與資料上傳政策 |
| [[peetzweg-opendisplay\|OpenDisplay]] | 把裝置當作延伸顯示器 | 傳的是螢幕畫面，不是檔案交換替代品 |

## 相關概念

← [[privacy]] · [[productivity]]

## 來源

- [GitHub：localsend/localsend](https://github.com/localsend/localsend)
- [官方網站](https://localsend.org)
- [LocalSend Protocol](https://github.com/localsend/protocol)
- README 原始快照：`raw/2026-09-15-localsend-localsend.md`
- GitHub metadata：`outputs/2026-09-15-localsend-localsend.json`
- 資料截至 2026-09-15；本次只有文件收錄，未實測傳輸或安裝工具。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/localsend/localsend |
| Stars | 91,323（2026-09-15） |
| License | Apache-2.0 |
| Language | Dart |
| 收錄日期 | 2026-09-15 |
