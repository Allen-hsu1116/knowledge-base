---
source: https://github.com/bytedance/deer-flow
date: 2026-05-09
---

# DeerFlow 2.0 — 字節跳動開源 Super Agent 框架

> Deep Exploration and Efficient Research Flow 2.0：開源超級 Agent 框架，編排子 Agent、記憶和沙箱，透過可擴充 Skill 實現幾乎任何任務。

**GitHub**: https://github.com/bytedance/deer-flow
**Stars**: ~66.1k | **License**: MIT

## 什麼是 DeerFlow 2.0

DeerFlow 2.0 是字節跳動開源的 super agent 框架，從頭重寫（與 v1 無共用程式碼）。核心是編排多個子 Agent、記憶系統和沙箱環境，透過可擴充 Skill 系統完成複雜任務。

## 核心功能

| 功能 | 說明 |
|------|------|
| Skills & Tools | 可擴充 Skill 系統，Claude Code 一行整合 |
| Sub-Agents | 多個專業子 Agent 編排，階層式和自適應拓撲 |
| Sandbox & File System | Docker 沙箱安全執行程式碼，隔離檔案系統 |
| Context Engineering | 跨子 Agent 的智慧 context 管理，漸進式資訊揭露 |
| Long-Term Memory | 跨 session 持久記憶，記憶管理 UI |

## 安裝

```bash
git clone https://github.com/bytedance/deer-flow.git
cd deer-flow
make setup    # 互動式設定精靈
make dev      # 啟動開發
```

Docker：
```bash
make docker-init    # 拉取沙箱映像
make docker-start   # 啟動服務
```

訪問：http://localhost:2026

## 推薦模型

- Doubao-Seed-2.0-Code
- DeepSeek v3.2
- Kimi 2.5

也支援 OpenAI、Claude、OpenRouter、vLLM 等。

## 部署需求

| 環境 | 最低 | 建議 |
|------|------|------|
| 本地開發 | 4 vCPU, 8 GB RAM | 8 vCPU, 16 GB RAM |
| Docker 開發 | 4 vCPU, 8 GB RAM | 8 vCPU, 16 GB RAM |
| 正式環境 | 8 vCPU, 16 GB RAM | 16 vCPU, 32 GB RAM |

## 相關主題

- [[AI-Agent|AI Agent]]
- [[agent-skills-ecosystem|Agent Skills 生態系]]
- [[opensandbox|OpenSandbox]]

## 參考資料

- [GitHub - bytedance/deer-flow](https://github.com/bytedance/deer-flow)