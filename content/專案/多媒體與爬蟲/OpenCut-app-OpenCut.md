---
title: OpenCut
slug: OpenCut-app-OpenCut
created: 2026-07-17
updated: 2026-07-17
stars: 74004
language: TypeScript
topics:
  - editor
  - oss
  - videoeditor
---

# OpenCut

> ⭐74k · 開源 CapCut 替代品，免費的跨平台影片編輯器（Web、桌面、手機）

快速導航：[[AI-video-generation|AI 影片生成]] · [[content-automation|內容自動化]] · [[harry0703-MoneyPrinterTurbo|MoneyPrinterTurbo]]

## 是什麼

OpenCut 是一款免費開源的影片編輯器，定位為 CapCut 的開源替代方案。支援 Web、桌面和手機三個平台，讓創作者不再被商業軟體的訂閱模式和隱私問題綁架。

目前 OpenCut 正在從頭重寫，新一代版本將引入 Editor API、第一方插件系統、Rust 核心、MCP Server（AI Agent 整合）、無頭模式（自動化批次渲染）以及編輯器內建腳本分頁。舊版（opencut-classic）仍在 opencut.app 上運行。

重寫版採用 Rust 核心架構，讓桌面、手機和瀏覽器共用同一份程式碼。plugin-first 架構讓第三方插件成為一等公民，而非事後附加。MCP Server 的加入意味著 AI Agent 可以直接操控影片編輯流程。

## 核心特色

- **跨平台 Rust 核心**：桌面、手機、瀏覽器共用一份程式碼，Rust 提供高效能和記憶體安全
- **Plugin-first 架構**：第一方第三方插件系統，讓擴充功能成為核心設計而非附加功能
- **MCP Server**：AI Agent 可透過 MCP 協議直接操控影片編輯流程，實現 AI 驅動的影片製作
- **無頭模式**：支援自動化和批次渲染，適合 CI/CD 管線或大規模影片處理
- **Editor API**：提供完整的程式化介面，讓開發者可以在自己的應用中嵌入影片編輯功能
- **編輯器內建腳本**：直接在編輯器中寫腳本控制影片處理流程

## 怎麼用

```bash
# 安裝 proto 工具鏈
bash <(curl -fsSL https://moonrepo.dev/install/proto.sh)

# 從 repo 根目錄
proto use    # 安裝 .prototools 中指定的工具版本

# 開發模式
moon run web:dev       # localhost:5173
moon run api:dev       # localhost:8787
moon run desktop:dev   # 見 apps/desktop/README.md
```

一般使用者可直接造訪 [opencut.app](https://opencut.app) 使用舊版。新版正在開發中，可關注 [new.opencut.app](https://new.opencut.app)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心差異 |
|------|-------|------|----------|
| **OpenCut** | ⭐74k | 影片編輯器 | 開源 CapCut 替代，Rust 核心，MCP 整合，跨平台 |
| [[harry0703-MoneyPrinterTurbo\|MoneyPrinterTurbo]] | ⭐80.7k | AI 影片 | AI 自動生成短影片，OpenCut 是編輯器 |
| CapCut | — | 商業編輯器 | OpenCut 的替代目標，閉源訂閱制 |
| DaVinci Resolve | — | 商業編輯器 | 專業級編輯器，免費版功能有限 |
| [[media-streaming\|媒體串流]] | — | 概念 | 媒體串流相關技術 |

← [[AI-video-generation|AI 影片生成]] · [[content-automation|內容自動化]] · [[harry0703-MoneyPrinterTurbo|MoneyPrinterTurbo]]

## 來源

- GitHub: <https://github.com/OpenCut-app/OpenCut>
- 官網: <https://opencut.app>
- 原始 README: `raw/2026-07-17-OpenCut-app-OpenCut.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [OpenCut-app/OpenCut](https://github.com/OpenCut-app/OpenCut) |
| Stars | ⭐74,004 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-07-17 |