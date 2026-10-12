---
title: "opencodex"
slug: lidge-jun-opencodex
created: 2026-10-12
updated: 2026-10-12
stars: 17270
language: "TypeScript"
topics: ["ai-gateway", "ai-tools", "anthropic", "chatgpt", "claude", "claude-code", "codex", "codex-cli", "deepseek", "developer-tools", "gemini", "grok", "kiro", "llm", "llm-proxy", "ollama", "openai", "openrouter", "proxy", "typescript"]
---

# opencodex

> ⭐17.3k · 在本地代理層轉換模型協議，讓 Codex 與其他 Coding Agent 接入不同提供者。

## 快速導航

- [[AI-Gateway]] — 對應的知識庫概念與其他實作。
- [[Coding-Agent-CLI]] — 對應的知識庫概念與其他實作。

## 是什麼

opencodex 是輕量本地代理，重點是保留 Codex、Claude Code 等工具的操作工作流，同時把請求轉成模型提供者支援的協議。README 描述其處理 Responses API、串流、工具呼叫、推理 token 及圖像等資料；它不是另一個模型，也不會自動使所有模型都具備相同能力。

專案提供 CLI、Web dashboard 與 beta 桌面介面。使用者在 dashboard 設定提供者與模型，也可管理獲授權帳號的配額與路由。部署時應區分本機代理與遠端共享 hub：後者涉及認證、TLS、網路暴露及憑證管理，不能把本機 quick start 直接當作公開服務的安全設定。

## 核心特色

### 協議轉換

在 Coding Agent 與模型提供者之間轉接串流、工具呼叫及其他內容格式。

### 多提供者設定

README 列出內建提供者及 OpenAI-compatible endpoint 接入方式。

### 本地 dashboard

預設 localhost:10100，可新增提供者、選模型與檢查帳號狀態。

### 帳號路由與親和性

支援配額路由及既有 thread 的帳號親和性，但故障與配額重評估可能觸發重新綁定。

### 不同部署入口

CLI、桌面 beta 及 Docker 部署服務不同需求，遠端場景需要額外安全配置。

## 怎麼用

以下為上游文件的安裝／取得方式，僅作操作參考；本次收錄未安裝或執行第三方專案。

```bash
npm install -g @bitkyc08/opencodex
ocx start
```

1. 上游 quick start 要求 Node 18+，並說明 Bun runtime 會隨安裝準備；先在隔離測試環境評估。
2. 開啟 http://localhost:10100 設定自己有權使用的提供者與模型，不把真實 API key 貼到文件。
3. 用一個簡單對話與工具呼叫驗證相容性，再測試串流、圖像與長對話；不要只看模型選单。

使用／驗收任務示例：

```text
先用測試專案確認簡單工具呼叫能完成一個往返，
再檢查串流中斷、錯誤訊息與帳號切換的行為。
```

**限制與注意事項：** 代理能接觸提示詞、程式碼與 API 憑證；遠端部署必須增加認證及傳輸保護。帳號池不免除供應商條款與授權要求，相容性主張需用實際任務驗證。

## 跟其他方案的關係

下表是依上游定位整理的用途比較，不是效能測試結果。

| 方案 | 定位 | 與本專案的差異 |
|---|---|---|
| 直接呼叫模型 API | 應用自行適配各家協議 | 本專案集中在本地代理層做相容性轉換。 |
| 通用企業 AI Gateway | 偏向組織路由、政策與監控 | 本專案的特色是既有 Coding Agent 的相容性與工作流。 |
| Coding Agent 本體 | 負責規劃、工具與檔案操作 | 本專案主要替換模型接入層，不取代 Agent 本身。 |

## 相關概念

← [[AI-Gateway]] · [[Coding-Agent-CLI]]

## 來源

- [GitHub：lidge-jun/opencodex](https://github.com/lidge-jun/opencodex)
- 原始資料：`raw/2026-10-12-lidge-jun-opencodex.md`（README 與完整 metadata 快照）。

Stars 與文件內容以 2026-10-12 抓取快照為準；專案描述不是本次實測背書。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [lidge-jun/opencodex](https://github.com/lidge-jun/opencodex) |
| Stars | ⭐17,270 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-10-12 |
