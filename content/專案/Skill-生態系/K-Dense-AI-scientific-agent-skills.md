---
title: Scientific Agent Skills
created: 2026-05-14
---

# Scientific Agent Skills

> 135 個即插即用的 Agent Skill，覆蓋生物資訊、藥物發現、蛋白質體學、臨床研究、材料科學等 16 大科學領域。⭐21K+

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（Scientific Agent Skills 讓 AI agent 具備科學研究能力）
- 🛠 **Agent Skills** → [[AI-Skills]]（基於開放 Agent Skills 標準的技能集合）
- 💻 **Coding Agent** → [[Coding-Agent-CLI]]（支援 Cursor、Claude Code、Codex、Gemini CLI 等平台）
- 🌐 **技能生態系** → [[agent-skills-ecosystem]]（屬於 Agent Skills 生態系的重要一員）

## 是什麼

Scientific Agent Skills（原名 Claude Scientific Skills）是由 K-Dense 團隊開發的一套全面的科學研究技能集合，包含 135 個即插即用的 skill，讓任何支援 Agent Skills 標準的 AI agent 都能執行複雜的多步驟科學工作流程。

涵蓋從生物資訊學到藥物發現、從蛋白質體學到臨床研究、從醫學影像到材料科學等幾乎所有主流科學領域。不只是讓 agent 能「查資料」，而是能執行完整的端到端研究流程。

## 核心特色

- **135 個科學研究技能**：涵蓋 16 大領域，每個 skill 都包含完整的 SKILL.md 文件、實用程式碼範例、使用案例和最佳實踐
- **100+ 科學與金融資料庫整合**：透過統一的 database-lookup skill 存取 78+ 公開資料庫，加上專用資料庫 skill
- **70+ 優化的 Python 套件技能**：為 RDKit、Scanpy、PyTorch Lightning、scikit-learn、PennyLane、Qiskit 等主流科學套件提供精心策劃的文件和範例
- **多平台 Agent 支援**：遵循開放的 Agent Skills 標準，支援 Cursor、Claude Code、Codex、Gemini CLI 等
- **K-Dense BYOK 桌面應用**：免費開源桌面應用，支援 40+ 模型、100+ 科學資料庫、135 個技能，資料留在本地

## 怎麼用

```bash
# npx 安裝
npx skills add K-Dense-AI/scientific-agent-skills

# GitHub CLI 安裝
gh skill install K-Dense-AI/scientific-agent-skills

# 安裝特定 skill
gh skill install K-Dense-AI/scientific-agent-skills scanpy
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[AI-Skills]] | 開放 Agent Skills 標準 | Scientific Agent Skills 基於此標準 |
| [[agent-skills-ecosystem]] | Agent Skills 生態系 | 屬於生態系的重要一員 |
| [[Coding-Agent-CLI]] | Coding Agent 平台 | 支援多種 coding agent 平台安裝 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[agent-skills-ecosystem]]

## 來源

- raw/2026-05-14-K-Dense-AI-scientific-agent-skills.md

---

- **GitHub**: https://github.com/K-Dense-AI/scientific-agent-skills
- **Stars**: ⭐21,122
- **License**: MIT
- **收錄日期**: 2026-05-14