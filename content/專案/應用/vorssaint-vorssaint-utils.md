---
title: Vorssaint
slug: vorssaint-vorssaint-utils
created: '2026-11-01'
updated: '2026-11-01'
stars: 31905
language: zh-TW
topics:
- Coding-Agent-CLI
- workflow-automation
---

# Vorssaint

> ⭐31.9k · 模組化 macOS 選單列工具箱，包含 Coding Agent 用量與工作狀態監看。

## 快速導航

- [[Coding-Agent-CLI]] — 相關方法與背景。
- [[workflow-automation]] — 相關方法與背景。

## 是什麼

Vorssaint 是 Swift 開發的 macOS 生產力工具箱，把音量、系統監控、視窗管理、剪貼簿及檔案工具整合到單一選單列入口。使用者可依功能安裝或停用模組，未安裝功能不載入，權限也依實際使用需求開啟。

它不是 LLM 或自主 Agent runtime。與 AI 工作流最直接的關係，是 Dynamic Island 可顯示 Claude、Codex、OpenCode、GitHub Copilot 的用量、模型、專案及工作狀態，並在長任務完成時通知；其他工具則輔助桌面操作與本地工作環境管理。

## 核心特色

- **Agent 狀態監看**：呈現可取得的額度、重設時間、tokens、API 價值估算與工作狀態。

- **模組化啟用**：功能可安裝或移除；重新安裝可恢復設定。

- **系統與音訊工具**：CPU／GPU／記憶體監控、每個 App 音量及輸出裝置控制。

- **視窗與剪貼簿**：視窗排列、Dock 預覽、歷史搜尋、文字片段與檔案暫放。

- **本地優先及選用權限**：README 宣稱無帳號、遙測與訂閱，且列明會使用網路的功能。

## 怎麼用

### 環境與安裝

官方要求 Apple Silicon Mac 與 macOS 14 Sonoma 以上。以下 Homebrew 安裝命令僅供讀者使用，本次收錄未安裝軟體。

```bash
brew install --cask vorssaint
```

### 建議操作流程

1. 在 Features hub 只啟用需要的功能。
2. 依需要授予輔助使用或螢幕錄製等權限，不必一次全部開啟。
3. 使用 AI agents 面板監看本機 Agent；Codex 額外 CODEX_HOME 可分開呈現額度卡。

### 限制與注意

- Copilot 的 token 總量需等待 shutdown metrics；API 價值為估算，不是帳單。
- 更新、測速、Homebrew、選用歌詞與分享連結等功能仍會使用網路。
- Mic Mute 不是隱私鎖，不能保證所有 App 都收不到聲音。
- 軟體原始碼依 GPL 授權，名稱、圖示與外觀另受商標規範限制。

## 跟其他方案的關係

以下按定位比較，不代表本次已做效能測試或功能驗收。

| 方案 | 定位 | 關係與邊界 |
|---|---|---|
| Vorssaint | 桌面工具與 Agent 狀態面板 | 觀測與操作輔助，不執行推理 |
| Coding Agent CLI | 接收任務並調用模型與工具 | Vorssaint 監看其狀態，並非替代 |
| 工作流編排平台 | 定義多步驟任務與觸發條件 | 桌面快捷工具不等於通用 Agent 編排器 |

## 相關概念

← [[Coding-Agent-CLI]] · [[workflow-automation]]

## 來源

- [GitHub](https://github.com/vorssaint/vorssaint-utils)
- [README](https://github.com/vorssaint/vorssaint-utils/blob/main/README.md)
- [LICENSE](https://github.com/vorssaint/vorssaint-utils/blob/main/LICENSE)
- 原始 README 快照：`raw/2026-11-01-vorssaint-vorssaint-utils.md`
- GitHub metadata 快照：`outputs/trending-2026-11-01/vorssaint-vorssaint-utils.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/vorssaint/vorssaint-utils |
| Stars | 31,905（2026-11-01 擷取） |
| License | GPL-3.0-or-later（商標另有規範） |
| Language | Swift（儲存庫主要語言） |
| 收錄日期 | 2026-11-01 |
