---
title: Sub2API
slug: Wei-Shaw-sub2api
created: 2026-08-23
updated: 2026-08-23
stars: 38787
language: Go
topics: [AI-Gateway, API-relay, subscription-quota, multi-account, billing]
---

# Sub2API

> ⭐38.8k · 將 Claude、OpenAI、Gemini 與 Grok 訂閱額度轉成統一 API，集中處理帳號池、計費、限流與請求轉送的自架 AI Gateway。

## 快速導航

- 🚪 **統一模型入口** → [[AI-Gateway]]（多供應商路由、計量與容錯的基礎設施層）
- 🏠 **自行部署** → [[self-hosted]]（以 Docker 或 Linux 服務掌握資料與管理面）
- 🤖 **開發工具整合** → [[Coding-Agent-CLI]]（Claude Code、Codex、Gemini CLI 可改 Base URL 接入）

## 是什麼

Sub2API 是一個面向 AI 訂閱配額分發的自架 API Gateway。管理者把多個上游 OAuth 或 API Key 帳號接到平台後，可以為使用者產生平台 API Key；系統則負責身分驗證、token 級計費、負載平衡、黏著工作階段、限流與請求轉送。

它的定位不只是把多家模型包成同一種 API，還包含面向多人共用與營運的控制面：使用者和帳號並行限制、群組路由、儲值付款、管理儀表板與用量紀錄。後端採 Go、Gin 與 Ent，前端使用 Vue，並依賴 PostgreSQL 與 Redis。

這類把消費者訂閱額度轉作 API 或多人共享的做法可能違反 Anthropic 或其他上游供應商的服務條款。專案 README 明確要求使用者自行檢查各供應商協議，並警告可能發生封號、服務中斷或資料損失；因此它適合技術研究與理解 Gateway 架構，不應把規避條款視為正常生產方案。

## 核心特色

- **多帳號與多種憑證**：同時管理 OAuth 和 API Key 類型的上游帳號，形成可調度的帳號池。
- **平台 API Key 分發**：替不同使用者建立獨立金鑰，將上游憑證與下游客戶端隔離。
- **精細計費與支付**：按 token 追蹤使用量與成本，內建易支付、支付寶、微信支付及 Stripe 儲值流程。
- **智慧排程與黏著 Session**：依帳號狀態選路由並保持工作階段黏著，減少 Coding Agent 長對話切換帳號造成的不一致。
- **限流與並行控制**：可對使用者和上游帳號設定請求、token 與同時連線限制。
- **複合群組路由**：把模型名稱解析到具體供應商，讓多供應商群組共用一個管理層。
- **完整管理控制面**：提供 Web 儀表板、監控、帳號管理、更新與回滾，也可嵌入外部工單等系統。
- **Docker 與原生 Linux 部署**：支援含 PostgreSQL、Redis 的 Docker Compose，也提供 systemd 一鍵安裝腳本。

## 怎麼用

推薦使用 Docker Compose，部署腳本會下載 compose 與環境設定、產生 JWT、TOTP 和資料庫密碼，再建立本地資料目錄：

```bash
mkdir -p sub2api-deploy && cd sub2api-deploy
curl -sSL https://raw.githubusercontent.com/Wei-Shaw/sub2api/main/deploy/docker-deploy.sh | bash
docker compose up -d
docker compose logs -f sub2api
```

服務啟動後開啟 `http://YOUR_SERVER_IP:8080`，依設定精靈連接 PostgreSQL、Redis 並建立管理員。若前面放 Nginx 且要支援 Codex CLI，需在 `http` 區塊開啟 `underscores_in_headers on;`，否則 Nginx 會丟棄 `session_id` 等標頭，破壞黏著路由。

正式接入前應先確認上游帳號的服務條款，妥善保存生成的密碼與加密金鑰，限制管理介面的網路曝露，並為資料庫、Redis 和資料目錄建立備份。

## 跟其他方案的關係

| 方案 | 主要定位 | 多供應商 | 帳號池／訂閱配額 | 計費管理 | 風險重點 |
|---|---|---|---|---|---|
| **Sub2API** | 訂閱配額分發 Gateway | Claude／OpenAI／Gemini／Grok | 強 | 內建支付與 token 計費 | 可能違反上游 ToS |
| [[litellm\|LiteLLM]] | 通用 LLM Proxy／SDK | 100+ Provider | API credential 路由 | 預算、用量與限流 | 以官方 API 整合為主 |
| [[diegosouzapw-OmniRoute\|OmniRoute]] | 多 Provider AI Gateway | 236+ Provider | 模型路由為主 | 成本與壓縮 | 供應來源需個別確認 |
| [[chenyme-grok2api\|Grok2API]] | Grok 專用多帳號轉接 | 主要聚焦 Grok | 強 | 基礎配額與路由 | 同樣需注意 ToS |
| [[open-webui-open-webui\|Open WebUI]] | 多模型聊天與 Agent UI | 多 Provider／本地模型 | 非核心 | 使用者與模型管理 | 偏應用層而非轉售計費 |

Sub2API 和 LiteLLM 都能放在客戶端與模型服務之間，但目標不同：LiteLLM 主要統一官方模型 API 與企業 Gateway 能力；Sub2API 更聚焦消費者訂閱帳號池、多人配額分攤和儲值營運。若是公司正式產品，優先評估使用官方 API、明確授權和可稽核供應鏈的 Gateway。

## 相關概念

← [[AI-Gateway]] · [[self-hosted]] · [[Coding-Agent-CLI]]

## 來源

- GitHub：https://github.com/Wei-Shaw/sub2api
- 原始 README 與 metadata：`raw/2026-08-23-Wei-Shaw-sub2api.md`
- 風險聲明：專案可能違反上游服務條款，使用前必須逐一確認供應商規範。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Wei-Shaw/sub2api |
| Stars | ⭐38,787 |
| License | GNU Lesser General Public License v3.0 |
| Language | Go |
| 收錄日期 | 2026-08-23 |
