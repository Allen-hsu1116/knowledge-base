---
title: Penpot
slug: penpot-penpot
created: 2015-12-29
updated: 2026-06-18
stars: 50086
language: Clojure
topics: [design, open-source, mcp, self-hosted, design-tokens, svg, css, collaboration]
---

# Penpot

> ⭐50k · 開源設計平台，支援 SVG/CSS/HTML 開放標準，內建 MCP Server 連接 AI Agent，設計即代碼。

快速導航：[[nexu-io-open-design|Open Design]] · [[Figma-Skills|Figma Skills]] · [[Frontend-Design-Agent-Skills|Frontend Design Agent Skills]]

## 是什麼

Penpot 是一款開源的設計與原型工具，定位為 Figma 的開源替代方案。它建立在 SVG、CSS、HTML 和 JSON 等開放標準之上，讓設計檔不再是封閉格式，而是開發者可以直接理解和操作的程式碼。Penpot 支援自架（self-hosted），團隊可以完全掌控設計基礎設施，滿足嚴格的合規與治理需求。

Penpot 的關鍵差異在於「設計即代碼」的理念。Inspect 模式直接呈現 SVG、CSS 和 HTML，開發者可以立即使用。原生 Design Tokens 功能讓設計系統成為設計與開發之間的單一真相來源，支援多平台和複雜設計系統的規模化管理。CSS Grid 和 Flex Layout 讓設計從一開始就表現得像真實程式碼。

最重要的是，Penpot 提供了 MCP Server（Model Context Protocol），讓 AI Agent 可以直接讀取設計檔、提取 Design Tokens、生成程式碼，實現設計到開發的自動化工作流。這使得 Penpot 成為 AI Agent 生態系中連接設計與程式碼的關鍵橋樑。

## 核心特色

- **開放標準**：基於 SVG、CSS、HTML、JSON，設計檔不是黑盒，開發者直接可讀
- **MCP Server**：提供 Penpot MCP Server，讓 AI Agent 讀取設計、提取 Token、生成程式碼
- **Design Tokens**：原生支援，設計與開發的單一真相來源，跨平台一致性
- **自架（Self-hosted）**：Docker / Kubernetes 部署，完整掌控資料和基礎設施
- **即時協作**：多人即時設計，開發者友善的 Inspect 模式
- **Plugin 系統**：開放 API 和插件系統，支援自動化和第三方整合
- **CSS Grid + Flex Layout**：設計即代碼的響應式佈局

## 怎麼用

```bash
# SaaS 版（最簡單）
# https://design.penpot.app/

# Docker 自架
docker run -d \
  -p 9001:9001 \
  -p 9002:9002 \
  --name penpot \
  penpotapp/penpot:latest

# Kubernetes 自架
# https://help.penpot.app/technical-guide/getting-started/

# Penpot MCP Server（連接 AI Agent）
# https://penpot.app/penpot-mcp-server
# npm install @penpot/mcp-server
# 或在 Claude Code / Cursor 等 Agent 中設定 MCP 連接
```

## 跟其他方案的關係

| 方案 | 類型 | 開源 | 自架 | MCP | Design Tokens | 開放標準 |
|------|------|------|------|-----|---------------|----------|
| [[penpot-penpot\|Penpot]] | 設計工具 | ✅ | ✅ | ✅ | ✅ | ✅ SVG/CSS |
| Figma | 設計工具 | ❌ | ❌ | ❌ | ✅ | ❌ 封閉格式 |
| [[nexu-io-open-design\|Open Design]] | AI Skill | ✅ | N/A | N/A | N/A | ✅ |
| [[Figma-Skills\|Figma Skills]] | AI Skill | ✅ | N/A | N/A | ❌ | ❌ |
| Sketch | 設計工具 | ❌ | ❌ | ❌ | ❌ | ❌ 封閉格式 |

← [[nexu-io-open-design|Open Design]] · [[Figma-Skills|Figma Skills]]

## 來源

- GitHub：https://github.com/penpot/penpot
- 官網：https://penpot.app/
- MCP Server：https://penpot.app/penpot-mcp-server
- Raw 檔案：`knowledge-base/raw/2026-06-18-penpot-penpot.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [penpot/penpot](https://github.com/penpot/penpot) |
| Stars | ⭐50,086 |
| License | MPL-2.0 |
| Language | Clojure |
| 收錄日期 | 2026-06-18 |