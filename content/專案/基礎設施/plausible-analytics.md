---
title: Plausible Analytics
slug: plausible-analytics
created: 2018-12-04
updated: 2018-12-04
stars: —
language: zh-TW
---

# Plausible Analytics

> ⭐25,755 · Open source, privacy-first web analytics — lightweight, cookie-free Google Analytics alternative

**Repo:** <https://github.com/plausible/analytics>
**Stars:** ⭐ 25,755
**Language:** Elixir
**Created:** 2018-12-04

## 快速導航

- ⚡ [[open-design]] · [[self-hosted]] · [[privacy]]

## 是什麼

Plausible Analytics 是一個 GDPR/CCPA/PEPR 合規的隱私優先網站分析工具。它不使用 cookie、不儲存個人資料、不追蹤用戶，用小於 1KB 的輕量追蹤腳本取代 Google Analytics，用訂閱制商業模式取代廣告科技跟蹤。

核心理念是**測量流量而非個人**——所有數據都是聚合和匿名化的，不收集 IP 位址、不使用持久性識別符、不需要同意橫幅。提供商業雲端服務和自架社群版兩種部署方式。

## 核心特色

- **無 Cookie、完全合規** — GDPR / CCPA / PECR 合規，無需同意橫幅
- **輕量腳本** — 小於 1KB 的追蹤腳本，加速網站載入
- **簡潔儀表板** — 所有關鍵指標一目了然，不需培訓
- **目標追蹤** — 自訂事件、轉換、漏斗分析、收益歸因
- **即時洞察** — 即時流量監控，了解網站即時動態
- **搜尋洞察** — 整合 Google Search Console，直接在儀表板查看關鍵字數據
- **API 與整合** — Stats API、CSV 匯出、Looker Studio Connector
- **報告與分享** — 每週/每月 email 報告、Slack 通知、流量增減警報、公開分享連結
- **兩種部署** — 商業雲端（2 分鐘設定，EU 託管）或 Community Edition（AGPLv3 自架）

## 怎麼用

### 商業雲端（最簡單）

1. 前往 [plausible.io](https://plausible.io/register) 註冊
2. 添加網站域名
3. 在網站插入追蹤腳本
4. 2 分鐘內看到數據

```html
<script defer data-domain="yourdomain.com" src="https://plausible.io/js/script.js"></script>
```

### 自架 Community Edition

```bash
# 從 GitHub 下載
git clone https://github.com/plausible/analytics.git
cd analytics

# 使用 Docker Compose
docker compose up -d
```

### 進階功能

```javascript
// 自訂事件追蹤
plausible('Signup', {props: {plan: 'enterprise'}})

// 404 頁面追蹤
plausible('404', {props: {path: '/old-page'}})

// 外部連結點擊追蹤（無程式碼）
<script defer data-domain="yourdomain.com" src="https://plausible.io/js/script.outbound-links.js"></script>
```

### API 使用

```bash
# 獲取即時訪客數
curl "https://plausible.io/api/v1/stats/realtime?site_id=yourdomain.com" \
  -H "Authorization: Bearer YOUR_API_KEY"

# 匯出 CSV
curl "https://plausible.io/api/v1/export?site_id=yourdomain.com&period=30d" \
  -H "Authorization: Bearer YOUR_API_KEY"
```

## 跟其他方案的關係

| 特性 | Plausible | Google Analytics | Matomo | Umami | Fathom |
|------|-----------|-----------------|--------|-------|--------|
| 開源 | ✅ AGPLv3 | ❌ | ✅ | ✅ MIT | ❌ |
| Cookie | 無 | 需要 | 可選 | 無 | 無 |
| 隱私合規 | ✅ GDPR/CCPA | ⚠️ 需同意 | ✅ | ✅ | ✅ |
| 腳本大小 | < 1KB | ~45KB | ~30KB | ~2KB | ~1KB |
| 自架 | ✅ CE | ❌ | ✅ | ✅ | ❌ |
| 技術棧 | Elixir + ClickHouse | Google 專有 | PHP + MySQL | Node + PostgreSQL | Go |
| 商業模式 | 訂閱制 | 廣告科技 | 訂閱制 | 訂閱制 | 訂閱制 |
| 資料所有權 | 用戶完全擁有 | Google | 用戶 | 用戶 | 用戶 |

## 相關概念

← [[open-design]] · [[self-hosted]] · [[privacy]]

## 來源

- [原始資料](../raw/2026-05-18-plausible-analytics.md)
- [GitHub: plausible/analytics](https://github.com/plausible/analytics)
- [Plausible Analytics 官網](https://plausible.io/)

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/plausible/analytics |
| **收錄日期** | 2018-12-04 |
