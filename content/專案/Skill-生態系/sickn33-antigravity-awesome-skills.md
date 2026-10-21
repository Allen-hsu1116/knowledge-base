---
title: AAS Core — Agentic Awesome Skills
slug: sickn33-antigravity-awesome-skills
created: 2026-05-04
updated: 2026-10-21
stars: 48093
language: zh-TW
topics: [AI Skills, AI Agent, MCP]
---

# AAS Core — Agentic Awesome Skills

> ⭐48,093 · 結合可安裝技能庫、本地 MCP 與可審查選擇紀錄的 Agent 技能控制平面。

## 快速導航

- 🛠 [[AI-Skills]] — 可重用的 SKILL.md 操作手冊。
- 🤖 [[AI-Agent]] — 由宿主 Agent 判斷任務適合哪些技能。
- 🔌 [[MCP]] — 本地目錄查詢與技能檢視介面。

## 是什麼

Agentic Awesome Skills 是原 antigravity-awesome-skills 更名後的同一個 GitHub 專案。2026-10-21 查詢新舊 URL 均回傳 repository ID `1134426800`，因此沿用既有知識頁，不把改名誤算成新專案。收錄日期沿用索引的 2026-05-04。

目前 README 描述一個含 2,724+ 個 SKILL.md 操作手冊的技能庫，搭配 AAS Core 協助 Codex 或 Claude 搜尋完整本地目錄、閱讀技能檔案、記錄選擇並產生可供審閱的計畫。技能選擇由 Agent 負責；Core 不會替候選排名或推薦。

它是獨立社群專案，不是 Google 官方產品，也不是取代宿主的模型或 Agent runtime。README 標示發布版本為 19.12.1；main 的 Unreleased 功能不應視為已發布套件能力。支援路徑以目錄檢視、選擇、結構驗證及計畫預覽為主，apply 與 recovery 仍是實驗性功能。

## 核心特色

- **完整目錄查詢**：每個現有技能都可被搜尋、閱讀與選入組合。
- **Agent-owned selection**：由 Agent 根據專案需求挑選精確 ID，而非由 Core 自動推薦。
- **可審閱的 manifest**：`aas-stack.json` 記錄技能集合，可另保存選擇證據。
- **結構驗證與計畫預覽**：`compose_stack` 在記憶體驗證，CLI 可驗證 manifest 並輸出不可變預覽。
- **分離安裝路徑**：direct installer 可選取少量技能，先 dry-run；它不會消費或套用 Core plan。
- **跨宿主分發**：Codex、Claude 有 Core 設定指南，其他工具可使用對應安裝目標或 plugin。
- **瀏覽器 Workbench**：在瀏覽器記憶體檢視 stack 與 plan，不直接存取本機檔案系統。

## 怎麼用

### 先預覽少量技能的安裝

以下是 README 的固定版本安裝預覽，僅供操作參考；本次知識庫收錄未安裝任何技能。

```bash
npm exec --yes --ignore-scripts --package=agentic-awesome-skills@19.12.1 -- \
  agentic-awesome-skills --release 19.12.1 --path .agents/skills \
  --skills brainstorming,systematic-debugging --dry-run
```

先閱讀技能內容、檢查來源授權和目標路徑，備份既有技能，再決定是否移除 `--dry-run` 執行安裝。
多 profile 環境需明確指定正確的工作目錄，避免寫到另一個 Agent 的全域技能庫。

### 使用 Core 的審查流程

1. 依官方 Codex／Claude 指南設定本地 MCP；設定預覽與實際核准是不同步驟。
2. 讓 Agent 先檢視專案與技能完整內容，選出精確技能 ID。
3. 保存 manifest 與必要選擇證據。
4. 使用 `aas stack validate` 檢查 manifest，再由 `aas stack plan` 輸出預覽。
5. 要交給 direct installer 時，依官方 `aas stack install-preview` 說明產生 dry-run 指令。

### 能力與風險邊界

- manifest 的技術上限為 128 個技能；不表示應一次載入這麼多技能。
- 結構及身分驗證不保證語義適合、相容性、設定正確或操作安全。
- apply／recovery 需要實驗性 opt-in，不在受支援的預覽路徑內。
- 技能可能引用外部工具、服務或敏感操作，仍需宿主權限與人工核准。

## 跟其他方案的關係

| 方案 | 角色 | 與 AAS 的差異或互補 |
|------|------|-------------------|
| AAS Core | 本地技能目錄、精確選擇紀錄與計畫預覽 | 將發現、選擇、驗證與安裝拆開 |
| [[VoltAgent-awesome-agent-skills\|Awesome Agent Skills]] | 官方與社群技能策展 | 偏來源探索；AAS 另提供本地控制平面 |
| [[obra-superpowers\|Superpowers]] | 開發工作流程與方法論技能 | 方法內容與技能管理工具屬不同層次 |
| [[openai-codex\|Codex CLI]] | 實際執行任務的 Coding Agent | 可作 AAS 的宿主，不被 AAS 取代 |

比較是功能定位整理，不是效能、安全性或技能品質的實測排名。

## 相關概念

← [[AI-Skills]] · [[AI-Agent]] · [[MCP]]

## 來源

- [GitHub](https://github.com/sickn33/agentic-awesome-skills)
- [版本化 Core 指南](https://github.com/sickn33/agentic-awesome-skills/blob/v19.12.1/docs/users/aas-core.md) — README 指向的操作參考。
- 完整 README 快照：`raw/2026-10-21-sickn33-agentic-awesome-skills.md`
- GitHub metadata：`raw/2026-10-21-sickn33-agentic-awesome-skills.metadata.json`
- 舊版歷史資料：`raw/sickn33-antigravity-awesome-skills.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/sickn33/agentic-awesome-skills |
| Stars | 48,093（2026-10-21 查詢） |
| License | 原創程式與工具 MIT；原創文件及非程式文字 CC BY 4.0，上游內容另依原授權 |
| Language | Python（GitHub 主要語言）；本頁繁體中文 |
| 收錄日期 | 2026-05-04；2026-10-21 更新與更名去重 |
| README 發布版本 | 19.12.1；main 未發布功能需另外核對 |
