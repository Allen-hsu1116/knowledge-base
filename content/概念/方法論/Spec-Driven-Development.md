---
title: Spec-Driven Development
slug: Spec-Driven-Development
language: zh-TW
---

# Spec-Driven Development

> Spec-Driven Development 是在 AI coding assistant 寫程式碼前先寫規格文件（spec），以 propose → explore → apply → archive 四步流程確保方向正確。

## 核心內容

Spec-Driven Development 是一種以規格文件驅動 AI coding assistant 的開發方法論。核心原則是：在 AI 開始寫程式碼之前，先以結構化的規格文件明確定義「要做什麼」與「為什麼要做」，確保 AI 的產出方向與人類意圖一致。

流程分為四個步驟：Propose（提出規格草案）、Explore（AI 探索程式碼庫並驗證可行性）、Apply（AI 依規格實作程式碼）、Archive（歸檔完成的規格作為歷史記錄）。這個流程避免 AI 在不明確需求下自由發揮，減少返工。

OpenSpec 和 Spec Kit 是代表性框架。OpenSpec 提供規格文件模板與驗證流程，Spec Kit 則以更完整的工作流整合規格撰寫、AI 執行與結果驗證。兩者都強調規格文件應為 AI 可讀的結構化格式。

## 關鍵要素

- **先規格後實作**：在 AI 寫程式碼前先定義規格，避免方向偏差
- **四步流程**：Propose → Explore → Apply → Archive，確保每步有明確產出
- **規格即文件**：規格文件同時作為需求文件與歷史記錄
- **OpenSpec**：提供規格模板與驗證流程的代表性框架
- **Spec Kit**：整合規格撰寫、AI 執行與結果驗證的完整工作流

## 相關概念

- [[Coding-Agent-CLI]] — Spec-Driven Development 是 Coding Agent CLI 的核心方法論
- [[AI-Skills]] — Skills 定義執行步驟，Spec 定義目標與需求，兩者互補

## 來源
- 知識庫內 Spec-Driven Development 相關原始資料與專案頁面