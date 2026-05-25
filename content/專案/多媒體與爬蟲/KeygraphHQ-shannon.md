---
title: KeygraphHQ/shannon
date: 2026-05-18
stars: 42711
language: TypeScript
source: https://github.com/KeygraphHQ/shannon
---

# KeygraphHQ/shannon

> Shannon — 自主白箱 AI 滲透測試工具，分析原始碼、識別攻擊向量，並執行真實攻擊來驗證漏洞。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [KeygraphHQ/shannon](https://github.com/KeygraphHQ/shannon) |
| Stars | ⭐42.7k |
| Language | TypeScript |
| 建立日期 | 2025-09-27 |
| 收錄日期 | 2026-05-18 |
| 授權 | AGPL-3.0 (Lite) / Commercial (Pro) |

## 快速導航

- [[AI-Agent]] — Shannon 是一個自主 AI Agent
- [[prompt-security]] — 安全測試的核心主題
- [[MCP]] — Agent 工具使用相關
- [[sandbox]] — 滲透測試的隔離環境概念
- [[code-intelligence]] — 原始碼分析與理解

## 詳細簡介

**Shannon** 是由 Keygraph 開發的 AI 滲透測試工具，定位為「白箱」（source-available）安全測試。它結合原始碼分析與動態攻擊驗證，不只是靜態掃描，而是真正對運行中的應用程式執行攻擊，只回報有實際 PoC 的漏洞。

Shannon 的核心理念是：現代開發團隊每天都在快速部署程式碼，但滲透測試可能一年才做一次，這之間存在巨大的安全漏洞窗口。Shannon 提供隨需、自動化的滲透測試，可以在每次建置或發佈時執行。

Shannon Lite（開源版）提供核心的自主 AI 滲透測試功能；Shannon Pro（商業版）則整合 SAST、SCA、密鑰掃描、商業邏輯安全測試，並透過 Code Property Graph (CPG) 進行靜態-動態關聯分析。

## 核心特色

### 全自主操作
一條指令就能啟動完整滲透測試。Shannon 自動處理 2FA/TOTP 登入（含 SSO）、瀏覽器導航、漏洞利用和報告生成，全程無需人工介入。

### 可重現的 PoC 攻擊
最終報告只包含經過驗證、可利用的漏洞，每個發現都附帶可直接複製貼上的 PoC。無法利用的漏洞不會出現在報告中，避免誤報噪音。

### OWASP 漏洞覆蓋
識別並驗證 Injection、XSS、SSRF、Broken Authentication/Authorization 等 OWASP 常見漏洞類別，持續擴展中。

### 原始碼感知的動態測試
先分析原始碼找出潛在攻擊向量，再用瀏覽器自動化和 CLI 工具對運行中的應用執行真實攻擊驗證，實現「白箱 + 動態」的雙重測試。

### Shannon Pro：CPG 驅動的靜態-動態關聯
Shannon Pro 將原始碼轉換為 Code Property Graph（結合 AST、控制流圖、程式依賴圖），在每個節點用 LLM 評估防護是否充分，然後將靜態發現注入動態攻擊佇列進行驗證，實現靜態分析與動態測試的深度關聯。

## 安裝方式

```bash
# 快速開始（npx）
npx @keygraph/shannon setup  # 互動式設定精靈
npx @keygraph/shannon start -u https://your-app.com -r /path/to/your-repo

# 或從原始碼建置
git clone https://github.com/KeygraphHQ/shannon.git
cd shannon
pnpm install && pnpm build
./shannon start -u https://your-app.com -r /path/to/your-repo

# 監控進度
npx @keygraph/shannon logs <workspace>
npx @keygraph/shannon status
```

需要 Docker、Node.js 18+ 和 AI Provider 憑證（推薦 Anthropic API key）。

## 技術棧

- **語言**: TypeScript
- **AI**: Anthropic Claude（支援 AWS Bedrock、Google Vertex AI）
- **容器**: Docker（worker 約 1GB）
- **工作流**: Temporal
- **框架**: pnpm monorepo

## 授權

- Shannon Lite: AGPL-3.0
- Shannon Pro: Commercial（自架或雲端部署）

## 相關連結

- [Shannon Pro 技術細節](https://github.com/KeygraphHQ/shannon/blob/main/SHANNON-PRO.md)
- [OWASP Juice Shop 測試報告](https://github.com/KeygraphHQ/shannon/tree/main/sample-reports)
- [Discord 社群](https://discord.gg/9ZqQPuhJB7)
- [Keygraph 官網](https://keygraph.io/)

## 來源
- raw/2026-05-18-KeygraphHQ-shannon.md