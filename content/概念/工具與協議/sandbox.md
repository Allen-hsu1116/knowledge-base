---

title: 沙箱
slug: sandbox
created: 2025-01-01
updated: 2026-06-03
topics:
  - sandbox
  - security
  - code-execution

language: zh-TW
---

# 沙箱 (Sandbox)

> 程式碼執行的隔離環境，防止未授權操作影響主系統。是 [[opensandbox|OpenSandbox]]、[[cubesandbox|CubeSandbox]] 等專案的核心概念。

## 是什麼

沙箱是一種安全隔離機制，讓程式在受控環境中執行，限制其對系統資源的存取。在 AI Agent 時代，沙箱尤其重要——Agent 產生的程式碼必須在不影響主機的環境中運行，防止惡意或錯誤操作造成損害。

### 為什麼 AI Agent 需要沙箱

- **程式碼生成不可控**：AI 產生的程式碼可能包含危險操作
- **遠端程式碼執行**：Agent 需要安全地執行使用者或自己產生的程式碼
- **多租戶隔離**：不同使用者的 Agent 需要彼此隔離
- **資源限制**：防止 Agent 消耗過多 CPU、記憶體或網路資源

## 隔離層級

| 層級 | 技術 | 隔離程度 | 效能 | 適用場景 |
|------|------|----------|------|----------|
| 程序級 | seccomp, namespaces | 低 | 高 | 輕量任務、快速啟動 |
| 容器級 | Docker, Podman | 中 | 中 | 一般隔離、CI/CD |
| 輕量 VM | gVisor, Kata Containers | 高 | 中 | 安全要求較高 |
| 完整 VM | Firecracker, QEMU | 最高 | 低 | 最高安全需求 |

## 快速導航

- 🏖️ **OpenSandbox** → [[opensandbox]]（阿里巴巴開源沙箱專案）
- 🎮 **CubeSandbox** → [[cubesandbox]]（Rust 輕量沙箱，<60ms 啟動）
- 🤖 **AI Agent** → [[AI-Agent]]（AI Agent 需要沙箱來安全執行程式碼）
- 🔌 **MCP** → [[MCP]]（沙箱透過 MCP 連接 Agent）

## 核心特色

- **極速啟動**：CubeSandbox 冷啟動 <60ms（P95 <150ms），比傳統 VM 快數百倍
- **超低記憶體**：每個沙箱實例 <5MB，單機可運行數千個 Agent
- **核心級隔離**：每個 Agent 運行在獨立的 Guest OS 核心中，透過 KVM 實現硬體級隔離
- **E2B 相容**：CubeSandbox 可直接替換 E2B SDK，只需修改 URL 環境變數
- **網路安全**：CubeVS（基於 eBPF）實現嚴格的沙箱間網路隔離
- **多語言 SDK**：OpenSandbox 支援 Python、Java/Kotlin、JS/TS、C#/.NET、Go 等 6 種語言
- **MCP 整合**：沙箱透過 MCP 協議暴露給 Claude Code、Cursor 等 AI 工具使用

## 怎麼用

### 使用 OpenSandbox（阿里巴巴）

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
        # 執行 shell 命令
        execution = await sandbox.commands.run("echo 'Hello!'")
        
        # 執行 Python 程式碼
        interpreter = await CodeInterpreter.create(sandbox)
        result = await interpreter.codes.run("2 + 2", language=SupportedLanguage.PYTHON)
        print(result.result[0].text)  # 4
    await sandbox.kill()
```

### 使用 CubeSandbox（騰訊雲）

```python
import os
from e2b_code_interpreter import Sandbox

# 一行切換：只需修改環境變數
with Sandbox.create(template=os.environ["CUBE_TEMPLATE_ID"]) as sandbox:
    result = sandbox.run_code("print('Hello from Cube Sandbox!')")
    print(result)
```

### 使用 OpenSandbox CLI

```bash
pip install opensandbox-cli
osb config init
osb sandbox create --image python:3.12 --timeout 30m
osb command run <sandbox-id> -- python -c "print(1+1)"
```

### CLI 一鍵安裝

```bash
curl -sL https://github.com/tencentcloud/CubeSandbox/raw/master/deploy/one-click/online-install.sh | bash
```

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 需求 | Agent 需要沙箱來安全執行程式碼 |
| [[MCP]] | 整合 | 沙箱透過 MCP 協議暴露給 Agent |
| [[pentesting]] | 安全 | 滲透測試需要在沙箱中進行以控制影響範圍 |
| [[harness-engineering]] | 安全層 | 沙箱是 Harness 安全防護的一部分 |
| [[self-hosted-AI-platform]] | 基礎設施 | 自架平台需要沙箱來安全運行 Agent 程式碼 |
| [[workflow-automation]] | 執行 | 工作流中的程式碼執行需要在沙箱中進行 |

## 相關專案

| 專案 | 特色 | 隔離方式 |
|------|------|----------|
| [[opensandbox\|OpenSandbox (阿里巴巴)]] | 多語言 SDK + Docker/K8s runtime | Docker, gVisor, Kata, Firecracker |
| [[cubesandbox\|CubeSandbox]] | Rust 實現，<60ms 冷啟動，<5MB 記憶體 | KVM MicroVM + eBPF 網路隔離 |
| [[trycua-cua\|CUA]] | 跨平台桌面沙箱 + macOS 驅動 | 虛擬化桌面環境 |
| E2B | 雲端沙箱服務 | Firecracker microVM |
| Modal | Serverless Python 沙箱 | 容器 |

## 相關概念

← [[opensandbox]] · [[trycua-cua]] · [[MCP]] · [[AI-Agent]] · [[pentesting]] · [[harness-engineering]] · [[workflow-automation]]

## 來源

- [OpenSandbox 專案文件](../raw/2026-05-05-opensandbox.md)
- [CubeSandbox 專案文件](../raw/2026-05-09-cubesandbox.md)
- [MiroFish 沙箱需求](../raw/2026-05-25-666ghj-MiroFish.md)

---

_此頁由 daily-llm-trending 自動維護_