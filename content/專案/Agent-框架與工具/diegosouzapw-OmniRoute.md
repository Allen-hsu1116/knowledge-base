---
title: OmniRoute
slug: diegosouzapw-OmniRoute
created: 2026-07-02
updated: 2026-07-02
stars: 9.5k
language: TypeScript
topics: AI-Gateway, LLM, MCP, A2A, Token-Optimization, Claude-Code, Codex, Cursor
---

# OmniRoute — The Free AI Gateway

> ⭐9.5k · Diego Souza · TypeScript · MIT

## 快速導航

- 🧠 **LLM** → [[LLM|LLM]]
- 🔧 **Token 優化** → [[Token-Optimization|Token Optimization]]
- 🔌 **MCP** → [[MCP|MCP]]
- 🛠 **Coding Agent CLI** → [[Coding-Agent-CLI|Coding Agent CLI]]
- ⚡ **RTK 壓縮** → [[rtk|RTK]]
- 💬 **Caveman 壓縮** → [[JuliusBrussee-caveman|Caveman]]

## 是什麼

OmniRoute 是一個免費的 AI 閘道（AI Gateway），將 236+ 個 AI 提供者聚合到單一端點。使用者可以透過一個統一的 API 端點連接 Claude Code、Codex、Cursor、Cline、Copilot 等編碼代理到免費的 Claude/GPT/Gemini 模型，不需要分別管理多個 API 金鑰和儀表板。

它的核心價值是「永不停下來」——當一個提供者的配額用完時，四層自動降級機制（訂閱 → API 金鑰 → 便宜 → 免費）會在毫秒內切換到下一個提供者，確保編碼代理永遠有模型可用。搭配 RTK + Caveman 堆疊壓縮技術，每個請求可節省 15-95% 的 token 消耗。

OmniRoute 聚合了 50+ 個提供者的免費額度，每月約 16 億個免費 token，新用戶首月更高達 21 億。支援 MCP（87 個工具）、A2A 協議、記憶、護欄和評測，達到生產級別的可靠性。

## 核心特色

- **236 個提供者聚合** — 一個端點覆蓋 OpenAI、Anthropic、Google、DeepSeek、Groq、xAI 等 236+ 個 AI 提供者，包含 50+ 個有免費額度的提供者
- **四層自動降級** — 訂閱配額用完 → 切到 API 金鑰 → 切到便宜方案 → 切到免費方案，全在毫秒內完成，確保編碼代理零停機
- **RTK + Caveman 壓縮** — 整合 [[rtk|RTK]] 和 [[JuliusBrussee-caveman|Caveman]] 兩種 token 壓縮技術，自動壓縮工具輸出（git diff、grep、logs），節省 15-95% token
- **16+ 編碼代理整合** — Claude Code、Codex、Cursor、Cline、Copilot、Antigravity 等主流編碼代理只需一個 `/v1` 端點設定即可運作
- **17 種路由策略（Combos）** — 旗艦功能，可組合降級策略、壓縮策略和成本優化策略，打造最佳路由管線
- **跨 API 格式轉譯** — OpenAI ↔ Claude ↔ Gemini ↔ Responses API 自動轉譯，任何工具指向 `/v1` 就能用
- **3 級代理 + TLS 指紋隱匿** — 解決 AI 在某些國家被封鎖的問題，透過代理和 TLS 指紋偽裝繞過封鎖
- **多平台部署** — npm 全域安裝、Docker、Electron 桌面應用、Termux 手機運行、PWA、從原始碼建構

## 怎麼用

### 安裝

```bash
# npm 全域安裝（最簡單）
npm install -g omniroute
omniroute

# Docker
docker run -d --name omniroute --restart unless-stopped --stop-timeout 40 \
  -p 20128:20128 -v omniroute-data:/app/data diegosouzapw/omniroute:latest

# 從原始碼
cp .env.example .env && npm install
PORT=20128 npm run dev
```

### 連接編碼代理

安裝後，將編碼代理的 API 端點指向 `http://localhost:20128/v1`：
- Dashboard: `http://localhost:20128`
- API: `http://localhost:20128/v1`

### 支援的部署平台

- 📦 npm 全域安裝
- 🐳 Docker（AMD64 + ARM64）
- 🖥️ Desktop（Electron，Windows/macOS/Linux）
- 💪 ARM 原生（Raspberry Pi、Apple Silicon）
- 📱 Android（Termux，免 root）
- 📲 PWA（瀏覽器安裝）

## 跟其他方案的關係

OmniRoute 是 [[LLM|LLM]] 基礎設施層的閘道方案，整合了 token 優化和多提供者路由。

| 方案 | 類型 | 提供者數 | 壓縮 | 免費額度 | 編碼代理整合 |
|------|------|---------|------|---------|------------|
| **OmniRoute** | AI Gateway | 236+ | RTK+Caveman (15-95%) | 1.6B tokens/月 | 16+ 代理 |
| [[litellm|LiteLLM]] | AI Gateway | 100+ | 無 | 依提供者 | API 層 |
| [[farion1231-cc-switch|CC Switch]] | Agent 管理器 | 跨平台 | 無 | 無 | Claude Code 等 |
| [[andrewyng-aisuite|aisuite]] | Multi-Provider SDK | 10+ | 無 | 無 | SDK 層 |

與 [[litellm|LiteLLM]] 相比，OmniRoute 更專注於「免費」和「編碼代理整合」，而 LiteLLM 更偏向企業級 API 管理。OmniRoute 的 RTK+Caveman 壓縮整合了 [[Token-Optimization|Token Optimization]] 領域的兩大技術（[[rtk|RTK]] 和 [[JuliusBrussee-caveman|Caveman]]），是唯一在閘道層自動壓縮的方案。

## 相關概念

← [[LLM|LLM]] · [[Token-Optimization|Token Optimization]] · [[MCP|MCP]] · [[Coding-Agent-CLI|Coding Agent CLI]] · [[rtk|RTK]] · [[JuliusBrussee-caveman|Caveman]]

## 來源

- **GitHub**: https://github.com/diegosouzapw/OmniRoute
- **Website**: https://omniroute.online
- **npm**: https://www.npmjs.com/package/omniroute
- **Raw**: `raw/2026-07-02-diegosouzapw-omniroute.md`

---

| 項目 | 值 |
|------|-----|
| **GitHub** | https://github.com/diegosouzapw/OmniRoute |
| **Stars** | ⭐9,527 |
| **License** | MIT |
| **Language** | TypeScript |
| **收錄日期** | 2026-07-02 |