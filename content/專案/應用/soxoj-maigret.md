---
title: Maigret
slug: soxoj-maigret
created: 2026-06-30
updated: 2026-06-30
stars: 34379
language: Python
topics:
  - osint
  - cybersecurity
  - information-gathering
  - pentesting
  - reconnaissance
  - social-network
  - scraping
  - investigation
  - ai-analysis
  - python
---

# Maigret

> ⭐34.4k · 只靠用戶名就能從 3000+ 網站收集完整個人情報，開源 OSINT 工具，支援 AI 分析模式

## 快速導航

- 🕵️ **OSINT** → [[BigBodyCobain-Shadowbroker|Shadowbroker]] · [[reconurge-flowsint|Flowsint]]
- 🛡️ **滲透測試** → [[pentesting|滲透測試]] · [[KeygraphHQ-shannon|Shannon]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🕷️ **爬蟲** → [[D4Vinci-Scrapling|Scrapling]] · [[網頁爬蟲|網頁爬取]]

## 是什麼

Maigret 是一個強大的開源 OSINT（開源情報）工具，只需要一個用戶名，就能從超過 3000 個網站中自動搜尋該用戶的帳號，並收集所有可用的個人資訊。它不需要任何 API 金鑰，開箱即用。工具名稱取自著名偵探小說角色 Jules Maigret，暗示其「數位偵探」的定位。

Maigret 的核心能力是帳號搜尋和資訊提取。它會檢查目標用戶名在各大社群平台、論壇、服務上是否存在帳號，並從個人檔案頁面和網站 API 中提取帳號擁有者的資訊，包括連結到其他帳號的關聯。更強大的是，它支援遞迴搜尋——一旦發現新的用戶名或 ID，會自動用這些新發現去搜尋更多平台，層層深入挖掘。

最近版本加入了 AI 分析模式（`--ai`），可以使用 OpenAI 相容的 API 將原始收集結果轉化為簡短的調查摘要。這讓 OSINT 調查不再只是 raw data 的堆積，而是能透過 LLM 快速產出可讀的情報報告。Maigret 也支援 Tor 和 I2P 隱藏服務，具備部分反封鎖和 CAPTCHA 偵測能力。

## 核心特色

- **3000+ 網站覆蓋**：預設檢查流量最高的 500 個網站，使用 `-a` 參數可掃描全部 3000+ 站台，或用 `--tags` 按分類/國家篩選
- **遞迴搜尋**：自動用發現的新用戶名和 ID 進行二次搜尋，層層深入挖掘目標的數位足跡
- **AI 分析模式**：透過 `--ai` 參數呼叫 OpenAI 相容 API，將原始發現轉成簡短的調查摘要報告
- **Python 庫可嵌入**：可直接 import `maigret` 在自己的 Python 專案中程式化執行搜尋
- **多格式報告**：支援 PDF、HTML、XMind 等多種報告格式，並提供 Web 介面以圖譜方式瀏覽結果
- **Tor/I2P 支援**：可檢查 .onion 和 .i2p 隱藏服務上的帳號，適合深網 OSINT 調查
- **反封鎖能力**：具備部分 CAPTCHA 偵測和繞過能力，自動從 GitHub 更新網站資料庫（每 24 小時一次）

## 怎麼用

安裝與基本使用：

```bash
# 透過 pip 安裝
pip install maigret

# 基本搜尋——只需用戶名
maigret YOUR_USERNAME

# 掃描全部 3000+ 站台
maigret -a YOUR_USERNAME

# 按分類篩選
maigret --tags social YOUR_USERNAME

# 按國家篩選
maigret --tags us YOUR_USERNAME

# AI 分析模式（需要 OpenAI API key）
maigret --ai YOUR_USERNAME

# 遞迴搜尋（預設開啟）
maigret -r YOUR_USERNAME

# 生成 HTML 報告
maigret --html YOUR_USERNAME

# 從源碼安裝
git clone https://github.com/soxoj/maigret
cd maigret
pip install -r requirements.txt
python maigret.py YOUR_USERNAME
```

## 跟其他方案的關係

- **Sherlock** → 類似的用戶名搜尋工具，Maigret 功能更豐富且支援 AI 分析
- **Reconurge Flowsint** → 圖譜調查導向的 OSINT 工具，Maigret 更專注帳號搜尋
- **Shadowbroker** → AI Agent 情報平台，Maigret 是更輕量的 CLI 工具
- **Shannon** → 滲透測試 AI Agent，Maigret 偏向 OSINT 偵察而非攻擊

← [[pentesting|滲透測試]] · [[BigBodyCobain-Shadowbroker|Shadowbroker]] · [[reconurge-flowsint|Flowsint]] · [[網頁爬蟲|網頁爬取]]


## 相關概念

← [[BigBodyCobain-Shadowbroker]] · [[reconurge-flowsint]] · [[pentesting]] · [[KeygraphHQ-shannon]]

## 來源

- GitHub: <https://github.com/soxoj/maigret>
- 文件: <https://maigret.readthedocs.io>
- 站台清單: <https://github.com/soxoj/maigret/blob/main/sites.md>
- 原始 README: `raw/2026-06-30-soxoj-maigret.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [soxoj/maigret](https://github.com/soxoj/maigret) |
| Stars | ⭐34,379 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-06-30 |