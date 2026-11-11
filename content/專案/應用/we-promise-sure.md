---
title: Sure — 自架個人財務與 AI 助理
slug: we-promise-sure
created: 2026-11-11
updated: 2026-11-11
stars: 11958
language: Ruby
topics: [personal-finance, self-hosted, ai-assistant]
---

# Sure

> ⭐12.0k · 支援 AI 助理與 LLM agent 存取的自架個人財務應用。

## 快速導航

- [[self-hosted]] — 自行部署、備份與資料控制。
- [[financial-forecasting]] — 財務 AI 的相關閱讀；本專案不是報酬預測模型。

## 是什麼

Sure 是 Maybe Finance 停止維護後，由社群延續開發的個人財務管理應用。它保留完整應用的定位，而非只有聊天介面；首頁展示現金流、淨資產、支出等財務面板，以及 AI 助理互動。

專案支援 Docker 自架，也提供瀏覽器、macOS 桌面、行動應用、API client 與 LLM agent 等存取方式。不同客戶端的能力與設定仍應以官方 clients 文件為準，不代表所有介面功能完全相同。

與 LLM 的關係在於財務資料介面和可選 AI 整合，不是交易模型、投資顧問或自動下單系統。即使自架資料庫，使用外部模型或銀行整合時仍須逐一確認資料傳輸範圍。

## 核心特色

- **社群延續**：承接已封存的 Maybe Finance 程式碼，獨立維護。
- **個人財務面板**：以現金流、淨資產與支出檢視作為主要產品介面。
- **多種存取途徑**：官方列出 Web、桌面、行動端、API 與 LLM agents。
- **可選 AI 路徑**：Render 範本區分 No AI、OpenAI-backed 與 External AI。
- **Docker 自架**：正式使用者應循 hosting guide，而非直接使用開發環境。
- **開源授權**：採 AGPLv3；衍生版本仍須處理授權、歸屬與商標要求。

## 怎麼用

以下是 README 的**開發環境**安裝流程，補上 clone 步驟；本次只整理文件，未實際安裝此應用。

先準備 `.ruby-version` 指定的 Ruby、PostgreSQL 與 Redis，並閱讀平台對應的開發指南。

```bash
git clone https://github.com/we-promise/sure.git
cd sure
cp .env.local.example .env.local
bin/setup
bin/dev
```

啟動後用瀏覽器開啟 `http://localhost:3000`。

若只是要自架使用，改看官方 [Docker hosting guide](https://github.com/we-promise/sure/blob/main/docs/hosting/docker.md)。

- 先用測試資料確認備份、還原與帳號權限，再匯入真實財務資料。
- AI 整合不是所有部署的必要條件；No AI 範本刻意不配置 AI tokens。
- 選擇外部 AI 前，確認供應商費用、資料保留政策及機密欄位。

## 跟其他方案的關係

| 方案 | 定位 | 與 Sure 的關係 |
| --- | --- | --- |
| Maybe Finance | 已停止維護的原始財務應用 | Sure 是社群 fork，不是原公司官方服務 |
| Sure No AI | 無 AI token 的部署範本 | 適合先使用財務功能、避免模型外連 |
| Sure Simple AI | OpenAI-backed 設定 | 模型服務為外部依賴，另有 token 與費用管理 |
| Sure External AI | 外部助理與 AlphaClaw／OpenClaw gateway | 是整合部署路徑，不代表 Sure 自身為通用 Agent 框架 |

上述部署差異來自 README；不是功能效能或投資績效比較。

## 相關概念

← [[self-hosted]] · [[financial-forecasting]]

## 來源

- [GitHub — we-promise/sure](https://github.com/we-promise/sure)
- [官方客戶端概覽](https://github.com/we-promise/sure/blob/main/docs/clients.md)
- 原始 README：`raw/2026-11-11-we-promise-sure.md`
- Metadata：`outputs/2026-11-11-we-promise-sure-metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | https://github.com/we-promise/sure |
| Stars | 11,958（2026-11-11 擷取） |
| License | AGPL-3.0 |
| Language | Ruby |
| 收錄日期 | 2026-11-11 |
