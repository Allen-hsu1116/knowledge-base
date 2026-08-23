---
title: OpenSandbox
slug: volcengine-OpenSandbox
created: 2026-05-10
updated: 2026-05-10
stars: 10,400
language: zh-TW
topics: [AI Agent, MCP, Context Database]
---

# OpenSandbox

> ⭐10400 · 阿里巴巴開源的通用 AI 沙箱平台 — 多語言 SDK + 強隔離 runtime，Agent 安全執行程式碼的基礎設施。

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]（OpenSandbox 是 Agent 安全執行程式碼的環境）
- 🔌 **MCP** → [[MCP]]（OpenSandbox 提供 MCP Server 讓 Agent 呼叫沙箱操作）
- 🗄️ **Context Database** → [[Context-Database]]（沙箱是 Agent 長期運行的隔離環境）

## 是什麼


OpenSandbox 是一個通用沙箱平台，讓 AI Agent 能在隔離環境中安全執行程式碼。

支援 Python、Java、JS/TS、C#、Go 五種語言 SDK，底層用 Docker + Kubernetes，隔離層支援 gVisor、Kata Containers、Firecracker。CNCF Landscape 收錄。

## 核心特色

- **5 種語言 SDK**：Python、Java/Kotlin、JS/TS、C#/.NET、Go，統一的沙箱 API
- **強隔離**：gVisor（syscall filter）、Kata Containers（VM 級隔離）、Firecracker microVM（最輕量），三層隔離可按需求選擇
- **沙箱環境**：Command（指令執行）、Filesystem（檔案操作）、Code Interpreter（程式碼解釋器），三種執行模式
- **網路策略**：Ingress Gateway 管進入 + per-sandbox egress 控制出去，每個沙箱獨立網路規則
- **MCP Server**：Agent 透過 MCP 建立和操作沙箱，支援 Claude Code、Gemini CLI、OpenClaw 等
- **CLI 工具**：`osb` 建/跑/診斷沙箱

## 怎麼實現的

### 沙箱架構

OpenSandbox 採用三層架構：

1. **SDK 層** — 五種語言的統一 API，封裝沙箱的 create / run / kill 生命週期
2. **Sandbox Protocol** — 定義沙箱的通訊協定和生命週期管理，可擴充自訂 runtime
3. **Sandbox Runtime** — Docker 容器 + Kubernetes 調度，高可用和水平擴展

### 隔離策略

三種隔離等級，安全性由低到高：
- **gVisor**：在 userspace 攔截 syscall，輕量但不是硬隔離
- **Kata Containers**：每個容器跑在獨立 VM 裡，VM 級隔離
- **Firecracker microVM**：最輕量的 VM，啟動快、資源少，適合短生命週期沙箱

### 三種執行模式

- **Command**：在沙箱裡跑一條指令，拿結果
- **Filesystem**：上傳/下載/操作沙箱內的檔案
- **Code Interpreter**：互動式程式碼執行，支援 Python、JS 等，適合 Agent 的分析場景

### 網路隔離

每個沙箱有獨立的 egress 規則：可以控制沙箱能連到哪些外部服務，防止惡意程式碼打外、偷資料。

## 怎麼用

```bash
# Python SDK
pip install opensandbox

# CLI 工具
pip install opensandbox-cli
osb config init
osb sandbox create --image python:3.12 --timeout 30m
osb command run <sandbox-id> -- python -c "print(1+1)"

# MCP Server（給 Agent 用）
pip install opensandbox-mcp
opensandbox-mcp --domain localhost:8080 --protocol http
```

```python
# Code Interpreter 範例
import asyncio
from opensandbox import Sandbox
from code_interpreter import CodeInterpreter, SupportedLanguage

async def main():
    sandbox = await Sandbox.create(
        "opensandbox/code-interpreter:v1.0.2",
        timeout=timedelta(minutes=10),
    )
    async with sandbox:
        execution = await sandbox.commands.run("echo 'Hello!'")
        interpreter = await CodeInterpreter.create(sandbox)
        result = await interpreter.codes.run("2 + 2", language=SupportedLanguage.PYTHON)
        print(result.result[0].text)  # 4
    await sandbox.kill()
```

## 跟其他方案的關係


- **vs 本地執行**：OpenSandbox 提供隔離，Agent 跑的程式碼不會影響宿主機
- **vs [[jackwener-OpenCLI]]**：OpenCLI 是 CLI 介面層（把網站變 CLI），OpenSandbox 是執行環境層（安全跑程式碼），不同層級可互補
- **Agent 整合**：支援 Claude Code、Gemini CLI、Codex CLI、Qwen Code、Kimi CLI、LangGraph、Google ADK、OpenClaw
- **瀏覽器場景**：還支援 Chrome/Playwright 瀏覽器自動化 + VNC/VS Code desktop

| 方案 | 定位 | 關係 |
|------|------|------|
| 本頁專案 | 主要方案 | 直接提供本頁整理的核心能力 |
| [[jackwener-OpenCLI]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |
| [[AI-Agent]] | 相關方案或概念 | 可作為替代、互補或延伸閱讀 |

## 相關概念


← [[AI-Agent]] · [[MCP]] · [[Context-Database]]

## 來源

- [GitHub：專案原始碼](https://github.com/alibaba/OpenSandbox)
- raw/2026-05-05-opensandbox.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/alibaba/OpenSandbox |
| Stars | ⭐10400|
| License | 未標示 |
| 收錄日期 | 2026-05-10 |
