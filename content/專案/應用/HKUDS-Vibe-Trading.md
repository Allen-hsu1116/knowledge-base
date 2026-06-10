---
title: Vibe-Trading
created: 2026-05-06
---

# Vibe-Trading

> 你的個人交易 Agent：74 個 Skill + 27 個 Tool + 6 個資料來源，一條指令賦能 Agent 全面交易能力。HKUDS 出品。⭐5,120

## 快速導航
- 🤖 **Agent 工作流** → [[AI-Agent]]（Vibe-Trading 是垂直領域交易 Agent）
- 🛠 **Agent Skills** → [[AI-Skills]]（74 個內建 Skill，Skill 密度極高）
- 🔌 **MCP 整合** → [[MCP]]（提供 MCP Plugin 讓其他 Agent 調用交易能力）
- 📊 **金融 AI** → [[virattt-dexter]]（Dexter 是另一個 AI 金融研究 Agent）
- 📚 **數據來源** → [[ZhuLinsen-daily_stock_analysis]]（daily_stock_analysis 是另一個 A 股分析工具）

## 是什麼

Vibe-Trading 是香港大學數據科學實驗室（HKUDS）開發的 AI 交易 Agent。它不是一個簡單的選股工具，而是一個完整的交易 Agent 生態系：74 個 Skill、29 個 Swarm Preset、27 個 Tool、6 個數據來源 — 從回測到實盤、從 A 股到港美股、從基本面到技術面，一條指令搞定。

## 核心特色

- **Skill 密度 — 74 個內建 Skill**：覆蓋研究類、策略類、風控類、數據類、執行類全生命週期，29 個 Swarm Preset 直接啟動特定交易場景
- **互動式 CLI**：即時狀態列顯示 Provider/Model、Session 時長、延遲、累計 Tool 調用次數，支援 prompt_toolkit 歷史導航
- **MCP Plugin**：讓任何支援 MCP 的 Agent（Claude Code、OpenClaw 等）可以直接調用交易能力
- **回測 + 基準比較**：回測輸出附帶基準比較面板，ECharts 關聯性熱力圖
- **安全設計**：API_AUTH_KEY、CORS 驗證、路徑限制、上傳安全、Shell 工具門控、策略載入驗證、Docker 非 root

## 怎麼用

```bash
# 安裝
pip install -U vibe-trading-ai

# 啟動互動式 CLI
vibe-trading

# Web UI
vibe-trading --web

# MCP Plugin
vibe-trading --mcp

# Docker 部署
docker run -p 8000:8000 hkuds/vibe-trading
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[virattt-dexter]] | AI 金融研究 Agent | Dexter 偏研究分析，Vibe-Trading 偏實戰交易 |
| [[HKUDS-AI-Trader]] | Agent 交易平台 | AI-Trader 偏平台，Vibe-Trading 偬 Agent |
| [[anthropics-financial-services|Anthropic FS]] | 分析師團隊 | Anthropic FS 做分析師工作產出，Vibe-Trading 偏實戰交易 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[MCP]] · [[virattt-dexter]]

## 來源

- raw/2026-05-06-HKUDS-Vibe-Trading.md

---

- **GitHub**: https://github.com/HKUDS/Vibe-Trading
- **Stars**: ⭐5,120
- **License**: MIT
- **收錄日期**: 2026-05-06