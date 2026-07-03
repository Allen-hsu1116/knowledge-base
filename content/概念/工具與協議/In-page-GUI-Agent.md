---
title: In-page GUI Agent
slug: In-page-GUI-Agent
language: zh-TW
---

# In-page GUI Agent

> In-page GUI Agent 是住在你網頁裡的 GUI Agent，用自然語言控制網頁介面，純文字 DOM 操作無需多模態 LLM。

## 核心內容

In-page GUI Agent 是一種直接嵌入網頁的智慧代理，讓使用者以自然語言操控網頁介面。與傳統 Computer-Use Agent 不同，它不需要截圖辨識或多模態 LLM，而是直接操作網頁的 DOM 結構，以純文字方式理解與操作介面元素。

這種設計大幅降低了運算成本與延遲。因為只操作單一網頁的 DOM，不需要整個桌面環境的感知，模型只需理解 HTML 結構即可完成點擊、填寫、導航等操作。相較於 Computer-Use Agent 需要視覺模型辨識螢幕畫面，In-page GUI Agent 使用輕量級文字模型即可運作。

In-page GUI Agent 適用於表單填寫、資料查詢、流程自動化等場景，特別是在使用者需要頻繁操作複雜網頁介面但不想學習 API 的情境。

## 關鍵要素

- **純文字 DOM 操作**：直接讀取與操作 HTML DOM，無需多模態視覺模型
- **自然語言控制**：使用者以自然語言描述意圖，Agent 轉化為 DOM 操作
- **單頁範圍**：僅操作當前網頁，不需要桌面級環境感知
- **輕量低延遲**：不需視覺模型，運算成本低、回應速度快
- **與 Computer-Use Agent 互補**：In-page 處理網頁內操作，Computer-Use 處理跨應用操作

## 相關概念

- [[computer-use-agent]] — Computer-Use Agent 需要視覺感知整個桌面，In-page GUI Agent 只操作單一網頁 DOM
- [[AI-Agent]] — In-page GUI Agent 是 AI Agent 在網頁自動化領域的特定實作

## 來源
- 知識庫內 In-page GUI Agent 相關原始資料與專案頁面