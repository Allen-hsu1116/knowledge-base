---
title: Presenton
date: 2026-05-24
stars: 6369
repo: presenton/presenton
url: https://github.com/presenton/presenton
language: TypeScript
topics:
  - generative-AI
  - MCP
  - self-hosted-AI-platform
  - AI-presentation
  - pptx-generation
---

# Presenton

⭐ 6.4k · 開源 AI 簡報產生器與 API，Gamma / Beautiful AI / Decktopus 的自架替代方案

## 一句話

完全自架的 AI 簡報生成工具——支援 10+ 種 LLM provider、MCP Server、自訂模板、PPTX 匯出，不鎖定 SaaS 不強迫訂閱。

## 為什麼重要

Gamma、Beautiful AI、Decktopus 都是 SaaS 鎖定的封閉平台。Presenton 是第一個開源（Apache 2.0）、完全自架的替代方案——你可以用自己的 API key、跑本地模型（Ollama）、客製模板和主題，簡報資料完全留在自己手上。內建 MCP Server 更讓 agent 可以透過 Model Context Protocol 直接生成簡報。

## 核心概念

- **BYOK（自帶 API Key）** — 支援 OpenAI、Gemini、Vertex AI、Azure OpenAI、Bedrock、Anthropic、Fireworks、Together AI、LM Studio、Ollama、自訂端點
- **MCP Server** — 內建 Model Context Protocol Server，讓 coding agent 可以直接用 API 生成簡報
- **自訂模板** — HTML + Tailwind CSS 設計模板，或從現有 PowerPoint 自動生成模板
- **完整 PPTX 匯出** — 不是截圖，是可編輯的 PowerPoint
- **記憶系統（Mem0 OSS）** — 每份簡報有獨立的記憶空間，用 Qdrant + SQLite 本地運行
- **文件解析（LiteParse）** — 從上傳文件直接建立簡報

## 部署方式

- Docker 一鍵部署（支援 GPU）
- Electron 桌面應用（macOS / Windows / Linux）
- Railway / DigitalOcean 一鍵部署
- 瀏覽器版 Presenton Cloud（免安裝）

## 跟我們的關聯

- [[generative-AI]] — AI 簡報生成是生成式 AI 的典型應用場景
- [[MCP]] — 內建 MCP Server 讓 agent 可以直接生成簡報，是 MCP 生態的實際應用
- [[self-hosted-AI-platform]] — 與 Open-WebUI 同類：完全自架、資料在自己手上
- [[AI-presentation]] — 新概念：AI 驅動的簡報產生工具
- [[pptx-generation]] — 新概念：可程式化的 PPTX 生成