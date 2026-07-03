---
title: 沙箱
slug: sandbox
language: zh-TW
---

# 沙箱 (Sandbox)

> 程式碼執行的隔離環境，防止未授權操作影響主系統。是 AI Agent 安全執行程式碼的基礎設施。

## 核心內容

沙箱是一種安全隔離機制，讓程式在受控環境中執行，限制其對系統資源的存取。在 AI Agent 時代，沙箱尤其重要——Agent 產生的程式碼必須在不影響主機的環境中運行，防止惡意或錯誤操作造成損害。

AI Agent 需要沙箱的原因包括：程式碼生成不可控（AI 產生的程式碼可能包含危險操作）、遠端程式碼執行（Agent 需要安全地執行程式碼）、多租戶隔離（不同使用者的 Agent 需要彼此隔離）、資源限制（防止 Agent 消耗過多 CPU、記憶體或網路資源）。

隔離層級從輕到重分為四種：程序級（seccomp、namespaces，輕量快速）、容器級（Docker、Podman，一般隔離）、輕量 VM（gVisor、Kata Containers，安全要求較高）、完整 VM（Firecracker、QEMU，最高安全需求）。現代沙箱方案追求極速啟動和超低記憶體佔用，讓單機可運行數千個 Agent 實例。

## 關鍵要素

- **隔離層級**：程序級 → 容器級 → 輕量 VM → 完整 VM，從輕量快速到最高安全
- **極速啟動**：CubeSandbox 冷啟動 <60ms（P95 <150ms），比傳統 VM 快數百倍
- **超低記憶體**：每個沙箱實例 <5MB，單機可運行數千個 Agent
- **核心級隔離**：每個 Agent 運行在獨立 Guest OS 核心中，透過 KVM 實現硬體級隔離
- **網路隔離**：基於 eBPF 的沙箱間網路隔離，防止跨沙箱攻擊
- **MCP 整合**：沙箱透過 MCP 協議暴露給 Claude Code、Cursor 等 AI 工具使用

## 各框架的做法

- **OpenSandbox** → 阿里巴巴開源，多語言 SDK（Python/Java/JS/Go/C#），Docker/K8s runtime
  👉 詳見 [[opensandbox|OpenSandbox]]
- **CubeSandbox** → 騰訊雲開源，Rust 實現，<60ms 冷啟動，KVM MicroVM + eBPF
  👉 詳見 [[cubesandbox|CubeSandbox]]
- **CUA** → 跨平台桌面沙箱，macOS 驅動，虛擬化桌面環境
  👉 詳見 [[trycua-cua|CUA]]
- **DeerFlow** → Agent 編排 + 子 Agent + 沙箱整合
  👉 詳見 [[bytedance-deer-flow|DeerFlow 2.0]]
- **OpenSandbox（字節跳動）** → AI Agent + MCP + Context Database + 沙箱
  👉 詳見 [[volcengine-OpenSandbox|OpenSandbox]]

## 相關概念

- [[AI-Agent]] — Agent 需要沙箱來安全執行程式碼
- [[MCP]] — 沙箱透過 MCP 協議暴露給 Agent
- [[pentesting]] — 滲透測試需要在沙箱中進行以控制影響範圍
- [[harness-engineering]] — 沙箱是 Harness 安全防護的一部分
- [[self-hosted]] — 自架平台需要沙箱來安全運行 Agent 程式碼
- [[prompt-security]] — 沙箱是 Prompt 安全的實體防線

## 來源
- 知識庫內沙箱相關原始資料與專案頁面