---
title: Anthropic Financial Services
slug: anthropics-financial-services
created: 2026-05-10
updated: 2026-05-10
stars: 18,951
language: zh-TW
topics: [AI Agent, AI Skills, MCP, 金融服務]
---

# Anthropic Financial Services

> ⭐18,951 · Anthropic 官方金融服務 Agent 和 Skills 參考庫 — 投資銀行、股權研究、私募股權、財富管理，10 個 Agent + 40+ Skill + 11 個 MCP 連接器，Claude Cowork 插件或 Managed Agent API 雙模式部署。

## 快速導航

- 🤖 **AI Agent** → [[AI-Agent]]（10 個端到端工作流 Agent）
- 🛠 **AI Skills** → [[AI-Skills]]（40+ 結構化 Skill + Slash 指令）
- 🔌 **MCP** → [[MCP]]（11 個金融數據 MCP 連接器）
- 📊 **金融 AI** → [[virattt-dexter]] · [[HKUDS-Vibe-Trading]] · [[daily-stock-analysis]]（其他 AI 金融工具）

## 是什麼

Anthropic 官方推出的金融服務參考 Agent 庫，涵蓋投資銀行、股權研究、私募股權、財富管理、基金管理和 KYC 合規。每個 Agent 都是端到端的工作流 — Pitch Agent 從可比公司分析到品牌簡報產出，Earnings Reviewer 從財報電話會到模型更新和筆記草稿，GL Reconciler 從找差異到根因分析到簽核路由。

兩種部署方式共用同一套 system prompt 和 skills：
- **Claude Cowork 插件**：直接在 Claude Cowork 中安裝
- **Claude Managed Agent API**：透過 `/v1/agents` 部署到自己的工作流引擎

所有內容都是 Markdown + YAML，無 build step，可以直接 fork、修改、PR。

## 核心特色

- **10 個命名 Agent** — 每個 Agent 對應一個完整工作流：Pitch Agent、Meeting Prep、Market Researcher、Earnings Reviewer、Model Builder、Valuation Reviewer、GL Reconciler、Month-End Closer、Statement Auditor、KYC Screener
- **40+ Skill + Slash 指令** — /comps、/dcf、/lbo、/earnings、/ic-memo、/tlh 等，每個 Skill 有對應的 Slash 指令，也可自動觸發
- **11 個 MCP 連接器** — Daloopa、Morningstar、S&P Global、FactSet、Moody's、MT Newswires、Aiera、LSEG、PitchBook、Chronograph、Egnyte，統一集中在 financial-analysis 核心插件
- **7 個垂直插件** — financial-analysis（核心）、investment-banking、equity-research、private-equity、wealth-management、fund-admin、operations
- **雙模式部署** — Cowork 插件一鍵安裝，或 Managed Agent API 無頭部署
- **可客製化** — 交換連接器、加入公司術語和流程、帶入自己的模板、調整 Agent 範圍
- **Microsoft 365 整合** — 有獨立的 admin tooling 把 Claude 部署到 Excel/PowerPoint/Word/Outlook

## Agent 一覽

| Agent | 功能 | 工作流 |
|-------|------|--------|
| Pitch Agent | 投資銀行簡報 | Comps → Precedents → LBO → 品牌簡報 |
| Meeting Prep Agent | 客戶會議準備 | 簡報包準備 |
| Market Researcher | 市場研究 | 產業概覽 → 競爭格局 → 可比公司 → 標的短名單 |
| Earnings Reviewer | 財報分析 | 財報電話會 + 文件 → 模型更新 → 筆記草稿 |
| Model Builder | 財務建模 | DCF、LBO、3-statement、Comps — 即時 Excel |
| Valuation Reviewer | 估值審核 | GP 套件 → 估值模板 → LP 報告 |
| GL Reconciler | 總帳對帳 | 找差異 → 根因分析 → 簽核路由 |
| Month-End Closer | 月底結帳 | 應計、滾動、差異說明 |
| Statement Auditor | 報表審計 | LP 報表審計 → 分發前確認 |
| KYC Screener | KYC 篩查 | 解析入職文件 → 規則引擎 → 標記缺口 |

## 怎麼用

### Claude Cowork 安裝

```bash
# 新增 marketplace
claude plugin marketplace add anthropics/claude-for-financial-services

# 核心技能 + 連接器（先裝這個）
claude plugin install financial-analysis@claude-for-financial-services

# 選擇你需要的 Agent
claude plugin install pitch-agent@claude-for-financial-services
claude plugin install gl-reconciler@claude-for-financial-services
claude plugin install market-researcher@claude-for-financial-services

# 垂直技能包
claude plugin install investment-banking@claude-for-financial-services
claude plugin install equity-research@claude-for-financial-services
```

### Managed Agent API 部署

```bash
export ANTHROPIC_API_KEY=sk-ant-...
scripts/deploy-managed-agent.sh gl-reconciler
```

### 開發與客製化

```bash
# 新增 Skill：放到 plugins/vertical-plugins/<vertical>/skills/
# 然後執行同步腳本
python3 scripts/sync-agent-skills.py

# 新增 Agent：建立 plugins/agent-plugins/<slug>/ 目錄
# 加上 agents/.md + skills/ 和對應的 managed-agent-cookbooks/<slug>/

# 推送前檢查
python3 scripts/check.py
```

## 跟其他方案的關係

| 方案 | 定位 | Agent 數 | MCP 連接器 | 部署模式 | 垂直領域 |
|------|------|---------|-----------|---------|---------|
| **Anthropic Financial Services** | 金融業 Agent 參考庫 | 10 | 11 | Cowork + Managed Agent API | 投銀/研究/PE/財富管理 |
| [[virattt-dexter]] | 自主式金融研究 | 1 | 0 | pip install | SEC 研究 |
| [[HKUDS-Vibe-Trading]] | 交易 Agent | — | 1 (MCP) | CLI + Web + Docker | A 股/港美股交易 |
| [[daily-stock-analysis]] | 每日決策儀表盤 | — | 0 | GitHub Actions | A 股分析 |

- **vs [[virattt-dexter]]**：Dexter 是單一自主研究 Agent，Anthropic Financial Services 是 10 個專業工作流 Agent + 11 個數據連接器的生態系。Dexter 做深度 SEC 研究，Anthropic FS 做完整金融工作流
- **vs [[HKUDS-Vibe-Trading]]**：Vibe-Trading 偏交易執行（回測+下單），Anthropic FS 偏分析師工作產出（模型、備忘錄、簡報）
- **vs [[daily-stock-analysis]]**：daily_stock_analysis 是每日自動化儀表盤，Anthropic FS 是可客製化的 Agent 框架

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[MCP]] · [[virattt-dexter]] · [[HKUDS-Vibe-Trading]]

## 來源

- raw/2026-05-11-anthropic-financial-services.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [anthropics/financial-services](https://github.com/anthropics/financial-services) | ⭐18,951 | Apache-2.0 | 2026-05-11 |