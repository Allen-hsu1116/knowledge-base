---
title: Escrcpy
slug: viarotel-org-escrcpy
created: 2026-09-09
updated: 2026-09-09
stars: 11399
language: zh-TW
topics: [AI-Agent, MCP, android, automation]
---

# Escrcpy

> ⭐11.4k · 以 scrcpy 圖形化管理 Android 裝置，並整合 MCP Copilot 與多裝置自動化。

## 快速導航

- [[MCP]] — Copilot 使用的模型與工具連接協議。
- [[AI-Agent]] — 將模型輔助操作延伸到 Android 裝置。

## 是什麼

Escrcpy 是以 scrcpy 為核心的 Android 螢幕鏡像與控制桌面工具。它把裝置視窗、快捷操作、鍵盤映射及多裝置管理放進圖形介面，適合不想只透過命令列管理手機的使用者。

目前 README 明確列出基於 MCP 的 Copilot，支援多模型聊天與智慧 Android 控制；也列出視覺化自動化流程、畫面影像辨識與多裝置批次執行。因此本次將它收錄為 LLM 應用，而不只是一般投屏軟體。

需要注意產品邊界：README 表示部分進階能力來自付費的私有擴充倉庫 EscrcpyX。README 沒有逐項列出所有功能的免費／付費歸屬，因此不能推論 Copilot 或整套自動化都包含在公開倉庫中。

## 核心特色

- **嵌入式鏡像**：專用視窗隨解析度與方向調整，整合快捷操作。
- **多裝置控制**：集中管理裝置、廣播輸入，並提供批次截圖與 APK 安裝。
- **MCP Copilot**：官方描述為支援多模型對話的 Android 智慧控制助理。
- **視覺化自動化**：用步驟編排、畫面辨識與批次執行組合操作流程。
- **連線與輸入整合**：無線 ADB、區網自動發現、鍵盤映射及 Gnirehtet 反向網路共享。

scrcpy 提供投屏與控制基礎，Escrcpy 在其上提供整合介面。
這不等同於官方已公布所有 MCP 工具 schema 或可供外部 Agent 直接連接的服務端點。

## 怎麼用

### 安裝桌面程式

可先從官方 Releases 選擇對應作業系統的發行包。
macOS 的 Homebrew 指令来自官方連結的 tap README：

```bash
brew tap viarotel-org/escrcpy
brew install --cask escrcpy
```

本次僅查閱安裝文件，沒有安裝程式、開啟 ADB 或操作實體裝置。
不要為排除安裝警告而直接關閉全域系統安全檢查；應先確認下載來源與簽章。

### 建議驗證流程

1. 閱讀官方 Getting Started，依裝置條件完成連線授權。
2. 先驗證單一測試裝置的鏡像、旋轉與手動控制。
3. 再測試截圖、鍵盤映射或不含敏感資料的簡單流程。
4. 如需 Copilot，先確認所用版本、付費擴充需求與模型設定。
5. 確認單機流程可靠後，才擴展到多裝置批次操作。

### 使用界線

README 沒有給出可直接複製的外部 MCP 連線設定；此頁不自行杜撰端點。
在使用雲端模型前，應確認畫面、聊天與裝置資料的傳送範圍。
付款、刪除、發送訊息與安裝 APK 等動作應保留人工確認。

## 跟其他方案的關係

以下是依功能定位整理的比較，不是延遲、模型能力或可靠性基準測試。

| 方案 | 定位 | 與 Escrcpy 的差異 |
|------|------|-------------------|
| scrcpy | Android 鏡像與控制基礎 | 是 Escrcpy 的核心依賴，不是另一個 LLM 框架 |
| Escrcpy | 圖形化裝置整合工作台 | 加入多裝置管理、Copilot 與流程入口 |
| EscrcpyX | 私有付費擴充 | 承載部分進階功能，具體範圍需再查版本與授權 |
| 通用 MCP 主機 | 模型與工具的協作入口 | 不一定提供 Android 鏡像與裝置管理介面 |

[[MCP]] 是工具整合協議，不能單憑「支援 MCP」就認定所有主機可直接相容。
[[AI-Agent]] 則提供理解模型如何選擇動作與處理回饋的概念背景。

## 相關概念

← [[MCP]] · [[AI-Agent]]

## 來源

- [GitHub：viarotel-org/escrcpy](https://github.com/viarotel-org/escrcpy)
- [官方 Releases](https://github.com/viarotel-org/escrcpy/releases)
- [官方 Getting Started](https://viarotel.eu.org/guide/started)
- [官方 Homebrew tap](https://github.com/viarotel-org/homebrew-escrcpy)
- 原始 README：`raw/2026-09-09-viarotel-org-escrcpy.md`
- 安裝文件快照：`raw/2026-09-09-viarotel-org-escrcpy-homebrew.md`
- Stars 與公開倉庫授權依 2026-09-09 GitHub metadata；不涵蓋私有擴充授權。

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/viarotel-org/escrcpy |
| Stars | 11,399 |
| License | Apache-2.0（公開倉庫） |
| Language | JavaScript（GitHub 主要語言）；本文為繁體中文 |
| 收錄日期 | 2026-09-09 |
