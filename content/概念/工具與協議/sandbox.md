---
---

# 沙箱 (Sandbox)

> 程式碼執行的隔離環境，防止未授權操作影響主系統。是 [[opensandbox|OpenSandbox]]、[[cubesandbox|CubeSandbox]] 等專案的核心概念。

## 什麼是沙箱

沙箱是一種安全機制，讓程式在隔離環境中執行，限制其對系統資源的存取。在 AI Agent 時代，沙箱尤其重要——Agent 產生的程式碼必須在不影響主機的環境中運行。

## 隔離層級

| 層級 | 技術 | 隔離程度 | 效能 |
|------|------|----------|------|
| 程序級 | seccomp, namespaces | 低 | 高 |
| 容器級 | Docker, Podman | 中 | 中 |
| 輕量 VM | gVisor, Kata Containers | 高 | 中 |
| 完整 VM | Firecracker, QEMU | 最高 | 低 |

## 快速導航

- 🏖️ **OpenSandbox** → [[opensandbox]]（阿里巴巴開源沙箱專案）
- 🎮 **CubeSandbox** → [[cubesandbox]]（Rust 輕量沙箱）
- 🤖 **AI Agent** → [[AI-Agent]]（AI Agent 需要沙箱來安全執行程式碼）
- 🔌 **MCP** → [[MCP]]（沙箱透過 MCP 連接 Agent）

## AI Agent 的沙箱需求

- **程式碼執行**：安全地執行使用者或 Agent 產生的程式碼
- **檔案系統隔離**：每個 session 獨立的檔案系統
- **網路控制**：限制或監控對外網路存取
- **資源限制**：CPU、記憶體、執行時間上限

## 相關專案

| 專案 | 特色 |
|------|------|
| [[opensandbox\|OpenSandbox (阿里巴巴)]] | 多語言 SDK + Docker/K8s runtime |
| [[cubesandbox\|CubeSandbox]] | Rust 實現的輕量沙箱 |
| [[trycua-cua\|CUA]] | 跨平台桌面沙箱 + macOS 驅動 |
| E2B | 雲端沙箱服務 |
| Modal | Serverless Python 沙箱 |

## 與 MCP 的整合

沙箱可透過 MCP 協議暴露給 AI Agent：
- Agent 透過 MCP 呼叫沙箱工具
- 沙箱管理生命週期（建立、執行、銷毀）
- 支援多種 Agent 框架（Claude Code、OpenClaw 等）

## 相關主題

- [[opensandbox|OpenSandbox]]
- [[trycua-cua|CUA]]
- [[MCP|MCP 協議]]
- [[AI-Agent|AI Agent]]

## 來源
- OpenSandbox、CubeSandbox、E2B 等沙箱專案文件