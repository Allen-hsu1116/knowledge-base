---
title: Orkas
slug: Orkas-AI-Orkas
created: '2026-11-01'
updated: '2026-11-01'
stars: 6217
language: zh-TW
topics:
- AI-Agent
- workflow-automation
---

# Orkas

> ⭐6.2k · 由 Commander 協調專家與外部 CLI Agent 的 local-first 桌面 AI 團隊。

## 快速導航

- [[AI-Agent]] — 相關方法與背景。
- [[workflow-automation]] — 相關方法與背景。

## 是什麼

Orkas 是以桌面應用呈現的多 Agent 工作空間。Commander 可自行處理一般任務，或把目標拆成待辦並委派給內建的 16 個專家 Agent，以及既有的 Claude Code、Codex、OpenCode、OpenClaw、Hermes-Agent 本地 CLI。它偏向可交付成果與持續專案，而非單輪聊天或供程式嵌入的函式庫。

專案保存目標、規則、記憶與檔案；To-dos、Auto-advance 與排程支援跨日工作。Local-first 指資料預設落在本機，不代表模型請求不出網路：自備 API key 直接呼叫供應商，內建 Orkas 模型經其託管服務，封裝版另有選用雲端同步。

## 核心特色

- **三種任務路由**：dispatch_to 回傳結果、hand_off_to 轉交剩餘工作、run_worker 執行匿名隔離子任務。

- **專案與排程**：保存目標／記憶／檔案，並支援逐項推進與每時、每日、每週、每月自動化。

- **外部 CLI 協作**：把既有 Coding／個人 Agent 作為本地子程序納入團隊。

- **分域記憶與 Library**：長期筆記與對話歷史、文件索引分離；Library 使用本地 embedding 與 SQLite 向量索引。

- **執行限制與恢復**：並行鎖、工具回合預算、checkpoint、重複呼叫檢查與 idle watchdog。

- **閒置反思**：依新活動檢視能力評估、方法與 skills，並非宣稱每次都一定自我改進。

## 怎麼用

### 環境與安裝

原始碼啟動需 Node 22.12+；原生套件 fallback 可能需要 Python 3 及 C/C++ 工具鏈。macOS／Windows 可用封裝版，Linux 需 glibc 2.34+，不支援 musl／Alpine。

```bash
git clone https://github.com/Orkas-AI/Orkas.git
cd Orkas
./run.sh  # macOS / Linux；Windows 使用 run.cmd
```

### 建議操作流程

1. 首次啟動會安裝鎖定依賴並準備 Python、uv、Node、embedding、FFmpeg 及語音等資源。
2. 在設定中加入模型供應商憑證或本地相容端點；外部 CLI Agent 保留自己的模型設定。
3. 建立 project，先給小型任務驗證交付與核准流程，再考慮開啟 Auto-advance。

### 限制與注意

- 本次僅核對 README 與 metadata，未在主機安裝或執行 Orkas。
- 共享專案、雲端同步與 Web App 發布目前僅封裝版提供，不能視為開源 build 已有功能。
- 電腦休眠或程式關閉時不持續執行；README 表示 v1.9 起可在 12 小時內補最近一次錯過的排程。
- 預設寄送、發文、刪除前詢問不等同完整安全沙箱；敏感工具與 connector 仍需最小權限。

## 跟其他方案的關係

以下按定位比較，不代表本次已做效能測試或功能驗收。

| 方案 | 定位 | 關係與邊界 |
|---|---|---|
| Orkas | 桌面 Commander＋專家團隊 | 整合交付、專案、待辦與排程 |
| Claude Code／Codex | Coding Agent | 可被 Orkas 當成外部 CLI 成員調度 |
| CrewAI／LangChain | 程式碼優先框架 | Orkas 主打桌面操作，非嵌入式框架替代品 |

## 相關概念

← [[AI-Agent]] · [[workflow-automation]]

## 來源

- [GitHub](https://github.com/Orkas-AI/Orkas)
- [README](https://github.com/Orkas-AI/Orkas/blob/main/README.md)
- [LICENSE](https://github.com/Orkas-AI/Orkas/blob/main/LICENSE)
- 原始 README 快照：`raw/2026-11-01-Orkas-AI-Orkas.md`
- GitHub metadata 快照：`outputs/trending-2026-11-01/Orkas-AI-Orkas.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Orkas-AI/Orkas |
| Stars | 6,217（2026-11-01 擷取） |
| License | MIT |
| Language | JavaScript（儲存庫主要語言） |
| 收錄日期 | 2026-11-01 |
