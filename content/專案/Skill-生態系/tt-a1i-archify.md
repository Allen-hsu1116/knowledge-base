---
title: Archify
slug: tt-a1i-archify
created: 2026-08-27
updated: 2026-08-27
stars: 17948
language: HTML
topics: [AI Skills, architecture diagram, diagram as code, software architecture, code visualization, system design, Codex, Claude Code]
---

# Archify

> ⭐17.9k · 把程式碼庫或系統描述轉成可驗證、可互動、可分享的架構、工作流、時序、資料流與生命週期圖

## 快速導航

- 🛠️ **Agent Skill 生態** → [[AI-Skills]]
- 📊 **視覺化與圖表** → [[visualization]]
- 🤖 **Coding Agent** → [[Coding-Agent-CLI]]
- 🎨 **相近圖表 Skill** → [[cathrynlavery-diagram-design]]

## 是什麼

Archify 是給 Raven、Cursor、Claude Code、Codex CLI 與 OpenCode 使用的 Agent Skill。使用者只要提供系統描述或 GitHub 程式碼庫，Agent 就能分析結構，產生一份自包含 HTML 技術地圖；同一份內容也能輸出 PNG、SVG、WebM 與 1200×630 分享卡，而不需要依賴 hosted drawing service。

它與一般「文字轉圖」工具不同的地方，是先建立 typed JSON IR，再經 schema、版面、HTML/SVG、路由與標籤間距等確定性檢查。只有候選結果通過全部 gate 才會原子式取代上一份正確輸出；失敗時則回傳具穩定 rule code、量測證據與可用修復控制的 JSON receipt，方便 Agent 做局部修補。

互動層同樣以已寫入的節點與關係為事實來源。讀者可搜尋節點、追蹤上下游 authored reach、找最短有向路徑、比較角色、播放有限導覽故事，或用 Before／Delta／After 審查架構變更；工具刻意不把圖上的關係誇張成即時拓樸、實際 runtime impact 或 merge safety。

## 核心特色

- **五種技術圖**：Architecture、Workflow、Sequence、Data Flow、Lifecycle，涵蓋系統設計與執行流程的主要溝通場景
- **Typed JSON IR**：每種 renderer-backed 模式都有 schema 與可重現來源，圖不只是一次性的圖片
- **驗證後交付**：schema、layout、HTML/SVG、route、label clearance 全部通過後才原子更新成果
- **可修復診斷**：`validate --json` 與 `deliver --json` 會指出精確 subject、量測證據、rule code 與 supported fixes
- **真實互動**：focus、上下游 reach、route probe、semantic lens 與 guided story 都只重用 authored facts
- **Last-good 預覽**：本機 loopback preview 只在新版本驗證成功後刷新，錯誤存檔不會蓋掉可用成果
- **多格式匯出**：自包含 HTML，以及 PNG、SVG、WebM、完整圖分享卡、route/reach 分享卡
- **架構差異審查**：比較兩份已驗證 snapshot，精確列出 added、removed、changed、moved、rerouted facts

## 怎麼用

```bash
# 全域安裝
npx skills add tt-a1i/archify -g

# 明確安裝到 Cursor
npx -y skills add tt-a1i/archify --skill archify --agent cursor --global --copy --yes

# 不安裝直接讓 Codex 試用
npx skills use tt-a1i/archify@archify --agent codex
```

安裝後可要求 Agent：`Use archify to map this repository's runtime architecture.`。最好把視圖限制在 8–12 個核心元件，指出主路徑、外部依賴與 trust boundaries，再透過「加入 Redis」或「突顯 rollback path」等局部指令迭代。

```bash
# 在 repo 中執行自我檢查與示範
node archify/bin/archify.mjs doctor
node archify/bin/archify.mjs demo /tmp/archify-demo

# 驗證並交付一份 workflow
node archify/bin/archify.mjs validate workflow examples/agent-tool-call.workflow.json --quality showcase --json
node archify/bin/archify.mjs deliver workflow examples/agent-tool-call.workflow.json /tmp/workflow.html --quality showcase --open --json

# 比較架構變更
node archify/bin/archify.mjs compare architecture base.json head.json architecture-delta.html --json
```

## 跟其他方案的關係

Archify 聚焦「技術事實可驗證」與互動式系統閱讀；[[cathrynlavery-diagram-design|Diagram Design]] 更重視編輯級視覺語言、品牌適配及多種商務圖表。Mermaid 適合在 Markdown 中快速維護文字圖，draw.io 適合手動自由編輯，而 Archify 適合讓 Coding Agent 從程式碼或系統描述生成可追溯的技術溝通成果。

| 方案 | 主要定位 | 與 Archify 的差異 |
|------|----------|-------------------|
| Archify | 可驗證的互動式技術地圖 | Typed IR、確定性驗證、route/reach/lens、架構差異收據 |
| [[cathrynlavery-diagram-design\|Diagram Design]] | 編輯級 Agent 圖表 Skill | 圖型更多、設計與品牌導向，技術拓樸驗證不是主軸 |
| Mermaid | 文字式 diagrams as code | 輕量且易嵌入文件，但互動審查與驗證交付較少 |
| draw.io | 通用拖拉式圖表編輯器 | 手動控制最完整，但不以 Agent 分析程式碼為核心 |

## 相關概念

← [[AI-Skills]] · [[visualization]] · [[Coding-Agent-CLI]] · [[cathrynlavery-diagram-design]] · [[frontend-design]]

## 來源

- GitHub: <https://github.com/tt-a1i/archify>
- Project page: <https://tt-a1i.github.io/archify/>
- Proof Lab: <https://tt-a1i.github.io/archify/gallery.html>
- 原始 README: `raw/2026-08-27-tt-a1i-archify.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/tt-a1i/archify |
| Stars | ⭐17,948 |
| License | MIT |
| Language | HTML |
| 收錄日期 | 2026-08-27 |
