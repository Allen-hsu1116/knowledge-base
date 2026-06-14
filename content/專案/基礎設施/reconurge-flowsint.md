---
title: Flowsint
slug: reconurge-flowsint
created: 2026-06-03
updated: 2026-06-03
stars: 4509
language: TypeScript
---

# Flowsint

> ⭐4.5k · 開源 OSINT 圖譜調查平台，視覺化探索實體關聯、自動化情報充實，支援域名/IP/ASN/社群/加密貨幣等全方位 enricher

快速導航：[[pentesting|滲透測試]] · [[web-scraping|網頁爬取]] · [[BigBodyCobain-Shadowbroker|Shadowbroker]]

## 是什麼

Flowsint 是一個開源的 **OSINT 圖譜調查工具**，專為網路安全分析師和調查人員設計。它讓你透過視覺化圖譜介面探索實體之間的關聯，並搭配自動化 enricher 擴充情報節點。從一個域名出發，可以自動發現子域名、解析 IP、查詢 WHOIS、追蹤 ASN、發現關聯網站——所有關聯都自動串連成可互動的圖譜。

專案目前涵蓋了非常完整的 enricher 類別：**域名**（8 種：反解 DNS、子域名枚舉、WHOIS、ASN 等）、**IP**（地理定位 + ASN）、**ASN/CIDR**、**社群媒體**（Maigret 用戶名搜尋）、**組織**（ASN/域名/公司資訊）、**加密貨幣**（錢包交易 + NFT）、**網站**（爬蟲、連結、追蹤器）、**Email**（Gravatar/漏洞庫/域名）、**電話**（漏洞庫）、**個人**（組織/域名歸屬）以及 **N8n 整合**。圖譜建在 Neo4j 上，前端效能良好，即使上千節點也不會 lag。

所有資料都存在本機，設計上高度重視隱私——OSINT 調查需要的高隱私保證是這個專案的核心價值之一。技術棧為 Django + FastAPI + PostgreSQL + Neo4j + Celery + Vue.js，用 Docker Compose 一鍵啟動。

## 核心特色

- **🕸️ 視覺化圖譜介面**：互動式 Neo4j 圖譜，探索實體關聯一目了然，支援上千節點流暢渲染
- **🔄 自動化 Enricher 系統**：11 大類 enricher 自動擴充節點，從一個種子即可長出完整情報網絡
- **🔒 本機優先隱私**：所有資料儲存在本機，不走雲端，確保 OSINT 調查的隱私安全
- **🔌 可擴充架構**：模組化設計，可輕鬆加入新的 enricher 和實體類型
- **🤖 N8n 工作流整合**：透過 N8n Connector 將 Flowsint 嵌入更大範圍的自動化調查工作流
- **🐳 Docker 一鍵部署**：`make prod` 即可啟動全部服務，零配置摩擦

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/reconurge/flowsint.git
cd flowsint

# 安裝依賴並啟動（需要 Docker 和 Make）
make prod

# 開發模式
make dev

# 建立帳號並開始使用
# 開啟 http://localhost:5173/register
```

開發測試：
```bash
cd flowsint-core && uv run pytest    # 核心模組
cd ../flowsint-types && uv run pytest # 類型模組
cd ../flowsint-enrichers && uv run pytest # enricher 模組
cd ../flowsint-api && uv run pytest   # API 模組
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心特色 | 圖譜 |
|------|-------|------|----------|------|
| **Flowsint** | ⭐4.5k | OSINT 圖譜調查 | 視覺化 + 自動 enricher + 本機優先 | ✅ Neo4j |
| [[BigBodyCobain-Shadowbroker\|Shadowbroker]] | ⭐7.6k | OSINT 情報平台 | AI Agent 情報收集 | — |
| [[KeygraphHQ-shannon\|Shannon]] | ⭐42.7k | 滲透測試 | AI 驅動白箱安全 | — |
| [[D4Vinci-Scrapling\|Scrapling]] | ⭐56.6k | 網頁爬蟲 | 自適應解析 + 反偵測 | — |
| Maltego | 商業 | OSINT 調查 | 商業圖譜 + Hub | ✅ |

← [[pentesting|滲透測試]] · [[web-scraping|網頁爬取]]

## 來源

- GitHub: <https://github.com/reconurge/flowsint>
- 原始 README: `raw/2026-06-03-reconurge-flowsint.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [reconurge/flowsint](https://github.com/reconurge/flowsint) |
| Stars | ⭐4,509 |
| License | Apache 2.0 |
| Language | TypeScript (frontend), Python (backend) |
| 收錄日期 | 2026-06-03 |