---
title: wigolo
slug: KnockOutEZ-wigolo
created: 2026-07-19
updated: 2026-07-19
stars: 1240
language: TypeScript
topics:
  - mcp
  - mcp-server
  - ai-agent
  - search
  - web-search
  - web-crawler
  - rag
  - local-first
  - privacy
  - metasearch
---

# wigolo

> ⭐1.2k · 本地優先的 AI Agent 網頁情報層，搜尋/抓取/爬蟲/擷取/快取全免 API key，MCP+REST+SDK

## 快速導航

- 🌐 **網頁爬蟲** → [[網頁爬蟲]]
- 🔌 **MCP** → [[MCP]]
- 🧠 **RAG** → [[rag]]

## 是什麼

wigolo 是一個為 AI Agent 打造的本地優先網頁情報工具層。它提供搜尋、抓取、爬蟲、結構化擷取、快取、找相似頁面、研究、自主收集等 10 個工具，全部透過單一介面運作——MCP Server 給 coding agent 用、REST API 給自架 agent 用、SDK 給嵌入式應用用。

核心特色是「零 API key、零雲端、零計費」。預設的搜尋工具直接透過 18 個引擎轉接器查詢公開引擎，reranker 和 embedding 模型在本地裝置上跑，所有快取和設定都存在 `~/.wigolo/` 底下。搜尋、抓取、爬蟲、擷取、快取、找相似完全不需要 API key；只有 `research` 和 `agent` 工具在合成引用答案時需要一個 LLM（可以用免費的 Gemini key，或用本地的 Ollama）。

wigolo 的輸出不是片段，而是「證據」。每個搜尋結果都帶有逐字摘錄（pinned 到來源的精確位置）、citation ID、可檢查的分數（semantic + lexical + engine consensus）、freshness signal。弱結果會被自己的 scorer 標記為 junk，失敗的引擎會被報告，過時的快取會被標記——agent 永遠知道自己站在什麼基礎上。

## 核心特色

- **10 個工具一站式** — search、fetch、crawl、extract、cache、find_similar、research、agent、diff、watch，涵蓋 agent 需要的所有網頁操作
- **18 引擎並行搜尋** — 多引擎 web search 帶 rank fusion 和 ML reranking，一個 MCP call 同時 fan out 多個查詢（query array 支援），附可解釋的 per-result 分數
- **分層抓取路由** — fetch 工具自動從純 HTTP 升級到 headless browser engine，遇到反 bot 挑戰或 SPA shell 時自動切換，回傳乾淨的 markdown + metadata
- **結構化擷取** — 從頁面擷取表格、JSON-LD、metadata、brand identity、命名 schema（Article/Recipe/Product），或自訂 JSON Schema
- **本地記憶複利** — 每個抓過的頁面都進入快取，可用關鍵字或語意重新查詢，離線也能查，還能偵測上次造訪後的變化
- **自主收集迴圈** — agent 工具可自主規劃→搜尋→抓取→擷取→合成，帶 step log、時間預算、和可選的 output schema
- **誠實輸出** — 過時快取、失敗抓取、降級後端、截斷都在結果中標明，從不偽裝成空的成功資料

## 怎麼用

### 安裝（MCP Server for Coding Agent）

```bash
npx wigolo init --agents=claude-code
```

支援的 agent：`claude-code` · `cursor` · `codex` · `gemini-cli` · `vscode` · `windsurf` · `zed` · `antigravity`（逗號分隔可多選）。wigolo 會自動寫入 MCP config 和指示。

### 健康檢查

```bash
npx wigolo doctor
```

### REST API（自架 agent 用）

```bash
wigolo serve

curl -sX POST http://127.0.0.1:3333/v1/search \
  -H 'Content-Type: application/json' \
  -d '{"query":"local-first software","max_results":5}'
```

### CLI 一行指令

```bash
wigolo search "prompt engineering guide" --json
wigolo shell  # NDJSON 互動 shell
```

### 可選 LLM（提升 research/agent 品質）

```bash
export WIGOLO_LLM_PROVIDER=gemini
export GEMINI_API_KEY=<free-key>
# 或用本地
export WIGOLO_LLM_PROVIDER=ollama
```

## 跟其他方案的關係

| 方案 | Stars | API Key | 本地快取 | 多引擎搜尋 | 結構化擷取 | MCP |
|------|-------|---------|----------|-----------|-----------|-----|
| **wigolo** | ⭐1.2k | 不需要 | ✅ | ✅ (18) | ✅ | ✅ |
| [[firecrawl-firecrawl\|Firecrawl]] | ⭐132k | 需要 | — | ✅ | ✅ | ✅ |
| [[D4Vinci-Scrapling\|Scrapling]] | ⭐57k | 不需要 | — | — | ✅ | ✅ |
| [[unclecode-crawl4ai\|Crawl4AI]] | ⭐65k | 不需要 | — | — | ✅ | ✅ |

wigolo 的核心差異化在於「全工具免 API key + 本地記憶複利」。Firecrawl 需要付費 API key，Crawl4AI 和 Scrapling 偏重爬蟲/抓取。wigolo 把搜尋、抓取、爬蟲、擷取、快取、研究全整合在一個本地優先層，且每個搜尋結果帶有 byte-pinned evidence 和可解釋分數——這是付費服務也不一定有的透明度。

← [[網頁爬蟲]] · [[MCP]] · [[rag]]

## 來源

- GitHub: https://github.com/KnockOutEZ/wigolo
- npm: https://www.npmjs.com/package/wigolo
- 原始 README: `raw/2026-07-19-KnockOutEZ-wigolo.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [KnockOutEZ/wigolo](https://github.com/KnockOutEZ/wigolo) |
| Stars | ⭐1,240 |
| License | AGPL-3.0 |
| Language | TypeScript |
| 收錄日期 | 2026-07-19 |