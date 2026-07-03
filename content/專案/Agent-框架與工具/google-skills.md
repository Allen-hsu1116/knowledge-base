---
title: Google Skills
slug: google-skills
created: 2026-04-28
stars: '⭐9.6k'
updated: 2026-04-28
language: zh-TW
---

# Google Skills

> ⭐9.6k · Google 官方維護的 Agent Skills 專案，提供 Google 產品和技術（尤其是 Google Cloud）的標準化 Skill 定義，使用 SKILL.md 格式和 skills.sh 分發標準。⭐9.6k

## 快速導航

- 🛠 **AI Skills** → [[AI-Skills]]（Google Skills 是 Agent Skills 的官方實作）
- 🌐 **Agent Skills 生態系** → [[AI-Skills]]（Agent Skills 生態系的一部分）
- 🔌 **MCP** → [[MCP]]（Skills 與 MCP 的工具整合）

## 是什麼

Google Skills 是 Google 官方維護的 Agent Skills 專案，提供 Google 產品和技術（尤其是 Google Cloud）的標準化 Skill 定義。它使用與 addyosmani/agent-skills 相同的 SKILL.md 格式和 skills.sh 分發標準。每個 Skill 對應一項 Google 產品/技術，幫助 AI Agent 正確使用 Google Cloud 服務。

## 核心特色

- **官方出品** — Google 自己維護，品質有保證。每個 Skill 都是 Google 工程師撰寫和審核的
- **實用導向** — 每個 Skill 對應真實的雲端服務，不是抽象概念。從 BigQuery 資料分析到 Cloud Run 部署，都是有具體使用場景的
- **Recipe 模式** — 不只教概念，還提供操作食譜（Recipe）。如 GCP 入門、GCP 認證、網路可觀測性等，讓 Agent 有具體操作步驟可遵循
- **Well-Architected Framework** — 涵蓋安全、可靠度、成本三大架構面向，不只是功能列表，而是架構最佳實踐

### 收錄的 Skills

| Skill | 說明 |
|-------|------|
| Gemini API in Agent Platform | 使用 Gemini API |
| AlloyDB Basics | AlloyDB 資料庫基礎 |
| BigQuery Basics | BigQuery 資料分析 |
| Cloud Run Basics | Cloud Run 部署 |
| Cloud SQL Basics | Cloud SQL 關聯式資料庫 |
| Firebase Basics | Firebase 開發平台 |
| Kubernetes Engine (GKE) Basics | GKE 容器編排 |
| Well-Architected: Security | 安全架構 |
| Well-Architected: Reliability | 可靠度架構 |
| Well-Architected: Cost Optimization | 成本優化架構 |
| Recipe: Onboarding to GCP | GCP 入門 |
| Recipe: Authenticating to GCP | GCP 認證 |
| Recipe: Network Observability | 網路可觀測性 |

## 怎麼用

```bash
# 安裝所有 Google Skills
npx skills add google/skills

# 安裝特定 Skill
npx skills add google/skills --skill bigquery-basics

# 在 Claude Code 中使用
# Skills 會自動被 Agent 讀取，不需要額外配置
```

## 跟其他方案的關係

Google Skills 使用與 [[addyosmani-agent-skills|addyosmani/agent-skills]] 相同的 skills.sh 生態標準和 SKILL.md 格式，兩者可以共存互補：addyosmani 版通用於軟體開發全流程（審查、除錯、優化），Google 版專注於 Google Cloud 服務。

跟 [[AI-Skills]] 概念的關係：Google Skills 是 Agent Skills 標準的官方實作，展示了大型科技公司也擁抱開放標準。它是 [[AI-Skills|Agent Skills 生態系]] 的一部分。

## 相關概念

← [[AI-Skills]] · [[AI-Skills]] · [[MCP]] · [[addyosmani-agent-skills]]

## 來源

- GitHub: https://github.com/google/skills

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/google/skills |
| Stars | ⭐9,608 |
| Language | Shell/Config |
| 建立日期 | 2026-03-31 |
| 授權 | Apache-2.0 |
| 收錄日期 | 2026-04-28 |