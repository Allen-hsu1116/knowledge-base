---
title: "BrewUI"
slug: Homebrew-BrewUI
created: 2026-09-16
updated: 2026-09-16
stars: 1363
language: zh-TW
topics: ["free-software", "productivity"]
---

# BrewUI

> ⭐1.4k · Homebrew 官方 macOS 原生圖形介面；非 LLM 工具，重點是透明的套件管理

## 快速導航

- [[free-software]] — 相關背景與其他實作。
- [[productivity]] — 相關背景與其他實作。

## 是什麼

BrewUI 是 Homebrew 的官方 macOS GUI，用 Swift 6、SwiftUI 與 Swift Package Manager 建構，從 brew CLI 與 Homebrew JSON API 取得資料。目標是讓不熟悉終端的人也能探索、安裝、更新與管理套件，同時看見底層操作。

本次 README 要求 macOS Tahoe 26+，並標示專案穩定且持續開發。它不是 LLM 或 Agent 專案，而是一般開發環境的基礎設施；此次由 GitHub Trending 候選收錄，不將圖形化套件操作包裝成 AI 功能。

## 核心特色

### 原生 macOS 介面

以 SwiftUI 提供 Homebrew 的探索與管理入口。

### 保留操作透明度

不隱藏底層 Homebrew 執行流程與輸出。

### 明確環境邊界

透過 /bin/zsh 執行 brew，略過可選 shell 啟動檔並清理環境。

### 設定診斷

Configuration 和 Doctor 反映 App 裡的 Homebrew 環境，方便找出與 Terminal 的差異。

## 怎麼用

需要已安裝 Homebrew 的 macOS Tahoe 26+。官方提供以下 cask 安裝方式；本次僅收錄文件，沒有在主機上安裝 App。

```bash
brew install --cask homebrew-app
```

1. 啟動 App，檢查套件資訊與底層執行輸出後再進行操作。
2. 環境變數應寫在 ~/.homebrew/brew.env 等官方支援位置，格式為 NAME=value，不能含 export 或 shell 展開。
3. 設定修改後重新啟動 BrewUI，查看 Configuration 與 Doctor 是否符合預期。

### 限制與注意事項

App 不繼承登入 shell 的 aliases、自訂 PATH 或 export；系統 /etc/zshenv 仍會執行，之後環境會再次清理。不要因 Terminal 正常就假設 App 使用相同設定。

## 跟其他方案的關係

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| BrewUI | Homebrew 的原生 GUI | 適合偏好圖形介面的使用者。 |
| brew CLI | Homebrew 終端操作 | 便於腳本化；shell 環境可能與 GUI 不同。 |
| AI Agent 工具 | 讓模型執行任務 | 不同層次，BrewUI 本身未宣稱具備 Agent 能力。 |

BrewUI 的授權是 AGPL-3.0；不要與 Homebrew 其他元件的授權混為一談。

## 相關概念

← [[free-software]] · [[productivity]]

## 來源

- [GitHub](https://github.com/Homebrew/BrewUI)
- [官方 README](https://github.com/Homebrew/BrewUI/blob/main/README.md)
- [補充官方文件](https://docs.brew.sh/Manpage#environment)
- README 快照：`raw/2026-09-16-Homebrew-BrewUI.md`
- Metadata 快照：`raw/2026-09-16-Homebrew-BrewUI.metadata.json`

本頁根據收錄當日官方文件整理；安裝指令為使用說明，非本次實機安裝驗證。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Homebrew/BrewUI |
| Stars | 1,363（2026-09-16 快照） |
| License | AGPL-3.0 |
| Language | Swift（頁面語言：繁體中文） |
| 收錄日期 | 2026-09-16 |
