---
title: Scientific Agent Skills
date: 2026-05-14
github: https://github.com/K-Dense-AI/scientific-agent-skills
stars: 21122
language: Python
created: 2025-10-19
added: 2026-05-14
---

# Scientific Agent Skills

> A set of ready to use Agent Skills for research, science, engineering, analysis, finance and writing.

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) |
| Stars | ⭐ 21k+ |
| Language | Python |
| 建立日期 | 2025-10-19 |
| 收錄日期 | 2026-05-14 |
| 授權 | MIT |

## 快速導航

- [[AI-Agent]] — Scientific Agent Skills 讓 AI agent 具備科學研究能力
- [[AI-Skills]] — 基於開放 Agent Skills 標準的技能集合
- [[Coding-Agent-CLI]] — 支援 Cursor、Claude Code、Codex、Gemini CLI 等平台
- [[agent-skills-ecosystem]] — 屬於 Agent Skills 生態系的重要一員

## 詳細簡介

Scientific Agent Skills（原名 Claude Scientific Skills）是由 K-Dense 團隊開發的一套全面的科學研究技能集合，包含 135 個即插即用的 skill，讓任何支援 Agent Skills 標準的 AI agent 都能執行複雜的多步驟科學工作流程。

這套技能涵蓋了從生物資訊學到藥物發現、從蛋白質體學到臨床研究、從醫學影像到材料科學等幾乎所有主流科學領域。它不只是讓 agent 能「查資料」，而是能執行完整的端到端研究流程——例如從 ChEMBL 查詢 EGFR 抑制劑、用 RDKit 分析結構-活性關係、用 DiffDock 進行分子對接、再到 PubMed 搜尋抗藥性機制，全部在一個 prompt 中完成。

每個 skill 都包含完整的 SKILL.md 文件、實用程式碼範例、使用案例和最佳實踐。agent 不需要額外配置就能自動發現並使用相關的 skill。

## 核心特色

### 135 個科學研究技能

涵蓋 16 大領域：生物資訊與基因體學、化學資訊與藥物發現、蛋白質體學、臨床研究與精準醫療、醫療 AI、醫學影像、機器學習、材料科學、物理與天文、工程與模擬、資料分析與視覺化、地理空間科學、實驗室自動化、科學傳播、多體學整合、蛋白質工程等。

### 100+ 科學與金融資料庫整合

透過統一的 database-lookup skill 存取 78+ 公開資料庫（PubChem、ChEMBL、UniProt、COSMIC、ClinicalTrials.gov、FRED 等），加上專用的 DepMap、Imaging Data Commons、PrimeKG 等資料庫 skill。BioServices（~40 個生物資訊服務）、BioPython（38 個 NCBI 子資料庫）、gget（20+ 基因體學資料庫）等套件更進一步擴展覆蓋。

### 70+ 優化的 Python 套件技能

為 RDKit、Scanpy、PyTorch Lightning、scikit-learn、PennyLane、Qiskit、OpenMM、scVelo、TimesFM 等主流科學套件提供精心策劃的文件、範例和最佳實踐。agent 可以使用任何 Python 套件，但這些 skill 讓它在這些特定套件上表現更可靠。

### 多平台 Agent 支援

遵循開放的 Agent Skills 標準（agentskills.io），支援 Cursor、Claude Code、Codex、Gemini CLI 等。安裝只需一行指令：`npx skills add K-Dense-AI/scientific-agent-skills`，也可透過 GitHub CLI 的 `gh skill` 安裝。

### K-Dense BYOK 桌面應用

配套的免費開源桌面應用 K-Dense BYOK，讓你在本地端運行一個 AI 共同科學家，支援 40+ 模型、100+ 科學資料庫、135 個技能，資料留在本地，需要時可透過 Modal 擴展到雲端運算。

## 安裝方式

**npx 安裝（所有平台）：**
```bash
npx skills add K-Dense-AI/scientific-agent-skills
```

**GitHub CLI 安裝：**
```bash
gh skill install K-Dense-AI/scientific-agent-skills
# 或安裝特定 skill
gh skill install K-Dense-AI/scientific-agent-skills scanpy
```

**版本釘選：**
```bash
gh skill install K-Dense-AI/scientific-agent-skills --pin v1.0.0
```

**前置需求：** Python 3.11+（推薦 3.12+）、uv 套件管理器

## 技術棧

- **語言**：Python（skill 定義 + 科學套件）
- **標準**：Agent Skills 開放標準（agentskills.io）
- **支援平台**：Cursor, Claude Code, Codex, Gemini CLI, 等
- **資料庫**：78+ 公開資料庫統一存取
- **核心套件**：RDKit, Scanpy, PyTorch Lightning, scikit-learn, BioPython 等

## 授權

MIT License

## 相關連結

- [GitHub](https://github.com/K-Dense-AI/scientific-agent-skills)
- [K-Dense BYOK 桌面應用](https://github.com/K-Dense-AI/k-dense-byok)
- [Agent Skills 標準](https://agentskills.io/)
- [入門影片](https://youtu.be/ZxbnDaD_FVg)
- [K-Dense 官網](https://k-dense.ai)