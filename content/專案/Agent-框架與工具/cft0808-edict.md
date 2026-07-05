---
title: Edict（三省六部）
slug: cft0808-edict
created: 2026-02-23
updated: 2026-02-23
stars: 15,781
language: zh-TW
topics: [AI Agent, AI Skills, MCP]
---

# Edict（三省六部）

> ⭐15,781 · 用 1300 年前的帝國制度重新設計 AI 多 Agent 協作架構。12 個專職 Agent 組成三省六部，門下省專職審核封駁，軍機處看板即時監控。

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/cft0808/edict |
| Stars | ⭐15,781 |
| Language | Python |
| 建立日期 | 2026-02-23 |
| 授權 | MIT |
| 收錄日期 | 2026-05-07 |

## 快速導航

- 🤖 **AI Agent 協作** → [[AI-Agent]]（三省六部是多 Agent 編排的創新架構）
- 🏛️ **Agent 作業系統** → [[RightNow-AI-openfang]]（OpenFang 是另一種 Agent 系統設計）
- 🔌 **MCP + Skills** → [[AI-Skills]]（每個省部有獨立 Skills）
- 📊 **即時看板** → [[AI-Agent]]（可觀測性是多 Agent 系統的關鍵需求）

## 是什麼

Edict（三省六部）是一個基於 OpenClaw 的多 Agent 協作系統，用中國唐代的三省六部制重新設計 AI Agent 架構。12 個專職 AI Agent（11 個業務角色 + 1 個兼容角色）模擬朝廷運作：太子分揀消息、中書省規劃、門下省審議封駁、尚書省派發、六部並行執行、奏折回報。

核心差異跟 CrewAI、AutoGen 等框架相比：多了一層**制度性審核**（門下省封駁）和**完全可觀測的即時看板**（軍機處）。不是你跟 Agent 聊完拿到一坨無法復現的結果——每個旨意的完整流轉鏈都存檔為奏折，可追溯、可干預、可叫停。

## 核心特色

- **門下省審核 — 制度性封駁** — 殺手鐧功能：審查方案品質、封駁不合格產出、強制返工循環直到方案達標。每一個旨意都必須經過門下省，沒有 bypass，解決了 CrewAI/AutoGen 沒有品質檢查的問題
- **十二部制 Agent 架構** — 皇上→太子（分揀）→中書省（規劃）→門下省（審議）→尚書省（派發）→六部（執行）→回奏，嚴格的權限矩陣和狀態流轉校驗，每個 Agent 獨立 Workspace、Skills 和模型
- **軍機處看板（10 個功能面板）** — 旨意看板、省部調度、奏折閣、旨庫、官員總覽、天下要聞、模型配置、技能配置、朝堂議政、上朝儀式，提供完全可觀測的即時監控
- **完全可追溯** — 每個旨意的完整流轉鏈都存檔為奏折，可追溯、可干預、可叫停，不是拿到一坨無法復現的結果
- **熱切換模型** — 看板內可為每個 Agent 獨立切換 LLM，5 秒生效，支援 OpenAI、Anthropic、Gemini 等多家供應商

## 怎麼用

### 安裝

```bash
# Docker 一鍵體驗（預置模擬數據）
docker run -p 7891:7891 cft0808/edict
# 打開 http://localhost:7891

# 完整安裝（需要 OpenClaw）
git clone https://github.com/cft0808/edict.git
cd edict
chmod +x install.sh && ./install.sh
```

### 啟動

```bash
chmod +x start.sh && ./start.sh
# 或分別啟動
bash scripts/run_loop.sh &
python3 dashboard/server.py
# 打開 http://127.0.0.1:7891
```

## 技術棧

- **Python 3.9+** — 後端純 stdlib，零框架依賴
- **React 18** — 前端 Dashboard
- **OpenClaw** — Agent 運行平台（必須）
- **飛書 / Telegram / Signal** — 下旨入口
- **systemd** — 生產環境部署支援

## 跟其他方案的關係

三省六部 vs CrewAI / AutoGen / MetaGPT 的核心差異：

| | 三省六部 | CrewAI | AutoGen |
|---|---|---|---|
| 審核機制 | ✅ 門下省專職 | ❌ 無 | ⚠️ Human-in-loop |
| 即時看板 | ✅ 軍機處 | ❌ | ❌ |
| 任務干預 | ✅ 叫停/取消/恢復 | ❌ | ❌ |
| 流轉審計 | ✅ 奏折存檔 | ⚠️ | ❌ |
| Agent 健康監控 | ✅ 心跳+活躍度 | ❌ | ❌ |
| 熱切換模型 | ✅ 看板內切換 | ❌ | ❌ |

跟 [[RightNow-AI-openfang]] 的差異：OpenFang 是自治排程（Agent 自己按時間表跑），三省六部是指揮鏈（人下旨 → 分揀 → 規劃 → 審核 → 執行 → 回報）。一個是 Agent 自己動，一個是人指揮 Agent 動。

## 相關概念

← [[AI-Agent]] · [[RightNow-AI-openfang]] · [[AI-Skills]] · [[MCP]]

## 來源

- [原始資料](../raw/2026-05-07-cft0808-edict.md)
- GitHub: https://github.com/cft0808/edict