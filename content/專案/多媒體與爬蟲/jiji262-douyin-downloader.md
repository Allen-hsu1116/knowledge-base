---
title: Douyin Downloader
slug: jiji262-douyin-downloader
created: '2026-09-14'
updated: '2026-09-14'
stars: 11360
language: zh-TW
topics:
- 網頁爬蟲
- free-software
---

# Douyin Downloader

> ⭐11.4k · 支援抖音單項／帳號批次下載、完整性檢查與選配語音轉錄的 Python 工具

## 快速導航

- [[網頁爬蟲]] — 主題與延伸閱讀
- [[free-software]] — 使用情境與部署考量

## 是什麼

Douyin Downloader 以 Python 提供抖音影片、圖集、合集、音樂與使用者頁面的下載工作流。除了連結解析與批次下載，它也處理重試、限速、下載歷史及檔案完整性，適合有權保存的社群內容整理。

README 的概述使用 SQLite deduplication 一詞，但細部表格明確區分 SQLite 歷史與磁碟式增量跳過：SQLite 保存紀錄，不負責決定增量停止。選配 OpenAI Transcriptions API 可將媒體接到文字處理流程；核心下載器本身不是 LLM Agent。

## 核心特色

- **多種抖音資源**：影片、圖集、合集、音樂、帳號頁與登入帳號收藏。

- **可恢復下載管理**：可調併發、退避重試、速率限制與 Rich 進度條。

- **磁碟增量判斷**：依既有檔案跳過或重抓，SQLite 用於下載歷史。

- **完整性檢查**：檢查 Content-Length，清理未完成檔案。

- **瀏覽器 fallback**：API 分頁受阻時可開啟瀏覽器，支援使用者手動處理 CAPTCHA。

- **選配 API 與轉錄**：可啟動 FastAPI 服務並串接 OpenAI 語音轉錄 API。

## 怎麼用

README 要求 Python 3.8+。以下使用隔離虛擬環境，避免把 requirements 安裝到系統 Python；cookie 必須由自己的合法登入取得。

### 安裝與啟動

```bash
git clone https://github.com/jiji262/douyin-downloader.git
cd douyin-downloader
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
cp config.example.yml config.yml
# 先編輯 config.yml 的連結、路徑與登入資訊
python run.py -c config.yml
```

### 初次使用流程

1. 先用單一、已授權的影片測試路徑與 cookie，再擴大到帳號批次。

2. 需要 fallback 時依 README 安裝 Playwright 與 Chromium；不要自動繞過 CAPTCHA。

3. 分開設定 post／like／mix／music 與 collect／collectmix，後兩者目前不能混用前者。

### 限制與導入注意

- browser fallback 只有 post 模式被文件標示完整驗證，不能推論其他分頁模式同樣可靠。

- HLS 直播目前只保存播放清單；要得到可播放影片還需額外處理，直播端點屬實驗功能。

- Douzy 桌面介面仍標為 closed beta，不能把桌面展示當作 CLI 全部平台支援的證據。

- 轉錄會把音訊送到所選 API，需考量個資、內容授權與費用。

## 跟其他方案的關係

以下為依文件定位整理的選型比較，不是效能排名或完整功能實測。

| 方案 | 核心定位 | 適合情境 |
|---|---|---|
| Douyin Downloader | 抖音 CLI、設定檔與批次處理 | 需要可重跑的帳號下載流程 |
| [[tonhowtf-omniget]] | 多站桌面媒體工作台 | 偏好圖形化與下載後工具 |
| [[NanmiCoder-MediaCrawler]] | 跨社群資料採集 | 研究多平台結構化內容 |

## 相關概念

← [[網頁爬蟲]] · [[free-software]]

## 來源

- [GitHub](https://github.com/jiji262/douyin-downloader)
- [README](https://github.com/jiji262/douyin-downloader/blob/main/README.md)
- 原始 README 快照：`raw/2026-09-14-jiji262-douyin-downloader.md`
- GitHub metadata：`raw/2026-09-14-jiji262-douyin-downloader.metadata.json`

本頁依收錄日取得的官方文件整理；未安裝或執行候選專案，功能與相容性以實際版本為準。

---

| 欄位 | 資料 |
|---|---|
| GitHub | [jiji262/douyin-downloader](https://github.com/jiji262/douyin-downloader) |
| Stars | 11,360（2026-09-14 快照） |
| License | MIT |
| Language | Python（程式碼）；zh-TW（本文） |
| 收錄日期 | 2026-09-14 |
