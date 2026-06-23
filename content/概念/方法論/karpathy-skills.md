---
title: Karpathy 知識庫 Skill 版
slug: karpathy-skills
language: zh-TW
---

# Karpathy 知識庫 Skill 版

> 將 Andrej Karpathy 的 LLM 知識庫系統方法論封裝成 Agent Skill 格式，讓任何人可以用標準化的方式在自己的 Agent 框架中實作 Karpathy 式的知識管理流程。

## 核心內容

這個專案把 Karpathy 在 2026 年 3 月公開的知識庫系統方法論，標準化成 SKILL.md 格式。原始版本是一份 GitHub Gist + Obsidian 設定，這個 Skill 版讓任何人可以在自己的 Agent 框架中安裝使用，而不需要手動配置 Obsidian。

核心概念不變：LLM 當「編譯器」，把原始素材增量建構成持久化的 wiki。差異在於封裝方式——從手動設定變成標準化的 Skill，可以用一鍵安裝指令部署到任何支援 SKILL.md 的框架。

四大操作完整保留：Ingest（蒐集原始素材到 `raw/`）、Compile（整理成 `wiki/` 筆記並建立交叉連結）、Query（搜尋 wiki 回答問題）、Lint（健康檢查，掃描矛盾和缺漏）。整個 raw → wiki → lint 的回饋迴圈是 Karpathy 方法的精髓。

與原始版本的主要差異在通用性：原始版依賴 Obsidian + Claude Code，支援圖譜視覺化；Skill 版框架無關，但圖譜視覺化需要額外工具。Trade-off 是通用性大幅提升。

## 關鍵要素

- **四大操作標準化**：Ingest、Compile、Query、Lint 封裝成 SKILL.md 格式，流程清晰可重現
- **一鍵安裝**：透過標準 Skill 安裝指令即可部署，不需手動配置 Obsidian
- **框架無關**：任何支援 SKILL.md 的 Agent 框架都能使用，不限特定工具鏈
- **保留核心方法論**：raw → wiki → lint 的回饋迴圈完整保留，知識庫可持續改進
- **通用性 vs 視覺化**：放棄 Obsidian 圖譜視覺化，換取跨框架的通用部署能力

## 各框架的做法

- **Karpathy 原始 Gist** → 完整 prompt 和流程定義，Obsidian + Claude Code 手動設定
  👉 詳見 [[karpathy-gist-llm-wiki]]
- **數位時代中文報導** → Gist 的中文完整拆解，適合中文使用者入門
  👉 詳見 [[llm-knowledge-base-obsidian-claude-code]]
- **claude-mem** → Claude Code 的 session 級記憶壓縮，與知識庫的持久化互補
  👉 詳見 [[thedotmack-claude-mem]]
- **OpenHuman** → Memory Tree + Obsidian Wiki，直接受 Karpathy 方法啟發的桌面助手
  👉 詳見 [[tinyhumansai-openhuman]]
- **Agent Skills 生態** → Skill 標準本身，本 Skill 是此生態的一個實例
  👉 詳見 [[agent-skills-ecosystem]]

## 相關概念

- [[llm-knowledge-base]] — 通用知識庫方法論，Karpathy 系統的抽象基礎
- [[CLAUDE-md]] — Agent 行為規範載體，Skill 的姊妹概念
- [[agent-skills-ecosystem]] — Skill 標準生態，本 Skill 的歸屬領域

## 來源

- Karpathy 原始 Gist 知識庫方法論（2026 年 3 月公開）
- 專案收錄日期：2026-04-28