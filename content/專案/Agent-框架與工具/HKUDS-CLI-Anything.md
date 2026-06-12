---
title: CLI-Anything
slug: HKUDS-CLI-Anything
created: 2025-06-07
updated: 2025-06-07
stars: 42231
language: Python
topics:
  - CLI
  - Agent-Native
  - MCP
  - Software-Automation
---

# CLI-Anything

> ⭐42.2k · 讓所有軟體都能被 AI Agent 原生操控，一條指令為任何軟體生成 CLI 封裝。

## 快速導航

- 🤖 [[AI-Agent]] — AI 智能體框架
- 🖥️ [[opencli]] — OpenCLI 開放命令列介面
- 💻 [[Coding-Agent-CLI]] — 程式碼智能體 CLI
- 🔌 [[MCP]] — Model Context Protocol
- ⚙️ [[workflow-automation]] — 工作流程自動化

## 是什麼

**CLI-Anything** 是香港大學數據科學實驗室（HKUDS）推出的開源專案，核心理念是「今天的軟體服務人類👨‍💻，明天的使用者將是 Agent🤖」。它可以用一條指令為任何軟體自動生成 CLI 封裝（harness），讓 AI Agent 能透過命令列原生操控該軟體。

CLI-Anything 不只是單一工具，而是一個生態系統：
- **CLI Generator** — 自動為目標軟體生成 CLI harness
- **CLI-Hub** — 社群共建的 CLI 註冊中心，`pip install cli-anything-hub` 即可瀏覽安裝
- **Preview & Live Preview** — 讓 Agent 在執行前預覽結果
- **Trajectory Loops** — Agent 可自主迭代修正直到滿意

目前已支援 18+ 個應用的 CLI harness，通過 2,461 個測試案例驗證。

## 核心特色

- **⚡ 一鍵生成 CLI** — 為任何軟體自動生成Agent可用的 CLI 封裝
- **🏪 CLI-Hub 生態** — 社群共建的 CLI 註冊中心，一鍵安裝
- **👁️ 預覽機制** — Preview 和 Live Preview，Agent 執行前可預覽結果
- **🔄 軌跡循環** — Agent 可自主迭代修正，形成反饋閉環
- **🔧 多 Agent 支援** — 相容 Pi、OpenClaw、nanobot、Cursor、Claude Code 等
- **✅ 2,461 測試** — 完整的單元+E2E測試覆蓋

## 怎麼用

```bash
# 安裝
pip install cli-anything

# 為目標軟體生成 CLI
cli-anything generate --target blender

# 透過 CLI-Hub 瀏覽和安裝社群 CLI
pip install cli-anything-hub
cli-hub install blender

# 在 Agent 中使用生成的 CLI
# 生成的 CLI 會輸出 JSON 格式結果，方便 Agent 解析
```

## 跟其他方案的關係

| 專案 | 定位 | 自動生成 CLI | 社群 Hub | Agent 預覽 | 開源 |
|------|------|-------------|---------|-----------|------|
| **CLI-Anything** | 軟體 Agent 原生化 | ✅ | ✅ CLI-Hub | ✅ | ✅ Apache 2.0 |
| [[opencli\|OpenCLI]] | 開放 CLI 標準 | ❌ | ❌ | ❌ | ✅ |
| MCP Servers | Agent 協議 | ❌ | ✅ 部分 | ❌ | 各異 |
| Browser Use | 網頁操控 | N/A | N/A | ✅ 截圖 | ✅ |

## 相關概念

← [[AI-Agent]] · [[opencli]] · [[MCP]] · [[workflow-automation]]

## 來源

> 完整 README 見 [[raw/2025-06-07-HKUDS-CLI-Anything|raw 檔案]]

---

| 項目 | 資訊 |
|------|------|
| GitHub | https://github.com/HKUDS/CLI-Anything |
| Stars | ⭐ 42,231 |
| License | Apache License 2.0 |
| 收錄日期 | 2025-06-07 |