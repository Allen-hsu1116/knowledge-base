---
title: Page Agent
slug: alibaba-page-agent
created: 2026-06-26
updated: 2026-06-26
stars: 19.8k
language: TypeScript
topics:
  - agent
  - ai
  - ai-agents
  - browser-automation
  - javascript
  - mcp
  - typescript
  - web
---

# Page Agent

> ⭐19800 · 阿里巴巴開源的 in-page GUI Agent，用自然語言控制網頁介面，無需瀏覽器擴充或 Python 環境

## 快速導航


- 🖥️ **電腦使用代理** → [[computer-use-agent|Computer Use Agent]]
- 🌐 **瀏覽器使用** → [[browser-use-browser-use|Browser Use]]
- 🔌 **MCP** → [[MCP]]
- 🤖 **AI Agent** → [[AI-Agent|AI Agent]]

## 是什麼

Page Agent 是阿里巴巴開源的輕量級網頁 GUI Agent，它的核心理念是「住在你網頁裡的 Agent」。不同於傳統瀏覽器自動化工具需要安裝瀏覽器擴充、Python 環境或無頭瀏覽器，Page Agent 只需要一段 JavaScript——所有操作都在你的網頁裡面發生。你用自然語言告訴它要做什麼，它就能自動找到對應的 DOM 元素並執行操作。

Page Agent 的技術路線跟大多數 GUI Agent 不同——它不使用截圖，不需要多模態 LLM，而是基於純文字的 DOM 操作。它直接解析頁面的 DOM 樹，把元素結構轉成文字描述送給 LLM，LLM 回傳操作指令後再執行。這意味著你可以用任何文字 LLM 來驅動它，不需要 GPT-4V 這類昂貴的視覺模型。它支援 BYO LLM（Bring Your Own LLM），你可以接入 Qwen、OpenAI、Anthropic 等任何 OpenAI API 相容的模型。

使用場景非常廣泛：SaaS AI Copilot 讓你在幾行程式碼內為產品加上 AI 助手；智能表單填寫把 20 次點擊的工作流程簡化成一句話，適合 ERP/CRM/管理後台；無障礙功能讓任何網頁應用都能透過自然語言操作，支援語音指令和螢幕閱讀器。它還提供可選的 Chrome 擴充功能來支援跨頁面多步驟任務，以及 MCP Server（Beta）讓外部 Agent 客戶端能控制瀏覽器。Page Agent 基於 browser-use 專案的 DOM 處理組件和 prompt 設計，但定位為客戶端網頁增強而非伺服器端自動化。

## 核心特色


1. **零安裝 in-page 整合** — 不需要瀏覽器擴充、Python 或無頭瀏覽器，只要一行 `<script>` 標籤或 npm install 就能在網頁中啟動 Agent
2. **純文字 DOM 操作** — 不截圖、不用多模態 LLM，直接解析 DOM 樹轉文字描述，任何文字 LLM 都能驅動
3. **BYO LLM** — 支援任何 OpenAI API 相容的模型端點，Qwen/OpenAI/Anthropic/自架模型都能接
4. **Chrome 擴充 + MCP Server** — 可選的 Chrome 擴充支援跨頁面多步驟任務，MCP Server（Beta）讓外部 Agent 控制瀏覽器
5. **SaaS AI Copilot** — 幾行程式碼為產品加上 AI 助手，無需重寫後端
6. **智能表單填寫** — 把複雜的多步驟表單操作簡化成一句自然語言指令
7. **無障礙存取** — 讓任何網頁透過自然語言、語音指令操作，降低使用門檻
- **可追溯資訊** — 來源、授權與收錄日期集中在頁尾，方便核對專案背景。
- **生態系連結** — 透過相關概念與替代方案連結，補足採用時的比較脈絡。
- **實作導向** — 將定位、使用方式與限制整理在同一頁，便於快速評估。
- **延伸閱讀** — 保留原始素材路徑，必要時可回查完整 README 或研究資料。

## 怎麼用

```bash
# 方法 1：CDN 一行整合（快速體驗）
# 在 HTML 中加入：
# <script src="https://cdn.jsdelivr.net/npm/page-agent@1.10.0/dist/iife/page-agent.demo.js" crossorigin="true"></script>

# 方法 2：NPM 安裝
npm install page-agent
```

```javascript
// 基本使用
import { PageAgent } from 'page-agent'

const agent = new PageAgent({
    model: 'qwen3.5-plus',
    baseURL: 'https://dashscope.aliyuncs.com/compatible-mode/v1',
    apiKey: 'YOUR_API_KEY',
    language: 'en-US',
})

// 用自然語言控制網頁
await agent.execute('Click the login button')
await agent.execute('Fill the email field with user@example.com')
await agent.execute('Select the first item in the dropdown and submit the form')

// 也可以用 OpenAI 模型
const agent2 = new PageAgent({
    model: 'gpt-4o',
    baseURL: 'https://api.openai.com/v1',
    apiKey: 'YOUR_OPENAI_KEY',
})

await agent2.execute('Navigate to the settings page and toggle dark mode')
```

**前置需求：** 支援 JavaScript 的網頁環境、任何 OpenAI API 相容的 LLM 端點（API Key）

## 跟其他方案的關係

| 方案 | 定位 | 部署方式 | 多模態需求 | MCP 整合 | 跨頁面 |
|------|------|---------|-----------|---------|--------|
| **Page Agent** | In-page GUI Agent | 純 JS（網頁內） | ❌ 純文字 DOM | ✅ Beta | ✅ Chrome 擴充 |
| [[browser-use-browser-use\|Browser Use]] | 瀏覽器 Agent | Python + Playwright | ✅ 截圖 + DOM | ✅ | ✅ |
| [[ChromeDevTools-chrome-devtools-mcp\|Chrome DevTools MCP]] | 瀏覽器控制 | MCP Server | ✅ | ✅ | ✅ |
| [[jo-inc-camofox-browser\|Camofox]] | 反偵測瀏覽器 | 獨立瀏覽器 | ✅ | ❌ | ✅ |

Page Agent 跟 Browser Use 的差異在於：Browser Use 需要 Python 環境和 Playwright 瀏覽器，使用截圖 + DOM 雙模式；Page Agent 是純 JavaScript 在網頁內運行，只用文字 DOM，更輕量。Page Agent 的 DOM 處理組件實際上就是從 browser-use 衍生的。跟 Chrome DevTools MCP 的差異在於：DevTools MCP 是從外部控制瀏覽器，Page Agent 是從網頁內部增強。跟 Camofox 的差異在於：Camofox 是完整的反偵測瀏覽器，Page Agent 不是瀏覽器而是網頁內的 Agent 層。

## 相關概念


← [[computer-use-agent]] · [[browser-use-browser-use]] · [[MCP]] · [[AI-Agent]]

## 來源

- GitHub: https://github.com/alibaba/page-agent
- raw/2026-06-26-alibaba-page-agent.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/alibaba/page-agent |
| Stars | ⭐19800|
| License | MIT |
| 收錄日期 | 2026-06-26 |
