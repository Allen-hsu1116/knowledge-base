# AI Skills

> AI Skills 是一種結構化的操作指令格式（通常為 SKILL.md），讓 AI coding agent 能以明確的上下文、約束和輸出規範來執行重複性任務。

## 核心概念

- **SKILL.md**：一種 Markdown 格式的技能定義檔，包含觸發條件、指令、約束和輸出規範
- **Bundle**：一組相關技能的集合，例如「前端開發 bundle」或「安全審查 bundle」
- **Workflow**：多步驟的技能執行流程，串聯多個 skills 完成複雜任務
- **Plugin**：針對特定平台（Claude Code、Codex CLI）的安裝包格式

## 為什麼重要

- 從「一次性提示詞」升級為「可安裝、可搜尋、可重用」的技能庫
- 跨 agent 平台通用：Claude Code、Cursor、Gemini CLI、Codex CLI 等都能使用
- 降低 AI agent 的上手門檻：用現成 skill 比自己寫 prompt 更有效率

## 相關專案

- [[sickn33-antigravity-awesome-skills|Antigravity Awesome Skills]] — 1,443+ 可安裝的 agentic skills，支援 Claude Code、Cursor、Codex CLI、Gemini CLI 等平台

## 相關概念

- [[MCP]] — Model Context Protocol，讓 LLM 透過統一介面連接外部工具
- [[Prompt Engineering]] — 提示詞工程，skills 的底層技術基礎

---

_此頁由 daily-llm-trending 自動維護_