---
title: "Univer"
slug: "dream-num-univer"
created: "2026-09-23"
updated: "2026-09-23"
stars: 15404
language: "TypeScript"
topics: ["board", "collaboration", "data-table", "doc", "docx", "excel", "grid", "pdf", "ppt", "pptx", "presentation", "sdk", "sheet", "slides", "spreadsheet", "table", "word", "wordprocessor", "xlsx"]
---

# Univer

> ⭐15.4k · TypeScript · 可嵌入產品的 Office SDK，讓人與 Agent 透過共同文件模型操作試算表與文件。

## 快速導航

- [[AI-Agent]]
- [[harness-engineering]]

## 是什麼

Univer 是 TypeScript Office SDK，不是只能檢視 Excel 的檔案瀏覽器，也不是裝好即可使用的完整雲端辦公服務。它提供試算表、文件及發展中的簡報模型、編輯 UI、公式引擎和插件機制，讓開發者在自己的 SaaS、內部工具或 AI 應用內建立工作介面。

同一套架構可在瀏覽器提供互動編輯，也可在 Node.js 執行 headless 文件邏輯。Agent 可用結構化 API 修改內容，並以內容檢查、截圖或版面診斷驗證結果；即時協作與 worktree 草稿審核則要搭配相應 Web SDK／協作能力，不能視為全部內建於 OSS。

## 核心特色

- 插件優先：依需求組合、替換或延遲載入能力。

- 雙執行環境：瀏覽器 UI 與 Node.js headless 共用架構。

- 統一 Facade API：操作 workbook、range、公式、文件、事件。

- Canvas 渲染與專用公式引擎：支援複雜可編輯工作表。

- Preset 與 Plugin 兩種整合方式：快速起步或精細控制依賴。

- 清楚區分 OSS／Pro：協作、匯入匯出、圖表等進階能力需另查授權。

## 怎麼用

### 安裝

以下是供讀者參考的官方安裝方式；本次收錄不執行安裝。

```bash
pnpm add @univerjs/presets @univerjs/preset-sheets-core
```

### 最小流程

```ts
import { UniverSheetsCorePreset } from '@univerjs/preset-sheets-core'
import enUS from '@univerjs/preset-sheets-core/locales/en-US'
import { createUniver, LocaleType, mergeLocales } from '@univerjs/presets'
import '@univerjs/preset-sheets-core/lib/index.css'

const { univerAPI } = createUniver({
  locale: LocaleType.EN_US,
  locales: { [LocaleType.EN_US]: mergeLocales(enUS) },
  presets: [UniverSheetsCorePreset({ container: 'app' })],
})
univerAPI.createWorkbook({})
```

### 前提與限制

- 在前端頁面提供具高度的容器，例如 `<div id="app" style="height: 100vh"></div>`。

- 同一 release line 的 SDK 套件版本需一致；Pro 套件需匹配對應版本。

- Sheets 目前最成熟；Slides 仍發展中，PDF 在 README 標為 coming soon。

- 本頁為 README 整理，未在本機安裝 SDK 或執行此前端範例。

## 跟其他方案的關係

以下是依 README 定位整理的編輯比較，不是效能測試。

| 方案 | 主要責任 | 與本專案關係 |
|---|---|---|
| 純檔案解析／轉換工具 | 讀取或轉檔 | Univer 著重可互動編輯與共同文件模型。 |
| 託管 Office 服務 | 使用既定產品與 UI | Univer 提供可嵌入與客製的 SDK。 |
| Agent Harness | 任務迴圈與工具控制 | Univer 提供文件操作表面，並不取代一般 Agent runtime。 |

產品家族的 Boards、Bases、PDF 等定位不能等同此 OSS repo 已完整交付的功能；應查官方 capability matrix。

## 相關概念

← [[AI-Agent]] · [[harness-engineering]]

## 來源

- [GitHub repository](https://github.com/dream-num/univer)
- [官方 README](https://github.com/dream-num/univer/blob/dev/README.md)
- [LICENSE](https://github.com/dream-num/univer/blob/dev/LICENSE)
- 原始快照：`raw/2026-09-23-dream-num-univer.md`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/dream-num/univer |
| Stars | 15,404（2026-09-23 擷取） |
| License | Apache-2.0（OSS；Pro 另行授權） |
| Language | TypeScript |
| 收錄日期 | 2026-09-23 |
