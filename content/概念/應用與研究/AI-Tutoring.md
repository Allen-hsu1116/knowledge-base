---
title: AI Tutoring
slug: AI-Tutoring
language: zh-TW
---

# AI Tutoring

> 利用 AI 技術實現個人化教學，結合 RAG、知識圖譜和 LLM agent 創造互動式、自適應的學習體驗。

## 核心內容

AI Tutoring 是利用 AI 技術實現個人化教學的應用領域。傳統線上教育的核心問題在於內容靜態、無法互動、統一進度和缺乏反饋——所有人看同樣的影片和教材，不管程度如何，有問題也只能自己查。AI Tutoring 透過 RAG、知識圖譜和 LLM agent，將「看影片+做題」的模式轉變為「跟 AI 對話學」的互動式體驗。

AI Tutoring 的核心技術包括 Book Engine（活書引擎）和 TutorBot（自主家教）。Book Engine 把靜態文件變成互動式學習體驗，不只能讀，還能對話、測驗、探索。TutorBot 是主動式多 Agent 層，透過可擴展 skills 部署家教能力，持續追蹤學習進度，並統一多管道存取（CLI、Web、Discord、微信、飛書）。

混合個人化引擎是 AI Tutoring 的關鍵創新，結合靜態知識錨定和動態多解析度記憶。靜態層基於教材和知識圖譜提供基礎知識，動態層從互動歷史提煉學習者畫像。封閉教學迴路將引用式解題和難度校準出題連接起來，根據學習者表現動態調整教學策略。

## 關鍵要素

- **Socratic 引導式** — 透過提問而非直接給答案，啟發學習者深度思考
- **自適應評測** — 根據學習者表現動態調整難度和內容，實現個人化路徑
- **Book Engine 活書引擎** — 將靜態教材轉為可對話、可測驗的互動式學習體驗
- **混合個人化引擎** — 靜態知識錨定 + 動態記憶，持續追蹤學習者弱點和進度
- **多管道存取** — CLI、Web、Discord、微信、飛書等統一介面
- **TutorBench 評測** — 學習者視角的評測基準，衡量自適應家教效果

## 各框架的做法

- **DeepTutor** → Agent-Native 個人化 AI 家教，Book Engine + TutorBot + RAG 整合
  👉 詳見 [[HKUDS-DeepTutor]]
- **Build Your Own X** → 從零手做學習資源，透過實作深化理解
  👉 詳見 [[codecrafters-io-build-your-own-x]]
- **Hello 算法** → 演算法動畫圖解，12+ 語言的互動式學習
  👉 詳見 [[krahets-hello-algo]]
- **Easy-Vibe** → Vibe Coding 教育，AI 輔助的程式學習入門
  👉 詳見 [[datawhalechina-easy-vibe]]
- **freeCodeCamp** → Full-Stack + ML 程式學習，認證體系
  👉 詳見 [[freeCodeCamp-freeCodeCamp]]

## 相關概念

- [[rag]] — RAG 讓 AI 能基於特定教材回答問題
- [[Knowledge-Graph]] — 知識圖譜是 AI Tutoring 的知識基礎
- [[AI-Agent]] — TutorBot 是 Agent 架構的教學應用
- [[AI-Skills]] — Skills 定義 TutorBot 的教學行為
- [[MCP]] — MCP 讓 TutorBot 連接外部工具和資料

## 來源

- DeepTutor 專案頁面與論文
- AI Tutoring 相關教學資源