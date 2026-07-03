---
title: Computer Use Agent
slug: computer-use-agent
language: zh-TW
---

# Computer Use Agent

> 能操作桌面應用和瀏覽器的 AI Agent，模擬人類的鍵盤滑鼠操作完成 GUI 任務。

## 核心內容

Computer Use Agent（CUA）是 AI Agent 的進階形態，能直接操控圖形化介面——點擊按鈕、填寫表單、切換視窗、捲動頁面。不同於只能操作 API 或 CLI 的傳統 Agent，Computer Use Agent 能像人類一樣使用任何桌面軟體和瀏覽器，不需要目標應用提供專用 API。

這個能力之所以重要，是因為現實中絕大多數軟體只有 GUI 介面，沒有可程式化的 API。從企業內部 ERP 系統到銀行網銀操作，從設計工具到辦公文檔，Computer Use Agent 讓 AI 能直接介入這些「API 不可及」的場景，大幅擴展了 AI Agent 的應用邊界。

技術上，Computer Use Agent 通常結合視覺模型（VLM）理解螢幕畫面、座標映射定位 UI 元素、以及動作執行模組模擬鍵盤滑鼠輸入。先進的 CUA 還能處理多視窗切換、拖放操作、右鍵選單等複雜互動，並在沙箱環境中安全執行以避免對實際系統造成損害。

## 關鍵要素

- **視覺理解** — 透過 VLM 分析螢幕截圖，辨識按鈕、輸入框、選單等 UI 元素
- **座標映射** — 將視覺辨識結果映射到實際螢幕座標，精準定位點擊位置
- **動作執行** — 模擬鍵盤輸入、滑鼠點擊、拖放、捲動等完整人類操作
- **沙箱隔離** — 在隔離環境中執行操作，防止 Agent 行為影響實際系統
- **多步規劃** — 將複雜任務分解為多個 UI 操作步驟，逐步完成目標
- **錯誤恢復** — 偵測操作失敗（彈窗、載入錯誤）並自動調整策略

## 各框架的做法

- **Browser Use** → 瀏覽器自動化 Agent，Rust 核心 + MCP 整合，專注網頁操作
  👉 詳見 [[browser-use-browser-use]]
- **CUA** → 沙箱環境中的桌面操控 Agent，支援 macOS 和 Linux
  👉 詳見 [[trycua-cua]]
- **AIRI** → 自架 Agent 平台，整合 Computer-Use 能力
  👉 詳見 [[moeru-ai-airi]]
- **Mano-P** → GUI-VLA 邊緣裝置 AI，在 Edge 裝置上實現 Computer-Use
  👉 詳見 [[Mininglamp-AI-Mano-P]]
- **OpenHands** → Coding Agent 控制中心，整合瀏覽器和桌面操控能力
  👉 詳見 [[OpenHands-OpenHands]]

## 相關概念

- [[AI-Agent]] — Computer Use Agent 是 AI Agent 的進階形態
- [[sandbox]] — 沙箱是 Computer Use Agent 安全執行的基礎
- [[computer-vision]] — 視覺理解是 CUA 感知螢幕的核心能力
- [[MCP]] — MCP 提供 Agent 連接外部工具的協議層

## 來源

- Browser Use、CUA、AIRI 等專案頁面
- VLM 與 GUI Agent 相關研究論文