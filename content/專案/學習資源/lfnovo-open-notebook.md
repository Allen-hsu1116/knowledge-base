---
title: Open Notebook
slug: lfnovo-open-notebook
created: 2026-06-05
updated: 2026-06-05
stars: 25031
language: TypeScript
topics: [NotebookLM 替代, RAG, 自架 AI, 多模型, Podcast]
---

# Open Notebook

> ⭐25031 · Google NotebookLM 的開源隱私替代方案，自架、多模型、100% 本地運行，支援 18+ AI 供應商

## 快速導航

[[rag|RAG]] · [[self-hosted|自架 AI 平台]] · [[document-parsing|文件解析]]

## 是什麼

Open Notebook 是 Google NotebookLM 的開源替代品，主打隱私優先和多方供應商支援。它讓你把 PDF、影片、音訊、網頁、Office 文件等多模態內容整理成 Notebook，然後用 AI 對這些內容進行智慧搜尋、對話、摘要和轉換——而且所有資料都在你自己的基礎設施上運行。

與 Google NotebookLM 最大的差異在於「選擇權」：你可以自選 AI 模型供應商（OpenAI、Anthropic、Ollama、LM Studio 等 18+ 家），而不是被綁定在 Google 的模型上；你可以用 Docker 自架在任何地方，而不是只能用 Google 雲端；你有完整的 REST API 可以做自動化整合，而不是被鎖在封閉系統裡。

技術上，Open Notebook 用 Python + FastAPI 做後端，Next.js + React 做前端，SurrealDB 做資料庫，LangChain 做 AI 編排。Podcast 生成功能是其一大亮點：支援 1-4 位講者自訂配置，遠超 NotebookLM 的 2 人固定模式，可以產出更豐富的多人對話風格 Podcast。

## 核心特色

- **隱私優先自架部署**：資料完全在自有基礎設施上運行，Docker 一鍵啟動（docker compose up -d），支援本地、雲端、混合部署，零雲端依賴
- **18+ AI 供應商支援**：透過 Esperanto 統一介面，OpenAI、Anthropic、Google GenAI、Vertex AI、Ollama、Perplexity、Azure OpenAI、Mistral、DeepSeek、xAI、OpenRouter 等全部支援，LLM + Embedding + Speech-to-Text + Text-to-Speech 全覆蓋
- **多模態內容管理**：PDF、影片、音訊、網頁、Office 文件等多種格式統一管理，全文搜尋 + 向量搜尋雙引擎，精確控制哪些內容分享給 AI 模型
- **專業 Podcast 生成**：支援 1-4 位講者 + 自訂 Profile（NotebookLM 只能 2 人），Episode Profile 系統讓每個 Podcast 有獨立風格，支援 DeepSeek-R1 和 Qwen3 等推理模型
- **內容轉換引擎 + REST API**：自訂或內建的 Content Transformations 做摘要、提取、轉換，完整的 REST API 提供程式化存取所有功能，MCP 整合 Claude Desktop 和 VS Code

## 怎麼用

```bash
# 下載 docker-compose.yml
curl -o docker-compose.yml https://raw.githubusercontent.com/lfnovo/open-notebook/main/docker-compose.yml

# 設定加密金鑰（編輯 docker-compose.yml）
# 將 OPEN_NOTEBOOK_ENCRYPTION_KEY 改為自訂密鑰

# 啟動服務
docker compose up -d

# 15-20 秒後開啟瀏覽器
# http://localhost:8502

# 設定 AI 供應商
# Settings → API Keys → Add Credential
# 選擇供應商 → 貼上 API Key → Save
# Test Connection → Discover Models → Register Models

# 免費本地 AI（Ollama）方案
curl -o docker-compose.yml https://raw.githubusercontent.com/lfnovo/open-notebook/main/examples/docker-compose-ollama.yml
docker compose up -d
```

從源碼建置可參考 [開發者安裝指南](https://github.com/lfnovo/open-notebook/tree/main/docs/1-INSTALLATION/from-source.md)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 隱私 | AI 供應商 | Podcast | API | 自架 |
|------|-------|------|------|----------|---------|-----|------|
| **Open Notebook** | ⭐25k | 開源 NotebookLM | ✅ 自架 | 18+ 家 | 1-4 講者 | ✅ REST | ✅ Docker |
| Google NotebookLM | — | 閉源 SaaS | ❌ Google 雲端 | Google only | 2 講者 | ❌ 無 | ❌ |
| [[teng-lin-notebooklm-py|notebooklm-py]] | ⭐15k | Python 模仿版 | 部分 | OpenAI/其他 | ❌ | 部分 | ✅ |
| [[open-webui-open-webui|Open WebUI]] | ⭐100k+ | 自架 Chat UI | ✅ 自架 | 多家 | ❌ | ✅ | ✅ Docker |
| [[Crosstalk-Solutions-project-nomad|Project N.O.M.A.D.]] | ⭐27k | 離線知識伺服器 | ✅ 離線 | Ollama | ❌ | 部分 | ✅ |
| Obsidian + AI 插件 | — | 知識管理 | ✅ 本地 | 視插件 | ❌ | 視插件 | ✅ |

Open Notebook 的定位很明確：如果你要 NotebookLM 的核心體驗（多來源研究 + AI 對話 + Podcast），但又需要隱私、多供應商、API、自架——它是目前最完整的開源選擇。

## 相關概念

← [[rag]] · [[self-hosted]] · [[document-parsing]]

## 來源

- GitHub: <https://github.com/lfnovo/open-notebook>
- 原始 README: `raw/2026-06-05-lfnovo-open-notebook.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/lfnovo/open-notebook |
| Stars | ⭐25031|
| License | MIT |
| 收錄日期 | 2026-06-05 |
