---
title: Dexter
slug: virattt-dexter
created: 2026-05-10
updated: 2026-05-10
stars: 23,560
language: zh-TW
---

# Dexter

> ⭐23,560 · 自主式 AI 金融研究 Agent — 深度財報分析、行業研究、投資決策，全自動完成。SEC filing 解析 + 多步驟 LLM 推理。

## 快速導航

- 🧠 **LLM** → [[LLM]]（Dexter 用 LLM 做多步驟金融推理）
- 🤖 **AI Agent** → [[AI-Agent]]（Dexter 是自主式 Agent，能規劃和執行研究任務）
- 📊 **應用** → [[ZhuLinsen-daily_stock_analysis]]（兩者都是 AI 金融分析，Dexter 重研究、daily_stock_analysis 重決策儀表盤）

## 是什麼

Dexter 是一個自主式 AI 金融研究 Agent。輸入研究問題（如 "What are the key risks for NVIDIA in 2025?"），它會自動規劃研究步驟、抓取 SEC filing、解析財務數據、做多步驟推理，最終產出深度研究報告。不需要人類一步一步下指令 — 它自己決定要查什麼、怎麼分析。

## 核心特色

- **自主研究流程** — Dexter 收到研究問題後，自動拆解成子問題、排定執行順序、逐項研究。整個過程不需要人類逐步引導，Agent 自己規劃和執行
- **SEC filing 解析** — 直接讀取和解析 10-K、10-Q 等 SEC 文件。能從幾百頁的財報中提取關鍵數據（營收、風險因子、管理層討論），不需要人類手動翻閱
- **多步驟推理** — LLM 驅動的 chain-of-thought 金融推理。不是一次給答案，而是逐步推理：先分析產業趨勢，再看公司定位，然後評估財務健康，最後綜合判斷
- **工具使用** — 整合財務數據 API（即時行情）、文件搜尋（SEC EDGAR）、計算工具（財務比率計算）。Agent 根據需要自動選擇工具
- **透明推理過程** — 每步推理都有紀錄，可追溯 Agent 為什麼做了某個結論。不是黑盒，研究過程完全可審計

## 怎麼實現的

Dexter 的架構是 Planning Agent + Tool Execution + Multi-step Reasoning：

1. **Planning Agent**：收到研究問題後，先分解成子問題並排定研究計畫。例如 "NVIDIA 風險分析" 會拆成：競爭風險、法規風險、供應鏈風險、財務風險等子項
2. **SEC Filing Pipeline**：透過 SEC EDGAR API 抓取 10-K/10-Q 文件，用 LLM 做結構化提取 — 從非結構化的財報文本中抽出風險因子、財務數據、管理層討論等關鍵資訊
3. **Multi-step Reasoning Loop**：Agent 循環執行「思考 → 選工具 → 執行 → 觀察結果 → 下一個思考」。每步都用 LLM 的 chain-of-thought 推理，根據上一步的結果決定下一步
4. **Tool Orchestration**：Agent 可呼叫多種工具 — 財務數據 API 查即時行情、計算工具算財務比率、文件搜尋查特定條款。Agent 自動判斷什麼時候用什麼工具
5. **Report Generation**：所有子問題研究完成後，彙整成結構化的研究報告，包含結論、支撐數據、風險評估

## 怎麼用

```bash
pip install dexter

# 基本研究
dexter research "What are the key risks for NVIDIA in 2025?"

# 行業研究
dexter research "Compare the competitive landscape of cloud AI chips"

# 財務健康分析
dexter research "Analyze Tesla's financial health based on latest 10-K"

# Python API 整合到自己的 pipeline
from dexter import DexterAgent

agent = DexterAgent()
report = agent.research("What are the key risks for NVIDIA in 2025?")
print(report.summary)
print(report.findings)
print(report.reasoning_trace)  # 完整推理過程
```

## 跟其他方案的關係

| 方案 | 定位 | SEC Filing | 多步推理 | 決策儀表盤 | 策略回測 | Agent 數 |
|------|------|-----------|---------|-----------|---------|--------|
| **Dexter** | 深度研究 | ✅ | ✅ CoT | ❌ | ❌ | 1 |
| **daily_stock_analysis** | 決策儀表盤 | ❌ | ❌ | ✅ | ✅ | — |
| **Anthropic FS** | 金融工作流 | ❌ | ✅ | ❌ | ❌ | 10 |
| **傳統平台** | 數據查詢 | 手動 | ❌ | ⚠️ | ⚠️ | — |

- **vs [[ZhuLinsen-daily_stock_analysis]]**：Dexter 做深度研究（閱讀 SEC filing、多步驟推理），daily_stock_analysis 做決策儀表盤（技術面+基本面+新聞聚合+策略回測）。兩者互補：先用 Dexter 做深度研究，再用 daily_stock_analysis 做交易決策
- **vs [[anthropics-financial-services|Anthropic FS]]**：Anthropic FS 是 10 個專業工作流 Agent + 11 個 MCP 數據連接器的生態系，Dexter 是單一自主研究 Agent。Anthropic FS 做分析師工作產出（模型、備忘錄、簡報），Dexter 做深度 SEC 研究
- **vs 傳統金融數據平台**（Bloomberg、Wind）：Dexter 用 LLM 自主推理，不需要人類逐步操作。傳統平台只提供數據，分析靠人
- **定位差異**：Dexter 是「研究員」，daily_stock_analysis 是「交易員」，Anthropic FS 是「分析師團隊」

## 相關概念

← [[LLM]] · [[AI-Agent]]

## 來源

- raw/2026-05-05-virattt-dexter.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [virattt/dexter](https://github.com/virattt/dexter) | ⭐23,560 | — | 2026-05-05 |