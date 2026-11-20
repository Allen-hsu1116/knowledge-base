---
title: "Ghost Downloader 3"
slug: XiaoYouChR-Ghost-Downloader-3
created: 2026-11-20
updated: 2026-11-20
stars: 12719
language: zh-TW
topics: ["self-hosted", "llm-knowledge-base"]
---

# Ghost Downloader 3

> ⭐12.7k · 多協議、跨平台的下載工具，可支援知識素材蒐集但不是 LLM 框架。

## 快速導航

- [[self-hosted]]
- [[llm-knowledge-base]]

## 是什麼

Ghost Downloader 從協助創作者管理素材的工具，發展成跨 Windows、macOS、Linux 與 Android 的下載應用。它將一般檔案、串流媒體、BT 與其他協議放進統一介面，並提供瀏覽器銜接與 CLI。

在本知識庫中，它屬於資料取得周邊工具：可協助下載有權取得的文件或影音，再交給後續整理流程。README 提到 GitHub 與 HuggingFace 加速，不代表具備模型推論、RAG 或內容理解能力。

## 核心特色

- 多協議整合：HTTP、Magnet/BT、FTP、M3U8、MPEG-DASH 與 eD2k。

- 分塊下載：README 宣稱免檔案合併與頻寬偵測；實際效能取決於環境。

- 瀏覽器整合：偵測媒體並交給桌面程式，亦涉及登入狀態傳遞。

- 命令列管理：ghd 支援 probe、add、tasks、pause、start 與 wait。

- 第三方控制：提供 aria2 相容 RPC，Feature Packs API 仍在穩定化。

## 怎麼用

### 安裝與起步

```bash
# macOS：開啟官方 releases，下載符合架構的安裝檔
open https://github.com/XiaoYouChR/Ghost-Downloader-3/releases/latest
# 安裝後在 Settings → Command Line Tool 安裝 ghd
ghd tasks
```

上面是 macOS 安裝入口與安裝後驗證命令，不是無人值守安裝器。README 要求 macOS 13+；其他平台及 CPU 相容性請先核對官方版本表。

### 使用與驗證邊界

只下載合法授權內容，瀏覽器登入狀態與 RPC 端點須妥善保護。README 的反偵測宣傳不代表可繞過網站限制或授權要求。

本頁是官方文件閱讀與收錄結果，未在本機安裝或實測此專案。

## 跟其他方案的關係

下表比較工作層次，不是效能排名或替代方案的實測結論。

| 方案 | 定位 | 選擇時的界線 |
|---|---|---|
| Ghost Downloader | 多協議 GUI 與 CLI 整合 | 適合管理下載任務 |
| 瀏覽器內建下載 | 基本檔案取得 | 無需額外桌面工具 |
| 知識庫 ingest | 來源保存與內容編譯 | 下載完成後仍要驗證與整理 |

## 相關概念

← [[self-hosted]] · [[llm-knowledge-base]]

## 來源

- [GitHub 與 README](https://github.com/XiaoYouChR/Ghost-Downloader-3)
- [官方使用文件](https://gd.xychr.com/en/docs/)
- 原始快照：`raw/2026-11-20-XiaoYouChR-Ghost-Downloader-3.md`
- API metadata：`raw/2026-11-20-XiaoYouChR-Ghost-Downloader-3.metadata.json`
- [授權條款](https://github.com/XiaoYouChR/Ghost-Downloader-3/blob/main/LICENSE)

Stars 是收錄當日快照；安裝方式與功能以官方最新文件為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/XiaoYouChR/Ghost-Downloader-3 |
| Stars | 12,719 |
| License | GPL-3.0 |
| Language | Python |
| 收錄日期 | 2026-11-20 |
