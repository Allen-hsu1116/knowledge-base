---
title: LobeHub
slug: lobehub-lobehub
created: 2023-05-21
updated: 2026-06-16
stars: 78706
language: TypeScript
topics: [agent, agent-collaboration, agent-harness, ai, cao, chatgpt, claude, deepseek, gemini, gpt, knowledge-base, mcp, openai, skills]
---

# LobeHub

> ⭐78.7k · 你的 Agent 首席營運官——招募、排班、回報，讓 AI 團隊 7×24 運作

## 快速導航
[[AI-Skills|Agent Skills 生態系]] · [[MCP|MCP 協議]] · [[self-hosted|自架 AI 平台]]

## 是什麼

LobeHub 是一個以「Agent 作為工作單位」為核心理念的 AI Agent 營運平台。它不只是另一個聊天介面，而是一個讓你招募、建立、排程和協作 AI Agent 的完整工作空間。在 LobeHub 中，Agent 不是一次性的任務工具，而是有記憶、有專長、能協作的數位隊友。

LobeHub 解決了一個核心問題：今天的 AI Agent 是碎片化的。你在一個視窗跟 Claude 聊，另一個視窗用 GPT，第三個視窗操作一個自動化流程，彼此沒有連結。LobeHub 把所有 Agent 統一管理，讓它們在一個平台上分工合作。它提供 IM Gateway，讓 Agent 能在你已經在用的通訊工具（如 Discord、Telegram、微信等）裡工作。

專案採用 TypeScript 開發，支援 Vercel、Docker、Zeabur 等多種部署方式，也有 Docker 自架方案。LobeHub 的願景是「人機共演化」（Co-evolution of Humans and Agents）——Agent 不只是工具，而是會成長的工作夥伴。

## 核心特色

- **Agent 營運中心（CAO）**：招募、排班、回報你的整個 AI 團隊，讓 Agent 7×24 自主運作
- **Agent Builder**：描述你需要的 Agent，自動設定模型、Skills 和記憶，即建即用
- **統一智慧介面**：一個介面存取任何模型、任何模態——文字、圖像、語音都支援
- **10,000+ Skills 庫**：超過一萬個工具和 MCP 相容插件，讓 Agent 連接你日常使用的服務
- **IM Gateway**：Agent 直接在你已經在用的通訊平台工作，不用切換視窗
- **MCP 整合**：完整支援 Model Context Protocol，讓 Agent 安全連接外部資料和工具
- **自架選項**：Vercel、Docker、Zeabur 等多種部署方式，資料自主可控

## 怎麼用

```bash
# Docker 一鍵部署（推薦）
docker run -d \
  --name lobehub \
  -p 3210:3210 \
  -v lobehub_data:/app/data \
  lobehub/lobehub:latest

# 或用 Vercel 一鍵部署
# https://vercel.com/new/clone?repository-url=https://github.com/lobehub/lobehub

# 本地開發
git clone https://github.com/lobehub/lobehub.git
cd lobehub
pnpm install
pnpm dev
# 開啟 http://localhost:3010
```

## 跟其他方案的關係

| 方案 | 類型 | Agent 管理 | 自架 | 適用場景 |
|------|------|-----------|------|----------|
| [[lobehub-lobehub|LobeHub]] | Agent 營運平台 | ✅ 招募/排班/回報 | ✅ | AI 團隊管理 |
| [[langgenius-dify|Dify]] | LLM App 平台 | ✅ 工作流 | ✅ | LLM 應用開發 |
| [[CherryHQ-cherry-studio|Cherry Studio]] | AI 客戶端 | ❌ 單一對話 | ✅ | 多模型聊天 |
| [[open-webui-open-webui|Open WebUI]] | Web UI | ❌ 單一對話 | ✅ | 本地模型介面 |
| [[farion1231-cc-switch|CC Switch]] | 桌面管理器 | ⚠️ 切換管理 | ✅ | AI Agent 切換 |

## 相關概念
← [[AI-Skills|Agent Skills 生態系]] · [[MCP|MCP 協議]]

## 來源

- GitHub：https://github.com/lobehub/lobehub
- 官方網站：https://lobehub.com
- 文件：https://lobehub.com/docs
- Raw 檔案：`knowledge-base/raw/2026-06-16-lobehub-lobehub.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [lobehub/lobehub](https://github.com/lobehub/lobehub) |
| Stars | ⭐78,706 |
| License | Custom (Source Available) |
| Language | TypeScript |
| 收錄日期 | 2026-06-16 |