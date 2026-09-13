---
title: SmartTube
slug: yuliskov-SmartTube
created: '2026-09-13'
updated: '2026-09-13'
stars: 33214
language: zh-TW
topics:
- media-streaming
- free-software
---

# SmartTube

> ⭐33.2k · Android TV 開源媒體客戶端，提供 SponsorBlock、播放控制與電視最佳化介面；非 LLM 專案。

## 快速導航

- [[media-streaming]] — 相關概念與其他實作
- [[free-software]] — 相關概念與其他實作

## 是什麼

SmartTube 是面向 Android TV 與電視盒的開源媒體客戶端，用電視遙控器友善的介面瀏覽與播放公開影音內容。它不需要 Google Services，重點是觀看體驗與播放設定，而不是自架媒體伺服器或內容生成。

此 repo 由 GitHub Trending 來源帶入，並非 LLM、Agent 或 AI 推論工具。本頁依實際功能歸到多媒體與爬蟲，避免將熱門排行誤解成 AI 關聯度。手機和平板不在官方支援範圍，Tizen、webOS、Apple TV 與採 VegaOS 的新 Fire TV 裝置也不能直接使用。

收錄時 README 頂部揭露開發環境遭惡意軟體感染、部分建置可能受影響與公鑰可能外洩。維護者表示已重建環境並掃描新建置；這是維護者聲明，不代表本知識庫完成供應鏈安全審計。安裝前應先確認最新公告、發布來源及簽章。

## 核心特色

- **電視操作介面**
  以大螢幕、遙控器和可自訂按鈕為中心，不把桌面或手機 UI 硬搬到電視。

- **SponsorBlock 整合**
  按類別跳過社群已標註的贊助、片頭等片段；覆蓋率取決於外部資料，不能保證每支影片都有效。

- **高規格播放**
  README 列出 8K、60fps 與 HDR 支援；實際效果仍取決於裝置解碼能力、片源與網路。

- **播放速度與背景播放**
  可調速度並使用支援裝置上的子母畫面；部分速度可能掉幀。

- **裝置配對與更新**
  手機投放需用 TV code 配對，不能假定同一 Wi-Fi 會自動發現；應用內提供更新檢查與 changelog。

## 怎麼用

### 環境與安裝

先確認電視採 Android，閱讀安全公告並從官方 Releases 選取相容 APK。下列為 ADB 側載示例，需電視已授權連線；smarttube.apk 是經使用者確認來源後下載的本地檔名。

```bash
# 只列出已授權的裝置
adb devices
# 將已驗證來源的 APK 安裝到電視
adb install -r ./smarttube.apk
```

### 使用流程

1. 啟動後先測試一支影片與音訊，再調整畫質、HDR、播放速度。
2. 需要手機投放時，在 Remote control 取得 TV code，再於手機 YouTube 輸入配對碼。
3. 若曾使用受影響建置，可依 README 前往 Google 帳號的第三方連線頁撤銷 YouTube TV／Google Drive 授權。

### 限制與注意事項

README 頂部新增 F-Droid 入口，但較舊安裝段落仍寫『未發布在任何 app store』，存在文件時序不一致。本頁以官方 GitHub Releases 作為核對起點，不推薦第三方 APK 轉載站，也不保證目前建置無惡意程式。

## 跟其他方案的關係

以下依文件描述做定位比較，不是實測效能排行。

| 方案 | 核心定位 | 選擇重點 |
|---|---|---|
| SmartTube | Android TV 播放與觀看介面 | 重視 SponsorBlock、速度和按鈕控制時評估；先處理供應鏈風險 |
| 官方 YouTube 電視 App | 官方平台整合 | 若重視裝置投放與語音搜尋相容性，應與官方客戶端實機比較 |
| 自架媒體伺服器 | 管理並串流自己的內容庫 | 與 SmartTube 消費公開來源內容的定位不同，並非直接替代 |

觀看介面可替代，不代表平台規則、帳號風險或內容授權限制消失；專案未提供 LLM 能力。

## 相關概念

← [[media-streaming]] · [[free-software]]

## 來源

- [GitHub repository](https://github.com/yuliskov/SmartTube)
- [本次 README 所在分支](https://github.com/yuliskov/SmartTube/blob/master/README.md)
- 原始 README 與來源欄位：`raw/2026-09-13-yuliskov-SmartTube.md`
- GitHub metadata 快照：`raw/2026-09-13-yuliskov-SmartTube.metadata.json`
- https://github.com/yuliskov/SmartTube/releases

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/yuliskov/SmartTube |
| Stars | 33,214（2026-09-13 快照） |
| License | MIT |
| Language | Java |
| 收錄日期 | 2026-09-13 |
