# Agent Skills 生態系

> Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。從「貼在聊天視窗的提示詞」到「可安裝、可搜尋、可重用的技能庫」。

## 快速導航

- ⚡ [[AI-Skills]] · [[AI-Agent]] · [[MCP]] · [[agent-persona]]
- 🛠️ **Skills 格式** → [[AI-Skills]]（SKILL.md 是 Skill 的標準定義格式）
- 🤖 **AI Agent** → [[AI-Agent]]（Skills 是 Agent 的操作手冊）
- 🔌 **MCP** → [[MCP]]（Skills 定義「做什麼」，MCP 定義「怎麼連」）
- 🦞 **OpenClaw** → [[openclaw]]（OpenClaw 原生支援 SKILL.md 格式）

## 是什麼

Agent Skills 生態系是指圍繞 SKILL.md 標準格式形成的技能共享和分發體系。每個 Skill 是一個結構化的操作指令集，包含觸發條件、執行步驟、約束和輸出規範，讓 AI Agent 能以明確的上下文和品質標準來執行重複性任務。

這個生態系正在快速成長：Google、知名開發者（Addy Osmani）都在投入 Skill 標準化，GitHub 上已經出現 1,443+ 可安裝的 Skills，涵蓋程式開發全流程。

### SKILL.md 格式

每個 Skill 是一個資料夾，包含 SKILL.md 和相關檔案：

```
skills/
├── my-skill/
│   ├── SKILL.md       ← Skill 定義（觸發詞、流程、標準）
│   └── templates/     ← 模板和參考檔案
```

SKILL.md 定義：
- **name + description**：Skill 名稱和描述
- **觸發條件**：什麼情況下使用這個 Skill
- **操作流程**：步驟化的執行指引
- **品質標準**：產出的最低品質要求
- **注意事項**：限制和風險

### 為什麼 Skills 生態系重要

1. **標準化**：統一的 SKILL.md 格式，跨框架通用
2. **可組合**：Skill 之間可以互相搭配
3. **社群驅動**：開源貢獻，持續擴充
4. **品質導向**：每個 Skill 都有品質標準
5. **大廠投入**：Google、知名開發者都在做，代表這個方向有未來
6. **降低門檻**：不需要從頭設計，拿模板改就好

## 核心特色

- **統一格式 SKILL.md**：四個部分（觸發條件、指令、約束、輸出規範）讓 Skill 可跨 Agent 平台使用。從零散提示詞進化到結構化、版本控制、Git 管理的可重用技能
- **跨平台安裝**：所有 Skill 庫統一使用 `skills.sh` 分發標準，一行指令安裝（`npx skills add addyosmani/agent-skills`），支援 Claude Code、Cursor、Gemini CLI、Codex CLI、OpenClaw 等多個平台
- **技能層級分明**：Bundle（一組相關技能的集合）→ Workflow（多步驟的技能執行流程）→ Plugin（針對特定平台的安裝包格式），三個層級滿足不同複雜度的需求
- **Skill-driven Autonomous Research**：Karpathy 的 AutoResearch 專案將 program.md 視為超輕量 Skill，人類寫 Markdown 研究策略，Agent 在策略內自主修改 train.py 跑實驗，是 Skill-driven 的最早實例
- **Meta Harness 自動更新**：Opus 幫 Haiku 設計 agents.md（一種 Natural Language Harness），分數從 13.5 提升到 85，代表 Skill 可以用來自動改善 Agent 的行為

## 怎麼用

### 安裝 Skill

```bash
# 安裝特定 Skill 庫
npx skills add addyosmani/agent-skills
npx skills add google/skills
npx skills add forrestchang/andrej-karpathy-skills

# 安裝時可選擇特定 Skill 或全部安裝
```

### 各平台使用方式

| 平台 | 安裝方式 | 使用方式 |
|------|----------|----------|
| Claude Code | `--claude` | `>> /skill-name` |
| Cursor | `--cursor` | `@skill-name` |
| Gemini CLI | `--gemini` | `Use skill-name` |
| Codex CLI | `--codex` | `Use skill-name` |
| OpenClaw | 原生支援 | 自動觸發 |

### OpenClaw 原生支援

OpenClaw 原生支援 SKILL.md 格式：
- 內建 Skill 放在 `~/.openclaw/skills/`
- 用戶自定義 Skill 放在 `~/.openclaw/skills/` 或 workspace 中
- ClawHub（clawhub.ai）是 Skill 的分享和發現平台
- `npx openclaw skill install` 可以安裝社群 Skill

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Skills]] | 格式定義 | SKILL.md 是 Skill 的標準格式定義 |
| [[AI-Agent]] | 消費者 | Agent 透過 Skills 獲得結構化操作能力 |
| [[MCP]] | 工具連接 | Skills 定義「做什麼」，MCP 定義「怎麼連」 |
| [[agent-persona]] | 人格搭配 | Persona 定義「是誰」，Skills 定義「能做什麼」 |
| [[harness-engineering]] | 架構層 | Skills 是 Harness 中的行為控制策略 |
| [[prompt-security]] | 安全邊界 | Skill 中可以包含安全限制定義 |
| [[hermes-agent]] | 相容標準 | 相容 agentskills.io 開放標準 |

## 主要 Skill 庫

| 專案 | 維護者 | 星數 | 領域 | 重點 |
|------|--------|------|------|------|
| addyosmani/agent-skills | Addy Osmani | ~15k | 通用開發 | 程式開發全流程 Skill |
| google/skills | Google | 4.8k | Google Cloud | GCP 服務和架構最佳實踐 |
| forrestchang/andrej-karpathy-skills | Forrest Chang | — | 知識管理 | Karpathy 知識庫方法論 Skill 版 |
| Agency Agents | 社群 | 84k | AI 人格 | 144 個 AI 員工人格模板 |

### addyosmani/agent-skills 詳解

Google Chrome 團隊工程師 Addy Osmani 維護，提供開發全流程的 Skill：
- 程式碼審查（code-review-and-quality）
- 除錯與錯誤恢復（debugging-and-error-recovery）
- 效能優化（performance-optimization）
- 重構與簡化（code-simplification）
- 測試驅動開發（test-driven-development）
- API 設計（api-and-interface-design）
- 安全加固（security-and-hardening）
- CI/CD 自動化（ci-cd-and-automation）
- 前端 UI 工程（frontend-ui-engineering）
- 規格驅動開發（spec-driven-development）
- 漸進式實作（incremental-implementation）

### google/skills 詳解

Google 官方出品，專注 Google Cloud：

**基礎技能**
- Gemini API in Agent Platform
- AlloyDB / BigQuery / Cloud Run / Cloud SQL / Firebase / GKE Basics

**Recipe（食譜）**
- GCP 入門、認證、網路可觀測性

**Well-Architected Framework**
- Security / Reliability / Cost Optimization

### AutoResearch 的 program.md

Karpathy 的 AutoResearch 專案將 program.md 視為超輕量 Skill：人類寫 Markdown 研究策略，Agent 在策略內自主修改 train.py 跑實驗。這是 Skill-driven autonomous research 的最早實例。👉 詳見 [[autoresearch]]

## 相關專案

- [[affaan-m-everything-claude-code]] — 140K+ stars，含 Skills、Instincts、Security
- [[sickn33-antigravity-awesome-skills]] — 1,443+ SKILL.md 技能庫
- [[googleworkspace-cli]] — 40+ AI agent skills 內建
- [[mattpocock-skills]] — 工程師實戰 Skills，強調對齊、術語、回饋、架構
- [[Kappaemme-git-codex-complexity-optimizer]] — 演算法複雜度分析和優化報告 Skill

## 相關概念

← [[AI-Skills]] · [[AI-Agent]] · [[agent-persona]] · [[MCP]] · [[Prompt-Engineering]] · [[openclaw]] · [[microsoft-SkillOpt|SkillOpt]] · [[nexu-io-open-design]]

## 相關影片

- [[agent-anatomy-openclaw]] — 解剖小龍蝦：Skill 是 SOP 不是程式
- [[context-engineering-basics]] — Context Engineering：Skill 按需載入
- [[ai-agent-interaction]] — AI Agent 互動中的 Skill 運用
- [[harness-engineering]] — Harness Engineering：Skill 作為引導工具

## 來源

- [addyosmani/agent-skills](../raw/2026-04-28-addyosmani-agent-skills.md)
- [google/skills](../raw/2026-04-28-google-skills.md)
- [Karpathy Skills](../raw/2026-04-28-karpathy-skills.md)
- [Agency Agents 144 Personas](../raw/2026-04-28-agency-agents-144-personas.md)

---

_此頁由 daily-llm-trending 自動維護_