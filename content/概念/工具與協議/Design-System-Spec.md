---
title: Design System Spec
slug: Design-System-Spec
language: zh-TW
---

# Design System Spec

> Design System Spec 是用 YAML tokens + Markdown prose 向 AI coding agent 描述視覺身份的格式規範，讓 agent 擁有持久的設計系統理解。由 Google Labs 提出。

## 核心內容

Design System Spec 是一種以 DESIGN.md 為載體的格式規範，目的是讓 AI coding agent 理解並遵循專案的視覺設計系統。傳統設計系統以 Figma 或 Storybook 呈現，AI agent 無法直接讀取；Design System Spec 將設計 token（顏色、字體、間距等）以 YAML 結構化定義，搭配 Markdown prose 描述使用語境與設計意圖。

這種格式讓 AI agent 在生成前端程式碼時，能持續參照設計規範，而非每次重新猜測樣式。由 Google Labs 提出的 DESIGN.md 格式，把設計系統從設計師專屬工具轉變為 AI 可讀的純文字規範。

Design System Spec 補足了 AI coding agent 在前端開發中的設計理解缺口，與 CLAUDE.md 之於行為規範、SKILL.md 之於操作指令，形成完整的 AI agent 配置生態。

## 關鍵要素

- **YAML Design Tokens**：顏色、字體、間距、圓角等以結構化 YAML 定義
- **Markdown Prose 語境**：以自然語言描述設計意圖與使用語境
- **DESIGN.md 載體**：單一檔案作為 AI agent 的設計系統參考
- **持久設計理解**：Agent 在整個開發過程中持續遵循設計規範
- **與 AI Skills 互補**：Skill 定義操作流程，Design Spec 定義視覺身份

## 相關概念

- [[AI-Skills]] — Design System Spec 是 AI Skills 在前端設計領域的延伸應用
- [[frontend-design]] — 前端設計的 AI agent 輔助需要 Design System Spec 支撐

## 來源
- 知識庫內 Design System Spec 相關原始資料與專案頁面