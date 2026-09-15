---
title: OpenDisplay
slug: peetzweg-opendisplay
created: 2026-09-15
updated: 2026-09-15
stars: 3570
language: zh-TW
topics: [productivity, privacy, media-streaming, swift]
---

# OpenDisplay

> ⭐3.6k · 把 iPhone、iPad 或閒置 Mac 變成 Mac 的真正延伸螢幕。

## 快速導航

- 🧰 [[productivity]] — 重用裝置建立多螢幕工作區。
- 🔒 [[privacy]] — 本地傳輸與網路加密是不同的安全層次。

## 是什麼

OpenDisplay 是以 Swift 開發的開源延伸顯示器工具。
Mac 發送端建立虛擬顯示器並擷取畫面，再把影片串流送至 iPhone、iPad 或另一部 Mac。
macOS 會將它視為可排列、可拖曳視窗進入的第二螢幕，而不只是把主畫面鏡像到另一端。

它定位為 Sidecar、Duet Display、Luna Display 的自管替代方案，不需要帳號或專用硬體接收器。
USB 模式透過 macOS 內建 usbmuxd 連接行動裝置，WiFi 模式使用 Bonjour 發現裝置。
這是一般桌面生產力工具，不是 LLM 或 Computer Use Agent；收錄原因是搜尋腳本的 Trending 候選。

## 核心特色

- **真正延伸桌面**：使用 CGVirtualDisplay 建立虛擬顯示器，也提供鏡像模式。
- **有線與無線**：iOS 端支援 USB 或 WiFi；Mac 接收端可透過網路連線使用。
- **HiDPI 與旋轉**：以裝置面板解析度呈現，支援橫向與直向切換。
- **觸控回傳**：支援點擊、拖曳與雙指捲動；Apple Pencil 進階支援仍列於 roadmap。
- **硬體 H.264 管線**：ScreenCaptureKit 擷取、VideoToolbox 編碼、AVSampleBufferDisplayLayer 顯示。
- **舊 Mac 再利用**：獨立 OpenDisplay Receiver 可讓另一部 Mac 成為顯示端。

## 怎麼用

### 選擇安裝方式

一般使用者可從 GitHub Releases 下載 OpenDisplay.dmg，拖入 Applications。
Mac 發送端要求 macOS 14+，Mac 接收端要求 macOS 12+。
iPhone／iPad 使用官方 TestFlight，或透過 Xcode 簽署安裝。
README 對行動端最低版本有兩種寫法：Compatible apps 寫 16.4+，安裝節寫 16+；請以實際版本下載條件為準。

### 從原始碼建置

以下依 README 整理，僅作安裝文件，未在本次收錄中執行。
需先有 Xcode 15+ 與用於簽署的 Apple 開發者帳號。

```bash
brew install xcodegen
git clone https://github.com/peetzweg/opendisplay.git
cd opendisplay
```

在專案 .env 填入自己的 DEVELOPMENT_TEAM，接著執行：

```bash
./generate.sh
xcodebuild -project OpenSidecar.xcodeproj -scheme OpenSidecarMac \
  -configuration Debug -derivedDataPath build build
```

iOS target 為 OpenSidecariOS，可在 Xcode 選擇自己的 Team 與裝置後建置。
專案檔仍使用 OpenSidecar 名稱，不能擅自改成 OpenDisplay.xcodeproj。

### 連線與權限

1. 先在接收裝置開啟 App，再由 Mac 發送端連線。
2. USB 需支援資料傳輸的線材，必要時解鎖並信任電腦。
3. 授予螢幕錄製權限以擷取畫面；觸控操作另需輔助使用權限。
4. WiFi 模式需兩端的區域網路權限，且接收 App 保持前景。

### 安全與相容性界線

CGVirtualDisplay 是私有 API，系統更新可能破壞相容性。
README 將 WiFi 加密與配對碼列為 roadmap，不能因為「不經第三方伺服器」便宣稱傳輸已加密。
敏感畫面優先使用可信任的有線連接，並核對目前版本的隱私文件。
音訊目前不在範圍內，Mac 接收端鍵盤／滑鼠回傳仍列為後續工作。

## 跟其他方案的關係

下表是依 README 定位整理，不是独立量測或即時競品價格調查。

| 方案 | 定位 | 主要考量 |
|---|---|---|
| OpenDisplay | 開源、本地延伸螢幕 | 私有 API 與 WiFi 加密限制需留意 |
| Apple Sidecar | Apple 內建 iPad 延伸螢幕 | README 指出 Apple ID 與硬體相容限制 |
| Duet Display | 商業延伸顯示方案 | README 將其列為訂閱制替代對象 |
| Luna Display | 硬體搭配延伸顯示方案 | README 指出需要專用 dongle |
| [[localsend-localsend\|LocalSend]] | 區網檔案交換 | 不建立虛擬顯示器，兩者可互補 |

## 相關概念

← [[productivity]] · [[privacy]]

## 來源

- [GitHub：peetzweg/opendisplay](https://github.com/peetzweg/opendisplay)
- [官方隱私說明](https://peetzweg.github.io/opendisplay/privacy.html)
- [傳輸協議](https://github.com/peetzweg/opendisplay/blob/main/PROTOCOL.md)
- README 原始快照：`raw/2026-09-15-peetzweg-opendisplay.md`
- GitHub metadata：`outputs/2026-09-15-peetzweg-opendisplay.json`
- 收錄依據為當日 README 與 metadata；未實测延遲、裝置相容性或安裝。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/peetzweg/opendisplay |
| Stars | 3,570（2026-09-15） |
| License | GPL-3.0；README 註明 v0.4.x 及以前維持 MIT |
| Language | Swift |
| 收錄日期 | 2026-09-15 |
