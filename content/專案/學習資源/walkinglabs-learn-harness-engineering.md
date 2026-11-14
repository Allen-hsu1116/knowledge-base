---
title: Learn Harness Engineering
slug: walkinglabs-learn-harness-engineering
created: 2026-05-24
updated: 2026-11-15
stars: 24803
language: zh-TW
topics: [Harness Engineering, AI Agent, Context Engineering, 課程]
---

# Learn Harness Engineering

> ⭐24,803 · 從最小 Harness、跨工作階段狀態到自動迴圈與圖式協作的專案式課程；目前課綱為 14 講、8 個專案、15 種語言。

## 快速導航

- 🧠 [[harness-engineering]] — 模型外部的執行與驗證環境
- 🤖 [[AI-Agent]] · [[Coding-Agent-CLI]] — 課程需要實際能編輯檔案、執行命令的 Agent
- 📋 [[context-engineering-basics]] — 漸進揭露與上下文預算
- 🧑‍💼 [[agent-persona]] · [[AI-Skills]] — 根指令與可重用技能

## 是什麼

這是 walkinglabs 維護的開源工程課程，不是新的模型、Agent 執行器或安全沙箱。它教你將「請模型寫程式」改造成可重啟、可檢驗、範圍明確的工作流程：把任務、進度、初始化、測試與交接資訊放進 repository，讓下一個工作階段不必只依賴聊天紀錄。

前六個專案以 Electron 個人知識庫桌面 App 為主要演練對象，涵蓋文件匯入、索引與附引用的問答；後續 P07、P08 延伸至自動迴圈與圖式工作流程。主張的重點是以代表性任務量測改善，而不是寫越多指令檔越好。

**版本基準：**本頁查核的是 2026-11-15 CST 的 `main` 固定 commit，並非發行版。GitHub `releases/latest` 回傳 404，公開 releases 清單為空；`package.json` 的 `0.1.0` 只是套件欄位，不應當成最新 GitHub Release。

## 核心特色

### 五個可實作的子系統

| 子系統 | 常見檔案／機制 | 解決的問題 |
|---|---|---|
| Instructions | `AGENTS.md`／`CLAUDE.md`、分層文件 | 告訴 Agent 先看哪裡、如何判定完成 |
| State | `feature_list.json`、`progress.md`、Git 紀錄 | 跨工作階段保存狀態與證據 |
| Verification | 測試、lint、type-check、smoke／端到端測試 | 不以「看起來沒問題」代替驗證 |
| Scope | 單一功能、相依關係、完成條件 | 防止擴張任務或同時半做多件事 |
| Session lifecycle | 初始化、乾淨狀態、交接筆記 | 讓工作可以安全續接 |

README 的新版產品剖析導言另採 instructions／tools／environment／state／feedback 用語；上表依課綱與 `harness-creator` 的實作模型整理，不把兩組分類當成完全相同的規格。

### 從 Harness 到 loop、graph

- **L01–L12／P01–P06：**比較 prompt-only 與規則優先，建立可讀工作區、跨階段延續、範圍限制、完整流程驗證與可觀測性。
- **L13／P07：**goal loop、timer loop、maker-checker 分工；觀察人工介入與自動化的隱性成本。
- **L14／P08：**以節點、邊、共享狀態與路由表達流程，再加入平行 fan-out／fan-in、rollback 與人工核准。圖式協作有協調成本，並非每個任務都需要。
- **產品設計剖析：**新增 Pi、Claude Code、Codex、DeepSeek 四組案例；這是課程作者的分析，不是各產品官方保證。
- **工具與出版：**`harness-creator` 包含建立、驗證與報告腳本；另有不需 Node.js 的 shell audit，以及 PDF 課本建置流程。

## 怎麼用

下列是已對照 README、`package.json` 與技能文件的命令範例；本次更新未安裝套件、未執行上游程式。

### 閱讀與本地預覽

可先閱讀[文件網站](https://walkinglabs.github.io/learn-harness-engineering/)與[繁體中文資源庫](https://walkinglabs.github.io/learn-harness-engineering/zh-TW/resources/)。若要本地預覽，先準備 Node.js／npm；實作專案另需 coding agent、Git 與基本除錯能力。

```bash
git clone https://github.com/walkinglabs/learn-harness-engineering.git
cd learn-harness-engineering
npm install
npm run docs:dev
# 正式建置與預覽
npm run docs:build
npm run docs:preview
# PDF 輸出至 artifacts/pdfs/
npm run pdf:build
```

這些命令建立的是 VitePress 文件／課本，不代表已跑完 Electron App 的測試。

### 為自己的專案建立最小 Harness

在課程 repository 根目錄，先審閱腳本再執行：

```bash
node skills/harness-creator/scripts/create-harness.mjs --target /path/to/project
node skills/harness-creator/scripts/validate-harness.mjs --target /path/to/project
bash tools/audit-harness.sh /path/to/project
```

建立器可用 `--agent-file CLAUDE.md`、`--package-manager npm` 或 `--commands "cmd one,cmd two"` 調整；只有確認允許覆寫時才使用 `--force`。生成後必須將佔位功能與驗證命令改成專案真正需求。

每次 session 依序讀根指令、初始化、讀進度與功能清單、選一個未完成功能、實作並驗證，最後記錄失敗／未驗證項目及交接資訊。課程的 `claude-progress.md` 是歷史命名的通用進度檔，**不是 Claude Code 專屬，也不會自動更新**；必須在 Agent 指令中要求讀寫。

### 限制與查核提醒

- 最新 syllabus 與新增章節列出 **14 講／8 專案／15 語言**，但 README 某些舊段落仍寫 13／7、六個專案或 14 語言；本頁依最新完整課綱整理，保留這項上游不一致。
- 舊版頁面把 Opus 4.5 案例寫成「6 小時、200 美元做出真正可用的遊戲」。最新 L01 已更正：能移動角色，但物理仍有問題、牆壁阻擋進度，**核心互動改善不等於 App 已完成**。README 仍保留較強的舊敘述，不宜當成嚴格的成功率或因果證明。
- `validate-harness`／benchmark 主要檢查結構與覆蓋，不證明真實任務可靠性；shell audit 回傳 0 只代表 CRITICAL 結構項目通過。仍應做前後對照、真實測試與人工審查。
- 指令檔與測試門檻不是權限隔離。允許 Agent 執行命令前，仍需審查權限、機密與覆寫範圍。

## 跟其他方案的關係

| 方案 | 定位 | 如何搭配 |
|---|---|---|
| 本課程 | 系統化教學、專案與模板 | 用來練習與量測 Harness 設計 |
| OpenAI／Anthropic Harness 文章 | 一手工程案例與設計經驗 | 閱讀原文，區分實驗結果與課程轉述 |
| Claude Code／Codex | 執行 coding 任務的工具 | 承載課程工作流程，不是課程替代品 |
| `harness-creator` | 課程內的 scaffold／audit 技能 | 加速建立結構，但不能代替需求與驗證 |

## 相關概念

← [[harness-engineering]] · [[AI-Agent]] · [[context-engineering-basics]] · [[Coding-Agent-CLI]] · [[agent-persona]] · [[AI-Skills]]

## 來源

以下官方 GitHub 內容查核於 **2026-11-15 CST（Asia/Taipei）**；固定 SHA 連結避免主分支日後變動。

- [README／完整課綱](https://github.com/walkinglabs/learn-harness-engineering/blob/a9342ff471f2c0e60be0c08b9f4a7c502df4e442/README.md)
- [本地建置命令](https://github.com/walkinglabs/learn-harness-engineering/blob/a9342ff471f2c0e60be0c08b9f4a7c502df4e442/package.json)
- [Harness Creator](https://github.com/walkinglabs/learn-harness-engineering/blob/a9342ff471f2c0e60be0c08b9f4a7c502df4e442/skills/harness-creator/SKILL.md)
- [L01 修正後案例](https://github.com/walkinglabs/learn-harness-engineering/blob/a9342ff471f2c0e60be0c08b9f4a7c502df4e442/docs/en/lectures/lecture-01-why-capable-agents-still-fail/index.md)
- [公開 Releases](https://github.com/walkinglabs/learn-harness-engineering/releases)：本次 API 查詢為空清單。
- 不可變完整 README 快照：`raw/2026-11-15-walkinglabs-learn-harness-engineering-a9342ff471f2.md`
- 舊版原始資料保留：`raw/2026-05-24-walkinglabs-learn-harness-engineering.md`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/walkinglabs/learn-harness-engineering |
| Stars | ⭐24803（查核時點） |
| License | MIT |
| 主要程式語言 | TypeScript |
| Default branch | main |
| 查核 SHA | `a9342ff471f2c0e60be0c08b9f4a7c502df4e442` |
| 最新 Release | 未發布 GitHub Release |
| 收錄日期 | 2026-05-24 |
| 更新查核 | 2026-11-15 CST |
