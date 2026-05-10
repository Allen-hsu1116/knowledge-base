---
source: https://github.com/alibaba/OpenSandbox
date: 2026-05-05
tags: [sandbox, alibaba, docker, kubernetes, agent, mcp, code-execution]
---

# OpenSandbox — 阿里巴巴開源 AI 沙箱平台

> 通用 AI 沙箱平台，多語言 SDK + Docker/K8s runtime，支援 Coding Agent、GUI Agent、Agent 評估、AI 程式碼執行、RL 訓練。

**GitHub**: https://github.com/alibaba/OpenSandbox
**Stars**: 10.4k | **Language**: Python | **License**: Apache-2.0 | **CNCF Landscape**

## 什麼是 OpenSandbox

阿里巴巴開源的通用沙箱平台，為 AI 應用提供隔離的執行環境。多語言 SDK、統一 API、Docker/Kubernetes 運行時。

## 核心特色

| 功能 | 說明 |
|------|------|
| 多語言 SDK | Python, Java/Kotlin, JS/TS, C#/.NET, Go |
| Sandbox Protocol | 生命週期管理 + 執行 API，可擴充自定義 runtime |
| Sandbox Runtime | Docker + 高效能 Kubernetes runtime |
| Sandbox Environments | Command, Filesystem, Code Interpreter |
| Network Policy | Ingress Gateway + per-sandbox egress 控制 |
| 強隔離 | gVisor, Kata Containers, Firecracker microVM |
| MCP Server | 透過 MCP 操作沙箱（Claude Code, Cursor 等） |
| CLI 工具 | `osb` — 建立、執行、移動檔案、診斷 |

## 安裝

```bash
pip install opensandbox           # Python SDK
npm install @alibaba-group/opensandbox  # JS/TS SDK
pip install opensandbox-cli       # CLI
```

## 快速開始

```bash
osb config init
osb sandbox create --image python:3.12 --timeout 30m
osb command run <sandbox-id> -- python -c "print(1+1)"
```

## MCP Server

```bash
pip install opensandbox-mcp
opensandbox-mcp --domain localhost:8080 --protocol http
```

## Agent 整合

已支援的 Agent 框架：Claude Code, Gemini CLI, Codex CLI, Qwen Code, Kimi CLI, LangGraph, Google ADK, OpenClaw

瀏覽器自動化：Chrome, Playwright
桌面環境：VNC, VS Code

## 相關主題

- [[openclaw|OpenClaw]] — Agent 框架
- [[MCP|MCP 協議]]
- [[opensandbox|OpenSandbox]]

## 參考資料

- [GitHub - alibaba/OpenSandbox](https://github.com/alibaba/OpenSandbox)