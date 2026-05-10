---
title: CubeSandbox
date: 2026-05-09
stars: 5184
language: Rust
github: https://github.com/TencentCloud/CubeSandbox
created: 2026-04-10
tags: [sandbox, ai-agent, security, kvm, rust]
---

# CubeSandbox

騰訊雲出品的高性能 AI agent 安全沙盒服務，基於 RustVMM 和 KVM 打造。建立一個硬體隔離的沙盒環境只需 60ms，記憶體開銷不到 5MB。完全相容 E2B SDK，一行環境變數即可遷移。

**相關概念**：[[AI-Agent]] · [[MCP]] · [[ai-agent-interaction]]

---

## 基本資訊

| 項目 | 內容 |
|---|---|
| GitHub | [TencentCloud/CubeSandbox](https://github.com/TencentCloud/CubeSandbox) |
| Stars | ⭐5.2k |
| Language | Rust |
| 建立日期 | 2026-04-10 |
| 收錄日期 | 2026-05-09 |
| 授權 | Apache 2.0 |

## 快速導航

- [[AI-Agent]] — AI agent 框架與工具
- [[MCP]] — Model Context Protocol
- [[ai-agent-interaction]] — agent 互動模式

---

## 詳細簡介

CubeSandbox 是騰訊雲推出的開源安全沙盒，專為 AI agent 執行程式碼的場景設計。傳統做法是用 Docker 容器隔離 LLM 生成的程式碼，但 Docker 的 Namespace 隔離只是共享核心，存在容器逃逸風險。CubeSandbox 採用完全不同的路線：每個沙盒都運行自己的 Guest OS 核心（基於 KVM MicroVM），提供真正的硬體級隔離。

它的核心賣點是速度和密度。透過資源池預建和快照克隆技術，一個完整功能的沙盒冷啟動平均只要 60ms（50 並行下 P99 也不超過 150ms）。每個實例的記憶體開銷壓到 5MB 以下，讓單台機器可以跑數千個 agent 沙盒。這個效能組合——硬體隔離 + 毫秒級啟動 + 極低記憶體——讓它在 AI agent 基礎設施中獨樹一格。

## 核心特色

### 毫秒級冷啟動

基於資源池預建（resource pool pre-provisioning）和快照克隆（snapshot cloning），跳過耗時的初始化過程。單並行下平均 60ms，50 並行下平均 67ms、P95 90ms、P99 137ms。這比 Docker 容器的 200ms 啟動還快，更不用說傳統 VM 的數秒等級。

### 極低記憶體開銷

透過 CoW（Copy-on-Write）技術實現極致的記憶體複用，加上 Rust 重新建置並大幅精簡的 runtime，每個沙盒實例的基礎記憶體開銷低於 5MB。即使沙盒規格設定到 32GB，基礎開銷也只略微增加。這讓單節點部署密度達到「每台機器跑數千個 agent」的等級。

### 真正的核心級隔離

不再是 Docker 的 Namespace hack——每個 agent 運行在獨立的 Guest OS 核心中，完全消除容器逃逸風險。LLM 生成的任何程式碼都可以安全執行，不必擔心惡意程式突破隔離。

### E2B SDK 即插即用

原生相容 E2B SDK 介面，只需把 `E2B_API_URL` 環境變數指向 CubeSandbox 服務，零業務邏輯修改即可從付費的封閉原始碼沙盒遷移到免費的開源方案，效能還更好。

### eBPF 網路隔離（CubeVS）

CubeVS 是基於 eBPF 的虛擬交換器，在核心層級強制執行沙盒間的網路隔離，支援細粒度的出口流量過濾策略。這不是容器網路隔離——這是在核心層級運作的 eBPF 程式，無法被沙盒內的程式碼繞過。

### 叢集與單節點部署

支援一鍵部署，從單節點到多節點叢集都能輕鬆擴展。CubeMaster 負責叢集排程和資源管理，Cubelet 管理每個計算節點上的沙盒生命週期。

## 安裝方式

```bash
# 一鍵安裝
curl -sL https://github.com/tencentcloud/CubeSandbox/raw/master/deploy/one-click/online-install.sh | bash

# 建立程式碼解釋器沙盒模板
cubemastercli tpl create-from-image \
  --image cube-sandbox-int.tencentcloudcr.com/cube-sandbox/sandbox-code:latest \
  --writable-layer-size 1G \
  --expose-port 49999 \
  --expose-port 49983 \
  --probe 49999
```

### 在沙盒中執行程式碼

```python
import os
from e2b_code_interpreter import Sandbox

with Sandbox.create(template=os.environ["CUBE_TEMPLATE_ID"]) as sandbox:
    result = sandbox.run_code("print('Hello from Cube Sandbox!')")
    print(result)
```

## 架構

| 元件 | 職責 |
|---|---|
| CubeAPI | 高並行 REST API Gateway（Rust），E2B 相容 |
| CubeMaster | 叢集排程器，資源排程與狀態管理 |
| CubeProxy | 反向代理，E2B 協定相容路由 |
| Cubelet | 計算節點排程，沙盒生命週期管理 |
| CubeVS | eBPF 虛擬交換器，核心級網路隔離 |
| CubeHypervisor + CubeShim | KVM MicroVM 管理，containerd Shim v2 API 整合 |

## 技術棧

- **語言**: Rust
- **虛擬化**: KVM + RustVMM (Cloud Hypervisor)
- **網路**: eBPF (CubeVS)
- **容器整合**: containerd Shim v2 API
- **SDK 相容**: E2B SDK (Python)

## 授權

Apache License 2.0

## 相關連結

- [GitHub](https://github.com/TencentCloud/CubeSandbox)
- [Documentation](https://github.com/TencentCloud/CubeSandbox/blob/master/docs/index.md)
- [Quick Start](https://github.com/TencentCloud/CubeSandbox/blob/master/docs/guide/quickstart.md)