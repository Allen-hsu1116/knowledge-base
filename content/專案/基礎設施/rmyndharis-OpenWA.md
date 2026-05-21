---
title: OpenWA
slug: rmyndharis-OpenWA
date: 2026-05-22
stars: 4864
language: TypeScript
repo: https://github.com/rmyndharis/OpenWA
topics:
  - workflow-automation
  - sandbox
---

# OpenWA — 開源 WhatsApp API Gateway

**⭐ 4,864** | TypeScript | [GitHub](https://github.com/rmyndharis/OpenWA)

免費、開源、自架的 WhatsApp API Gateway，pluggable 架構，無 vendor lock-in。

## 核心價值

- **100% 開源** — 無授權費、無功能鎖、完整源碼
- **Pluggable Architecture** — 透過 config 切換資料庫/儲存/快車後端
- **多 session** — 同一實例管理多個 WhatsApp 帳號

## 功能亮點

- REST API 完整 WhatsApp 操作
- Webhooks + HMAC 簽名
- React 管理面板
- API Key 認證 + Swagger 文件
- Groups API、Channels/Newsletter、Labels
- n8n 社群節點整合

## 技術棧

NestJS 11.x / TypeScript 5.x / Node 22 LTS
SQLite / PostgreSQL / Redis / S3-MinIO
Docker native，Kubernetes-ready

## 相關概念

- [[workflow-automation]] — 搭配 n8n 做工作流自動化
- [[sandbox]] — 自架通訊閘道的隔離與安全考量