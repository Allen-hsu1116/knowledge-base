---
title: "NGINX"
slug: nginx-nginx
created: 2026-11-20
updated: 2026-11-20
stars: 32335
language: zh-TW
topics: ["self-hosted", "AI-Gateway"]
---

# NGINX

> ⭐32.3k · 提供 Web、反向代理、負載平衡與快取的基礎設施，非 LLM 專用工具。

## 快速導航

- [[self-hosted]]
- [[AI-Gateway]]

## 是什麼

NGINX 是通用 Web Server、Reverse Proxy、Load Balancer 與內容快取軟體。官方儲存庫提供開源版本；它之所以值得收錄，是因為自架 AI 服務也需要處理 HTTP 入口、TLS 與流量控制，而非因為它本身具備語言模型。

執行架構由 master 管理設定與 worker，worker 負責處理請求。功能以靜態或動態模組提供，實際可用的 directives 取決於安裝版本與編譯模組；不應把商業版本能力直接套用在開源版本。

## 核心特色

- 多程序架構：master 管理 worker，並可依 CPU 核心調整 worker 數量。

- 模組化設計：支援編譯時靜態模組及後載入動態模組。

- 反向代理與負載平衡：可作為後端服務前方的 HTTP 入口。

- 流量與快取：官方文件涵蓋 rate limiting、content caching 與共享記憶體區域。

- TLS 部署：可設定 HTTPS，須另備憑證及對應模組依賴。

## 怎麼用

### 安裝與起步

```bash
git clone https://github.com/nginx/nginx.git
cd nginx
auto/configure
make
sudo make install
```

這是 README 的原始碼安裝流程，需先安裝編譯器、make、PCRE 與 zlib 等依賴；要啟用 TLS 還需 OpenSSL 及適當 configure 參數。一般部署可改採官方套件庫。

### 使用與驗證邊界

不能把反向代理當成完整 AI 安全政策。長時間串流、認證、上游逾時與敏感資料快取應逐項測試；Windows 版本在 README 被標示為開發測試用途。

本頁是官方文件閱讀與收錄結果，未在本機安裝或實測此專案。

## 跟其他方案的關係

下表比較工作層次，不是效能排名或替代方案的實測結論。

| 方案 | 定位 | 選擇時的界線 |
|---|---|---|
| NGINX | 通用 HTTP 代理與 Web 服務 | 不理解模型 token 計費 |
| 專用 AI Gateway | 模型 API 管理層 | 與通用反向代理可分層部署 |
| 應用直接暴露埠 | 簡單測試入口 | 正式部署仍須設計 TLS 與存取控制 |

## 相關概念

← [[self-hosted]] · [[AI-Gateway]]

## 來源

- [GitHub 與 README](https://github.com/nginx/nginx)
- [官方使用文件](https://nginx.org/en/docs/)
- 原始快照：`raw/2026-11-20-nginx-nginx.md`
- API metadata：`raw/2026-11-20-nginx-nginx.metadata.json`
- [授權條款](https://github.com/nginx/nginx/blob/master/LICENSE)

Stars 是收錄當日快照；安裝方式與功能以官方最新文件為準。

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/nginx/nginx |
| Stars | 32,335 |
| License | BSD-2-Clause |
| Language | C |
| 收錄日期 | 2026-11-20 |
