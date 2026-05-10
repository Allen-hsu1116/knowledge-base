---
source: https://github.com/forrestchang/andrej-karpathy-skills
date: 2026-04-28
tags: [karpathy, knowledge-base, agent-skills, obsidian, claude-code]
---

# forrestchang/andrej-karpathy-skills — Karpathy 知識庫 Skill 版

> 將 Andrej Karpathy 的 LLM 知識庫系統方法論封裝成 Agent Skill 格式，讓任何人可以用標準化的方式在自己的 Agent 框架中實作 Karpathy 式的知識管理流程。

**GitHub**: https://github.com/forrestchang/andrej-karpathy-skills

## 緣起

- Karpathy 在 2026 年 3 月公開了他的知識庫系統
- 原始版本是一份 GitHub Gist + Obsidian 設定
- 這個專案把方法論標準化成 SKILL.md 格式

## Skill 定義的四大操作

### Ingest（蒐集）
- 從網頁、論文、文件收集原始素材
- 存入 `raw/` 目錄
- 支援 Obsidian Web Clipper、手動貼上、API 抓取

### Compile（整理/編譯）
- 讀取 `raw/` 中的所有素材
- 按主題建立 `wiki/` 筆記
- 維護 `index.md` 概念目錄
- 建立筆記間的交叉連結

### Query（查詢）
- 搜尋 `wiki/` 回答問題
- 將有價值的問答結果回存 wiki

### Lint（健康檢查）
- 掃描 `wiki/` 中的矛盾和缺漏
- 建議補充方向
- 循環回 Compile 階段持續改進

## 與原始版本的差異

| 項目 | 原始版 | Skill 版 |
|------|--------|----------|
| 依賴 | Obsidian + Claude Code | 任何支援 SKILL.md 的框架 |
| 圖譜視覺化 | ✅ Obsidian graph | ❌ 需額外工具 |
| 通用性 | 低 | 高 |
| 安裝 | 手動設定 | `npx skills add` |

## 安裝

```bash
npx skills add forrestchang/andrej-karpathy-skills
```

## 與我們知識庫的關係

我們的 knowledge-base Skill 就是基於這套方法論建立的，針對 OpenClaw 環境做了適配。整個 raw → wiki → lint 的流程就是 Karpathy 方法的實踐。

## 相關主題

- [[karpathy-gist-llm-wiki|Karpathy LLM Wiki Gist]] — 原始觀念
- [[andrej-karpathy-ai-how|Karpathy 知識庫完整拆解]] — 中文報導版本
- [[agent-skills-ecosystem|Agent Skills 生態系]] — Skill 標準生態
- [[llm-knowledge-base|LLM 知識庫方法]]

## 參考資料

- [GitHub - forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills)