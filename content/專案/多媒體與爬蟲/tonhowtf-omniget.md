---
title: OmniGet
slug: tonhowtf-omniget
created: '2026-09-14'
updated: '2026-09-14'
stars: 11666
language: zh-TW
topics:
- 網頁爬蟲
- free-software
---

# OmniGet

> ⭐11.7k · 整合 yt-dlp、多站下載與轉錄／閱讀／學習工具的跨平台桌面媒體工作台

## 快速導航

- [[網頁爬蟲]] — 主題與延伸閱讀
- [[free-software]] — 使用情境與部署考量

## 是什麼

OmniGet 將媒體取得與下載後處理放進同一個桌面應用：貼上連結、選擇品質、加入佇列，再透過播放器、閱讀器或工具區處理本地檔案。它以原生擷取器加上 yt-dlp 支援多種平台，README 的 1,800+ 站台數屬於上游宣稱，並非本次逐站驗證結果。

它不是 LLM 框架，而是可作為研究素材收集與語音轉錄的周邊工具。README 另外列出 Whisper transcription、內建聊天與學習插件；下載主流程仍不應被描述成必須由 AI 決策的 Agent。

## 核心特色

- **圖形化多站下載**：原生支援部分網站，其餘透過 yt-dlp 擴展。

- **下載佇列與重試**：顯示速度、階段、ETA，提供恢復與退避重試。

- **登入內容銜接**：瀏覽器擴充可傳遞 cookie 與 referer，必須保護這些登入憑證。

- **下載後工作台**：包含媒體播放、PDF／EPUB 閱讀、轉錄與學習相關工具。

- **跨平台封裝**：提供 Windows、macOS、Linux 發布檔及套件管理安裝方式。

## 怎麼用

以下是 README 列出的 macOS Homebrew 安裝指令；需要已備妥 Homebrew。Windows／Linux 請改用官方 Releases 的對應封裝。

### 安裝與啟動

```bash
brew install --cask tonhowtf/tap/omniget
```

### 初次使用流程

1. 開啟程式並選擇語言、主題，再依初始設定安裝 yt-dlp 與 FFmpeg。

2. 貼上自己有權下載的連結，檢查預覽與品質後才開始下載。

3. 需要登入內容時再配對瀏覽器擴充，僅授予所需站台的 cookie 存取。

4. 下載後確認檔案可播放，再依需要使用轉錄、閱讀或學習工具。

### 限制與導入注意

- 開源工具不賦予課程再分發或規避 DRM 的權利，應遵守授權與平台條款。

- README 表示發行檔沒有付費簽章；應先核對官方來源，不建議無條件關閉系統安全檢查。

- 本次只核對文件，未安裝應用、未匯入 cookie，也未驗證各站下載成功率。

## 跟其他方案的關係

以下為依文件定位整理的選型比較，不是效能排名或完整功能實測。

| 方案 | 核心定位 | 適合情境 |
|---|---|---|
| OmniGet | 桌面介面與下載後處理 | 偏好圖形化與整合工具 |
| yt-dlp | 下載引擎與命令列參數 | 需要可組合腳本的熟練使用者 |
| [[jiji262-douyin-downloader]] | 抖音批次與 API／CLI 工作流 | 重視抖音帳號內容與增量下載 |

## 相關概念

← [[網頁爬蟲]] · [[free-software]]

## 來源

- [GitHub](https://github.com/tonhowtf/omniget)
- [README](https://github.com/tonhowtf/omniget/blob/main/README.md)
- 原始 README 快照：`raw/2026-09-14-tonhowtf-omniget.md`
- GitHub metadata：`raw/2026-09-14-tonhowtf-omniget.metadata.json`

本頁依收錄日取得的官方文件整理；未安裝或執行候選專案，功能與相容性以實際版本為準。

---

| 欄位 | 資料 |
|---|---|
| GitHub | [tonhowtf/omniget](https://github.com/tonhowtf/omniget) |
| Stars | 11,666（2026-09-14 快照） |
| License | GPL-3.0 |
| Language | Rust（程式碼）；zh-TW（本文） |
| 收錄日期 | 2026-09-14 |
