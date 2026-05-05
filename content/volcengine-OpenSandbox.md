# OpenSandbox

> 阿里巴巴開源的通用 AI 沙箱平台 — 多語言 SDK + 強隔離 runtime，Agent 安全執行程式碼的基礎設施。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（OpenSandbox 是 Agent 安全執行程式碼的環境）
- 🔌 **MCP** → [[MCP]]（OpenSandbox 提供 MCP Server 讓 Agent 呼叫沙箱操作）
- 🗄️ **Context Database** → [[Context-Database]]（沙箱是 Agent 長期運行的隔離環境）

## 是什麼

OpenSandbox 是一個通用沙箱平台，讓 AI Agent 能在隔離環境中安全執行程式碼。支援 Python、Java、JS/TS、C#、Go 五種 SDK，底層用 Docker + Kubernetes，隔離層支援 gVisor、Kata Containers、Firecracker。CNCF Landscape 收錄。

## 核心特色

- **5 種語言 SDK**：Python、Java/Kotlin、JS/TS、C#/.NET、Go
- **強隔離**：gVisor、Kata Containers、Firecracker microVM 三層隔離
- **沙箱環境**：Command、Filesystem、Code Interpreter 三種執行模式
- **網路策略**：Ingress Gateway + per-sandbox egress 控制
- **MCP Server**：Agent 透過 MCP 建立和操作沙箱
- **CLI 工具**：`osb` 建沙箱、跑命令、診斷

## 怎麼用

```bash
# Python SDK
pip install opensandbox

# CLI
pip install opensandbox-cli
osb config init
osb sandbox create --image python:3.12 --timeout 30m
osb command run <sandbox-id> -- python -c "print(1+1)"

# MCP Server
pip install opensandbox-mcp
opensandbox-mcp --domain localhost:8080 --protocol http
```

## 跟其他方案的關係

- **vs 本地執行**：OpenSandbox 提供隔離，Agent 跑的程式碼不會影響宿主機
- **vs [[jackwener-OpenCLI]]**：OpenCLI 是 CLI 介面層，OpenSandbox 是執行環境層，不同層級可互補
- **Agent 整合**：支援 Claude Code、Gemini CLI、Codex CLI、Qwen Code、Kimi CLI、LangGraph、Google ADK、OpenClaw

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[Context-Database]]

## 來源

- raw/2026-05-05-opensandbox.md

---

- **GitHub**: https://github.com/alibaba/OpenSandbox
- **Stars**: ⭐10,400
- **License**: Apache-2.0
- **收錄日期**: 2026-05-05