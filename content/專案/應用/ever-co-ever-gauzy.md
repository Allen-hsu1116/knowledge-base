---
title: Ever Gauzy
slug: ever-co-ever-gauzy
created: '2026-09-14'
updated: '2026-09-14'
stars: 5082
language: zh-TW
topics:
- self-hosted
- free-software
---

# Ever Gauzy

> ⭐5.1k · 整合 ERP／CRM／HRM、專案與工時管理的開源企業平台；非通用 LLM 框架

## 快速導航

- [[self-hosted]] — 主題與延伸閱讀
- [[free-software]] — 使用情境與部署考量

## 是什麼

Ever Gauzy 是面向協作與按需工作型態的企業管理平台，涵蓋 ERP、CRM、HRM、ATS、專案管理與員工工時。它把組織、客戶、員工、發票與工作活動等資料放在同一套業務系統中，而不是只提供單一待辦清單。

技術棧以 TypeScript、NestJS、Angular 與多種 ORM 為主，並提供 Headless API、Server、Desktop App 與 Desktop Timer。README 開頭宣傳的 Ever Works 是另一個 Agent runtime 專案，不能將那個專案的自主經營能力歸到 Gauzy。

## 核心特色

- **整合企業流程**：人資、客戶、銷售管線、應徵者與專案任務管理。

- **工時與活動追蹤**：Timesheets、Desktop Timer、員工活動與截圖功能。

- **財務相關模組**：收入支出、發票、報價、付款與成本管理。

- **多組織與權限**：組織、團隊、角色權限、多幣別與多語言介面。

- **多部署形態**：Headless API、桌面單機與 client-server，可使用 Docker Compose。

## 怎麼用

先準備 Docker 與 Compose v2.20 以上。以下為 README 的 demo 路徑，只應在隔離測試環境使用；不是正式環境安全部署指令。

### 安裝與啟動

```bash
git clone https://github.com/ever-co/ever-gauzy.git
cd ever-gauzy
docker-compose -f docker-compose.demo.yml up
```

### 初次使用流程

1. 啟動後在瀏覽器開啟 http://localhost:4200，先探索組織與專案工作流。

2. 以測試資料確認 CRM、工時與發票欄位是否符合實際業務。

3. 上正式環境前設定獨立資料庫、HTTPS、備份與所有驗證／session secrets。

### 限制與導入注意

- 官方 SaaS 在 README 仍標註 Alpha／testing，應審慎使用。

- 正式 Compose 會包含多種基礎設施，資源需求不應從最小 demo 推估。

- JWT_SECRET、JWT_REFRESH_TOKEN_SECRET、JWT_VERIFICATION_TOKEN_SECRET、EXPRESS_SESSION_SECRET 必須改成強且唯一的值。

- 員工截圖與活動追蹤涉及隱私，導入前需明確告知、權限限制與保存政策。

## 跟其他方案的關係

以下為依文件定位整理的選型比較，不是效能排名或完整功能實測。

| 方案 | 核心定位 | 適合情境 |
|---|---|---|
| Ever Gauzy | 工時、人資、CRM 與 ERP 整合 | 服務團隊與多組織業務管理 |
| [[frappe-erpnext]] | 通用 ERP 業務管理 | 以企業資源流程為核心的需求 |
| [[melgarafael-DeskcommCRM]] | WhatsApp 與 AI 銷售 Agent | 對話式銷售與線索跟進 |

## 相關概念

← [[self-hosted]] · [[free-software]]

## 來源

- [GitHub](https://github.com/ever-co/ever-gauzy)
- [README](https://github.com/ever-co/ever-gauzy/blob/develop/README.md)
- 原始 README 快照：`raw/2026-09-14-ever-co-ever-gauzy.md`
- GitHub metadata：`raw/2026-09-14-ever-co-ever-gauzy.metadata.json`

本頁依收錄日取得的官方文件整理；未安裝或執行候選專案，功能與相容性以實際版本為準。

---

| 欄位 | 資料 |
|---|---|
| GitHub | [ever-co/ever-gauzy](https://github.com/ever-co/ever-gauzy) |
| Stars | 5,082（2026-09-14 快照） |
| License | AGPL-3.0 |
| Language | TypeScript（程式碼）；zh-TW（本文） |
| 收錄日期 | 2026-09-14 |
