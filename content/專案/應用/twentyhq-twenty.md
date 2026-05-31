---
title: Twenty
slug: twentyhq-twenty
created: 2026-05-27
updated: 2026-05-27
stars: 46861
language: TypeScript
topics:
  - CRM
  - open-source-business
  - AI-integration
  - SaaS
---

# Twenty

> ⭐46.9k · 開源 CRM 的第一名，Salesforce 替代方案，為 AI 時代而生

快速導航：CRM · [[open-source-business|開源商業模式]] · [[AI-integration|AI 整合]] · [[self-hosted|自架服務]]

## 是什麼

Twenty 是排名第一的開源 CRM，作為 Salesforce 的替代方案。它提供技術團隊客製化 CRM 的建構積木，讓 CRM 像其他軟體一樣可以用程式碼定義、版本控制和部署。支援雲端 SaaS 和自架兩種模式。用 TypeScript 定義物件、欄位和視圖，像寫程式一樣建 CRM。

## 核心特色

- 🏢 **Salesforce 開源替代**：功能可匹敵，完全開源透明
- 💻 **程式碼定義 CRM**：用 TypeScript 定義物件、欄位和視圖，像寫程式一樣建 CRM
- 🔧 **CLI 工具**：`npx create-twenty-app` 快速建立應用，`npx twenty app:publish` 發布
- 🤖 **AI 設計**：原生支援 AI 整合，為 AI 時代量身打造
- ☁️ **雙模式部署**：雲端 SaaS 或自架皆可
- 🔄 **版本控制**：CRM schema 像程式碼一樣可以版本控制和部署

## 怎麼用

```bash
# 雲端快速開始
# https://twenty.com 註冊即可使用

# 自架部署（Docker）
git clone https://github.com/twentyhq/twenty
cd twenty

# 使用 Docker Compose 啟動
docker compose up -d

# 建立自訂 CRM 應用
npx create-twenty-app my-crm
cd my-crm

# 定義物件、欄位和視圖（TypeScript）
# 編輯 src/engine/object-metadata/...

# 發布應用
npx twenty app:publish
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 開源 | AI 整合 | 程式碼定義 | 自架 |
|------|-------|------|------|---------|-----------|------|
| **Twenty** | ⭐46.9k | CRM | ✅ | ✅ | ✅ TypeScript | ✅ |
| Salesforce | — | CRM | ❌ | ✅ | ❌ | ❌ |
| HubSpot | — | CRM | ❌ | ✅ | ❌ | ❌ |
| [[frappe-erpnext|ERPNext]] | ⭐20k+ | ERP/CRM | ✅ | ❌ | ❌ Python | ✅ |

← CRM · [[open-source-business|開源商業模式]] · [[AI-integration|AI 整合]] · [[self-hosted|自架服務]]

## 來源

- GitHub: <https://github.com/twentyhq/twenty>
- 官方網站: <https://twenty.com>
- 文件: <https://docs.twenty.com>
- 原始 README: `raw/2026-05-27-twentyhq-twenty.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [twentyhq/twenty](https://github.com/twentyhq/twenty) |
| Stars | ⭐46,861 |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-05-27 |