---
title: addyosmani/agent-skills
created: 2026-04-28
---

# addyosmani/agent-skills

> Addy Osmani 維護的通用 Agent Skills 開源專案，提供一系列可直接安裝使用的 AI Agent Skill，涵蓋程式開發、除錯、重構、文件撰寫等領域。⭐37.9k

## 快速導航

- 🛠 **AI Skills** → [[AI-Skills]]（Agent Skills 的概念頁）
- 🌐 **Agent Skills 生態系** → [[agent-skills-ecosystem]]（Skills 生態系統觀）
- 🔌 **MCP** → [[MCP]]（Skills 與 MCP 的工具整合）

## 是什麼

addyosmani/agent-skills 是 Addy Osmani 維護的 Agent Skills 開源專案，提供一系列可直接安裝使用的 AI Agent Skill，涵蓋程式開發、除錯、重構、文件撰寫等領域。使用標準化的 SKILL.md 格式，可被任何支援 Agent Skills 的 coding agent 使用。

**作者**: Addy Osmani（Google Chrome 團隊工程師）
**GitHub**: https://github.com/addyosmani/agent-skills

## 什麼是 Agent Skills

一種標準化的 AI 能力定義格式。每個 Skill 是一個資料夾，包含 `SKILL.md` 和相關檔案。`SKILL.md` 定義觸發條件、操作流程與輸出品質標準，Agent 讀取後便知道在什麼情境下使用這個 Skill。

### Skill 結構

```
skills/
├── my-skill/
│   ├── SKILL.md       ← Skill 定義（觸發詞、流程、標準）
│   └── templates/     ← 模板和參考檔案
```

### SKILL.md 標準格式

- **name + description**：Skill 名稱和描述
- **觸發條件**：什麼情況下使用這個 Skill
- **操作流程**：步驟化的執行指引
- **品質標準**：產出的最低品質要求
- **注意事項**：限制和風險

## 收錄的 Skills（部分）

| Skill | 說明 |
|-------|------|
| code-review | 程式碼審查 |
| debugging | 除錯與錯誤恢復 |
| performance | 效能優化 |
| simplification | 重構與簡化 |
| TDD | 測試驅動開發 |
| api-design | API 設計 |
| security | 安全加固 |
| CI/CD | 自動化部署 |
| frontend-engineering | 前端 UI 工程 |

## 安裝方式

```bash
npx skills add addyosmani/agent-skills
```

安裝時可選擇特定 Skill 或全部安裝。

## 為什麼重要

1. **標準化**：統一的 Skill 格式，跨框架通用
2. **可組合**：Skill 之間可以互相搭配
3. **社群驅動**：開源貢獻，持續擴充
4. **品質導向**：每個 Skill 都有品質標準，不只是功能清單

## 與其他專案的關係

- 格式與 [[openclaw|OpenClaw]] 的 SKILL.md 相容
- 與 [[google-skills|google/skills]] 使用相同的 skills.sh 分發標準
- 是 [[agent-skills-ecosystem|Agent Skills 生態系]] 的核心專案之一

## 參考資料

- [GitHub - addyosmani/agent-skills](https://github.com/addyosmani/agent-skills)