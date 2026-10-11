---
title: Flutter
slug: flutter-flutter
created: 2026-10-11
updated: 2026-10-11
stars: 179524
language: Dart
topics: [cross-platform, app-framework, flutter, dart, mobile, desktop, web]
---

# Flutter

> ⭐179.5k · Google 開源的跨平台 UI SDK，以 Dart 與單一程式碼庫打造行動、Web 和桌面應用。

## 快速導航

- [[localsend-localsend]] — 以 Flutter 實作跨平台區網傳檔的應用案例。
- [[immich-app-immich]] — Flutter 行動客戶端與自架服務配合的案例。

## 是什麼

Flutter 是 Google 的開源使用者介面 SDK，目標是讓開發者以同一套程式碼建立手機、瀏覽器與桌面應用。
它以 Dart 為主要開發語言，提供 UI widgets、繪圖與合成能力、開發工具及平台整合介面。
支援的平台包括 Android、iOS、Web、Windows、macOS 與 Linux，但各平台的建置工具與部署要求仍需個別設定。

Flutter 的核心價值是共用 UI 與應用邏輯，同時允許透過平台 API 或 FFI 連接既有原生程式。
它不是聊天模型、Agent 編排框架，也不內建完整的 RAG 系統；本次來自一般 GitHub Trending 候選。
在 AI 應用架構中，可以把它當作前端介面的選項，但模型呼叫、憑證與後端服務必須另行設計，不能把這些能力歸功於 Flutter 本身。

## 核心特色

- **跨平台程式碼共用**：以單一專案服務行動、Web 與桌面場景，平台差異仍需明確處理。
- **可組合的 widgets**：內建 Material、Cupertino 等元件，也可建立自訂視覺元件。
- **圖形與合成控制**：官方 README 強調分層架構，以及 Skia、Impeller 等硬體加速繪圖技術。
- **Stateful hot reload**：開發時可快速套用程式碼變更，通常不必重新啟動整個應用或丟失狀態。
- **Dart 多目標編譯**：依目標平台採用原生機器碼，或 Web 的 JavaScript／WebAssembly 路徑。
- **原生整合**：透過 platform channels、FFI 與套件生態連接平台 API、既有程式與裝置能力。

## 怎麼用

### 安裝 SDK

以下是 macOS／Linux shell 的 Git 安裝示例；本次僅整理文件，未在本機安裝或執行 Flutter。
須先備妥 Git 與目標平台的工具鏈，並確認 `./flutter` 尚未存在。

```bash
git clone https://github.com/flutter/flutter.git --branch stable --depth 1
export PATH="$PWD/flutter/bin:$PATH"
flutter doctor
```

`PATH` 設定僅作用於目前 shell；正式使用時可依官方安裝頁設定持久路徑。
第一次執行 Flutter 工具會下載 Dart SDK 等資源，並受官方所列服務條款約束。
`flutter doctor` 用於檢查環境，不代表 Android、iOS 與桌面建置依賴會自動全部安裝完成。
也可依官方手動安裝頁下載對應作業系統與架構的 stable SDK 壓縮檔。

### 建立與執行應用

```bash
flutter create my_app
cd my_app
flutter run
```

執行時需有可用目標裝置、模擬器或已設定的 Web／桌面環境。
若專案加入 AI 功能，建議由受控後端保存服務端金鑰，不要把高權限憑證直接打包到客戶端。
這是應用架構建議，不是 Flutter 自動提供的安全保證。

## 跟其他方案的關係

下表比較軟體層級與用途，不是效能評測；完整應用與底層 SDK 不是直接替代品。

| 方案 | 定位 | 與 Flutter 的關係 |
|---|---|---|
| Flutter | 跨平台 UI SDK | 提供 widgets、開發工具與平台整合能力 |
| 個別平台原生 SDK | 各平台專用應用開發 | 可依平台需求選用，亦能透過 Flutter 平台整合介面互補 |
| [[localsend-localsend\|LocalSend]] | 區網傳檔應用 | 使用 Dart／Flutter；是 SDK 的應用案例，不是另一套 UI SDK |
| [[immich-app-immich\|Immich]] | 自架照片與影片管理 | Flutter 用在行動 App，不能取代其伺服器或 Web 前端 |
| LLM／Agent 後端 | 模型推論、工具呼叫與工作流 | 可與 Flutter 客戶端整合，功能邊界與部署生命週期不同 |

## 相關概念

← [[localsend-localsend]] · [[immich-app-immich]]

上述連結為既有專案中的跨平台 UI 實例；本次不為單一 SDK 另建碎片化概念頁。

## 來源

- [GitHub：flutter/flutter](https://github.com/flutter/flutter)
- [官方手動安裝指南](https://docs.flutter.dev/install/manual)
- [官方建立新應用指南](https://docs.flutter.dev/reference/create-new-app)
- README 原始快照：`raw/2026-10-11-flutter-flutter.md`
- GitHub metadata：`outputs/2026-10-11-flutter-flutter.json`
- 收錄資料截至 2026-10-11；未進行 SDK 安裝、跨平台建置或效能測試。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/flutter/flutter |
| Stars | 179,524（2026-10-11） |
| License | BSD-3-Clause |
| Language | Dart |
| 收錄日期 | 2026-10-11 |
