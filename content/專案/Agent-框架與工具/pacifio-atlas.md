---
title: "Atlas（pacifio）"
slug: pacifio-atlas
created: 2026-09-16
updated: 2026-09-16
stars: 4626
language: zh-TW
topics: ["AI-Agent", "Coding-Agent-CLI", "llm-knowledge-base"]
---

# Atlas（pacifio）

> ⭐4.6k · 把 Coding Agent 的 session、工具紀錄與 Git commit 連結起來的本地工作台

## 快速導航

- [[AI-Agent]] — 相關背景與其他實作。
- [[Coding-Agent-CLI]] — 相關背景與其他實作。
- [[llm-knowledge-base]] — 相關背景與其他實作。

## 是什麼

Atlas 以「Source control for coding agents」為定位，將產生程式碼的 session、prompt、工具呼叫與檔案變動，連結到 Git commit checkpoint。它試圖補足一般 commit 訊息無法保留開發脈絡的問題。

工作台可並列使用 Claude Code、Codex、原生 Atlas Agent 及 ACP registry 中的其他 Agent，並以本地語意索引共享筆記與歷史。Claude Code／Codex 透過外部 ACP 子行程運作；原生 Agent 則使用 Codex engine 的 hard fork。macOS 為支援平台，Linux／Windows 雖可從同一 Tauri 程式碼建置，官方仍標示未測試。

## 核心特色

### 可追溯 checkpoints

commit 連回產生它的 session；amend／rebase 透過 patch-id 調整，squash 有歧義時不強行配對。

### 跨 Agent 共用記憶

本地 embeddings 與 HNSW 索引整合計畫、決策、失敗與架構筆記。

### 檔案式知識庫

讀取 .atlas/knowledge/、CLAUDE.md、AGENTS.md，支援 backlinks 與知識圖。

### 整合工作區

包含 Git 圖、diff、終端、CodeMirror 編輯器、研究資料與分割視窗。

## 怎麼用

一般使用者可下載官方 .dmg。以下為 README 的原始碼建置流程，需要 Bun、stable Rust 與 Xcode Command Line Tools；Claude Code 路徑另需 claude CLI。

```bash
git clone https://github.com/pacifio/atlas
cd atlas
bun install
bun run dev:app
# 要產出安裝包時：
bun run build:app:dmg
```

1. 選擇專案與 Agent，先跑一個小任務並確認 session capture 健康狀態。
2. 提交測試變更後，檢查 checkpoint 是否能回溯到正確 session。
3. 將穩定知識存到 .atlas/knowledge/，再驗證切换 Agent 是否取得正確上下文。

### 限制與注意事項

本地儲存與檢索不代表外部模型推論不傳資料；README 亦說明匿名使用分析預設開啟。秘密清理是官方聲稱的機制，不是本次完成的安全稽核，ACP 長尾 Agent 的 QA 仍在進行。

## 跟其他方案的關係

| 方案 | 定位 | 關係與選擇 |
|---|---|---|
| Atlas | commit 與 Agent session 的來源關聯 | 重點在變更可追溯與跨 Agent 上下文。 |
| 一般 Git 用戶端 | commit、分支、diff 管理 | 不必然保留 prompt 與工具活動。 |
| 單一 Agent CLI | 一個 Agent 的終端工作流 | 可由 Atlas 作為整合入口，不代表被重新實作。 |

選擇時應檢查 session 保留、telemetry、模型資料傳送與團隊同步設定。

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[llm-knowledge-base]]

## 來源

- [GitHub](https://github.com/pacifio/atlas)
- [官方 README](https://github.com/pacifio/atlas/blob/main/README.md)
- [補充官方文件](https://docs.tryatlas.cc/)
- README 快照：`raw/2026-09-16-pacifio-atlas.md`
- Metadata 快照：`raw/2026-09-16-pacifio-atlas.metadata.json`

本頁根據收錄當日官方文件整理；安裝指令為使用說明，非本次實機安裝驗證。

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/pacifio/atlas |
| Stars | 4,626（2026-09-16 快照） |
| License | MIT |
| Language | Rust（頁面語言：繁體中文） |
| 收錄日期 | 2026-09-16 |
