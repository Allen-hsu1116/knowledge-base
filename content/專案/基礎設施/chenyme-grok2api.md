---
title: Grok2API
slug: chenyme-grok2api
created: 2026-07-15
updated: 2026-07-15
stars: 5.8k
language: Go
topics: ["AI-Gateway", "LLM", "Grok", "OpenAI-compatible", "Anthropic-Messages", "MCP"]
---

# Grok2API

> ⭐5800 · MIT — 面向 Grok Build、Grok Web 與 Grok Console 的多帳號 API 網關，對外提供 OpenAI 相容介面與 Anthropic Messages 支援。

## 快速導航


- 🔌 **AI Gateway** → [[AI-Gateway|AI Gateway]] — 多 LLM 提供者聚合的統一閘道概念
- 🧠 **LLM** → [[LLM|LLM]] — 大語言模型基礎
- 🔧 **MCP** → [[MCP|MCP]] — Agent 連接外部工具的標準協議
- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]] — Grok2API 可作為 Coding Agent 的後端

## 是什麼

Grok2API 是一個純 Go 實作的 Grok API 網關，將 Grok Build（OAuth 認證）、Grok Web（SSO 認證）與 Grok Console（SSO 認證）三個上游 Provider 組織為獨立帳號池，對外提供統一的 API 介面。它支援 OpenAI 風格的 Responses、Chat Completions、Images、Videos 介面，以及 Anthropic Messages 相容介面，讓任何支援 OpenAI 或 Anthropic 格式的客戶端都能直接接入 Grok。

專案的核心價值在於多帳號調度能力。每個 Provider 維護獨立的帳號池，支援優先級排序、並發限制、額度門控、會話粘滯、冷卻與故障切換。當某個帳號額度耗盡或發生故障時，網關自動切換到同池的其他帳號，確保服務連續性。這對於需要大量 Grok API 呼叫但單帳號額度有限的場景特別有用。

基礎設施方面，Grok2API 支援 SQLite/PostgreSQL 儲存、Memory/Redis 運行態、HTTP/SOCKS 代理池，並配備 React 管理後台提供 Dashboard、帳號管理、模型管理、客戶端密鑰管理、請求審計與介面文檔。安全層面採用 AES-256-GCM 憑據加密、客戶端密鑰哈希、日誌脫敏與 SSRF 防護。

## 核心特色

- **三 Provider 獨立路由**：Grok Build（Device OAuth）、Grok Web（SSO）、Grok Console（SSO）各自維護獨立帳號池、額度與故障狀態，互不影響
- **多帳號智慧調度**：優先級排隊、並發限制、額度門控、會話粘滯、冷卻機制與自動故障切換，最大化帳號池可用性
- **雙協議相容**：同時支援 OpenAI 風格介面（Responses、Chat Completions、Images、Videos）與 Anthropic Messages 格式，現有客戶端零修改接入
- **多媒體能力**：圖片生成、圖片編輯、非同步影片生成，支援本地歸檔與 URL/Base64 回傳
- **企業級安全**：AES-256-GCM 憑據加密、客戶端密鑰哈希、日誌脫敏、SSRF 防護、傳輸上限
- **完整管理後台**：React 前端 Dashboard，帳號/模型/密鑰/審計/設定全部可視化管理，支援熱載入設定

## 怎麼用

### Docker Compose 部署

```bash
git clone https://github.com/chenyme/grok2api.git
cd grok2api
cp config.example.yaml config.yaml

# 生成安全密鑰
openssl rand -hex 32
openssl rand -base64 32

# 編輯 config.yaml，填入密鑰與管理員帳密
docker compose pull
docker compose up -d
```

存取 `http://127.0.0.1:8000` 進入管理後台。

### API 呼叫範例

```bash
export GROK2API_API_KEY="g2a_xxx_xxx"

curl http://127.0.0.1:8000/v1/responses \
  -H "Authorization: Bearer ***" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "grok-chat-auto",
    "input": "用三句話解釋量子隧穿",
    "stream": true
  }'
```

### 支援的 API 端點

- `POST /v1/responses` — Responses JSON / SSE
- `POST /v1/chat/completions` — Chat Completions JSON / SSE
- `POST /v1/messages` — Anthropic Messages JSON / SSE
- `POST /v1/images/generations` — 圖片生成
- `POST /v1/images/edits` — 圖片編輯
- `POST /v1/videos/generations` — 非同步影片生成
- `GET /v1/models` — 可用模型列表

## 跟其他方案的關係

| 方案 | Provider 數 | 協議相容 | 多帳號池 | 語言 | 特色 |
|------|-----------|---------|---------|------|------|
| **Grok2API** | 3（Grok 專用） | OpenAI + Anthropic | ✅ 智慧調度 | Go | Grok 專用，多帳號池，媒體生成 |
| [[litellm\|LiteLLM]] | 100+ | OpenAI | ❌ | Python | 通用 Gateway，覆蓋最廣 |
| [[diegosouzapw-OmniRoute\|OmniRoute]] | 236+ | OpenAI + A2A | ❌ | TypeScript | 免費額度，Token 壓縮 |
| [[open-webui-open-webui\|Open WebUI]] | 多模型 | OpenAI | ❌ | Python | 自架 LLM 平台，含 RAG |

Grok2API 的獨特定位是「Grok 專用多帳號網關」——其他方案聚合多家 Provider，Grok2API 則專注於 Grok 三個介面的深度整合與帳號池調度。


## 相關概念

← [[AI-Gateway]] · [[LLM]] · [[MCP]]

## 來源

- **GitHub**：https://github.com/chenyme/grok2api
- **Raw README**：`raw/2026-07-15-chenyme-grok2api.md`
- **語言**：Go（後端）+ React（前端）
- **License**：MIT

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/chenyme/grok2api |
| Stars | ⭐5800|
| License | MIT |
| 收錄日期 | 2026-07-15 |
