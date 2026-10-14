---
title: xtool
slug: xtool-org-xtool
created: 2026-10-14
updated: 2026-10-14
stars: 9380
language: Swift
topics: [ios, swift, swift-package-manager, developer-tools]
---

# xtool

> ⭐9.4k · 以 SwiftPM 在 Linux、Windows／WSL 與 macOS 建置、簽署並安裝 iOS App 的命令列工具。

## 快速導航

- [[Coding-Agent-CLI]] — 可供開發流程呼叫的外部工具，不是 Coding Agent 本身。
- [[twostraws-SwiftUI-Agent-Skill]] — SwiftUI 審查知識與實際建置工具的分工。
- [[llvm-llvm-project]] — 編譯工具鏈的背景與定位。

## 是什麼

xtool 是以 Swift 開發、採 MIT 授權的跨平台 iOS 開發工具。它使用 Swift Package Manager 描述專案，將 SwiftPM package 建成 iOS App，再處理簽署與裝置安裝，讓開發者可以使用自己偏好的編輯器與終端機。

專案自稱跨平台 Xcode replacement，但不能解讀成完全不需要 Apple SDK。官方 macOS 安裝文件仍要求 Xcode 提供 iOS SDK 與工具鏈；Linux 路徑需要合法取得 Xcode.xip，以產生 Darwin Swift SDK。Windows 的文件路徑是 WSL，而非原生 Windows 執行環境。

本次由 GitHub Trending 候選收錄，歸於一般開發基礎設施，並非 LLM 框架。它與 AI coding 的關係是提供可執行的建置與部署環節；目前查閱的 README 沒有宣告原生 MCP 或特定 Agent 整合。

## 核心特色

- **SwiftPM 驅動**：以 package 與 `xtool.yml` 描述程式碼及 App 打包資訊。
- **跨平台開發流程**：支援 Linux、macOS，Windows 透過 WSL 與裝置連接設定使用。
- **簽署與裝置安裝**：整合憑證、App ID、Provisioning Profile 與 iOS 裝置部署流程。
- **Apple Developer Services CLI**：提供 `auth`、`ds` 等命令處理身分與服務互動。
- **裝置管理**：README 列出 `devices`、`install`、`uninstall`、`launch` 子命令。
- **XKit 函式庫**：其他 Swift 程式可透過 SwiftPM 引入，用程式方式操作相關服務與裝置。
- **編輯器協作**：教學以 Build Server Protocol 設定及 SourceKit-LSP 支援編輯器功能。

## 怎麼用

### macOS 安裝

先安裝並啟動 Xcode，完成 SDK 安裝，再檢查工具鏈。

```bash
xcrun -sdk iphoneos -show-sdk-path
swift --version
brew install xtool-org/tap/xtool
xtool --help
```

### 帳號與開發流程

以下是官方文件中的操作入口；登入及裝置信任必須由使用者自己完成。

```bash
xtool setup
xtool new
# 進入新建的 package 目錄後：
xtool dev
```

`xtool setup` 提供 API Key 與密碼登入選項。API Key 需付費 Apple Developer Program 資格，官方建議使用具 App Manager 角色的 Team Key；密碼模式依賴 Apple 私有 API，應審慎管理帳號與憑證。

`xtool dev` 會建置並嘗試安裝到裝置。首次可能需要 USB 配對、信任電腦、開啟 Developer Mode 及信任開發者憑證；這些互動不是單純編譯成功就能省略。

### Linux／Windows 注意事項

- 目前官方 Linux 文件要求 Swift 6.4 工具鏈、`usbmuxd` 與 Xcode 27 的 XIP。
- Windows 需先設定 WSL，並處理 USB passthrough／裝置連線。
- 依官方文件下載適合架構的 AppImage；設定時從 Xcode.xip 產生 SDK。
- SDK 與帳號需求會隨版本改變，實際操作前應重新核對官方安裝文件。

本次僅核對 README、授權與官方教學，未安裝 xtool、登入 Apple 帳號或部署真機 App。

## 跟其他方案的關係

| 方案 | 主要角色 | 與 xtool 的差異或關係 |
|---|---|---|
| Xcode | Apple 開發環境與 SDK／工具鏈來源 | xtool 改用 SwiftPM／CLI 工作流，不代表可免除 SDK 需求 |
| SwiftPM | Swift package 建置與依賴管理 | xtool 補上 iOS App 打包、簽署及裝置部署 |
| [[twostraws-SwiftUI-Agent-Skill\|SwiftUI Pro]] | 提供 Agent 的 SwiftUI 審查知識 | 屬於知識與建議層，不能代替實際建置及真機驗證 |
| [[Coding-Agent-CLI\|Coding Agent CLI]] | 由模型規劃並呼叫開發工具 | xtool 本身沒有 LLM，僅可作為外部開發工具使用 |

此比較是功能層次的區分，不代表上述 Agent 或技能已經提供官方 xtool 整合。

## 相關概念

← [[Coding-Agent-CLI]] · [[twostraws-SwiftUI-Agent-Skill]] · [[llvm-llvm-project]]

## 來源

- [GitHub：xtool-org/xtool](https://github.com/xtool-org/xtool)
- [macOS 官方安裝文件](https://github.com/xtool-org/xtool/blob/main/Documentation/xtool.docc/Installation-macOS.md)
- [Linux／Windows 官方安裝文件](https://github.com/xtool-org/xtool/blob/main/Documentation/xtool.docc/Installation-Linux.md)
- [第一個 App 教學](https://github.com/xtool-org/xtool/blob/main/Documentation/xtool.docc/First-app.tutorial)
- README 原始快照：`raw/2026-10-14-xtool-org-xtool.md`
- Metadata 快照：`raw/2026-10-14-xtool-org-xtool.metadata.json`
- 補充文件快照：`raw/2026-10-14-xtool-org-xtool-docs.md`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/xtool-org/xtool |
| Stars | 9,380（2026-10-14 擷取） |
| License | MIT（已核對 LICENSE.md） |
| Language | Swift |
| 收錄日期 | 2026-10-14 |
