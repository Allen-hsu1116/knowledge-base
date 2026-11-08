---
title: Sherlock
slug: sherlock-project-sherlock
created: '2026-11-08'
updated: '2026-11-08'
stars: 100478
language: Python
topics:
- 網頁爬蟲
- pentesting
github_topics:
- cli
- cti
- cybersecurity
- forensics
- hacktoberfest
- information-gathering
- infosec
- linux
- osint
- pentesting
- python
- python3
- reconnaissance
- redteam
- sherlock
- tools
---

# Sherlock

> ⭐100.5k · 依使用者名稱搜尋多個社群網站的公開帳號線索；不是 LLM 或身分認證工具。

## 快速導航

[[網頁爬蟲]] · [[pentesting]]

## 是什麼

Sherlock 是 Python 撰寫的命令列 OSINT 工具，以一個或多個使用者名稱查詢不同社群網站。README 標示涵蓋 400 多個網站，主要輸出是可能存在的公開帳號連結，而非聊天模型、代理框架或個人資料推論服務。

它適合自有帳號盤點或明確授權的偵察工作。相同名稱可能屬於不同人，網站錯誤頁與反自動化措施亦可能造成誤判；查到網址不代表已確認真實身分。這次因 GitHub Trending 來源納入，應視為資料蒐集周邊工具，不宣稱有內建 AI／MCP 整合。

## 核心特色

- **跨站名稱查詢**：以同一使用者名稱查詢站點清單，減少逐站手動輸入。

- **批次查詢**：單次命令可接受多個名稱，輸出可按名稱分開保存。

- **結構化輸出**：提供 CSV、XLSX 及文字輸出選項，方便後續人工核對。

- **範圍控制**：透過 --site 限定網站，並可設定請求 timeout。

- **站點資料可調整**：支援本地資料及指定 JSON 來源，應只載入可信站點定義。

## 怎麼用

### 安裝

以下是官方文件的使用示例，本次僅收錄文件，未執行候選專案。

```bash
pipx install sherlock-project
sherlock --help
```

### 基本操作

```bash
# 僅對自有或已取得授權的名稱執行
sherlock YOUR_OWN_USERNAME --site GitHub --csv
```

- YOUR_OWN_USERNAME 是待替換佔位符，本次收錄未執行任何人物或帳號調查。

- README 警告部分第三方 ParrotOS／Ubuntu 套件可能損壞，安裝來源應以官方文件為準。

- 僅保存必要的公開結果，遵守網站條款與速率限制；不要把名稱相同當成身分關聯證據。

## 跟其他方案的關係

以下是依功能定位整理的比較，不是效能排名。

| 方案 | 主要用途 | 關係與取捨 |
| --- | --- | --- |
| Sherlock | 依名稱檢查多站帳號 | 輸出是候選線索，需人工確認 |
| 一般網頁爬蟲 | 遍歷頁面及擷取內容 | 不一定提供跨站使用者名稱規則 |
| 人工站內搜尋 | 逐站檢視名稱與上下文 | 較慢，但仍是核對候選結果的重要步驟 |

### 限制與查證範圍

- 站點清單和網站行為會變動，README 的覆蓋數量不是永久可用保證。

- 本頁僅整理官方操作與用途，不證明每個站點查詢成功率。

← [[網頁爬蟲]] · [[pentesting]]

## 來源

- [GitHub](https://github.com/sherlock-project/sherlock)
- [README](https://github.com/sherlock-project/sherlock/blob/master/docs/README.md)
- [官方資料 1](https://sherlockproject.xyz/installation)
- [官方資料 2](https://sherlockproject.xyz/usage)
- 原始快照：`raw/2026-11-08-sherlock-project-sherlock.md`
- Metadata：`raw/2026-11-08-sherlock-project-sherlock.metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [sherlock-project/sherlock](https://github.com/sherlock-project/sherlock) |
| Stars | 100,478（2026-11-08 快照） |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-11-08 |
