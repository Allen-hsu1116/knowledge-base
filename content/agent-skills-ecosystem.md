# Agent Skills 生態系

> Agent Skills 正在從個人腳本進化成標準化的共享格式，GitHub 上已經出現多個大型 Skill 庫。

## 核心內容

### 什麼是 Agent Skills

Agent Skills 是一種標準化的 AI 能力定義格式。每個 Skill 是一個資料夾，包含 SKILL.md 和相關檔案：

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

### 主要 Skill 庫

| 專案 | 維護者 | 星數 | 領域 | 重點 |
|------|--------|------|------|------|
| addyosmani/agent-skills | Addy Osmani | ~15k | 通用開發 | 程式開發全流程 Skill |
| google/skills | Google | 4.8k | Google Cloud | GCP 服務和架構最佳實踐 |
| forrestchang/andrej-karpathy-skills | Forrest Chang | — | 知識管理 | Karpathy 知識庫方法論 Skill 版 |
| Agency Agents | 社群 | 84k | AI 人格 | 144 個 AI 員工人格模板 |

### 安裝方式

所有 Skill 庫統一使用 `skills.sh` 分發標準：
```bash
# 安裝特定 Skill 庫
npx skills add addyosmani/agent-skills
npx skills add google/skills
npx skills add forrestchang/andrej-karpathy-skills
```

安裝時可選擇特定 Skill 或全部安裝。

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

### 為什麼重要

1. **標準化**：統一的 SKILL.md 格式，跨框架通用
2. **可組合**：Skill 之間可以互相搭配
3. **社群驅動**：開源貢獻，持續擴充
4. **品質導向**：每個 Skill 都有品質標準
5. **大廠投入**：Google、知名開發者都在做，代表這個方向有未來
6. **降低門檻**：不需要從頭設計，拿模板改就好

### 與 OpenClaw 的關係

OpenClaw 原生支援 SKILL.md 格式：
- 內建 Skill 放在 `~/.openclaw/skills/`
- 用戶自定義 Skill 放在 `~/.openclaw/skills/` 或 workspace 中
- ClawHub（clawhub.ai）是 Skill 的分享和發現平台
- `npx openclaw skill install` 可以安裝社群 Skill

## 相關概念
- [[llm-knowledge-base]] — 知識庫方法論的 Skill 化版本
- [[agent-persona]] — Persona 和 Skill 的搭配
- [[ai-workflow]] — Skill 是 AI 工作流趨勢的具體實現
- [[prompt-security]] — Skill 中的安全限制定義
- [[hermes-agent]] — 相容 agentskills.io 開放標準
- [[autoresearch]] — program.md 就是超輕量 Skill
- [[project-golem]] — 自有技能系統，Dashboard 管理

## 相關影片
- [[agent-anatomy-openclaw]] — 解剖小龍蝦：Skill 是 SOP 不是程式
- [[context-engineering-basics]] — Context Engineering：Skill 按需載入
- [[ai-agent-interaction]] — AI Agent 互動中的 Skill 運用
- [[harness-engineering]] — Harness Engineering：Skill 作為引導工具

## 來源
- raw/2026-04-28-addyosmani-agent-skills.md
- raw/2026-04-28-google-skills.md
- raw/2026-04-28-karpathy-skills.md
- raw/2026-04-28-agency-agents-144-personas.md