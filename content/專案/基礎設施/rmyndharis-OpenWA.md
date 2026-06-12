---

title: OpenWA
slug: rmyndharis-OpenWA
created: 2026-05-22
updated: 2026-05-22
stars: 4864
language: TypeScript
topics:
  - workflow-automation
  - sandbox

---

# OpenWA — 開源 WhatsApp API Gateway

> ⭐4.9k · 免費、開源、自架的 WhatsApp API Gateway，pluggable 架構，無 vendor lock-in

## 快速導航

- 🔄 **工作流自動化** → [[workflow-automation]]（搭配 n8n 做工作流自動化）
- 🔒 **沙箱隔離** → [[sandbox]]（自架通訊閘道的隔離與安全考量）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 可透過 OpenWA 發送/接收 WhatsApp 訊息）

## 是什麼

OpenWA 是一個免費、開源、自架的 WhatsApp API Gateway。採用 pluggable 架構，透過 config 切換資料庫/儲存/快取後端，無 vendor lock-in。支援同一實例管理多個 WhatsApp 帳號，提供完整 REST API、Webhooks + HMAC 簽名、React 管理面板、API Key 認證 + Swagger 文件。

## 核心特色

- **100% 開源** — 無授權費、無功能鎖、完整源碼
- **Pluggable Architecture** — 透過 config 切換資料庫（SQLite/PostgreSQL）/ 儲存（S3-MinIO）/ 快取（Redis）
- **多 Session** — 同一實例管理多個 WhatsApp 帳號
- **REST API** — 完整 WhatsApp 操作
- **Webhooks + HMAC** — 即時事件推送，安全簽名驗證
- **React 管理面板** — 圖形化介面管理
- **n8n 整合** — 社群節點，輕鬆接入工作流

## 怎麼用

```bash
# Docker 部署（推薦）
docker run -d -p 3000:3000 rmyndharis/openwa

# 或從原始碼建置
git clone https://github.com/rmyndharis/OpenWA.git
cd OpenWA
npm install
npm run build
npm run start

# 設定 config.yaml 選擇資料庫/儲存/快取後端
# 詳見 README 的設定指引
```

## 跟其他方案的關係

| 方案 | 定位 | 開源 | 多帳號 | 自架 | n8n 整合 | 授權 |
|------|------|------|--------|------|---------|------|
| **OpenWA** | WhatsApp API Gateway | ✅ | ✅ | ✅ | ✅ | MIT |
| **Baileys** | WhatsApp Web API 函式庫 | ✅ | ❌ | 自行整合 | ❌ | MIT |
| **whatsapp-web.js** | WhatsApp Web 自動化 | ✅ | ❌ | 自行整合 | ❌ | Apache-2.0 |

- OpenWA 是完整的 API Gateway（REST + Webhooks + 管理面板），而 Baileys 和 whatsapp-web.js 是底層函式庫
- **vs Baileys**：OpenWA 封裝 Baileys 等底層函式庫，提供開箱即用的 Gateway 體驗
- **vs whatsapp-web.js**：OpenWA 支援多帳號、pluggable 架構、內建 n8n 整合，功能更完整

## 相關概念

← [[workflow-automation]] · [[sandbox]]

## 來源

- raw/2026-05-22-rmyndharis-OpenWA.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [rmyndharis/OpenWA](https://github.com/rmyndharis/OpenWA) | ⭐4,864 | 待確認 | 2026-05-22 |