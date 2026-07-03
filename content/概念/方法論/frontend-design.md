---
title: 前端設計
slug: frontend-design
language: zh-TW
---

# 前端設計

> 網頁和應用程式的視覺設計、互動體驗和 UI 實作，涵蓋設計系統、排版、色彩、動畫和無障礙。

## 核心內容

前端設計（Frontend Design）是網頁和應用程式的視覺呈現與互動體驗的總稱，涵蓋設計系統、排版與色彩、佈局與間距、動畫與互動、無障礙和跨平台指南等面向。它不只是「讓畫面好看」，而是將設計意圖轉化為可維護、可重用的程式碼結構。

隨著 AI Agent Skills 的發展，前端設計知識正在被結構化為 SKILL.md 格式，讓 AI coding agent 能以明確的品質標準來執行設計任務。多個 Agent Skills 庫專注於前端設計品質，從設計哲學到實作規範，形成了一套可被 Agent 理解和遵循的設計語言。

現代設計系統採用三層 Token 架構：Global（全域變數如 `--color-primary`）、Alias（語意別名如 `--color-action`）、Component（元件專用如 `--button-bg`），讓設計決策可追溯、可主題切換。同時，WCAG 2.1 AA 無障礙標準（正常文字對比度 4.5:1、大文字 3:1）已成為前端設計的基本要求。

## 關鍵要素

- **設計 Token 階層** — Global → Alias → Component 三層架構，實現主題切換和設計決策可追溯
- **模數化排版** — 使用 Modular Scale 定義字體尺度，確保視覺層次和諧
- **OKLCH 色彩空間** — 感知均勻的色彩空間，支援深色模式和一致的色彩對比
- **無障礙標準** — WCAG 2.1 AA 對比度、語意 HTML 優先、ARIA 標記補充、鍵盤導航
- **響應式佈局** — Mobile-first 策略搭配 Container Queries，適應多種裝置
- **AI Skills 整合** — 設計知識封裝為 SKILL.md，讓 Agent 按品質標準執行設計任務

## 各框架的做法

- **Anthropic Skills** → 定義設計哲學（意圖性、層次、節制）與佈局、色彩、排版規範
  👉 詳見 [[anthropics-skills]]
- **UI UX Pro Max** → 完整 Design Token 體系 + Atomic Design 元件架構 + 多平台指南
  👉 詳見 [[nextlevelbuilder-ui-ux-pro-max-skill]]
- **Vercel Agent Skills** → 審查 UI 程式碼的 Web 介面規範合規性
  👉 詳見 [[vercel-labs-agent-skills]]
- **Softaworks Agent Toolkit** → 從零建立生產級設計系統的入門套件
  👉 詳見 [[softaworks-agent-toolkit]]
- **Open Design** → 16 個 CLI agent 自動偵測 + 31 個設計 Skills 的開源設計工具
  👉 詳見 [[nexu-io-open-design]]
- **Penpot** → 開源設計平台，支援 Design Tokens 和 MCP Server 整合
  👉 詳見 [[penpot-penpot]]

## 相關概念

- [[AI-Skills]] — Skills 是前端設計知識的載體格式
- [[AI-Skills]] — Skill 庫的生態系推動設計知識標準化
- [[Prompt-Engineering]] — System prompt 和 SKILL.md 是設計 Agent 行為的基礎

## 來源

- Anthropic Skills frontend-design SKILL.md
- UI UX Pro Max Design Token 體系
- Vercel Agent Skills web-design-guidelines
- Softaworks Agent Toolkit design-system-starter