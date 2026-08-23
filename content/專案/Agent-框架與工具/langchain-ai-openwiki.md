---
title: OpenWiki
slug: langchain-ai-openwiki
created: 2026-08-09
updated: 2026-08-09
stars: 14764
language: TypeScript
topics: [documentation, wiki, agent-memory, deep-agents, code-wiki, personal-wiki, OKF, Mermaid]
---

# OpenWiki

> ⭐14764 · 自我維護的 wiki CLI——Agent 讀你的程式碼，生成有連結的 Markdown wiki，每次變更自動更新。

## 快速導航

- 🧠 [[llm-knowledge-base]] — 知識庫方法論，OpenWiki 是 code wiki + personal wiki 的實作
- 🤖 [[AI-Agent]] — Agent 讀 wiki 作為記憶，Agent 寫 wiki 作為輸出
- 🛠 [[harness-engineering]] — OpenWiki 自動維護 AGENTS.md 和 CLAUDE.md
- 🔌 [[MCP]] — 內建 connectors 透過 MCP 連接 Notion、Slack、Gmail 等

## 是什麼

OpenWiki 是 LangChain 團隊開發的 CLI 工具，能為你的程式碼庫或個人知識自動生成並持續維護一份 Markdown wiki。它由 [Deep Agents](https://github.com/langchain-ai/deepagentsjs) 驅動——一個文件 Agent 讀取你的原始碼，合成出有內部連結的 Markdown wiki，並在每次程式碼變更時自動更新。

兩種模式：
- **Code 模式**（預設）：為當前 repo 生成文件 wiki，寫入 `openwiki/` 目錄
- **Personal 模式**：從你連接的資料來源（Notion、Slack、Gmail、X、Web Search、Hacker News、本地 git repo）合成個人知識 wiki，寫入 `~/.openwiki/wiki`

## 核心特色

- **Agent 寫的文件，持續準確** — Deep Agents 文件 Agent 生成，每次變更自動更新
- **12 個模型供應商** — OpenAI、Anthropic、Gemini、Bedrock、GitHub Copilot、OpenRouter、Nebius、Fireworks 等，支援 OpenAI-compatible 端點（Ollama、LM Studio）
- **內建 Connectors** — Notion、Slack、Gmail、X/Twitter、Web Search、Hacker News、本地 git repo
- **互動式視覺化** — `openwiki visualize` 將 wiki 變成可探索的節點圖，搭配即時 Markdown 閱讀器
- **自我更新** — 透過 GitHub Actions、GitLab CI 或 Bitbucket Pipelines 排程自動更新
- **Open Knowledge Format** — 輸出 [OKF v0.1](https://github.com/GoogleCloudPlatform/knowledge-catalog/blob/main/okf/SPEC.md) 格式，可攜帶到任何 OKF 相容工具
- **Mermaid 圖表** — 自動嵌入序列圖、ER 圖、狀態圖、流程圖，並在每次更新時驗證
- **`.openwikiignore`** — gitignore 風格規則，排除不想被記錄的路徑
- **多語言 wiki** — `--language <locale>` 生成其他語言的文件，程式碼和識別符保持原樣
- **LangSmith 整合** — code 模式下可拉取 LangSmith traces（工具呼叫、結果、延遲），讓文件反映實際執行行為

## 怎麼用

```sh
# 安裝
npm install -g openwiki

# 為當前 repo 初始化 wiki
openwiki --init

# 更新 wiki
openwiki --update

# 互動式節點圖視覺化
openwiki visualize

# Personal 模式
openwiki personal --init

# 認證 connector
openwiki auth notion

# 執行所有 connector 攝取
openwiki ingest all

# 一次性執行
openwiki -p "generate docs"
```

CI 自動更新：將 `openwiki-update.yml` 複製到 `.github/workflows/` 即可。

## 跟其他方案的關係

| 工具 | 定位 | 模式 | 自動更新 |
|------|------|------|----------|
| **OpenWiki** | Agent 生成 + 維護的 wiki | Code + Personal | ✅ CI 排程 |
| [[llm-knowledge-base]] | 方法論 | 概念 | — |
| [[DeusData-codebase-memory-mcp\|Codebase Memory MCP]] | 程式碼知識圖譜 MCP | Code | ✅ Watcher |
| [[colbymchenry-codegraph\|CodeGraph]] | 程式碼圖譜視覺化 | Code | 手動 |
| Mintlify | 文件平台 | Code | 手動 |

## 相關概念

← [[llm-knowledge-base]] · [[AI-Agent]] · [[harness-engineering]] · [[MCP]]

## 來源

- [GitHub：專案原始碼](https://github.com/langchain-ai/deepagentsjs)
- raw/2026-08-09-langchain-ai-openwiki.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/langchain-ai/deepagentsjs |
| Stars | ⭐14764|
| License | MIT |
| 收錄日期 | 2026-08-09 |
