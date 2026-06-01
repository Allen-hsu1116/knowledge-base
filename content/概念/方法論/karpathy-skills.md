---
source: https://github.com/forrestchang/andrej-karpathy-skills
date: 2026-04-28
---

# forrestchang/andrej-karpathy-skills — Karpathy 知識庫 Skill 版

> 將 Andrej Karpathy 的 LLM 知識庫系統方法論封裝成 Agent Skill 格式，讓任何人可以用標準化的方式在自己的 Agent 框架中實作 Karpathy 式的知識管理流程。

**GitHub**: https://github.com/forrestchang/andrej-karpathy-skills

## 是什麼

這個專案把 Karpathy 在 2026 年 3 月公開的知識庫系統方法論，標準化成 SKILL.md 格式。原始版本是一份 GitHub Gist + Obsidian 設定，這個專案讓任何人可以用標準化方式在自己的 Agent 框架中實作。

核心概念不變：LLM 當「編譯器」，把原始素材增量建構成持久化的 wiki。差異在於封裝方式——從手動設定變成標準化的 Skill，可以用 `npx skills add` 一鍵安裝。

## 核心特色

- **四大操作標準化**：Ingest、Compile、Query、Lint 四個操作封裝成 SKILL.md 格式
- **一鍵安裝**：`npx skills add forrestchang/andrej-karpathy-skills` 即可部署
- **框架無關**：任何支援 SKILL.md 的 Agent 框架都能用（不限 Obsidian + Claude Code）
- **保留核心方法論**：raw → wiki → lint 的回饋迴圈完整保留
- **與原始版的差異**：圖譜視覺化需要額外工具，但通用性大幅提升

## 快速導航

- 📝 **原始 Gist** → [[karpathy-gist-llm-wiki]]（Karpathy 的完整 prompt）
- 📰 **中文報導** → [[llm-knowledge-base-obsidian-claude-code]]（數位時代中文版）
- 🧠 **知識庫方法論** → [[llm-knowledge-base]]（通用知識庫方法論）
- 🛠️ **Agent 技能** → [[agent-skills-ecosystem]]（Skill 標準生態）

## 核心內容

這個專案把 Karpathy 在 2026 年 3 月公開的知識庫系統方法論，標準化成 SKILL.md 格式。原始版本是一份 GitHub Gist + Obsidian 設定，這個專案讓任何人可以用標準化方式在自己的 Agent 框架中實作。

### 四大操作

1. **Ingest（蒐集）**：從網頁、論文、文件收集原始素材，存入 `raw/` 目錄。支援 Obsidian Web Clipper、手動貼上、API 抓取
2. **Compile（整理/編譯）**：讀取 `raw/` 中的所有素材，按主題建立 `wiki/` 筆記，維護 `index.md` 概念目錄，建立筆記間的交叉連結
3. **Query（查詢）**：搜尋 `wiki/` 回答問題，將有價值的問答結果回存 wiki
4. **Lint（健康檢查）**：掃描 `wiki/` 中的矛盾和缺漏，建議補充方向，循環回 Compile 階段持續改進

### 與原始版本的差異

| 項目 | 原始版 | Skill 版 |
|------|--------|----------|
| 依賴 | Obsidian + Claude Code | 任何支援 SKILL.md 的框架 |
| 圖譜視覺化 | ✅ Obsidian graph | ❌ 需額外工具 |
| 通用性 | 低 | 高 |
| 安裝 | 手動設定 | `npx skills add` |

## 各框架的做法

- 👉 [[karpathy-gist-llm-wiki]] — 原始 Gist，完整 prompt 和流程定義
- 👉 [[llm-knowledge-base-obsidian-claude-code]] — 數位時代中文報導版
- 👉 [[thedotmack-claude-mem]] — Claude Code 記憶壓縮系統，session 級別的知識持久化
- 👉 [[project-golem]] — Golem 的 lancedb-pro 向量記憶，另一種知識持久化方案
- 👉 [[tinyhumansai-openhuman]] — OpenHuman 的 Memory Tree + Obsidian Wiki，直接受 Karpathy 方法啟發

## 怎麼用

```bash
# 安裝 Skill
npx skills add forrestchang/andrej-karpathy-skills
```

安裝後，在你的 Agent 框架中即可使用 Ingest、Compile、Query、Lint 四個操作。整個 raw → wiki → lint 的流程就是 Karpathy 方法的實踐。

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[karpathy-gist-llm-wiki]] | 原始 Gist | 本 Skill 版是從 Gist 標準化而來 |
| [[llm-knowledge-base-obsidian-claude-code]] | 中文報導 | Gist 的中文解讀版 |
| [[thedotmack-claude-mem]] | 記憶壓縮 | 互補：Skill 做 wiki 持久知識，claude-mem 做 session 記憶 |
| [[tinyhumansai-openhuman]] | 桌面助手 | OpenHuman 的 Memory Tree 直接受 Karpathy 方法啟發 |
| [[agent-skills-ecosystem]] | Skill 標準 | 本 Skill 是 Agent Skills 生態的一個實例 |

## 相關概念

← [[CLAUDE-md]] · [[karpathy-gist-llm-wiki]] · [[llm-knowledge-base]] · [[agent-skills-ecosystem]] · [[llm-knowledge-base-obsidian-claude-code]]

## 來源

- [GitHub - forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills)

---

GitHub: [forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills) · 收錄日期: 2026-04-28