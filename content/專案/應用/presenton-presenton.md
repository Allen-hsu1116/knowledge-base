---
title: Presenton
slug: presenton-presenton
created: 2026-05-24
date: 2026-05-24
stars: 6369
repo: presenton/presenton
url: https://github.com/presenton/presenton
language: TypeScript
topics: [AI, PPT, 簡報生成]
updated: 2026-06-14
---

# Presenton

> ⭐6369 · 開源 AI 簡報產生器與 API，Gamma / Beautiful AI / Decktopus 的自架替代方案

## 一句話

完全自架的 AI 簡報生成工具——支援 10+ 種 LLM provider、MCP Server、自訂模板、PPTX 匯出，不鎖定 SaaS 不強迫訂閱。

## 快速導航

- ⚡ [[generative-AI]] · [[MCP]] · [[self-hosted]]

## 是什麼


Presenton 是開源的 AI 簡報產生器與 API，是 Gamma / Beautiful AI / Decktopus 的自架替代方案。

核心差異：完全自架、資料在自己手上、BYOK（自帶 API Key），不鎖定 SaaS 不強迫訂閱。支援 10+ 種 LLM provider（OpenAI、Gemini、Anthropic、Ollama 等），內建 MCP Server 讓 Agent 可以直接透過 Model Context Protocol 生成簡報，輸出可編輯的 PPTX。

## 核心特色

- **BYOK（自帶 API Key）** — 支援 OpenAI、Gemini、Vertex AI、Azure OpenAI、Bedrock、Anthropic、Fireworks、Together AI、LM Studio、Ollama、自訂端點
- **MCP Server** — 內建 Model Context Protocol Server，Agent 可以直接用 API 生成簡報
- **自訂模板** — HTML + Tailwind CSS 設計模板，或從現有 PowerPoint 自動生成模板
- **完整 PPTX 匯出** — 不是截圖，是可編輯的 PowerPoint
- **記憶系統（Mem0 OSS）** — 每份簡報有獨立的記憶空間，用 Qdrant + SQLite 本地運行
- **文件解析（LiteParse）** — 從上傳文件直接建立簡報
- **Ollama 整合** — 本地跑模型，完全隱私
- **多 Provider 混搭** — 文字和圖片生成可以用不同 provider

## 怎麼用

部署方式：
```bash
# Docker 一鍵部署（支援 GPU）
docker compose up -d

# 或下載桌面應用
# macOS / Windows / Linux
```

也支援 Railway / DigitalOcean 一鍵部署，以及瀏覽器版 Presenton Cloud（免安裝）。

MCP Server 使用（讓 Agent 生成簡報）：
- 內建 MCP Server，Agent 可透過 Model Context Protocol 直接生成簡報
- 適用於 Claude Code、Cursor 等 coding agent

## 跟其他方案的關係

| 特色 | Presenton | [[ppt-master|PPT Master]] | Gamma | Beautiful AI |
|------|-----------|-------------------------|--------|-------------|
| 輸出格式 | PPTX + Web | 原生 PPTX（DrawingML） | Web 為主 | Web 為主 |
| 可編輯性 | ✅ 可編輯 | ✅ 完全可編輯 | ⚠️ 有限 | ⚠️ 有限 |
| 開源 | ✅ Apache 2.0 | ✅ MIT | ❌ SaaS | ❌ SaaS |
| MCP Server | ✅ 內建 | ❌ | ❌ | ❌ |
| 語音旁白 | ❌ | ✅ edge-tts + 克隆 | ❌ | ❌ |
| 自架 | ✅ Docker / 桌面 / Cloud | ✅ 本地跑 | ❌ | ❌ |
| 記憶系統 | ✅ Mem0 | ❌ | ❌ | ❌ |

Presenton 和 [[ppt-master|PPT Master]] 是唯二的開源 AI 簡報方案。Presenton 強調 MCP 整合和自架 API，PPT Master 專注原生 PPTX 品質和語音旁白。

## 跟我們的關聯

- [[generative-AI]] — AI 簡報生成是生成式 AI 的典型應用場景
- [[MCP]] — 內建 MCP Server 讓 Agent 可以直接生成簡報，是 MCP 生態的實際應用
- [[self-hosted]] — 與 Open-WebUI 同類：完全自架、資料在自己手上
- [[AI-presentation]] — AI 驅動的簡報產生工具
- [[AI-presentation]] — 可程式化的 PPTX 生成

## 相關概念

← [[generative-AI]] · [[MCP]] · [[self-hosted]] · [[AI-presentation]]

## 來源

- GitHub：https://github.com/presenton/presenton
- Raw 檔案：`raw/2026-05-24-presenton-presenton.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/presenton/presenton |
| Stars | ⭐6369|
| License | 未標示 |
| 收錄日期 | 2026-05-24 |
