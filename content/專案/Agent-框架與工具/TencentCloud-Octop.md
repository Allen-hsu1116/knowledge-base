---
title: "Octop"
slug: TencentCloud-Octop
created: 2026-09-18
updated: 2026-09-18
stars: 3441
language: zh-TW
topics: ["AI-Agent", "self-hosted", "rag"]
---

# Octop

> ⭐3.4k · 整合多使用者、多 Agent、IM、記憶與 RAG 的自架助理平台

## 快速導航

- [[AI-Agent]]
- [[self-hosted]]
- [[rag]]

## 是什麼

Octop 是面向個人、家庭與小團隊的自架 AI 助理。它把 Web Dashboard、CLI、IM 通道與 cron 放在同一個程序內，共用控制平面資料庫，預設以 SQLite 儲存於 ~/.octop/，也支援 PostgreSQL。

它組合 harness-agent、harness-gateway、harness-memory 與 harness-browser，透過 in-process HarnessProcessor 統一訊息處理。使用者可擁有多個 Agent，各自設定工作區、模型供應商、通道與排程。

多使用者與多 Agent 支援不等於任意自動團隊協作已完成：README 的 AgentTeams 自主協調與自我演化仍列在 roadmap。自架應用也不保證完全離線，外部模型 API、OAuth 與 IM 通道仍有外連。

## 核心特色

- **多使用者存取**：JWT 認證與 admin 角色，Agent 各自擁有工作區。

- **人格與專家庫**：16 種 MBTI 模板及自訂 system prompt。

- **記憶與 RAG**：workspace 可攜記憶與文件知識庫是不同能力。

- **跨通道**：Web、CLI、Discord、飛書等共用處理管線。

- **雙向 ACP**：既能提供 Agent 給 IDE，也能委派外部 Coding Agent。

- **權限機制**：工具核准、shell guardrails 與 PII redaction；不等於已經安全稽核。

## 怎麼用

### 安裝與啟動

以下採 README 的 PyPI 替代方案，使用 Python 3.12+ 的獨立 venv，避免修改系統 Python。

```bash
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install octop
octop init
octop run
```

### 使用流程

1. init 建立資料庫、JWT secret 與初始 admin；不要把這些資料納入公開版本控制。
2. 設定模型供應商、Agent 與需要的通道，再測試最小對話任務。
3. RAG、browser extras、OAuth 與外部 ACP runner 按需求配置並核對權限。

### 限制與注意

- 瀏覽器、遠端桌面與 shell 具有高權限，先在隔離測試環境評估。
- roadmap 同時仍列 native clients，而 Quick Start 已列 desktop artifacts；成熟度以實際 release 為準。
- 本次未部署 Octop，也未驗證多人隔離、吞吐量或自動恢復的效果。

## 跟其他方案的關係

以下是依功能分層的編輯比較，不是實测效能排名。

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| Octop | 完整多通道自架助理 | 整合使用者、Agent、記憶與排程 |
| 單獨 Agent runtime | 模型與工具執行迴圈 | Octop 在 runtime 外增加平台能力 |
| 單獨 RAG 服務 | 文件索引與檢索 | Octop 將檢索接入助理工作流 |

## 相關概念

← [[AI-Agent]] · [[self-hosted]] · [[rag]]

## 來源

- [GitHub](https://github.com/TencentCloud/Octop)
- [官方 README](https://github.com/TencentCloud/Octop/blob/main/README.md)
- 原始快照：`raw/2026-09-18-TencentCloud-Octop.md`


---

| 欄位 | 內容 |
|---|---|
| GitHub | [TencentCloud/Octop](https://github.com/TencentCloud/Octop) |
| Stars | 3,441（2026-09-18 擷取） |
| License | MIT |
| Language | Python（原始碼）；zh-TW（本頁） |
| 收錄日期 | 2026-09-18 |
