---
title: CUA (Computer-Use Agents)
slug: trycua-cua
updated: 2026-05-18
language: zh-TW
topics: [沙箱, Computer-Use, 桌面操控]
created: 2026-05-18
stars: 16887
---

# CUA (Computer-Use Agents)

> ⭐16887 · 開源的 Computer-Use Agent 基礎設施，提供沙箱、SDK 和評測基準，讓 AI Agent 能控制完整桌面（macOS、Linux、Windows）。

## 快速導航


- 🛠️ **沙箱** → [[sandbox]]
- 🤖 **AI Agent** → [[AI-Agent]]
- 🔌 **MCP** → [[MCP]]
- 📦 **Agent Skills 生態系** → [[AI-Skills]]

## 是什麼


CUA 是一套開源的 Computer-Use Agent 基礎設施，讓 AI Agent 能看螢幕、點按鈕、完成任務。

提供統一的 Sandbox API 支援 Linux 容器、Linux VM、macOS、Windows、Android，可以在雲端（cua.ai）或本地（QEMU）執行。

## 核心特色

- **跨平台沙箱**：一個 API 控制任何 OS（macOS/Linux/Windows/Android），支援雲端和本地
- **macOS 驅動**：在背景操控原生 macOS 應用，不搶游標、不搶焦點、不搶 Space，支援非 AX 介面（Chromium、Blender、Figma 等）
- **cuabot CLI**：一鍵啟動沙箱環境，內建 Claude Code 和 OpenClaw 支援
- **評測基準（cua-bench）**：OSWorld、ScreenSpot、Windows Arena 等基準測試，可匯出軌跡做 RL 訓練
- **Lume VM 管理**：在 Apple Silicon 上用 Apple Virtualization.Framework 跑 macOS/Linux VM，接近原生效能

## 怎麼用

```bash
# 安裝 Driver（macOS 桌面操控）
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/trycua/cua/main/libs/cua-driver/scripts/install.sh)"

# 安裝 Python SDK
pip install cua

# 啟動 cuabot 沙箱
npx cuabot
cuabot claude    # Claude Code
cuabot openclaw  # OpenClaw

# 安裝 Lume（macOS/Linux VM 管理）
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/trycua/cua/main/libs/lume/scripts/install.sh)"
lume run macos-sequoia-vanilla:latest
```

Python SDK 使用：

```python
from cua import Sandbox, Image

async with Sandbox.ephemeral(Image.linux()) as sb:
    result = await sb.shell.run("echo hello")
    screenshot = await sb.screenshot()
    await sb.mouse.click(100, 200)
    await sb.keyboard.type("Hello from Cua!")
```

## 跟其他方案的關係

| 方案 | 定位 | 與 CUA 的關係 |
|------|------|--------------|
| [[cubesandbox|CubeSandbox]] | Rust 沙箱，輕量級 | CUA 的沙箱更全面（跨 OS + 桌面操控），CubeSandbox 更輕量 |
| [[volcengine-OpenSandbox|OpenSandbox]] | 字節跳動沙箱 | CUA 提供桌面操控能力，OpenSandbox 專注程式碼執行 |
| [[sandbox|沙箱概念]] | 概念層 | CUA 是沙箱概念的完整實作 |
| [[openclaw|OpenClaw]] | AI Agent 框架 | CUA 原生支援 OpenClaw，cuabot openclaw 可一鍵啟動 |

## 相關概念


← [[sandbox]] · [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 來源

- [GitHub：專案原始碼](https://github.com/trycua/cua)
- raw/2026-05-18-cua-computer-use-agents.md

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/trycua/cua |
| Stars | ⭐16887|
| License | MIT |
| 收錄日期 | 2026-05-18 |
