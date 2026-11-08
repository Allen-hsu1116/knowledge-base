---
title: billion-context
slug: ranxianglei-billion-context
created: '2026-11-08'
updated: '2026-11-08'
stars: 4615
language: TypeScript
topics:
- context-engineering-basics
- Token-Optimization
- AI-Agent
github_topics:
- dsh-plugin
---

# billion-context

> ⭐4.6k · 以代理層和宿主整合進行增量、可還原的上下文壓縮，協助長時間 Coding Agent 會話。

## 快速導航

[[context-engineering-basics]] · [[Token-Optimization]] · [[AI-Agent]]

## 是什麼

billion-context 位於 Agent 與模型 API 之間，使用 acp-kernel 將累積對話折疊成分層摘要，並重寫 Anthropic／OpenAI 形式的請求與串流。README 描述由模型決定壓縮時機與範圍，而不是單純把最舊訊息截斷；目標是在有限 context window 中延續長任務。

它提供 native plugin、launcher 和 base URL 代理等接入方式，各宿主能力不同。專案名稱中的 billion 指長期會話累積處理量，不是讓模型在單次呼叫真正看到十億 tokens。README 的節省比例、cache 命中率和 benchmark 數字屬專案公布結果，本次沒有獨立重現。

## 核心特色

- **增量壓縮**：以小段訊息範圍建立摘要，嘗試保留可用的 prefix cache。

- **四種上下文工具**：compress、decompress、search_context 與 acp_status，提供折疊、還原、搜尋和狀態查詢。

- **可還原設計**：需要精確細節時回復已壓縮範圍；摘要本身仍可能遺失語意。

- **多種接入路徑**：依客戶端選擇原生插件、launcher 或代理 URL，不假定所有宿主功能一致。

- **長會話管理**：把壓縮執行放在代理／整合層，讓宿主工作流程與模型接入分開。

## 怎麼用

### 安裝

以下是官方文件的使用示例，本次僅收錄文件，未執行候選專案。

```bash
# 官方使用者層級安裝示例；僅供閱讀，本次未執行
npm install -g billion-context --prefix=~/.local
```

### 基本操作

```bash
# 前提：Codex 已安裝，且已審核代理的資料與權限範圍
~/.local/bin/bili codex
```

- README 將 bili codex 描述為完整 launcher；bili plugin install codex 只是 MCP-shell companion，並不自行替 Codex 模型流量接上代理。

- native 與舊版 standalone extension 不應同時啟用，否則可能重複壓縮；實際安裝前先備份並核對宿主設定。

- 代理會處理對話與模型請求；涉及 cert-MITM 的接入模式必須另外審核憑證信任、API 憑證與私密資料暴露。

## 跟其他方案的關係

以下是依功能定位整理的比較，不是效能排名。

| 方案 | 主要用途 | 關係與取捨 |
| --- | --- | --- |
| billion-context | 代理／宿主整合層的增量摘要及還原 | 壓縮歷史以延續會話，不擴大模型原生視窗 |
| 宿主內建 compaction | 由宿主原生管理歷史摘要 | 避免雙重壓縮，啟用外掛前先核對接入方式 |
| RAG | 從外部資料檢索相關片段 | 補充所需資訊，與歷史壓縮解決的問題不同 |

### 限制與查證範圍

- LICENSE 除 MIT 本文外另要求終端產品顯著署名及連結；GitHub API 回傳 NOASSERTION，不能簡稱純 MIT。

- 需要精確保留的需求、權限和驗收條件應另外留有原始紀錄，不依賴摘要完整重現。

- 本頁未實際安裝插件、修改 Hermes 設定或測試任一宿主相容性。

← [[context-engineering-basics]] · [[Token-Optimization]] · [[AI-Agent]]

## 來源

- [GitHub](https://github.com/ranxianglei/billion-context)
- [README](https://github.com/ranxianglei/billion-context/blob/master/README.md)
- [官方資料 1](https://github.com/ranxianglei/billion-context/blob/master/LICENSE)
- [官方資料 2](https://github.com/ranxianglei/billion-context/blob/master/CLIENTS.md)
- 原始快照：`raw/2026-11-08-ranxianglei-billion-context.md`
- Metadata：`raw/2026-11-08-ranxianglei-billion-context.metadata.json`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [ranxianglei/billion-context](https://github.com/ranxianglei/billion-context) |
| Stars | 4,615（2026-11-08 快照） |
| License | MIT 條文＋產品表面署名附加條款（非純 MIT） |
| Language | TypeScript |
| 收錄日期 | 2026-11-08 |
