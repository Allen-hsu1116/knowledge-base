---
title: Context Engineering 基本概念
slug: context-engineering-basics
created: 2026-05-03
updated: 2026-05-03
language: zh-TW
---

# Context Engineering 基本概念

> 系統化管理語言模型在每次呼叫時「看到」什麼內容——不是把所有資訊塞進 prompt，而是讓輸入長度合適、資訊精準、避免崩潰。

## 核心內容

Context Engineering（上下文工程）是 AI Agent 的核心技術——決定語言模型在每次呼叫時「看到」什麼內容。形式化定義：沒有 CE 時 context 直接累積所有歷史（C_{t+1} = C_t + I_t + O_t），有 CE 時用函數 F 決定新的 context（C_{t+1} = F(C_t, I_t, O_t)）。更精確地說，Context 分為 P（進 LLM 的 prompt）和 M（存在硬碟的記憶），F 分別更新兩者。

核心洞見是：84% 的 context 來自 observation（工具輸出），action 和 reasoning 只佔 16%。因此壓縮是治標、過濾是治本。聰明的 Read 工具（讀檔時附帶意圖）、Memory Get（只讀取指定行數）、MCP-Zero（工具說明按需加載）才是根本解法。

壓縮方法的有效性已在 SWE-bench 實驗中驗證：前期 Masking + 後期 Summary 的組合效果最好且成本最低。但壓縮有風險——context collapse，如 AI 刪郵件事件就是壓縮丟失了關鍵指令。ACON 方法用另一個 LLM 分析壓縮前後差異產生 feedback，不訓練模型只用 prompt engineering 提升壓縮品質。

語言模型不喜歡壓縮——給模型 erase 工具它拒絕使用，必須強制執行或 RL 訓練。Subagent 是天然的壓縮方式：return 後繁瑣過程從 context 消失，長度呈鋸齒狀升降。Agentic CE 則把 Context Engineering 也交給 LLM，用 Dynamic Cheatsheet、Playbook 或 Recursive Language Model 實現。

知識庫方法論（raw → wiki → lint）本身就是一種 Context Engineering：raw/ 是外部記憶（M），wiki/ 是精煉後進入 LLM 的 context（P），lint 就是 ACON 的角色——檢查壓縮是否丟失重要資訊。

## 關鍵要素

- **Context = P + M**：P 進 LLM，M 存硬碟，兩者要分開管理
- **壓縮是治標，過濾是治本**：84% context 來自 observation，聰明的 Read 工具才是根本解法
- **語言模型不喜歡壓縮**：必須強制執行或 RL 訓練，否則模型拒絕刪除記憶
- **Subagent = 自主壓縮**：return 後繁瑣過程從 context 消失，是天然的壓縮方式
- **Agentic CE**：讓 LLM 自己做 Context Engineering，用 Dynamic Cheatsheet 或 Recursive LM
- **Context Collapse 風險**：壓縮可能丟失關鍵指令，ACON 可分析壓縮前後差異防範

## 各框架的做法

- **編譯式知識庫** → raw→wiki 是 CE 的一種實作，精煉後的知識取代原始資料
  👉 詳見 [[llm-knowledge-base]]
- **Agent Skills 生態** → 按需載入 Skill 就是 CE 的過濾策略
  👉 詳見 [[AI-Skills]]
- **OpenViking** → L0/L1/L2 分層載入就是 CE 的分層策略，Context Database 開源實作
  👉 詳見 [[volcengine-OpenViking]]
- **MemPalace** → 結構化索引縮限搜尋範圍就是 CE 的過濾策略
  👉 詳見 [[mempalace]]
- **OpenClaw** → SOUL.md 和 Skill 按需載入都是 CE 的實踐
  👉 詳見 [[agent-anatomy-openclaw]]

## 相關概念

- [[AI-Agent]] — Agent 的核心就是大 F 函數，決定 LLM 看到什麼
- [[prompt-security]] — context collapse 是 CE 的風險，需要防禦機制
- [[Token-Optimization]] — 壓縮和過濾的直接目標是減少 token 消耗

## 來源

- Context Engineering 課程筆記（李宏毅，2026-03-15）
- raw/2026-05-03-context-engineering-basics.md