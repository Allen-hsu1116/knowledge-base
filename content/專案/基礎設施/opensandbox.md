---
title: OpenSandbox
slug: opensandbox
created: 2026-05-05
updated: 2026-06-03
stars: 10400
language: Go
topics:
  - sandbox
  - ai
  - docker
  - kubernetes
  - mcp
---

# OpenSandbox

> 阿里巴巴開源的通用 AI 沙箱平台，多語言 SDK + Docker/K8s runtime，支援 Coding Agent、GUI Agent、Agent 評估、AI 程式碼執行、RL 訓練。⭐ 10.4k

## 快速導航
- ⚡ [[sandbox]] · [[Coding-Agent-CLI]] · [[MCP]]

## 是什麼

OpenSandbox 是阿里巴巴開源的通用 AI 沙箱平台，提供多語言 SDK（Python、Java/Kotlin、JS/TS、C#/.NET、Go）、統一沙箱 API、以及 Docker/Kubernetes runtime。列入 CNCF Landscape。設計目的是讓 AI Agent 在安全隔離的環境中執行程式碼——無論是 coding agent 需要跑測試、GUI agent 需要操作桌面、還是 RL 訓練需要環境模擬，OpenSandbox 都能提供標準化的沙箱管理。

## 核心特色

- **多語言 SDK** — Python、Java/Kotlin、JS/TS、C#/.NET、Go 五種語言 SDK
- **Sandbox Protocol** — 生命週期管理 + 執行 API，可擴充自訂 runtime
- **Docker + K8s Runtime** — Docker 開發、Kubernetes 高效能生產環境
- **三種沙箱環境** — Command（命令執行）、Filesystem（檔案系統）、Code Interpreter（程式碼直譯器）
- **強隔離** — 支援 gVisor、Kata Containers、Firecracker microVM
- **Network Policy** — Ingress Gateway + 每個沙箱獨立的 egress 控制
- **MCP Server** — 透過 MCP 讓 Claude Code、Cursor 等 Agent 直接操作沙箱
- **CLI 工具（osb）** — 建立、執行、搬檔、診斷，一列指令搞定

## 怎麼用

SDK 安裝：
```bash
pip install opensandbox           # Python
npm install @alibaba-group/opensandbox  # JS/TS
```

CLI 使用：
```bash
pip install opensandbox-cli
osb config init
osb sandbox create --image python:3.12 --timeout 30m
osb command run <sandbox-id> -- python -c "print(1+1)"
```

MCP Server（讓 Agent 直接操作沙箱）：
```bash
pip install opensandbox-mcp
opensandbox-mcp --domain localhost:8080 --protocol http
```

Code Interpreter 範例：
```python
import asyncio
from opensandbox import Sandbox
from code_interpreter import CodeInterpreter, SupportedLanguage

async def main():
    sandbox = await Sandbox.create(
        "opensandbox/code-interpreter:v1.0.2",
        timeout=timedelta(minutes=10),
    )
    async with sandbox:
        interpreter = await CodeInterpreter.create(sandbox)
        result = await interpreter.codes.run("2 + 2", language=SupportedLanguage.PYTHON)
        print(result.result[0].text)  # 4
    await sandbox.kill()
```

Agent 整合：支援 Claude Code、Gemini CLI、Codex CLI、Qwen Code、Kimi CLI、LangGraph、Google ADK、OpenClaw，以及瀏覽器自動化（Chrome、Playwright）和桌面環境（VNC、VS Code）。

## 跟其他方案的關係

| 特色 | OpenSandbox | [[cubesandbox\|E2B]] | Docker 直接跑 | Modal |
|------|-------------|---------------------|--------------|-------|
| 隔離層級 | gVisor / Kata / Firecracker | Firecracker microVM | cgroups + namespace | gVisor |
| 多語言 SDK | 5 種 | Python / JS | — | Python |
| K8s 原生 | ✅ | ❌ | ✅（需自建） | ✅ |
| MCP 支援 | ✅ | ✅ | ❌ | ❌ |
| Code Interpreter | ✅ 內建 | ✅ 內建 | 需自建 | ❌ |
| 開源授權 | Apache-2.0 | 部分開源 | — | 部分開源 |

OpenSandbox 跟 [[sandbox]] 概念直接相關——它是 sandbox 概念在 AI Agent 場景的工業化實作。MCP Server 整合讓 [[Coding-Agent-CLI]] 如 Claude Code、Cursor 可以直接使用，是 Agent 安全執行程式碼的基礎設施。

## 相關概念
← [[sandbox]] · [[Coding-Agent-CLI]] · [[MCP]]

## 來源
- [原始資料](../raw/2026-05-05-opensandbox.md)