---
title: AI Gateway
slug: AI-Gateway
created: 2026-06-04
updated: 2026-08-23
language: zh-TW
---

# AI Gateway

> AI Gateway 是聚合多個 LLM 提供者的統一閘道，提供自動降級、成本路由、token 壓縮等功能，讓應用端不需逐一整合各家 API。

## 核心內容

AI Gateway 是介於應用層與 LLM 提供者之間的代理層，將多家 LLM 提供者（OpenAI、Anthropic、Google、本地模型等）聚合到單一統一 API 介面下。應用只需對接一個 endpoint，Gateway 負責路由、降級、計費與監控。

典型功能包括：自動降級（主模型不可用時切換備援）、成本路由（依任務複雜度選擇最適模型）、token 壓縮（壓縮 context 降低成本）、統一計量與限流。例如 OmniRoute 聚合 236+ 提供者，LiteLLM 提供統一 API 介面與 100+ 模型支援。

AI Gateway 解決的核心問題是多模型管理的複雜度。當團隊同時使用多家 LLM，每家 API 格式、計費方式、限流策略都不同，Gateway 統一這些差異，讓開發者專注於應用邏輯。

## 關鍵要素

- **統一 API 介面**：多家 LLM 提供者使用同一呼叫格式，降低整合成本
- **自動降級與容錯**：主模型逾時或錯誤時自動切換備援模型
- **成本路由**：依任務複雜度動態選擇模型，兼顧品質與成本
- **Token 壓縮**：壓縮 prompt context，降低 token 消耗與費用
- **統一監控計量**：集中記錄用量、成本、延遲，支援限流與配額管理

## 各框架的做法

- **OmniRoute** → 聚合 236+ LLM 提供者，RTK + Caveman token 壓縮，免費 1.6B tokens/月
  👉 詳見 [[diegosouzapw-OmniRoute|OmniRoute]]
- **LiteLLM** → 100+ Provider 統一 API，支援 OpenAI 格式呼叫所有模型
  👉 詳見 [[litellm|LiteLLM]]
- **Open WebUI** → 自架 LLM 平台內建多模型路由，Docker 一鍵部署
  👉 詳見 [[open-webui-open-webui|Open WebUI]]
- **Grok2API** → Grok 專用多帳號網關，三 Provider 獨立路由 + 智慧調度 + OpenAI/Anthropic 雙協議相容
  👉 詳見 [[chenyme-grok2api|Grok2API]]
- **Sub2API** → 聚合 Claude、OpenAI、Gemini、Grok 的訂閱帳號池，提供配額分發、token 計費、支付與並行控制；使用前須確認上游 ToS
  👉 詳見 [[Wei-Shaw-sub2api|Sub2API]]

## 相關概念

- [[MCP]] — MCP 定義工具連接方式，Gateway 定義模型路由方式
- [[Token-Optimization]] — Gateway 的 token 壓縮是 Token 優化的基礎設施層

## 來源
- 知識庫內 AI Gateway 相關原始資料與專案頁面