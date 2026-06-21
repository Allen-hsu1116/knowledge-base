---
title: OpenFang
slug: RightNow-AI-openfang
created: 2026-02-24
updated: 2026-02-24
stars: 17,551
language: zh-TW
---

# OpenFang

> ⭐17,551 · 開源 Agent 作業系統，Rust 全寫，137K LOC、14 crates、1,767+ tests。一個二進位檔 ~32MB，自治 Agent 24/7 幫你工作。

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/RightNow-AI/openfang |
| Stars | ⭐17,551 |
| Language | Rust |
| 建立日期 | 2026-02-24 |
| 授權 | Apache-2.0 |
| 收錄日期 | 2026-05-07 |

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（OpenFang 是 Agent 作業系統，不是 chatbot 框架）
- 🔌 **MCP** → [[MCP]]（Hands 可透過 MCP 擴充工具）
- 🕸️ **知識圖譜** → [[Knowledge-Graph]]（Collector Hand 自動建構知識圖譜）
- 🏛️ **多 Agent 協作** → [[cft0808-edict]]（三省六部是另一種多 Agent 架構）

## 是什麼

OpenFang 是一個用 Rust 從零打造的開源 Agent 作業系統。不是 chatbot 框架，不是 LLM 的 Python 包裝器，不是「多 Agent 編排器」——而是一個完整的自治 Agent 作業系統。

傳統 Agent 框架等你輸入提示詞才動。OpenFang 跑的是自治 Agent：排程驅動、24/7 運行、建知識圖譜、監控目標、開發潛在客戶、管理社群媒體，結果回報到你的 Dashboard。整個系統編譯成單一 ~32MB 二進位檔，一條指令裝好，Agent 就上線了。

## 核心特色

### Hands — 真正做事的自治 Agent

Hands 是 OpenFang 的核心創新。預建的自治能力包，獨立運行、排程驅動、不需你下提示詞。每個 Hand 包含：HAND.toml（manifest）、System Prompt（500+ 字的操作手冊）、SKILL.md（領域專業知識）、Guardrails（敏感操作的審批閘門）。全部編譯進二進位檔，不需 pip install、不需 Docker pull。

7 個預建 Hands：

| Hand | 做什麼 |
|------|--------|
| **Clip** | YouTube URL → 下載 → 找最佳片段 → 剪直式短影片 + 字幕 + 縮圖 → 發 Telegram/WhatsApp。8 階段管線，FFmpeg + yt-dlp + 5 STT 後端 |
| **Lead** | 每日排程。依 ICP 發現潛在客戶 → 網路研究豐富資料 → 0-100 評分 → 去重 → CSV/JSON/Markdown 交付 |
| **Collector** | OSINT 等級情報。指定目標（公司、人、主題）→ 持續監控 → 變更偵測 + 情緒追蹤 + 知識圖譜建構 + 關鍵告警 |
| **Predictor** | 超級預測引擎。多源信號 → 校準推理鏈 → 帶信心區間的預測 → Brier 分數追蹤準確度。有反共識模式 |
| **Researcher** | 深度自主研究。跨源交叉引用 → CRAAP 準則評估可信度 → APA 格式引用報告，多語言支援 |
| **Twitter** | 自治 Twitter/X 帳號管理。7 種輪替內容格式 → 最佳時段排程 → 回覆互動 → 績效追蹤。有審批佇列 |
| **Browser** | 網頁自動化。Playwright bridge + session 持久化。強制購買審批閘門：未經確認絕不花錢 |

### 效能對比

OpenFang 在啟動速度、二進位大小、記憶體佔用上都大幅領先 Python 框架：

- 啟動：180ms（LangGraph 2.5s、CrewAI 3.0s、AutoGen 4.0s）
- 二進位：40MB（CrewAI 200MB、AutoGen 250MB）
- 記憶體：32MB（CrewAI 100MB、LangGraph 150MB）
- 預建 Hands 數：16 個（最多）

### 自訂 Hand + FangHub

定義自己的 HAND.toml（工具、設定、系統提示詞），發布到 FangHub 社群市集。

## 怎麼用

### 安裝

```bash
# macOS / Linux
curl -fsSL https://openfang.sh/install | sh
openfang init
openfang start
# Dashboard: http://localhost:4200

# Windows
irm https://openfang.sh/install.ps1 | iex
openfang init
openfang start
```

### 啟用 Hands

```bash
# 啟用 Researcher Hand
openfang hand activate researcher

# 查看進度
openfang hand status researcher

# 每日排程啟用 Lead 生成
openfang hand activate lead

# 暫停（保留狀態）
openfang hand pause lead

# 列出所有可用 Hands
openfang hand list
```

### 自訂 Hand

定義自己的 HAND.toml（工具、設定、系統提示詞），發布到 FangHub 社群市集。

## 技術棧

- **Rust** — 137K LOC、14 crates、單一二進位檔 ~32MB
- **1,767+ tests** — 零 clippy warnings
- **Playwright** — Browser Hand 的網頁自動化
- **FFmpeg + yt-dlp** — Clip Hand 的影音處理管線
- **Dashboard** — 內建 Web UI，localhost:4200

## 跟其他方案的關係

OpenFang 跟 [[AI-Agent]] 框架（CrewAI、LangGraph、AutoGen）的根本差異在於：它是作業系統，不是框架。框架是你寫程式去呼叫它，作業系統是它自己跑起來服務你。

[[cft0808-edict]] 的三省六部是另一種多 Agent 架構——用制度性審核（門下省封駁）確保品質，而 OpenFang 用 Hands 的 Guardrails（審批閘門）做安全控制。兩者方向不同：三省六部是「分工制衡」，OpenFang 是「自治排程」。

[[Knowledge-Graph]] 是 Collector Hand 的核心產出——持續監控目標時自動建構知識圖譜。

## 相關概念

← [[AI-Agent]] · [[MCP]] · [[Knowledge-Graph]] · [[cft0808-edict]]

## 來源

- [原始資料](../raw/2026-05-07-RightNow-AI-openfang.md)
- GitHub: https://github.com/RightNow-AI/openfang