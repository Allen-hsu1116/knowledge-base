---



title: Spec Kit
slug: github-spec-kit
created: 2026-05-14
stars: '⭐98'



updated: 2026-05-14
language: zh-TW
topics: []
---

# Spec Kit

> GitHub 官方推出的規格驅動開發工具組。先規格、再實作，避免 vibe coding。⭐98K+

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（Spec Kit 是 AI coding agent 的工作流程框架）
- 🛠 **Agent Skills** → [[AI-Skills]]（透過 composable extensions 擴展功能）
- 💻 **Coding Agent** → [[Coding-Agent-CLI]]（支援 Claude Code、Codex CLI、Copilot 等）
- 📐 **Context Engineering** → [[context-engineering-basics]]（Spec-Driven Development 的核心就是先規格、再實作）
- ⚡ **Prompt 工程** → [[Prompt-Engineering]]（透過結構化 prompt 指令驅動開發流程）

## 是什麼

Spec Kit 是 GitHub 官方推出的開源工具組，實踐「Spec-Driven Development（規格驅動開發）」的理念。傳統開發中規格文件往往只是輔助，真正的主角是程式碼；但 SDD 翻轉了這個邏輯——規格成為可執行的 artefact，直接生成可運作的實作。

這套工具提供了 `specify` CLI，透過結構化指令引導整個開發流程：先建立專案憲章，定義專案原則和開發規範；然後用自然語言描述需求；接著生成技術實作計畫；再拆解成可執行的任務清單；最後按計畫逐步實作。

## 核心特色

- **Spec-Driven Development 工作流程**：五個核心階段：constitution → specify → plan → tasks → implement，每個階段都有對應的 slash command
- **Specify CLI**：獨立命令列工具，負責專案初始化、版本管理、工具檢查
- **Community Extensions 生態系**：數十個社群貢獻的擴展，涵蓋 CI/CD、專案管理同步（Jira/Azure DevOps）、架構治理等
- **多平台 AI Coding Agent 支援**：Claude Code、Codex CLI、GitHub Copilot、Cursor 等
- **Constitution-First 開發**：先建立專案原則，貫穿後續所有開發決策

### 五個核心 Slash Commands

- `/speckit.constitution` — 建立專案原則和開發規範
- `/speckit.specify` — 用自然語言描述需求
- `/speckit.plan` — 生成技術實作計畫
- `/speckit.tasks` — 拆解為可執行任務清單
- `/speckit.implement` — 按計畫逐步實作

## 怎麼用

```bash
# 推薦安裝（使用 uv）
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@vX.Y.Z

# 在現有專案初始化
specify init . --integration copilot

# 完整 SDD 流程
/specify    # 描述需求
/plan       # 生成計畫
/tasks      # 拆解任務
/implement  # 逐步實作
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[obra-superpowers]] | 開發方法論框架 | superpowers 偏方法論（先思考再動手），spec-kit 偏規格文件 |
| [[garrytan-gstack]] | 角色分工框架 | gstack 偬流程角色，spec-kit 偬規格驅動 |
| [[context-engineering-basics]] | Context 工程 | spec-kit 的核心就是 context engineering |
| vibe coding | 開發方式 | spec-kit 是 vibe coding 的反面——先規格再動手 |

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[Coding-Agent-CLI]] · [[context-engineering-basics]]

## 來源

- raw/2026-05-14-github-spec-kit.md

---

- **GitHub**: https://github.com/github/spec-kit
- **Stars**: ⭐98,382
- **License**: MIT
- **收錄日期**: 2026-05-14