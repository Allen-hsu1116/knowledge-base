---
title: OpenCLI
slug: jackwener-OpenCLI
created: 2026-05-10
updated: 2026-05-10
stars: 18,700
language: zh-TW
---

# OpenCLI

> ⭐18,700 · 把網站、瀏覽器 session 和本地工具變成確定性 CLI 介面 — 同指令同結果，零 LLM 成本。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（OpenCLI 讓 Agent 用 CLI 操作網站和 App）
- 🔌 **MCP** → [[MCP]]（OpenCLI 透過 browser extension + CDP 連接瀏覽器）
- 🛠️ **AI Skills** → [[AI-Skills]]（OpenCLI 內建 adapter authoring 等 Agent skills）

## 是什麼

OpenCLI 把網站、瀏覽器 session、Electron app 和本地工具轉成確定性的 CLI 介面。關鍵詞是「確定性」— 同一個指令永遠得到相同結果，不需要 LLM 在 runtime 做判斷。這讓 Agent 操作網站時既快又可靠。

## 核心特色

- **100+ 內建 adapters**：預建好的網站 CLI（HackerNews、B 站等），每個 adapter 把網站的 DOM 結構映射成 CLI 子指令
- **Desktop App Control**：透過 Chrome DevTools Protocol（CDP）驅動 Electron app（Cursor、Codex、ChatGPT、Notion），直接操控 app 內部 DOM
- **Browser Automation for Agents**：透過已登入的 Chrome 做導航、點擊、提取，Agent 不需要自己處理登入和 cookie
- **Multi-profile**：多個 Chrome profile 路由，不同帳號隔離
- **Adapter Authoring**：AI Agent 可以自建新 adapter，把新網站變成 CLI
- **CLI Hub**：發現、安裝、passthrough 外部 CLI（gh、docker 等）

## 怎麼實現的

### 確定性 CLI 的架構

OpenCLI 的核心思路是「把非確定性的網頁操作變成確定性的 CLI 指令」：

1. **Adapter 層**：每個網站有一個 adapter，定義 CLI 子指令到 DOM 操作的映射。例如 `opencli hackernews top --limit 5` 會：打開 HackerNews → 定位 top stories 列表 → 提取前 5 筆 → 輸出結構化結果
2. **Browser Extension + Local Daemon**：安裝 Chrome extension 後，OpenCLI 的 local daemon 透過 CDP 跟瀏覽器通訊，操控已登入的 session
3. **CDP 直操 DOM**：不走 LLM 判斷，直接用 CSS selector / accessibility tree 定位元素，同指令同結果

### AI Agent 整合

Agent 透過 skills 操作 OpenCLI：
- `opencli-adapter-author` — Agent 可以自己寫新 adapter
- `opencli-browser` — Agent 用 browser skill 操作已登入的瀏覽器
- `opencli-autofix` — 自動修復失敗的 adapter 指令
- `smart-search` — 智慧搜尋可用的 adapter

## 怎麼用

```bash
npm install -g @jackwener/opencli
opencli doctor

# 使用內建 adapter
opencli list                           # 列出所有可用 adapter
opencli hackernews top --limit 5       # HackerNews 熱門文章
opencli bilibili hot --limit 5         # B 站熱門

# 瀏覽器操作
opencli browser open https://example.com
opencli browser click "button.submit"
opencli browser extract "div.content"

# Desktop App（透過 CDP）
opencli cursor focus                   # 操控 Cursor IDE

# AI Agent 安裝 skills
npx skills add jackwener/opencli
```

## 跟其他方案的關係

- **vs [[Panniantong-Agent-Reach]]**：Agent Reach 裝工具讓 Agent 能存取平台，OpenCLI 把平台變成確定性 CLI。兩者互補。
- **vs 瀏覽器自動化（Puppeteer/Playwright）**：OpenCLI 不依賴 LLM 做即時判斷，用 CDP 直操 DOM，更快更穩。且能利用已登入的 session。
- **vs [[jo-inc-camofox-browser|Camofox Browser]]**：Camofox 主打反偵測，OpenCLI 主打確定性 CLI。場景不同。
- **vs [[volcengine-OpenSandbox]]**：OpenSandbox 是沙箱執行環境，OpenCLI 是 CLI 介面層，不同層級可互補。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 來源

- raw/2026-05-05-opencli.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [jackwener/OpenCLI](https://github.com/jackwener/OpenCLI) | ⭐18,700 | Apache-2.0 | 2026-05-05 |