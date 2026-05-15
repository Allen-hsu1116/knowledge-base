---
title: gstack
date: 2026-05-15
stars: 96762
language: TypeScript
repo: garrytan/gstack
---

# gstack — 把 AI 程式助手變成虛擬工程團隊的開源工廠

gstack 是 Y Combinator 總裁 Garry Tan 的開源軟體工廠，把 Claude Code 變成一支 23 人的虛擬工程團隊——CEO、設計師、工程經理、QA、安全長、發布工程師，全用斜線指令操作，全 Markdown，全免費，MIT 授權。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [garrytan/gstack](https://github.com/garrytan/gstack) |
| Stars | ⭐96,762 |
| Language | TypeScript |
| 建立日期 | 2026-03-11 |
| 收錄日期 | 2026-05-15 |
| 授權 | MIT |

## 快速導航

- [[AI-Agent]] — gstack 是 AI Agent 工作流程的具體實踐
- [[AI-Skills]] — 23 個專家技能，每個都是一個 AI skill
- [[Coding-Agent-CLI]] — 支援 10 種 AI 編程 Agent CLI
- [[Prompt-Engineering]] — 結構化的提示工程，每個 skill 都是精心設計的 prompt
- [[agent-skills-ecosystem]] — 與 ClawHub 技能生態系整合

## 詳細簡介

Garry Tan 以自身經驗證明，單一開發者搭配正確的 AI 工具鏈，可以超越傳統團隊的產出。他在 2026 年前 60 天內發布了 3 個生產服務和 40+ 個功能，而且是在全職經營 YC 的同時完成。他的生產力從 2013 年每天 14 行邏輯程式碼提升到 2026 年的每天 11,417 行，增長了約 810 倍。

gstack 的核心理念是「流程而非工具集」。每個 skill 不是孤立的指令，而是一個衝刺循環中的環節：思考 → 規劃 → 建構 → 審查 → 測試 → 發布 → 反思。前面的 skill 輸出會成為後面 skill 的輸入，確保沒有東西遺漏。

不同於一般的 AI 輔助工具，gstack 強調「角色分工」。/office-hours 扮演 YC 辦公時間的合夥人，挑戰你的產品假設；/plan-ceo-review 像 CEO 一樣重新思考問題；/review 像資深工程師一樣抓生產環境才會出現的 bug；/qa 會開真正的瀏覽器做端到端測試。每個角色都有明確的職責邊界。

## 核心特色

### 23 個專家 Skill

gstack 提供 23 個專門的 skill，每個對應一個工程角色：

- **/office-hours** — YC 辦公時間風格的產品挑戰，6 個強迫問題重構你的產品想法
- **/plan-ceo-review** — CEO 視角重新思考問題，4 種範圍模式（擴展、選擇性擴展、維持範圍、縮減）
- **/plan-eng-review** — 工程經理鎖定架構、資料流、邊界條件和測試計畫
- **/plan-design-review** — 資深設計師對每個維度打分（0-10），說明 10 分長什麼樣，互動式調整
- **/review** — 資深工程師審查，抓 CI 不會發現的 bug，自動修復顯而易見的問題
- **/qa** — QA 主管開真瀏覽器測試，發現 bug 就修，每個修復都自動產生回歸測試
- **/cso** — 安全長執行 OWASP Top 10 + STRIDE 威脅建模，17 項誤報排除
- **/ship** — 發布工程師同步主分支、跑測試、開 PR

### 多 Agent 支援

gstack 不只支援 Claude Code，還支援 OpenAI Codex CLI、OpenCode、Cursor、Factory Droid、Slate、Kiro、Hermes 等共 10 種 AI 編程 Agent。安裝時會自動偵測你裝了哪些 Agent，也可以指定安裝目標。

### OpenClaw 整合

gstack 與 OpenClaw 深度整合，透過 ACP 協定，每個 gstack skill 在 Claude Code 中都能直接運作。還提供了 4 個專門給 OpenClaw Agent 使用的會話式 skill（office-hours、ceo-review、investigate、retro），可以從 ClawHub 直接安裝。

### 設計工具鏈

特別值得注意的是 gstack 的設計工具：/design-consultation 從零建構設計系統，/design-shotgun 生成 4-6 個 AI 模擬原型讓你比較，/design-html 把模擬原型轉成可直接上線的 HTML（30KB、零依賴、自動偵測 React/Svelte/Vue）。

## 安裝方式

```bash
# 安裝 gstack（30 秒）
git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git ~/.claude/skills/gstack
cd ~/.claude/skills/gstack && ./setup

# 團隊模式安裝
(cd ~/.claude/skills/gstack && ./setup --team) && \
~/.claude/skills/gstack/bin/gstack-team-init required && \
git add .claude/ CLAUDE.md && \
git commit -m "require gstack for AI-assisted work"

# 指定其他 AI Agent
git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git ~/gstack
cd ~/gstack && ./setup --host codex  # OpenAI Codex CLI
cd ~/gstack && ./setup --host cursor # Cursor
```

## 技術棧

- **TypeScript** — 主要語言
- **Markdown** — 所有 skill 都是 Markdown 格式的 prompt
- **Bash** — 安裝和設定腳本
- **Bun** — 執行時依賴
- **Claude Code / 其他 AI Agent CLI** — 執行環境

## 相關連結

- [GitHub Repo](https://github.com/garrytan/gstack)
- [OpenClaw 整合文件](https://github.com/garrytan/gstack/blob/main/docs/OPENCLAW.md)
- [LOC 爭議說明](https://github.com/garrytan/gstack/blob/main/docs/ON_THE_LOC_CONTROVERSY.md)