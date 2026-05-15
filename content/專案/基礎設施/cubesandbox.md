---
title: CubeSandbox
created: 2026-05-09
---

# CubeSandbox

> 騰訊雲出品的高性能 AI agent 安全沙盒，基於 RustVMM 和 KVM 打造。冷啟動 60ms，記憶體 <5MB，E2B SDK 即插即用。⭐5.2K

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（CubeSandbox 是 AI Agent 的安全執行環境）
- 🔌 **MCP** → [[MCP]]（Model Context Protocol）
- 🔄 **Agent 互動** → [[ai-agent-interaction]]（Agent 互動模式）

## 是什麼

CubeSandbox 是騰訊雲推出的開源安全沙盒，專為 AI agent 執行程式碼的場景設計。傳統做法是用 Docker 容器隔離，但 Docker 的 Namespace 隔離只是共享核心，存在容器逃逸風險。CubeSandbox 採用完全不同的路線：每個沙盒都運行自己的 Guest OS 核心（基於 KVM MicroVM），提供真正的硬體級隔離。

核心賣點是速度和密度：冷啟動平均 60ms，每個實例記憶體開銷低於 5MB，讓單台機器可以跑數千個 agent 沙盒。

## 核心特色

- **毫秒級冷啟動**：基於資源池預建和快照克隆，單並行 60ms，50 並行 P99 不超過 150ms
- **極低記憶體開銷**：CoW 技術實現記憶體複用，每個沙盒實例基礎記憶體 <5MB
- **真正的核心級隔離**：每個 agent 運行在獨立 Guest OS 核心，完全消除容器逃逸風險
- **E2B SDK 即插即用**：原生相容 E2B SDK 介面，一行環境變數即可遷移
- **eBPF 網路隔離**：CubeVS 在核心層級強制執行沙盒間網路隔離，無法被沙盒內程式碼繞過
- **叢集與單節點部署**：CubeMaster 叢集排程 + Cubelet 節點管理

## 怎麼用

```bash
# 一鍵安裝
curl -sL https://github.com/tencentcloud/CubeSandbox/raw/master/deploy/one-click/online-install.sh | bash

# Python 使用
from e2b_code_interpreter import Sandbox
with Sandbox.create(template=os.environ["CUBE_TEMPLATE_ID"]) as sandbox:
    result = sandbox.run_code("print('Hello from Cube Sandbox!')")
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[AI-Agent]] | AI Agent 框架 | CubeSandbox 提供 Agent 的安全執行環境 |
| [[MCP]] | 通信協議 | MCP 可用於 Agent 與沙盒間的通信 |

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[ai-agent-interaction]]

## 來源

- raw/2026-05-09-cubesandbox.md

---

- **GitHub**: https://github.com/TencentCloud/CubeSandbox
- **Stars**: ⭐5,184
- **License**: Apache 2.0
- **收錄日期**: 2026-05-09