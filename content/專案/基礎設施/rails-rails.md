---
title: Ruby on Rails
slug: rails-rails
created: 2026-11-07
updated: 2026-11-07
stars: 59026
language: zh-TW
topics: ["self-hosted", "frontend-design"]
---

# Ruby on Rails

> ⭐59.0k · 以 MVC 組織資料庫驅動 Web 應用的 Ruby 全端框架。

## 快速導航

- [[self-hosted]] — 相關技術與工作流程。
- [[frontend-design]] — 相關技術與工作流程。

## 是什麼

Rails 是建立資料庫驅動 Web 應用的框架，以 Model、View、Controller 劃分責任。Active Record 表達資料與業務邏輯，Action View 產生模板畫面，Action Pack 負責路由與控制器回應。

官方 README 也列出郵件、背景工作、WebSocket、檔案與富文字模組。它本身不是 LLM 框架；若用來建置 AI 產品，模型 API 呼叫、權限與任務邏輯仍需由應用開發者整合。

## 核心特色

### 1. MVC 分層

模型、模板及 HTTP 請求處理各有明確責任。

### 2. Active Record

將資料列表示為物件，結合領域邏輯。

### 3. Active Job

宣告背景工作並搭配不同 queue backend。

### 4. 應用模組

提供 Action Mailer、Action Cable、Active Storage 與 Action Text。

## 怎麼用

### 安裝

需先安裝相容 Ruby 與套件建置環境；依實際 Rails 版本檢查資料庫等相依需求。

```bash
gem install rails
rails new myapp
cd myapp
bin/rails server
```

### 起步與驗證

開啟 http://localhost:3000，確認 Rails 歡迎頁，再循官方 Getting Started 建立第一個資料模型與畫面。

### 使用邊界

開發伺服器不等於正式部署；正式應用需要資料庫、機密管理、背景工作與安全設定。

> 本頁指令為官方文件整理的操作示例，收錄時未在本機安裝或執行此專案。

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|---|---|---|
| Ruby on Rails | 以 MVC 組織資料庫驅動 Web 應用的 Ruby 全端框架。 | 本頁收錄專案 |
| React／Angular | 偏向前端 UI 或 Web 應用介面的技術 | Rails 提供資料模型與伺服器端流程，可與前端技術分工 |

此比較為依專案定位整理的編輯分析，不是效能測試或採用率排名。

## 相關概念

← [[self-hosted]] · [[frontend-design]]

## 來源

- [GitHub](https://github.com/rails/rails)
- [官方文件](https://guides.rubyonrails.org/getting_started.html)
- README 快照：`raw/2026-11-07-rails-rails.md`
- Metadata 快照：`raw/2026-11-07-rails-rails-metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/rails/rails |
| Stars | 59,026（2026-11-07 快照） |
| License | MIT |
| Language | Ruby |
| 收錄日期 | 2026-11-07 |
