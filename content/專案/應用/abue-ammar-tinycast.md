---
title: "Tinycast"
slug: abue-ammar-tinycast
created: 2026-09-18
updated: 2026-09-18
stars: 6149
language: zh-TW
topics: ["productivity", "privacy"]
---

# Tinycast

> ⭐6.1k · 原生 macOS 啟動器、剪貼簿與快捷操作，附預設關閉的 AI 功能

## 快速導航

- [[productivity]]
- [[privacy]]

## 是什麼

Tinycast 是以 SwiftUI 與 AppKit 製作的 macOS 啟動器。主要功能是用快捷鍵叫出命令面板，搜尋 App、檔案、剪貼簿紀錄及日常動作，而不是提供自主 Agent runtime。

README 列出 AI chat 和對選取文字的改寫、翻譯、摘要等 Quick Actions，AI 功能預設關閉。它也宣稱能把 Raycast extensions 呈現為原生 SwiftUI；不應據此推論所有擴充都完全相容。

專案強調無 Electron、無 telemetry 和低記憶體占用。低於 100 MB 是專案描述，並非本次量測；啟用外部 AI 或第三方擴充後，仍須另外檢查資料傳送範圍。

## 核心特色

- **原生介面**：SwiftUI＋AppKit，README 宣稱零第三方依賴。

- **啟動與搜尋**：模糊搜尋 App，檔案搜尋使用 Spotlight。

- **剪貼簿歷史**：搜尋文字和圖片，貼回原本使用的 App。

- **快捷工作流**：Quicklinks、Apple Shortcuts、Snippets 與 shell commands。

- **視窗管理**：包含分割、調整大小、切換顯示器等動作。

- **選用 AI**：AI chat 與選取文字處理，預設不啟用。

## 怎麼用

### 安裝與啟動

README 要求 macOS 26+；以下為 Apple Silicon 的 Homebrew 路徑。第三方 tap 必須先審閱並決定是否信任。

```bash
brew trust --tap abue-ammar/tinycast
brew tap abue-ammar/tinycast
brew install --cask tinycast
```

### 使用流程

1. Intel macOS 26 請依 README 改用 tinycast-universal cask。
2. 在 Settings → General 設定全域快捷鍵，再用面板搜尋 App。
3. 需要貼上與文字展開時才授予 Accessibility，AI 功能另行決定是否啟用。

### 限制與注意

- 本次沒有安裝 App，也沒有執行任何清除 quarantine 的命令。
- 剪貼簿可能含敏感資料，應審閱保存、外部擴充與 AI 使用設定。
- GitHub API 回傳 NOASSERTION；已讀取 LICENSE，授權正文為 AGPL-3.0-or-later。

## 跟其他方案的關係

以下是依功能分層的編輯比較，不是實测效能排名。

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| Tinycast | 原生 macOS 命令面板 | 整合啟動器與選用 AI |
| Raycast extensions | 擴充能力來源 | Tinycast 宣稱相容執行，需逐項驗證 |
| 自主 AI Agent | 多步推理與工具迴圈 | Tinycast 的 AI 快捷操作不等於通用 Agent |

## 相關概念

← [[productivity]] · [[privacy]]

## 來源

- [GitHub](https://github.com/abue-ammar/tinycast)
- [官方 README](https://github.com/abue-ammar/tinycast/blob/main/README.md)
- 原始快照：`raw/2026-09-18-abue-ammar-tinycast.md`
- [授權正文](https://github.com/abue-ammar/tinycast/blob/main/LICENSE)

---

| 欄位 | 內容 |
|---|---|
| GitHub | [abue-ammar/tinycast](https://github.com/abue-ammar/tinycast) |
| Stars | 6,149（2026-09-18 擷取） |
| License | AGPL-3.0-or-later |
| Language | Swift（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-09-18 |
