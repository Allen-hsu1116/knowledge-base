---
title: AI Gateway
slug: AI-Gateway
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

## 相關概念

- [[MCP]] — MCP 定義工具連接方式，Gateway 定義模型路由方式
- [[Token-Optimization]] — Gateway 的 token 壓縮是 Token 優化的基礎設施層

## 來源
- 知識庫內 AI Gateway 相關原始資料與專案頁面