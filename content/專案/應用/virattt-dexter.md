# Dexter

> 自主式 AI 金融研究 Agent — 深度財報分析、行業研究、投資決策，全自動完成。

## 快速導航

- 🧠 **LLM** → [[LLM]]（Dexter 用 LLM 做多步驟金融推理）
- 🤖 **AI Agent** → [[AI-Agent]]（Dexter 是自主式 Agent，能規劃和執行研究任務）
- 📊 **應用** → [[ZhuLinsen-daily_stock_analysis]]（兩者都是 AI 金融分析，Dexter 重研究、daily_stock_analysis 重決策儀表盤）

## 是什麼

Dexter 是一個自主式 AI 金融研究 Agent。輸入研究問題，它會自動規劃研究步驟、抓取 SEC filing、解析財務數據、做多步驟推理，最終產出深度研究報告。不需要人類一步一步下指令。

## 核心特色

- **自主研究流程**：自動規劃、抓取、分析、產出報告
- **SEC filing 解析**：直接讀取和解析 10-K、10-Q 等 SEC 文件
- **多步驟推理**：LLM 驅動的 chain-of-thought 金融推理
- **工具使用**：整合財務數據 API、文件搜尋、計算工具
- **透明推理過程**：每步推理都有紀錄，可追溯

## 怎麼用

```bash
pip install dexter
dexter research "What are the key risks for NVIDIA in 2025?"
```

或用 Python API 整合到自己的 pipeline。

## 跟其他方案的關係

- **vs [[ZhuLinsen-daily_stock_analysis]]**：Dexter 做深度研究（閱讀 SEC filing、多步驟推理），daily_stock_analysis 做決策儀表盤（技術面+基本面+新聞聚合）。兩者互補：研究 → 決策。
- **vs 傳統金融數據平台**：Dexter 用 LLM 自主推理，不需要人類逐步操作。

## 相關概念

← [[LLM]] · [[AI-Agent]]

## 來源

- raw/2026-05-05-virattt-dexter.md

---

- **GitHub**: https://github.com/virattt/dexter
- **Stars**: ⭐23,560
- **License**: 未明確標示
- **收錄日期**: 2026-05-05