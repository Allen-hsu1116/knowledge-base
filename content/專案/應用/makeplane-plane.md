---
title: Plane
slug: makeplane-plane
created: 2022-11-19
updated: 2026-06-19
stars: 51840
language: TypeScript
topics: [project-management, jira-alternative, kanban, open-source, docker, kubernetes]
---

# Plane

> ⭐51.8k · 開源專案管理平台，Jira/Linear/Monday/ClickUp 的現代替代方案。

## 快速導航
[[twentyhq-twenty|Twenty]] · [[frappe-erpnext|ERPNext]] · [[self-hosted|自架]]

## 是什麼

Plane 是一個開源的專案管理平台，定位為 Jira、Linear、Monday 和 ClickUp 的替代方案。它提供現代化的任務追蹤、衝刺（Cycles）管理、產品路線圖和文件協作，讓團隊在不被工具本身困擾的情況下管理工作。整個介面設計乾淨直觀，降低了傳統專案管理工具的學習曲線。

在技術架構上，Plane 前端使用 React + Vite，後端是 Django + PostgreSQL + Redis，支援 Docker Compose 和 Kubernetes 兩種自架方式。這使得任何團隊都可以在自己的基礎設施上運行 Plane，完全掌控資料隱私。同時也提供 Plane Cloud 雲端版，讓不想管基礎設施的團隊快速上手。

Plane 在 GitHub 上獲得超過 51,000 顆星，是開源專案管理領域最受歡迎的選項之一。它採用 AGPL-3.0 授權，確保社群版永遠開源。功能涵蓋 Work Items（富文本任務）、Cycles（衝刺 + burn-down chart）、Modules（模組拆分）、Views（自訂篩選）、Pages（AI 文件）和 Analytics（即時分析）。

## 核心特色

- **Work Items**：富文字編輯器任務系統，支援檔案上傳、子屬性、關聯 issue 引用
- **Cycles 衝刺**：團隊衝刺管理，burn-down chart 追蹤進度，保持團隊動能
- **Modules 模組**：將複雜專案拆分為可管理的子模組
- **Views 自訂視圖**：自訂篩選器只顯示相關 issue，可保存和分享
- **Pages AI 文件**：富文字頁面，AI 功能輔助，可轉換筆記為可執行任務
- **Analytics 即時分析**：跨所有 Plane 資料的即時洞察和趨勢視覺化
- **自架支援**：Docker Compose 和 Kubernetes 兩種部署方式
- **AGPL-3.0**：確保社群版永遠開源

## 怎麼用

```bash
# 方式一：Plane Cloud（最快）
# 註冊 https://app.plane.so 即可使用

# 方式二：Docker 自架
git clone https://github.com/makeplane/plane.git
cd plane
# 參考部署文件
# https://developers.plane.so/self-hosting/methods/docker-compose

# 方式三：Kubernetes 自架
# https://developers.plane.so/self-hosting/methods/kubernetes

# 本地開發
# 參考 CONTRIBUTING.md
```

## 跟其他方案的關係

| 方案 | 類型 | Stars | 自架 | AI 功能 | 授權 |
|------|------|-------|------|---------|------|
| [[makeplane-plane|Plane]] | 專案管理 | ⭐51.8k | ✅ Docker/K8s | ✅ Pages AI | AGPL-3.0 |
| [[twentyhq-twenty|Twenty]] | CRM | ⭐46.9k | ✅ | ✅ AI 整合 | 企業版 |
| [[frappe-erpnext|ERPNext]] | ERP | ⭐34.3k | ✅ | — | GPL-3.0 |
| Jira | 專案管理 | — | ❌ | ✅ | 商業 |
| Linear | 專案管理 | — | ❌ | — | 商業 |

Plane 與 [[twentyhq-twenty|Twenty]]（CRM）和 [[frappe-erpnext|ERPNext]]（ERP）同屬開源商業工具生態，但聚焦於專案管理。與 [[self-hosted|自架]] 概念相關，支援完整自架部署。

## 相關概念

← [[twentyhq-twenty|Twenty]] · [[frappe-erpnext|ERPNext]] · [[self-hosted|自架]]

## 來源

- GitHub：https://github.com/makeplane/plane
- 官網：https://plane.so
- 文件：https://docs.plane.so
- 開發者文件：https://developers.plane.so
- Raw 檔案：`knowledge-base/raw/2026-06-19-makeplane-plane.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [makeplane/plane](https://github.com/makeplane/plane) |
| Stars | ⭐51,840 |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-06-19 |