---
title: DeskcommCRM
slug: melgarafael-DeskcommCRM
created: '2026-09-14'
updated: '2026-09-14'
stars: 2191
language: zh-TW
topics:
- AI-Agent
- self-hosted
---

# DeskcommCRM

> ⭐2.2k · 以 WhatsApp、租戶 RAG、MCP 與人工接手流程組成的自架 AI 銷售 CRM

## 快速導航

- [[AI-Agent]] — 主題與延伸閱讀
- [[self-hosted]] — 使用情境與部署考量

## 是什麼

DeskcommCRM 將自己定位為開源 AI sales OS：人員與 AI 在同一套 CRM 中處理 WhatsApp 對話、篩選線索、推進銷售漏斗並執行後續跟進。README 列出每租戶 RAG、可執行 Skills、操作記憶、預算上限與可稽核的 AI→人工交接。

應用使用 Next.js、TypeScript 與 Supabase，WhatsApp 可透過 WAHA QR code 或官方 Meta Cloud API 連接。雖然應用可部署在自有 VPS，主要安裝路徑仍使用 Supabase 與外部模型 API，因此「自架」不等於資料完全離線或沒有持續費用。

## 核心特色

- **Agent 直接操作 CRM**：處理對話、資格判斷、漏斗移動，並提供 MCP 存取面。

- **每租戶知識與治理**：RAG、RLS、RBAC、稽核與組織費用上限，實際隔離仍需部署驗證。

- **人機協作**：人工交接、輪派佇列、跟進提醒與待決策中心。

- **雙 WhatsApp 管道**：WAHA 或 Meta Cloud API，後者使用核准模板。

- **事件式自動化**：規則採 WHEN／IF／THEN；event_log 由 cron worker 消化，而不是資料庫 trigger 直接發 HTTP。

- **改善需人工關卡**：AI 建議可形成新版本提案，README 明確保留人工審核。

## 怎麼用

在專用 VPS 準備網域、Docker、Supabase 資訊與模型 API 金鑰；README 建議 4 GB RAM。以下是官方安裝路徑，先閱讀腳本再執行；本次收錄不會在本機安裝或建立雲端資源。

### 安裝與啟動

```bash
git clone https://github.com/melgarafael/DeskcommCRM.git
cd DeskcommCRM
# 先審閱 hostgator-setup-kit/install.sh
bash hostgator-setup-kit/install.sh
```

### 初次使用流程

1. 由安裝器設定網域、管理員與供應商金鑰，確認 HTTPS 與 health check。

2. 以測試 WhatsApp 帳號及測試線索完成一輪回覆、漏斗移動與人工交接。

3. 確認 event-log-drain 的 cron 正常；沒有 worker 時，規則存在不代表會執行。

4. 先用保守預算與暫停狀態檢視自動化，再逐項啟用；定期測試備份還原。

### 限制與導入注意

- README 的「anti-ban」節流功能不能保證 WhatsApp 帳號不被停權，仍需遵守平台政策及收訊者同意。

- 應用 MIT 授權不代表 VPS、模型、Supabase 或 WAHA Plus 都免費。

- 新 Supabase 環境需 baseline.sql 與對應 extensions；README 警告舊 migrations 中有 stub，單跑 db push 可能留下空資料庫。

- LGPD by-design 與隔離測試是專案宣稱，不等於獨立合規認證；本次未稽核原始碼安全性。

## 跟其他方案的關係

以下為依文件定位整理的選型比較，不是效能排名或完整功能實測。

| 方案 | 核心定位 | 適合情境 |
|---|---|---|
| DeskcommCRM | WhatsApp＋可行動的 AI 銷售流程 | 重視對話、跟進與人工接手 |
| [[ever-co-ever-gauzy]] | ERP／HRM／工時與 CRM | 需要跨部門企業管理 |
| [[twentyhq-twenty]] | 開源 CRM | 先以客戶關係資料與業務流程選型 |

## 相關概念

← [[AI-Agent]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/melgarafael/DeskcommCRM)
- [README](https://github.com/melgarafael/DeskcommCRM/blob/main/README.md)
- 原始 README 快照：`raw/2026-09-14-melgarafael-DeskcommCRM.md`
- GitHub metadata：`raw/2026-09-14-melgarafael-DeskcommCRM.metadata.json`

本頁依收錄日取得的官方文件整理；未安裝或執行候選專案，功能與相容性以實際版本為準。

---

| 欄位 | 資料 |
|---|---|
| GitHub | [melgarafael/DeskcommCRM](https://github.com/melgarafael/DeskcommCRM) |
| Stars | 2,191（2026-09-14 快照） |
| License | MIT |
| Language | TypeScript（程式碼）；zh-TW（本文） |
| 收錄日期 | 2026-09-14 |
