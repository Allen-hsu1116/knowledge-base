---
title: ERPNext
slug: frappe-erpnext
date: 2026-05-20
stars: 34279
repo: https://github.com/frappe/erpnext
language: Python
updated: 2026-06-14
---

# ERPNext — Free and Open Source ERP

> 100% Open-Source ERP System to help you run your business.

ERPNext 是一個完全開源的 ERP 系統，將所有企業營運整合到單一平台，免費使用。

## 快速導航

- ⚡ [[self-hosted-AI-platform]] · [[LLM]]

## 是什麼

ERPNext 是一個 100% 開源的 ERP（企業資源規劃）系統，由 Frappe 團隊開發維護。它將會計、訂單管理、製造、資產管理、專案管理等企業營運功能整合到單一平台，完全免費使用。底層基於 Frappe Framework（Python/JavaScript 全端 web 框架）和 Frappe UI（Vue-based 元件庫），可透過 Frappe Cloud 託管或 Docker 自行部署。

## 核心特色

- **會計** — 記錄交易、彙總與分析財務報表
- **訂單管理** — 追蹤庫存、補貨、管理銷售訂單與出貨
- **製造** — 簡化生產週期、追蹤物料消耗、產能規劃、外包
- **資產管理** — 從採購到報廢，IT 基礎設備管理
- **專案管理** — 準時、預算內交付專案，追蹤任務、工時表
- **100% 開源** — MIT 授權，無功能限制、無用戶數限制
- **技術架構** — Frappe Framework（Python/JS） + Frappe UI（Vue），可 Frappe Cloud 託管或 Docker 自架

## 怎麼用

```bash
# Docker 自架部署（推薦）
docker compose up -d

# 或使用 Frappe Cloud 託管
# 註冊 frappecloud.com 帳號，一鍵部署 ERPNext

# 本地開發
bench init frappe-bench && cd frappe-bench
bench get-app erpnext
bench new-site mysite.local
bench --site mysite.local install-app erpnext
bench --site mysite.local serve
```

部署後透過網頁介面設定公司資料、導入客戶/供應商、開始使用會計/庫存/製造等模組。

## 跟其他方案的關係

| 方案 | 類型 | 開源 | 語言 | 適用場景 |
|------|------|------|------|----------|
| **ERPNext** | 全功能 ERP | ✅ MIT | Python | 中小企業全方位管理 |
| Odoo | 全功能 ERP | ⚠️ LGPLv3（社區版） | Python | 模組化 ERP，企業版付費 |
| SAP Business One | 商業 ERP | ❌ | Java/.NET | 大型企業 ERP |
| Dolibarr | 輕量 ERP/CRM | ✅ GPL | PHP | 小型企業需求簡單場景 |

- ERPNext 是 [[self-hosted-AI-platform]] 生態中企業營運管理的主流開源選擇
- 可搭配 [[LLM]] 做 ERP 資料的智慧分析與自然語言查詢

## 相關概念

- [[LLM]] — 大語言模型生態

## 來源

- [原始資料](../raw/2026-05-20-frappe-erpnext.md)