---
title: GenLayer Project Boilerplate
slug: genlayerlabs-genlayer-project-boilerplate
created: 2026-08-19
updated: 2026-08-19
stars: 15949
language: TypeScript
topics: [llm, intelligent-contracts, smart-contracts, testing, nextjs]
---

# GenLayer Project Boilerplate

> ⭐15949 · 用可測試的範例，把網路存取、LLM 判讀與共識驗證組合成 GenLayer 智慧合約應用。

## 快速導航


- 🧠 **大語言模型** → [[LLM]]（合約使用 LLM 從網頁結果提取結構化資訊）
- 🤖 **AI Agent** → [[AI-Agent]]（提供適合 Coding Agent 迭代的 lint 與快速測試迴圈）
- 🔄 **工作流自動化** → [[workflow-automation]]（把 lint、測試、部署和前端串成完整流程）
- 🧱 **沙箱** → [[sandbox]]（Direct Mode 在隔離的記憶體環境測試外部依賴）

## 是什麼

GenLayer Project Boilerplate 是 GenLayer 智慧合約應用的官方起始專案，不只是空白模板，而是一個可運行的足球賽事投注範例。它展示合約如何讀取 BBC Sport 等外部網頁，再由 LLM 擷取比數，最後透過 GenLayer 的 equivalence principle 驗證非確定性結果。

專案同時包含 Python 智慧合約、Next.js 15 前端、TypeScript 部署腳本，以及靜態檢查、記憶體內直接測試和完整共識整合測試。這種分層設計把昂貴且較慢的鏈上驗證留到最後，讓日常開發可以用毫秒級測試快速迭代。

它最適合想探索「LLM + 智慧合約」的開發者，以及需要讓 Coding Agent 在明確驗證門檻下修改合約的團隊。範例聚焦投注遊戲，但真正可複用的是非確定性資料取得、LLM 判讀、共識驗證與前端整合的工程骨架。

## 核心特色

- **Intelligent Contract 範例** — 足球投注合約能存取外部網頁並呼叫 LLM，不侷限於傳統確定性鏈上計算。

- **Direct Mode 快速測試** — 合約在記憶體中部署，Web 與 LLM 呼叫可 mock，單次測試可在毫秒等級完成。

- **三層驗證流程** — `genvm-lint` 做靜態分析、pytest 做直接測試、`gltest` 做真實共識整合測試。

- **非確定性安全邊界** — linter 會攔截禁止匯入、錯誤儲存型別，以及 equivalence-principle 區塊外的非確定性操作。

- **完整前端骨架** — 內含 Next.js 15、TypeScript、TanStack Query 與 Radix UI，可直接接上已部署的合約。

- **CI 友善** — GitHub Actions 已配置 lint 與 direct tests，適合把品質門檻放進 pull request 流程。

- **Coding Agent 友善** — 快速、確定且可重複的回饋迴圈，讓 Claude Code、Cursor 等工具能安全反覆修改。

## 怎麼用

先準備 Python 3.12 以上環境，並安裝 GenLayer CLI：

```bash
git clone https://github.com/genlayerlabs/genlayer-project-boilerplate.git
cd genlayer-project-boilerplate
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
npm install -g genlayer
```

開發時先執行靜態檢查與快速測試：

```bash
genvm-lint check contracts/football_bets.py
pytest tests/direct/ -v
```

準備驗證真實共識時，啟動本地或使用託管的 GenLayer Studio，再部署並跑整合測試：

```bash
genlayer network
genlayer deploy
gltest tests/integration/ -v -s
```

前端需要複製 `frontend/.env.example` 為 `frontend/.env`，填入 `NEXT_PUBLIC_CONTRACT_ADDRESS`，接著執行 `npm install && npm run dev`。

## 跟其他方案的關係

它不是一般的 Agent 框架，也不是單純的 Web3 starter。核心差異是把 LLM 產生的非確定性判讀放進可被共識驗證的 intelligent contract，並為這種開發模式準備專用的測試層。

| 方案 | 核心定位 | LLM 使用方式 | 驗證與執行 |
|------|----------|--------------|------------|
| GenLayer Project Boilerplate | LLM 驅動的 intelligent contract 起始專案 | 合約內查網頁並擷取結果 | lint、Direct Mode、GenLayer 共識 |
| [[langgenius-dify\|Dify]] | LLM 應用與 Agent 工作流平台 | 節點、Agent、RAG 與模型 API | 應用層測試與工作流執行 |
| [[n8n-io-n8n\|n8n]] | 通用工作流自動化平台 | AI 節點處理流程中的判斷 | 確定性節點加外部服務執行 |
| [[volcengine-OpenSandbox\|OpenSandbox]] | Agent 程式碼與工具執行沙箱 | LLM 在隔離環境操作工具 | 沙箱隔離，不提供鏈上共識 |

與 [[AI-Agent]] 的關係主要在開發流程：它用快速測試和 lint 給 Coding Agent 清楚回饋。與 [[LLM]] 的關係則更直接，LLM 是合約處理外部非結構化資料的元件，但最終結果仍需交給 GenLayer 共識機制驗證。

## 相關概念


← [[LLM]] · [[AI-Agent]] · [[workflow-automation]] · [[sandbox]]

## 來源

- [GitHub：genlayerlabs/genlayer-project-boilerplate](https://github.com/genlayerlabs/genlayer-project-boilerplate)
- 原始 README 與 metadata：`raw/2026-08-19-genlayer-project-boilerplate.md`
- GenLayer 文件：https://docs.genlayer.com/

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/genlayerlabs/genlayer-project-boilerplate |
| Stars | ⭐15949|
| License | MIT |
| 收錄日期 | 2026-08-19 |
