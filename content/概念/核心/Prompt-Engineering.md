---
title: Prompt Engineering
slug: Prompt-Engineering
language: zh-TW
---

# Prompt Engineering

> Prompt Engineering 是設計和優化 LLM 提示詞的技術，涵蓋系統提示、結構化指令、上下文工程、token 優化等面向。從「寫好問題」進化到「設計 agent 的操作手冊」。

## 核心內容

Prompt Engineering 是設計和優化 LLM 提示詞的技術。從最早的「寫好問題」，到現在的「設計 agent 的操作手冊」，已經從簡單的指令技巧演進成為系統化的工程方法論。核心演進路線為：自然語言指令 → Few-shot → Chain-of-Thought → 結構化 SKILL.md → Context Engineering，每一層都在解決上一層的問題。

系統提示（System Prompt）是 LLM 的靈魂——角色定義、輸出格式、約束條件都在這裡。從自然語言的「幫我寫一個 Python 函數」，到 Few-shot 的「以下是 3 個範例，照格式回答」，再到 Chain-of-Thought 的「請一步步思考」，最終走向 SKILL.md 的結構化操作手冊（觸發條件+指令+約束+輸出規範），結構越強輸出越穩定。

Context Engineering 是 Prompt Engineering 的進階版——不只是寫好提示詞，而是設計整個 context 的結構，包括記憶管理（哪些資訊分層載入）、知識編譯（raw→wiki 精煉後載入）、技能定義（結構化操作手冊取代零散 prompt）。同時，Prompt 安全是真實威脅：Prompt Injection 和越獄攻擊需要多層防禦。

## 關鍵要素

- **系統提示**：定義 LLM 的角色、輸出格式和約束條件，是所有應用的起點
- **結構化指令優於自然語言**：從 Few-shot 到 SKILL.md，結構越強輸出越穩定、越可預測
- **Context Engineering**：不只寫好提示詞，而是管理整個 context 的結構——記憶、知識、技能三維度
- **Prompt 安全**：Prompt Injection 和越獄攻擊是實際威脅，需要輸入淨化、角色分離、結構化邊界
- **好 prompt 省 token**：結構化 prompt 讓輸出更可預測，也讓 token 使用更高效

## 各框架的做法

- **Anthropic Skills** → 結構化 SKILL.md 格式，前端設計、Web 測試等官方 Skill 集
  👉 詳見 [[anthropics-skills|Anthropic Skills]]
- **Awesome Claude Skills** → 1000+ 可安裝 Skills，Claude Code / Codex / Cursor 跨平台
  👉 詳見 [[ComposioHQ-awesome-claude-skills|Awesome Claude Skills]]
- **Promptfoo** → LLM 評測與紅隊測試框架，CI/CD 整合的 Prompt 工程工具
  👉 詳見 [[promptfoo-promptfoo|Promptfoo]]
- **System Prompts Collection** → 15+ 廠商的系統提示詞洩露與安全研究
  👉 詳見 [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]]
- **Karpathy CLAUDE.md 規則** → CLAUDE.md 結構化 prompt 實作範例
  👉 詳見 [[multica-ai-andrej-karpathy-skills|Karpathy CLAUDE.md 規則]]

## 相關概念

- [[AI-Skills]] — Prompt Engineering 的結構化終極形態
- [[Token-Optimization]] — 好 prompt 省 token，兩者互補
- [[prompt-security]] — Prompt Injection 是 PE 的安全風險
- [[context-engineering-basics]] — PE 的進階版：管理整個 context
- [[CLAUDE-md]] — 用自然語言定義 AI 編碼助理的行為規範
- [[llm-knowledge-base]] — 知識庫是 Context Engineering 的一種實作

## 來源
- 知識庫內 Prompt Engineering 相關原始資料與專案頁面