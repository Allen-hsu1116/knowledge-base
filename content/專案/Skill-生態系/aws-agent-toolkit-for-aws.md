---
title: Agent Toolkit for AWS
slug: aws-agent-toolkit-for-aws
created: '2026-10-25'
updated: '2026-10-25'
stars: 3131
language: zh-TW
topics:
- AI-Skills
- MCP
- AI-Agent
---

# Agent Toolkit for AWS

> ⭐3.1k · AWS 官方提供的 MCP、Skills 與插件組合，讓既有 Coding Agent 操作 AWS。

## 快速導航

- [[AI-Skills]]
- [[MCP]]
- [[AI-Agent]]

## 是什麼

Agent Toolkit for AWS 為現有 Coding Agent 提供 AWS 工具、知識與操作指引，涵蓋建置、部署及管理應用。它支援多種宿主，不是另一個需要替換現有 Agent 的完整 runtime。

插件把 AWS MCP Server 設定與 agent skills 一起打包；直接整合時兩者可獨立使用。MCP 提供執行時 API 與文件搜尋，而 skills 是本機按需讀取的任務說明與參考材料，不能把 skill discovery 誤認為已獲 AWS 操作權限。

## 核心特色

- 核心插件：aws-core 覆蓋服務選型、IaC、部署、觀測與費用等主題。

- 領域插件：aws-agents 聚焦 Bedrock／AgentCore，另有資料分析與 DevSecOps。

- 多宿主整合：Claude Code、Codex、Cursor、Devin 有插件入口。

- 獨立 Skills：以 SKILL.md 與 references 提供按需任務知識。

- AWS MCP：提供 API、沙箱腳本執行與即時文件搜尋。

- 權限區分：文件搜尋和 skill discovery 不需 AWS credentials，API 與腳本需要。

## 怎麼用

### 安裝與準備

下列是 Claude Code 內的插件命令，不是一般 shell 指令。本次只整理文件，未安裝插件或變更任何 AWS 資源。

```bash
/plugin install aws-core@claude-plugins-official
```

### 使用入口

```bash
# 若改採獨立 skills 路線，在終端執行：
npx skills add aws/agent-toolkit-for-aws/skills
```

### 使用界線

- 獨立 MCP proxy 路線需要 uv，API 存取需事先設定 AWS credentials。
- 應使用最小權限 IAM、測試帳號與部署前人工核准，避免資源變更及費用風險。
- 本地 skills 與遠端 MCP 是分開的能力；安裝一方不表示另一方已設定完成。

## 跟其他方案的關係

| 方案 | 定位 | 選用界線 |
|---|---|---|
| Toolkit 插件 | 一次組合 skills 與 MCP 設定 | 適合受支援的 Coding Agent 宿主 |
| 獨立 skills | 任務知識及工作指引 | 不直接等於 AWS API 存取 |
| 獨立 MCP | 工具及文件搜尋接口 | 仍需宿主、認證及適當權限 |

README 的 GA 標示屬上游發布狀態；本次未做 AWS 生產操作或權限稽核。

## 相關概念

← [[AI-Skills]] · [[MCP]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/aws/agent-toolkit-for-aws)
- [README](https://github.com/aws/agent-toolkit-for-aws/blob/main/README.md)
- 原始快照：`raw/2026-10-25-aws-agent-toolkit-for-aws.md`
- Metadata：`raw/2026-10-25-aws-agent-toolkit-for-aws.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/aws/agent-toolkit-for-aws |
| Stars | 3,131（2026-10-25 快照） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-10-25 |
