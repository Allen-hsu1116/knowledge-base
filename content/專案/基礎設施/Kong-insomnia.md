---
title: Insomnia
slug: Kong-insomnia
created: 2016-04-23
updated: 2026-06-19
stars: 38681
language: TypeScript
topics: [api-client, graphql, rest, grpc, websockets, open-source, electron-app]
---

# Insomnia

> ⭐38.7k · 開源跨平台 API client，支援 GraphQL、REST、WebSockets、SSE、gRPC，本地/Git/雲端三種儲存。

快速導航：[[self-hosted|自架]] · [[n8n-io-n8n|n8n]] · [[open-source-business|開源商業模式]]

## 是什麼

Insomnia 是由 Kong 維護的開源跨平台 API client，定位為 Postman 的開源替代方案。它支援 GraphQL、REST、WebSockets、Server-Sent Events（SSE）、gRPC 以及任何 HTTP 相容協議，讓開發者在單一工具內完成 API 除錯、設計、測試、mock 和 CI/CD 整合。

Insomnia 的核心差異化在於儲存選項的靈活性。它提供三種儲存方式：Local Vault（100% 本地儲存，資料不離開機器）、Git Sync（透過任何 Git 倉庫同步，不經過雲端）、Cloud Sync（雲端協作，可選端到端加密）。這讓開發者能根據安全需求選擇不同儲存策略，敏感 API 可以 100% 本地，而協作專案可以用雲端。

此外，Private Environments 功能確保環境設定（如 API keys）永遠存在本地，不會因為選擇雲端儲存而上傳。Insomnia 採用 Apache-2.0 授權，有非常慷慨的免費方案，付費方案解鎖 Git Sync、無限協作和組織管理等進階功能。

## 核心特色

- **多協議支援**：GraphQL、REST、WebSockets、SSE、gRPC，一個工具搞定所有 API 測試
- **三種儲存**：Local Vault（100% 本地）、Git Sync（Git 倉庫同步）、Cloud Sync（雲端 + E2EE）
- **Private Environments**：環境設定永遠存在本地，獨立於專案儲存方式
- **API 設計**：原生 OpenAPI 編輯器和視覺預覽，邊寫邊看
- **API 測試**：原生測試套件和集合執行器
- **API Mock**：雲端或自架 mock server
- **Insomnia CLI**：用於 CI/CD 的 lint 和測試
- **Plugin Hub**：第三方插件生態系
- **社群專案**：Insomnia Documenter、GitHub API Spec Importer、Swaggymnia

## 怎麼用

```bash
# 下載安裝（Mac/Windows/Linux）
# https://insomnia.rest

# 免免帳號使用：Local Scratch Pad
# 建立帳號：https://insomnia.rest/pricing

# 開發模式（貢獻者）
git clone https://github.com/Kong/insomnia.git
cd insomnia
npm i          # 安裝依賴
npm run lint   # Lint
npm test       # 測試
npm run dev    # 啟動開發模式

# Insomnia CLI（Inso）
npm run inso-start
./packages/insomnia-inso/bin/inso -v
```

## 跟其他方案的關係

| 方案 | 類型 | Stars | 開源 | 多協議 | 自架儲存 | 授權 |
|------|------|-------|------|--------|----------|------|
| [[Kong-insomnia\|Insomnia]] | API Client | ⭐38.7k | ✅ | ✅ 5+ | ✅ Local/Git | Apache-2.0 |
| Postman | API Client | — | ❌ | ✅ | ❌ | 商業 |
| Bruno | API Client | — | ✅ | ✅ | ✅ Git | MIT |
| Hoppscotch | API Client | — | ✅ | ✅ | ✅ | MIT |

Insomnia 與 [[n8n-io-n8n|n8n]]（工作流自動化）和 [[self-hosted|自架]] 概念相關——開發者在自架環境中需要 API 測試工具。與 [[open-source-business|開源商業模式]] 相關，展示了開源工具如何透過付費方案永續經營。

## 相關概念

← [[self-hosted|自架]] · [[n8n-io-n8n|n8n]] · [[open-source-business|開源商業模式]]

## 來源

- GitHub：https://github.com/Kong/insomnia
- 官網：https://insomnia.rest
- 文件：https://docs.insomnia.rest
- Slack：https://chat.insomnia.rest
- Raw 檔案：`knowledge-base/raw/2026-06-19-Kong-insomnia.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Kong/insomnia](https://github.com/Kong/insomnia) |
| Stars | ⭐38,681 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-06-19 |