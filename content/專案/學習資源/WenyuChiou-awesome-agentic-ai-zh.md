---
title: awesome-agentic-ai-zh
slug: WenyuChiou-awesome-agentic-ai-zh
created: 2026-09-02
updated: 2026-09-06
language: zh-TW
stars: 6670
topics: [agentic-ai, learning-resources, cli-agent, production-engineering]
source: https://github.com/WenyuChiou/awesome-agentic-ai-zh
---

# awesome-agentic-ai-zh

> ⭐6.7k · 一套以繁體中文為主、從零基礎一路走到 production-ready Agent 系統的結構化學習地圖；不是單純丟連結的 awesome list，而是把順序、練習與完成條件一起排好。

## 快速導航

- [[AI-Agent]] — Agent 架構與實作基礎
- [[self-education]] — 結構化自主學習

## 是什麼

AI Agent 的資料很多，但初學者常不知道先學 Prompt、工具呼叫、MCP、RAG、框架還是多 Agent。這個專案把內容整理成 10 個學習站，先建立共用基礎，再分成「使用 CLI Agent」與「自己打造 Agent」兩條主路線。

它特別強調從「看懂」走到「做得到」：每一階段都有核心問題、可執行練習與完成條件，最後再補上 Eval、可觀測性、權限、Human-in-the-loop 與失敗復原，避免只做出能 demo、不能上線的 Agent。

## 學習路線

- **Stage 0–2 共用基礎**：Python／Git／API、LLM／Token／Context、Prompt 設計
- **Track A — CLI Power User**：選擇 Claude Code、Codex、OpenCode 等 CLI Agent，建立 Project Instructions、Skills、MCP、Hooks 與可重複工作流程
- **Track B — Agent Builder**：工具呼叫與 Agent Loop、Workflow Graph、Agent framework、Memory／RAG、production engineering
- **Stage 7.5**：PAR loop、agent-as-judge 等進階 Agentic pattern
- **Stage 8**：CLI、Browser Use、Computer Use、API 與 Sandbox 的介面選擇

## 核心觀念

專案把 `prompt → context → harness → loop → graph` 視為五個不同的控制問題，而不是幾個可以互換的名詞。Prompt 說清楚一次任務；Context 決定模型此刻看到什麼；Harness 提供規則、工具與環境；Loop 控制觀察—行動—修正；Graph 則讓多階段流程具備明確結構。

另一個重要區分是：聊天機器人不一定是 Agent，固定腳本也不一定是 Agent。Agent 應能根據目標與目前狀態選擇下一步、使用工具、根據結果修正或停止，但仍受人類設定的規則與權限約束。

## 核心特色

- 提供 `starter.py`、離線測試與小型案例，讓學習者先跑通再逐步修改
- 內建名詞表、零基礎設定指南、CLI Agent 選擇指南、Cookbook、完整資源清單與進度表
- 提供研究人員、開發者、教師、知識工作者與日常使用者的角色分支
- 完成主線後可進入 Capstone 專案，將 Loop、工具、記憶、評測與治理組成完整系統
- 繁體中文、簡體中文與英文三語內容，MIT License

## 適合誰

- 想系統學習 AI Agent、但不想在零散文章間自行拼路線的人
- 已會 Python／Git／API，想直接進入 Agent Builder 的開發者
- 想把 Claude Code、Codex 或 OpenCode 接進真實工作流程的 CLI 使用者
- 需要課程架構、練習與驗收條件的教師或共學社群

## 怎麼用

這是教材庫而非需要安裝的 Agent 服務；可直接閱讀網站，或取得本機教材：

```bash
git clone https://github.com/WenyuChiou/awesome-agentic-ai-zh.git
cd awesome-agentic-ai-zh
# 閱讀 README.md，依所選 Stage 的說明準備環境與執行練習
```

1. 先依能力選 Stage 0、Stage 1 或 Track A／B 入口。
2. 一次只走一個 Stage，先跑官方範例與測試。
3. 每次只改一件事，改完立即重跑驗證。
4. 達成章節完成條件後再前進，不把「看過」當成「會做」。
5. 完成 A3 或 Stage 7 後，以 Capstone 整合成可評測、可復原的 Agent。

## 跟其他方案的關係

| 方案 | 整理重點 | 使用方式 |
|---|---|---|
| awesome-agentic-ai-zh | 分階段路線、練習、完成條件 | 沿 Track A／B 循序實作 |
| 一般 awesome list | 依主題彙整資源連結 | 自行挑選資源與設計練習 |

這份地圖可作為 [[AI-Agent]] 的完整入門路線，並串起 [[Prompt-Engineering]]、[[MCP]]、[[AI-Skills]]、[[context-engineering-basics]]、[[rag]] 與 [[harness-engineering]]。相較於只整理工具清單，它更重視學習順序、實作證據與 production engineering。

## 專案資訊

- GitHub：https://github.com/WenyuChiou/awesome-agentic-ai-zh
- 線上文件：https://wenyuchiou.github.io/awesome-agentic-ai-zh/
- 語言：繁體中文為主，另有簡體中文與英文
- 授權：MIT
- Stars：2026-09-06 GitHub API 查得 6,670

## 相關概念

← [[AI-Agent]] · [[self-education]] · [[harness-engineering]]

## 來源

- raw/2026-09-06-WenyuChiou-awesome-agentic-ai-zh-readme.md — 官方 README 原始快照。
- https://github.com/WenyuChiou/awesome-agentic-ai-zh

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/WenyuChiou/awesome-agentic-ai-zh |
| Stars | ⭐6,670（2026-09-06） |
| License | MIT |
| 收錄日期 | 2026-09-02 |
