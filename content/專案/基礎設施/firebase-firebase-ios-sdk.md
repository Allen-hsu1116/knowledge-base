---
title: Firebase Apple SDK
slug: firebase-firebase-ios-sdk
created: 2026-10-01
updated: 2026-10-01
stars: 6767
language: zh-TW
topics: [generative-AI, LLM]
---

# Firebase Apple SDK

> ⭐6.8k · Apple 平台 Firebase SDK 集合，包含 Firebase AI Logic 與應用後端整合。

## 快速導航

- [[generative-AI]] — AI Logic 是本專案與生成式 AI 應用的連接點。
- [[LLM]] — 區分模型本身與應用端 SDK。

## 是什麼

`firebase/firebase-ios-sdk` 保存 Apple 平台 Firebase libraries 的原始碼，但不包含 FirebaseAnalytics 的原始碼。它是廣泛的 App 開發 SDK 集合，提供認證、資料庫、儲存、訊息及其他服務的整合介面，不是專門訓練或推論 LLM 的框架。

本次收錄的 LLM 關聯在於 repository 包含 Firebase AI Logic（`FirebaseAI`）。README 另公告 Gemini Foundation Models framework adapter 已進入 preview，並提供官方入門文件；preview 不應被解讀為所有 Apple 平台都可用，也不能據此推論為完全離線模型服務。

選擇這套 SDK 的典型情境，是已有 Apple App，希望把 AI 功能與既有 Firebase 服務一起整合。GitHub 主要語言顯示 C++，不表示 App 必須用 C++ 開發；README 同時提供 Swift Package Manager 的整合路徑。

## 核心特色

- **Firebase AI Logic**：以 `FirebaseAI` library 為生成式 AI 整合入口。
- **App 身分與保護**：同一 repository 包含 Authentication 與 App Check。
- **資料與儲存**：包含 Cloud Firestore、Realtime Database、Storage。
- **營運工具**：包含 Crashlytics、Remote Config、Performance Monitoring 等產品。
- **Apple 套件整合**：提供 Swift Package Manager、CocoaPods 與其他安裝選項。
- **平台支援有差異**：README 將 macOS、Catalyst、tvOS 列為 beta 支援；visionOS、watchOS 為 community-supported，仍需查看各產品支援矩陣。
- **開源範圍有邊界**：FirebaseAnalytics 不是開源；安裝流程可包含其預編譯 binaries。

## 怎麼用

### 建議路徑：Swift Package Manager

在 Xcode 的套件依賴介面加入下列 repository URL，選擇合適的發布版本與所需產品；AI 功能以 `FirebaseAI` 為入口，詳細初始化依官方文件操作。

```text
https://github.com/firebase/firebase-ios-sdk.git
```

安裝套件後，仍需依 Firebase Apple setup 完成專案與 App 設定，不能把加入依賴當成已可連線使用服務。

### 既有 CocoaPods 專案的安裝指令

README 提供 CocoaPods 安裝路徑；以下命令應在已設定 Firebase pods 的 App 目錄執行，而不是對 SDK 原始碼目錄直接執行：

```bash
# 前提：Podfile 已宣告所需的 Firebase 產品
pod install
```

**遷移提醒**：README 公告 2026 年 10 月將停止向 CocoaPods 發布新版；既有版本仍可安裝。新整合優先參考 Swift Package Manager，實際時程與遷移細節以官方指南為準。

### 導入前檢查

1. 先確認目標 Apple 平台和 Firebase 產品支援矩陣。
2. AI Logic 與 preview adapter 分別依對應官方文件設定，不假設 API 與一般 Firebase library 相同。
3. 確认 Firebase 服務條款、資料流向、權限及費用後再交付使用者。
4. 本次只收錄文件，沒有安裝 SDK、建立 Firebase 專案或呼叫模型。

## 跟其他方案的關係

| 路線 | 主要定位 | 差異與限制 |
| --- | --- | --- |
| Firebase Apple SDK | Apple App 的 Firebase 服務與 AI 整合 | 範圍遠超 LLM，須逐項確認平台支援 |
| 直接整合模型 API | 應用自行處理模型請求 | 需要另行設計認證、資料保護與服務整合 |
| 自架模型推論服務 | 自行管理模型與運算資源 | 並非本 SDK 的定位；仍需 App 端串接 |
| Gemini Foundation Models adapter | README 公告的 AI Logic preview 入口 | 不代表穩定版或所有平台均受支援 |

此表是架構選擇的整理，不是實測效能或價格比較。

## 相關概念

← [[generative-AI]] · [[LLM]]

## 來源

- [GitHub](https://github.com/firebase/firebase-ios-sdk)
- [README](https://github.com/firebase/firebase-ios-sdk/blob/main/README.md)
- README 延伸文件：[Apple setup](https://firebase.google.com/docs/ios/setup)、[AI Logic](https://firebase.google.com/docs/ai-logic)
- README 延伸文件：[CocoaPods 遷移](https://firebase.google.com/docs/ios/cocoapods-deprecation)
- 原始快照：`raw/2026-10-01-firebase-firebase-ios-sdk.md`
- Metadata：`raw/2026-10-01-firebase-firebase-ios-sdk.metadata.json`

---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/firebase/firebase-ios-sdk |
| Stars | 6,767（2026-10-01 快照） |
| License | Apache-2.0；Firebase 服務另受服務條款約束 |
| Language | C++（GitHub 主要語言；App 可透過 Swift 等介面整合） |
| 收錄日期 | 2026-10-01 |
