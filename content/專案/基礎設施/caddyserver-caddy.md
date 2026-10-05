---
title: "Caddy"
slug: "caddyserver-caddy"
created: "2026-10-05"
updated: "2026-10-05"
stars: 76567
language: "Go"
topics: ["acme", "automatic-https", "caddy", "caddyfile", "go", "golang", "http", "http-server", "http3", "https", "privacy", "reverse-proxy", "security", "tls", "web-server"]
---

# Caddy

> ⭐76.6k · Go · 以自動 HTTPS、Caddyfile 與動態設定提供自架服務的 HTTP 入口。

## 快速導航

- [[self-hosted]]
- [[模型推論與部署]]

## 是什麼

Caddy 是以 Go 撰寫的可擴充伺服器平台，標準發行版包含 HTTP 與 TLS 模組。它常用於 HTTPS 網站與反向代理，也可透過模組承載其他長期執行的服務。

它不是 LLM、Agent 或模型路由器；本次從 GitHub Trending 收錄，定位是自架 AI 服務的周邊基礎設施。放在聊天介面或推論 API 前方能處理網路入口，但應用層身分驗證、權限與模型治理仍須另外設計。

## 核心特色

- 自動 HTTPS：公用網域可使用 ZeroSSL／Let’s Encrypt，內部名稱及 IP 可使用本地 CA。

- 多種設定介面：Caddyfile 偏向人工維護，原生 JSON 與 API 適合程式化管理。

- 現代協定：預設支援 HTTP/1.1、HTTP/2 與 HTTP/3。

- 模組化擴充：HTTP／TLS 是標準模組，額外功能可依需求編譯。

- 平滑設定更新：官方說明支援透過 API 進行不中斷服務的設定變更。

## 怎麼用

以下為 README 的原始碼建置方式，需要 Go 1.26.0 或更新版本；正式部署可優先使用官方 release。

```bash
git clone https://github.com/caddyserver/caddy.git
cd caddy/cmd/caddy/
go build
./caddy version
```

### 使用流程

1. 上述方式用於開發建置，不會嵌入完整版本資訊；需要版本與插件時使用官方 xcaddy 流程。

2. 先以本機測試服務驗證代理、TLS 與上游連線，再規劃 DNS、防火牆與外部流量。

3. 不要把 HTTPS 誤當成登入保護；管理 API 與模型服務應限制存取。

### 限制與採用提醒

TLS 與憑證能力不代表完整的 Agent 安全邊界；公開前仍須做存取控制與日誌資料保護。

以上指令為官方文件範例整理，本次僅完成資料收錄，未執行安裝或產品效能測試。

## 跟其他方案的關係

以下是功能定位比較，不是相同條件的 benchmark。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| 直接開放應用埠 | 部署簡單，但入口與 TLS 由應用自行處理 | Caddy 可提供獨立 HTTP／TLS 層 |
| Nginx／其他反向代理 | 同屬 Web 入口與代理方案 | 比較設定、憑證維運與既有團隊經驗，不宣稱效能勝負 |
| LLM Gateway | 處理模型供應者、配額與路由 | Caddy 是入口層，不能直接取代模型治理 |

## 相關概念

← [[self-hosted]] · [[模型推論與部署]]

## 來源

- [GitHub](https://github.com/caddyserver/caddy)
- [官方 README](https://github.com/caddyserver/caddy/blob/master/README.md)
- 原始快照：`raw/2026-10-05-caddyserver-caddy.md`
- Metadata：`raw/2026-10-05-caddyserver-caddy-metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/caddyserver/caddy |
| Stars | 76,567（2026-10-05 快照） |
| License | Apache-2.0 |
| Language | Go |
| 收錄日期 | 2026-10-05 |
