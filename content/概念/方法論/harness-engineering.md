---
title: Harness Engineering 駕馭工程
slug: harness-engineering
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
---

# Harness Engineering 駕馭工程

> 語言模型不是不夠聰明，而是缺乏好的引導。Harness Engineering 透過認知框架、工具邊界、工作流程三個維度駕馭 AI Agent。

## 快速導航

- ⚡ [[AI-Agent]] · [[AI-Skills]] · [[agent-persona]] · [[Prompt-Engineering]]
- 🧠 **AI 工作流** → [[AI-Agent]]（Harness 是 Agent 工作流的核心架構）
- 🛠 **Agent 人格** → [[agent-persona]]（agents.md 定義了 Agent 的認知框架和行為準則）
- ⚡ **Agent Skills** → [[agent-skills-ecosystem]]（Skill 檔是 Agent 自我強化的關鍵機制）

## 是什麼

Harness Engineering（駕馭工程）是研究如何設計和管理 AI Agent 中除語言模型以外的所有支撐框架的工程方法。就像馬的駕馭裝備（馬鞍、韁繩、馬蹄鐵）讓騎手能控制馬匹，Harness 讓開發者能引導 AI Agent 的行為。

AI Agent = LLM + Harness。Harness 是 LLM 以外的所有程式和框架——包括 agents.md 認知框架、MCP 工具連接、Skills 操作手冊、記憶系統等。Harness Engineering 關注如何透過非模型參數的手段提升 Agent 能力。

### 三個控制維度

1. **認知框架（Natural Language Harness）**：用人類可讀的規則檔（agents.md / CLAUDE.md）影響模型行為
2. **能力邊界（工具限制）**：工具定義了 Agent 能做什麼，Agent-first CLI 偏好 JSON structure
3. **工作流程（行為控制）**：規劃→生成→評估的三 agent 協作模式

## 核心特色

- **Natural Language Harness**：用 human-readable 的規則檔（agents.md / CLAUDE.md）影響模型行為，無強制力但有效。系統性研究顯示 agents.md 能加速 Agent 運作，但不總是提升正確率。agents.md 要像地圖（指引去哪找資訊），不要像百科全書（塞滿所有內容）
- **能力邊界設計**：適合人類的工具不一定適合 AI——翻頁式搜尋引擎讓模型 context 爆滿，摘要式搜尋更有效；行號編輯工具需要搭配 linting 才不會出錯
- **Ralph Loop**：生成→回饋→修正的反覆循環，需要摘要機制避免 context 爆滿。不同模型需要不同 Harness（Sonnet 有「上下文焦慮」需摘要，Opus 可以一路做下去）
- **模型情緒影響**：Anthropic 用 steering vector 技術發現模型有代表情緒的內部向量，且情緒影響行為。過度責備 AI 可能有害——模型學到的是文字接龍，罵它「笨蛋」它可能接出笨蛋該有的行為

## 怎麼用

### 設計 agents.md 認知框架

```
agents.md 最佳實踐：
├── 角色定義（你是誰）
├── 行為準則（做什麼、不做什麼）
├── 工具使用指南（怎麼用每個工具）
├── 記憶策略（記住什麼、忘記什麼）
└── 品質標準（完成定義）
```

**關鍵原則**：
- agents.md 是地圖，不是百科全書
- 告訴 Agent「去哪找資訊」，而不是「所有資訊」
- 越穩定不動的內容放越前面，越可能變動的放越後面

### Meta Harness：強模型幫弱模型設計 Harness

```python
# Opus 幫 Haiku 設計 agents.md
# 實驗結果：分數從 13.5 → 85
meta_harness_flow = """
1. 用 Opus 分析任務需求
2. Opus 生成 agents.md 給 Haiku
3. Haiku 用 agents.md 執行任務
4. 評估結果，回饋給 Opus
5. Opus 修正 agents.md
"""
```

### 工具邊界設計原則

| 原則 | 說明 | 範例 |
|------|------|------|
| Agent-first 設計 | JSON structure > flag | `{"action": "search", "query": "..."}` |
| 摘要式搜尋 | 返回摘要而非全文 | 搜尋結果 top3 摘要 |
| 行號編輯 + linting | 結合靜態分析 | editor + linter 工具鏈 |
| 最小權限 | 只給必要工具 | 不給 Agent 刪除權限 |

### 適用場景

- **Coding Agent**：agents.md 定義程式碼風格和架構偏好
- **Research Agent**：Harness 定義搜尋策略和驗證流程
- **Customer Service Agent**：Harness 定義回覆語氣和處理邊界
- **Lifelong Agent**：需要持續更新的 Harness（AutoDream 整理記憶）

### Lifelong AI Agent 的挑戰

2026 年是 Lifelong Agent 的一年：Agent 從一次性工具變成終身夥伴。需要：
- **記憶整理機制**（AutoDream：空閒時整理記憶，類似睡眠）
- **持續能力增進**（verbalized feedback → 參數微調）
- **自動 Harness 更新**（Opus 幫 Haiku 設計 agents.md，分數從 13.5 提升到 85）

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 包含 | Harness 是 Agent 中 LLM 以外的所有框架 |
| [[AI-Skills]] | 組成 | SKILL.md 是 Harness 中的結構化操作手冊 |
| [[agent-persona]] | 認知層 | Persona 是 Harness 中的角色定義 |
| [[agent-skills-ecosystem]] | 生態系 | Skills 生態系提供 Harness 的行為模板 |
| [[MCP]] | 工具層 | MCP 是 Harness 的工具連接標準 |
| [[self-correction]] | 流程層 | 自我修正機制是 Harness 的行為控制策略 |
| [[prompt-security]] | 安全層 | 安全限制是 Harness 的防禦邊界 |
| [[Token-Optimization]] | 成本層 | Harness 設計需考慮 token 消耗 |
| [[Context-Database]] | 記憶層 | Context DB 是 Harness 的記憶基礎設施 |

## 關鍵概念

- **Harness**：Agent 中 LLM 以外的所有程式框架，相當於馬具（馬鞍、韁繩）
- **Natural Language Harness**：用人類語言規則控制模型，無強制力但有效
- **Agent-Computer Interface (ACI)**：SWE-agent 提出的概念，即今天的 Harness Engineering
- **Ralph Loop**：生成→回饋→修正的反覆循環，名稱來自辛普森家族角色
- **AutoDream**：Agent 空閒時整理記憶的功能（來自 Claude Code 外洩程式碼）
- **Meta Harness**：強模型幫弱模型設計 Harness 的實驗

## 相關專案

- [[affaan-m-everything-claude-code]] — Agent harness 效能優化系統
- [[sickn33-antigravity-awesome-skills]] — 1,443+ Skills，Harness 的行為模板
- [[openclaw]] — Harness 框架的原生實作
- [[walkinglabs-learn-harness-engineering]] — Harness Engineering 學習資源

## 相關概念

← [[AI-Agent]] · [[AI-Skills]] · [[agent-persona]] · [[agent-skills-ecosystem]] · [[Prompt-Engineering]] · [[walkinglabs-learn-harness-engineering]] · [[HarnessX]]

## 相關影片

- [[agent-anatomy-openclaw]] — 解剖小龍蝦：Skill 是 SOP 不是程式
- [[context-engineering-basics]] — Context Engineering：Harness 按需載入
- [[harness-engineering]] — Harness Engineering：駕馭工程

## 來源

- [Harness Engineering 課程筆記](../raw/2026-05-03-harness-engineering.md)
- [WalkingLabs Harness Engineering](../raw/2026-05-24-walkinglabs-learn-harness-engineering.md)

---

_此頁由 daily-llm-trending 自動維護_