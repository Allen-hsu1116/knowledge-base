---
title: 可觀測性
slug: observability
language: zh-TW
---

# 可觀測性

> 系統的日誌、指標和追蹤三大支柱，確保系統健康可診斷。

## 核心內容

可觀測性（Observability）是 DevOps 和 SRE 的核心概念，指透過系統外部輸出來理解系統內部狀態的能力。不同於監控（Monitoring）只關注預先定義的指標，可觀測性強調能夠回答任何關於系統行為的問題——包括那些事先沒想到的問題。

可觀測性的三大支柱是日誌（Logs）、指標（Metrics）和分散式追蹤（Traces）。日誌記錄離散事件，指標提供可聚合的數值時間序列，追蹤則記錄請求在分散式系統中的完整路徑。三者結合讓開發者能從「系統出了什麼問題」到「為什麼出問題」再到「如何預防」進行完整的事後分析。

在 LLM 和 AI Agent 應用中，可觀測性面臨新的挑戰。LLM 的推論是非確定性的，Agent 的工作流是動態的，Prompt 和 Context 的管理影響成本和品質。LLM 觀測平台需要追蹤 prompt 版本、token 消耗、模型選擇、Agent 決策路徑等 AI 特有的指標。這催生了如 Langfuse 等專為 LLM 應用設計的觀測工具。

可觀測性也與 Agent 分析相關——追蹤 AI coding agent 的 session 行為、成本和效率，幫助開發者理解和優化 Agent 的工作模式。

## 關鍵要素

- **日誌（Logs）** — 記錄離散事件的結構化文字，支援搜尋、過濾和聚合分析
- **指標（Metrics）** — 可聚合的數值時間序列，如 CPU 使用率、請求延遲、錯誤率
- **分散式追蹤（Traces）** — 記錄請求在微服務間的完整路徑，定位瓶頸和故障點
- **LLM 觀測** — 追蹤 prompt 版本、token 消耗、模型選擇、Agent 決策路徑
- **Alerting** — 基於指標和日誌的異常偵測和通知，及時發現系統問題
- **Agent 分析** — 追蹤 AI Agent 的 session 行為、成本和效率

## 各框架的做法

- **Langfuse** → 開源 LLM 觀測平台，評測、Prompt 管理、Playground，YC W23
  👉 詳見 [[langfuse-langfuse|Langfuse]]
- **agentsview** → Coding Agent 分析工具，session 智慧、成本追蹤、本地優先
  👉 詳見 [[kenn-io-agentsview|agentsview]]
- **iii** → 後端平台，Agent 友善的可觀測性整合
  👉 詳見 [[iii-hq-iii|iii]]
- **WorldMonitor** → 全球情報儀表板，AI 新聞聚合和地緣政治監控
  👉 詳見 [[koala73-worldmonitor|WorldMonitor]]
- **TrendRadar** → AI 輿情監控，多平台聚合和即時推送
  👉 詳見 [[sansan0-TrendRadar|TrendRadar]]
- **Promptfoo** → LLM 評測和紅隊工具，CI/CD 整合的品質保證
  👉 詳見 [[promptfoo-promptfoo|Promptfoo]]

## 相關概念

- [[workflow-automation|工作流自動化]] — 可觀測性監控自動化工作流的執行狀態
- [[self-hosted|自架 AI 平台]] — 自架平台需要可觀測性確保服務穩定
- [[sandbox|沙箱]] — 沙箱中的程式執行需要可觀測性追蹤行為
- [[AI-Agent|AI Agent]] — Agent 的行為和決策需要觀測工具來分析和優化
- [[LLM]] — LLM 應用帶來新的觀測需求

## 來源

- Langfuse LLM 觀測平台文件
- 可觀測性工程實踐
- AI Agent 分析工具趨勢