---
title: Karakeep
slug: karakeep-app-karakeep
created: 2026-07-07
updated: 2026-07-07
stars: 26897
language: TypeScript
topics:
  - bookmark-manager
  - self-hosted
  - AI-Agent
  - read-it-later
  - LLM
---

# Karakeep

> ⭐26897 · 自架「收藏一切」應用，AI 自動標記 + 全文搜尋 + Agent 友善 CLI 和 Skills

## 快速導航

- [[self-hosted]]
- [[AI-Agent]]
- [[rag]]
- [[AI-Skills]]
- [[paperless-ngx-paperless-ngx]]


快速導航：[[self-hosted]] · [[AI-Agent]] · [[rag]] · [[AI-Skills]]

## 是什麼

Karakeep（前身 Hoarder）是一個自架優先的「收藏一切」應用，讓你把連結、筆記、圖片和 PDF 全部收藏到一個地方。它結合了傳統書籤管理和 AI 能力——用 LLM 自動為你的收藏打標記和生成摘要，支援本地模型（Ollama）或雲端 API。

這個專案特別適合「數位囤積者」——那些在 Reddit、Twitter、Hacker News 上看到有趣的東西就想收藏起來之後再看的人。與 Pocket 或 memos 等傳統 read-it-later 工具不同，Karakeep 會自動抓取連結的標題、描述和圖片，並對所有內容建立全文搜尋索引。

Karakeep 也對 LLM Agent 友善——提供 CLI 介面和官方 Agent Skills，讓 OpenClaw、Hermes 等 AI Agent 可以直接操作你的書籤庫。這使得它不只是一個書籤工具，更是 AI Agent 生態中的知識管理節點。

## 核心特色

- **AI 自動標記與摘要**：用 LLM 為每個收藏自動生成標籤和摘要，支援 Ollama 本地模型或 OpenAI 等雲端 API，無需手動分類
- **全文搜尋**：基於 Meilisearch 的全文搜尋引擎，可搜尋所有已收藏內容的文字，包括網頁標題、描述和正文
- **Agent 友善**：提供 CLI 介面和官方 Agent Skills，LLM Agent（如 OpenClaw、Hermes）可直接操作書籤庫，實現 AI 驅動的知識管理
- **全方位收藏**：支援連結、筆記、圖片、PDF，並自動抓取連結的中繼資料（標題、描述、圖片）
- **頁面存檔**：使用 monolith 進行整頁存檔，防止連結失效（link rot），還支援用 yt-dlp 自動存檔影片
- **多平台客戶端**：Chrome、Firefox、Safari 瀏覽器擴充功能，iOS 和 Android 原生 App，REST API
- **規則引擎**：可設定規則自動管理書籤，例如自動分類、自動標記
- **OCR**：從圖片中提取文字，讓圖片收藏也能被搜尋

## 怎麼用

### Docker 部署

```bash
docker run -d \
  --name karakeep \
  -p 3000:3000 \
  -v karakeep_data:/data \
  -e OPENAI_API_KEY=your-key \
  ghcr.io/karakeep-app/karakeep:latest
```

或使用 Docker Compose：

```yaml
services:
  karakeep:
    image: ghcr.io/karakeep-app/karakeep:latest
    ports:
      - "3000:3000"
    volumes:
      - ./data:/data
    environment:
      - OPENAI_API_KEY=your-key  # 可選，也可用 Ollama 本地模型
```

### CLI 使用

```bash
# 新增書籤
karakeep add https://example.com

# 搜尋書籤
karakeep search "AI agent"

# 列出所有書籤
karakeep list
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | AI 標記 | 自架 | 頁面存檔 | Agent 友善 |
|------|-------|------|---------|------|----------|-----------|
| **Karakeep** | ⭐26.9k | 書籤+筆記 | ✅ LLM | ✅ | ✅ monolith | ✅ CLI+Skills |
| [[paperless-ngx-paperless-ngx\|Paperless-ngx]] | ⭐41.3k | 文件管理 | ❌ | ✅ | ✅ | ❌ |
| [[mem0ai-mem0\|Mem0]] | ⭐58k | AI 記憶 | ✅ | ✅ | ❌ | ✅ MCP |
| [[supermemoryai-supermemory\|Supermemory]] | ⭐23.3k | AI 記憶 | ✅ | ✅ | ❌ | ✅ MCP |
| Pocket (已關閉) | — | 書籤 | ❌ | ❌ | ❌ | ❌ |

← [[self-hosted]] · [[AI-Agent]] · [[rag]] · [[AI-Skills]]

## 相關概念


← [[self-hosted]] · [[AI-Agent]]

## 來源

- GitHub: <https://github.com/karakeep-app/karakeep>
- 原始 README: `raw/2026-07-07-karakeep-app-karakeep.md`
- 官方文件: <https://docs.karakeep.app>
- Demo: <https://try.karakeep.app>（demo@karakeep.app / demodemo）

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/karakeep-app/karakeep |
| Stars | ⭐26897|
| License | AGPL-3.0 |
| 收錄日期 | 2026-07-07 |
