---



title: DeerFlow 2.0
slug: bytedance-deer-flow
created: 2026-05-09
stars: '⭐68098'



updated: 2026-05-09
language: zh-TW
topics: []
---

# DeerFlow 2.0

> 字節跳動開源 Super Agent 框架，編排子 Agent、記憶和沙箱，透過可擴充 Skill 實現幾乎任何任務。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（DeerFlow 是多 Agent 編排框架）
- 🔄 **Ruflo** → [[ruvnet-ruflo|Ruflo]]（另一個多 Agent 編排方案）
- 🔌 **MCP** → [[MCP]]（DeerFlow 支援 MCP 整合）

## 是什麼

DeerFlow 2.0（Deep Exploration and Efficient Research Flow）是字節跳動開源的 Super Agent 框架。它編排子 Agent、記憶和沙箱，透過可擴充 Skill 系統完成複雜任務。與 v1 無共用程式碼，從頭重寫。

## 核心特色

### Skills & Tools 可擴充系統

可擴充 Skill 系統，Claude Code 一行整合。每個 Skill 對應一類任務，Agent 依需求動態載入。

### 多層子 Agent 編排

支援多個專業子 Agent 編排，階層式和自適應拓撲兩種模式。子 Agent 可獨立運作、平行執行、結果回報。

### Sandbox & File System

Docker 沙箱安全執行程式碼，隔離檔案系統。Agent 可以自由執行程式碼而不影響宿主環境。

### Context Engineering

跨子 Agent 的智慧 context 管理，漸進式資訊揭露。避免 context window 溢出，確保每個子 Agent 拿到剛好夠用的資訊。

### Long-Term Memory

跨 session 持久記憶，記憶管理 UI。Agent 不再是無狀態工具，而是能記住過去對話和決策。

## 怎麼用

```bash
# 安裝
git clone https://github.com/bytedance/deer-flow.git
cd deer-flow
make setup    # 互動式設定精靈
make dev      # 啟動開發

# Docker 安裝
make docker-init    # 拉取沙箱映像
make docker-start   # 啟動服務

# 訪問 Dashboard
# http://localhost:2026
```

推薦模型：Doubao-Seed-2.0-Code、DeepSeek v3.2、Kimi 2.5，也支援 OpenAI、Claude、OpenRouter、vLLM 等。

### 部署需求

| 環境 | 最低 | 建議 |
|------|------|------|
| 本地開發 | 4 vCPU, 8 GB RAM | 8 vCPU, 16 GB RAM |
| Docker 開發 | 4 vCPU, 8 GB RAM | 8 vCPU, 16 GB RAM |
| 正式環境 | 8 vCPU, 16 GB RAM | 16 vCPU, 32 GB RAM |

## 跟其他方案的關係

DeerFlow 跟 [[AI-Agent]] 框架（CrewAI、LangGraph、AutoGen）的差異在於它是 Super Agent 架構——不只編排 Agent，還管理記憶、沙箱和 context。CrewAI 是簡單的 Agent 編排，DeerFlow 是完整的 Agent 作業系統。

跟 [[RightNow-AI-openfang|OpenFang]] 的對比：OpenFang 是 Rust 寫的自治 Agent OS（Hands 排程驅動），DeerFlow 是 Python 寫的多 Agent 編排框架（Skills 擴充）。一個強調自治排程，一個強調子 Agent 協作。

[[cft0808-edict|三省六部]] 用制度性審核確保品質，DeerFlow 用沙箱隔離確保安全。兩者方向不同：三省六部是「分工制衡」，DeerFlow 是「擴充協作」。

## 相關概念

← [[AI-Agent]] · [[agent-skills-ecosystem]] · [[MCP]] · [[opensandbox|OpenSandbox]]

## 來源

- [原始資料](../raw/2026-05-09-bytedance-deer-flow.md)
- GitHub: https://github.com/bytedance/deer-flow

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/bytedance/deer-flow |
| Stars | ⭐68,098 |
| Language | Python |
| 建立日期 | 2025-05-07 |
| 授權 | MIT |
| 收錄日期 | 2026-05-09 |