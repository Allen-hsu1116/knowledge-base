---
title: Hello-Agents 从零构建智能体
slug: datawhalechina-hello-agents
date: 2026-05-13
---

# Hello-Agents：从零构建智能体

> Datawhale 社區出品的系統性 AI Agent 學習教程，從理論基礎到實戰開發，帶你從 LLM「使用者」蛻變為智能體「構建者」。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [datawhalechina/hello-agents](https://github.com/datawhalechina/hello-agents) |
| Stars | ⭐ 48,233 |
| Language | Python |
| 建立日期 | 2025-09-07 |
| 收錄日期 | 2026-05-13 |

## 快速導航

- [[AI-Agent]] — AI 智能體概覽
- [[LLM]] — 大型語言模型基礎
- [[MCP]] — 智能體通信協議
- [[Prompt-Engineering]] — 提示工程
- [[rag]] — 檢索增強生成

## 詳細簡介

Hello-Agents 是 Datawhale 社區打造的開源免費系統性智能體教程，目標是填補市面上「AI Native Agent」系統性教學的空白。與 Dify、Coze 這類流程驅動的軟體工程 Agent 不同，本教程專注於真正以 AI 驅動的智能體——讓你從核心原理出發，理解經典範式，最終親手構建自己的多智能體應用。

整個教程分為五大部分，涵蓋從智能體定義與發展史、LLM 基礎知識，到 ReAct/Plan-and-Solve/Reflection 等經典範式實作，再到低代碼平台與主流框架應用，最終帶你從零自研一個 Agent 框架。進階部分更涵蓋記憶與檢索、上下文工程、通信協議（MCP/A2A）、Agentic RL 訓練、評估方法等核心主題。

目前已累積超過 4.8 萬顆星，是中文圈最具影響力的 Agent 學習資源之一。

## 核心特色

### 五大模組循序漸進

教程從智能體基礎理論（第一部分）到經典範式與框架實戰（第二部分），再到進階知識如記憶、上下文工程、通信協議（第三部分），然後是綜合案例——智能旅行助手、深度研究 Agent、賽博小鎮模擬（第四部分），最後以畢業設計收尾（第五部分）。每一步都有配套程式碼可跑。

### 從零自研 Agent 框架

第七章帶你基於 OpenAI 原生 API 從零構建 HelloAgents 框架，不是單純用別人的框架，而是理解框架的設計思路與實作細節，培養「用輪子」也「造輪子」的能力。

### 覆蓋 Agentic RL 訓練

第十一章專門講 Agentic RL——從 SFT 到 GRPO 的 LLM 訓練實戰，這是目前市面上少見的從強化學習角度訓練 Agent 的教程內容。

### 多智能體通信協議

第十章涵蓋 MCP、A2A、ANP 等最新的智能體通信協議，讓你理解 Agent 之間如何互動與協作。

### 社區驅動與持續更新

Datawhale 社區活躍，有讀者交流群、影片課程陸續上線，還有面試題總結、踩坑經驗分享等社區精選內容，適合想進入 Agent 崗位的求職者。

## 安裝方式

```bash
git clone https://github.com/datawhalechina/hello-agents.git
cd hello-agents
pip install -r requirements.txt
```

線上閱讀版本可直接訪問：[datawhalechina.github.io/hello-agents](https://datawhalechina.github.io/hello-agents/)

## 技術棧

- **Python** — 主要程式語言
- **OpenAI API** — 自研框架的 LLM 介面
- **LangGraph / AutoGen / AgentScope** — 主流 Agent 框架
- **Dify / Coze / n8n** — 低代碼平台
- **ReAct / Plan-and-Solve / Reflection** — 經典 Agent 範式

## 授權

CC BY-NC-SA 4.0（知識共享 署名-非商業性-相同方式共享 4.0 國際）

## 相關連結

- [線上閱讀（國際）](https://datawhalechina.github.io/hello-agents/)
- [線上閱讀（國內加速）](https://hello-agents.datawhale.cc)
- [自研框架 HelloAgents](https://github.com/jjyaoao/helloagents)
- [PDF 下載](https://github.com/datawhalechina/hello-agents/releases/latest/)