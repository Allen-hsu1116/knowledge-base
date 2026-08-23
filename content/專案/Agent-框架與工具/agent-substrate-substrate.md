---
title: Agent Substrate
slug: agent-substrate-substrate
created: 2026-08-21
updated: 2026-08-21
stars: 1396
language: Go
topics:
  - ai-agent
  - sandbox
  - kubernetes
  - gvisor
  - microvm
---

# Agent Substrate

> ⭐1396 · 面向大規模 stateful Agent 的高密度執行基礎設施，以 Kubernetes、gVisor／microVM 與快照提供亞秒級暫停恢復。

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]]
- 📦 **沙箱** → [[sandbox]]
- 🔭 **可觀測性** → [[observability]]
- 🏠 **自架** → [[self-hosted]]

## 是什麼

Agent Substrate 是為大規模 Agent 部署設計的 runtime control plane，而不是用來撰寫 Agent 邏輯的 SDK。它把大量 actor 映射到較少的 ready worker，利用 Agent 經常等待模型、工具或人類回覆的閒置特性，達成高密度 multiplexing。

系統管理 actor 的建立、銷毀、暫停、恢復、即時 worker 指派與流量路由，並透過完整狀態快照保存 RAM 與檔案系統。官方 demo 展示以 8 個實體 pods multiplex 約 250 個 stateful actors，達到 30 倍以上超額配置。

它建立在 Kubernetes 之上，並支援 gVisor 與 microVM 等 sandbox 技術。專案目前仍在早期開發，API 預期會改動，也明確表示尚未適合 production。

## 核心特色

- **Actor／Worker 分離**：大量邏輯 actor 動態映射到較小的 worker pool。
- **亞秒級恢復**：以 suspend／resume 和快照降低 stateful Agent 再啟動延遲。
- **高密度 multiplexing**：利用 Agent 閒置時間進行 oversubscription，提升硬體利用率。
- **多沙箱後端**：支援 gVisor 與 microVM，提供一致的生命週期操作。
- **框架無關**：可承載 ADK、LangChain、Claude Code、Codex 與 MCP Server。
- **Kubernetes 原生**：使用 Pods、HPA、CRD、controller、Envoy routing 與 cluster infrastructure。

## 怎麼用

本地開發需要 Go、kubectl 與 Docker；官方 quickstart 會建立 kind cluster：

```bash
git clone https://github.com/agent-substrate/substrate.git
cd substrate
hack/create-kind-cluster.sh
hack/install-ate-kind.sh --deploy-ate-system
hack/install-ate-kind.sh --deploy-demo-counter
go install ./cmd/kubectl-ate
```

建立命名空間與 actor，然後轉發 router：

```bash
kubectl ate create atespace demo
kubectl ate create actor my-counter-1 -a demo --template=ate-demo-counter/counter
kubectl port-forward -n ate-system svc/atenet-router 8000:80
```

這套流程會建立本地叢集資源，應只在測試環境執行；正式評估前先閱讀 threat model、authentication、architecture 與 roadmap。

## 跟其他方案的關係

| 方案 | 抽象層 | 狀態管理 | 隔離與調度 |
|------|--------|----------|------------|
| Agent Substrate | Agent 執行基礎設施 | RAM＋FS 快照、暫停恢復 | Kubernetes＋gVisor／microVM |
| Kubernetes | 通用容器編排 | Volume 與 Pod lifecycle | Pod scheduler、autoscaling |
| [[OpenHands-OpenHands\|OpenHands]] | Coding Agent 控制中心 | Session／workspace | 多執行後端 |
| [[cloudflare-computer\|Cloudflare Computer]] | Agent 虛擬電腦抽象 | Durable Object＋SQLite FS | Container／Isolate backend |

Agent Substrate 不取代 LangChain 或 Agent SDK，而是成為它們的執行層。相較直接以一個 Pod 對應一個 Agent，它透過 actor teleport、request parking 與 worker pool multiplexing，優化大量長時間但低 duty cycle 的 stateful 工作負載。

## 相關概念


← [[AI-Agent]] · [[sandbox]] · [[observability]] · [[self-hosted]]

## 來源

- [GitHub：agent-substrate/substrate](https://github.com/agent-substrate/substrate)
- 原始 README 與 metadata：`raw/2026-08-21-agent-substrate-substrate.md`
- 專案文件：`docs/architecture.md`、`docs/threat-model.md`、`docs/observability.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/agent-substrate/substrate |
| Stars | ⭐1396|
| License | Apache-2.0 |
| 收錄日期 | 2026-08-21 |
