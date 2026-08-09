---
title: Linear API
slug: linear-linear
created: 2026-08-09
updated: 2026-08-09
stars: 1547
language: TypeScript
topics: [linear, api, sdk, graphql, project-management, issue-tracking, monorepo]
---

# Linear API

> ⭐1.5k · Linear 的官方 SDK 與 API 工具——GraphQL 驅動的專案管理平台，提供型別安全的 TypeScript SDK。

## 快速導航
- 🛠 [[Coding-Agent-CLI]] — Linear SDK 可被 coding agent 用來管理 issues
- 📋 [[linear]] — Linear 技能（Hermes 內建 Linear 整合）

## 是什麼

Linear API 是 Linear 官方維護的 monorepo，包含 Linear GraphQL API 的 TypeScript SDK、匯入工具、以及 GraphQL Code Generator 插件。Linear 本身是一個專為現代軟體開發設計的專案管理工具，用於管理 issues、projects 和產品路線圖。

這個 repo 的核心是透過自訂的 GraphQL Code Generator 插件，從 Linear 生產 API 自動生成型別安全的 SDK，涵蓋所有 operations 和 models。

## 核心特色

- **型別安全 SDK** — 透過 GraphQL Code Generator 自動生成 TypeScript SDK，所有 API operations 都有完整型別
- **GraphQL 原生** — 直接使用 Linear 的 GraphQL API，支援 fragments、documents、typed SDK
- **Monorepo 架構** — 使用 pnpm workspaces 管理多個套件
- **匯入工具** — 從其他系統（GitHub Issues、Jira 等）匯入到 Linear
- **Codegen 插件** — 三個自訂插件：`codegen-doc`（生成 fragments/documents）、`codegen-sdk`（生成 TypeScript SDK）、`codegen-test`（生成 jest 測試）

## 怎麼用

```shell
# 前置需求：Node 18+，啟用 Corepack
corepack enable

# 安裝依賴
pnpm install

# 建置所有套件
pnpm build

# 測試
pnpm test

# 從生產 API 更新 schema
pnpm schema

# 建立 changeset
pnpm changeset
```

開源套件：
- `@linear/sdk` — Linear Client SDK，與 GraphQL API 互動
- `@linear/import` — 從其他系統匯入
- `@linear/codegen-doc` — 生成 GraphQL fragments 和 documents
- `@linear/codegen-sdk` — 從 fragments/documents 生成 TypeScript SDK
- `@linear/codegen-test` — 為 SDK 生成 jest 測試

## 跟其他方案的關係

| 工具 | 類型 | API 風格 | SDK |
|------|------|----------|-----|
| **Linear** | 專案管理 | GraphQL | TypeScript（自動生成） |
| GitHub Issues | 專案管理 | REST + GraphQL | 多語言 |
| Jira | 專案管理 | REST | Java + 社區 |
| Asana | 專案管理 | REST | 多語言 |

## 相關概念
← [[Coding-Agent-CLI]] · [[linear]]

## 來源
- raw/2026-08-09-linear-linear.md

---

- **GitHub**: https://github.com/linear/linear
- **Stars**: ⭐1,547
- **License**: MIT
- **收錄日期**: 2026-08-09