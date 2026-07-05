---
title: KeygraphHQ/shannon
slug: KeygraphHQ-shannon
created: 2026-05-18
date: 2026-05-18
stars: 42711
language: TypeScript
topics: [滲透測試, AI Agent, 白箱安全]
source: https://github.com/KeygraphHQ/shannon
updated: 2026-06-14
---

# KeygraphHQ/shannon

> ⭐42711 · Shannon — 自主白箱 AI 滲透測試工具，分析原始碼、識別攻擊向量，並執行真實攻擊來驗證漏洞。

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

- ⚡ [[AI-Agent]] · [[prompt-security]] · [[MCP]] · [[sandbox]] · [[code-intelligence]]

## 是什麼

Shannon 是由 Keygraph 開發的自主 AI 滲透測試工具，定位為「白箱」（source-available）安全測試。它結合原始碼分析與動態攻擊驗證，不只是靜態掃描，而是真正對運行中的應用程式執行攻擊，只回報有實際 PoC 的漏洞。核心理念是：現代開發團隊每天都在快速部署程式碼，但滲透測試可能一年才做一次，Shannon 提供隨需、自動化的滲透測試來填補這個安全漏洞窗口。

Shannon Lite（開源版，AGPL-3.0）提供核心的自主 AI 滲透測試功能；Shannon Pro（商業版）整合 SAST、SCA、密鑰掃描、商業邏輯安全測試，並透過 Code Property Graph (CPG) 進行靜態-動態關聯分析。

## 詳細簡介

**Shannon** 是由 Keygraph 開發的 AI 滲透測試工具，定位為「白箱」（source-available）安全測試。它結合原始碼分析與動態攻擊驗證，不只是靜態掃描，而是真正對運行中的應用程式執行攻擊，只回報有實際 PoC 的漏洞。

Shannon 的核心理念是：現代開發團隊每天都在快速部署程式碼，但滲透測試可能一年才做一次，這之間存在巨大的安全漏洞窗口。Shannon 提供隨需、自動化的滲透測試，可以在每次建置或發佈時執行。

Shannon Lite（開源版）提供核心的自主 AI 滲透測試功能；Shannon Pro（商業版）則整合 SAST、SCA、密鑰掃描、商業邏輯安全測試，並透過 Code Property Graph (CPG) 進行靜態-動態關聯分析。

## 核心特色

- **全自主操作** — 一條指令啟動完整滲透測試，自動處理 2FA/TOTP 登入（含 SSO）、瀏覽器導航、漏洞利用和報告生成，全程無需人工介入
- **可重現的 PoC 攻擊** — 最終報告只包含經過驗證、可利用的漏洞，每個發現都附帶可直接複製貼上的 PoC，無法利用的漏洞不會出現在報告中，避免誤報噪音
- **OWASP 漏洞覆蓋** — 識別並驗證 Injection、XSS、SSRF、Broken Authentication/Authorization 等 OWASP 常見漏洞類別，持續擴展中
- **原始碼感知的動態測試** — 先分析原始碼找出潛在攻擊向量，再用瀏覽器自動化和 CLI 工具對運行中的應用執行真實攻擊驗證，實現「白箱 + 動態」的雙重測試
- **Shannon Pro：CPG 驅動的靜態-動態關聯** — 將原始碼轉換為 Code Property Graph（結合 AST、控制流圖、程式依賴圖），在每個節點用 LLM 評估防護是否充分，再將靜態發現注入動態攻擊佇列進行驗證

## 怎麼用

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

## 跟其他方案的關係

| 方案 | 類型 | 測試方式 | PoC 驗證 | 白箱分析 | 自主程度 | 授權 |
|------|------|----------|---------|---------|---------|------|
| **Shannon** | AI 滲透測試 | 動態+靜態 | ✅ 只回報可利用漏洞 | ✅ CPG | 全自主 | AGPL/Commercial |
| OWASP ZAP | 傳統掃描器 | 動態 | ❌ | ❌ | 半自動 | Apache 2.0 |
| Burp Suite | 傳統滲透 | 動態 | ⚠️ 手動 | ❌ | 手動 | 商業 |
| Snyk Code | 靜態掃描 | 靜態 SAST | ❌ | ✅ AST | 自動 | 商業 |
| Semgrep | 靜態掃描 | 靜態 SAST | ❌ | ✅ AST | 自動 | LGPL/商業 |

- Shannon 是 [[AI-Agent]] 在資安領域的深度應用，利用 LLM 做自主攻擊決策
- 與靜態掃描工具（Snyk、Semgrep）互補：Shannon 只回報經過動態驗證、可利用的漏洞，消除誤報噪音
- [[CloakHQ-CloakBrowser]] 提供繞過 bot detection 的瀏覽器能力，可作為 Shannon 滲透測試時的前置工具

## 相關概念

← [[AI-Agent]] · [[prompt-security]] · [[MCP]] · [[sandbox]] · [[code-intelligence]]

## 授權

- Shannon Lite: AGPL-3.0
- Shannon Pro: Commercial（自架或雲端部署）

## 相關連結

- [Shannon Pro 技術細節](https://github.com/KeygraphHQ/shannon/blob/main/SHANNON-PRO.md)
- [OWASP Juice Shop 測試報告](https://github.com/KeygraphHQ/shannon/tree/main/sample-reports)
- [Discord 社群](https://discord.gg/9ZqQPuhJB7)
- [Keygraph 官網](https://keygraph.io/)

## 來源

- [原始資料](../raw/2026-05-18-KeygraphHQ-shannon.md)