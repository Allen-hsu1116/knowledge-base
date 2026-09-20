---
title: Promptfoo
slug: promptfoo-promptfoo
created: 2023-04-28
updated: 2026-09-20
stars: 22198
language: TypeScript
topics: [llm, llm-eval, prompt-engineering, red-teaming, pentesting, vulnerability-scanners, rag, ci-cd]
---

# Promptfoo

> ⭐22198 · LLM 評測與紅隊工具，測試 Prompts、Agents 和 RAG，支援多模型比較、CI/CD 整合和漏洞掃描。

## 快速導航

[[Prompt-Engineering|Prompt Engineering]] · [[prompt-security|CL4R1T4S]] · [[NVIDIA-SkillSpector|SkillSpector]]

## 是什麼

Promptfoo 是一個開源的 LLM 評測和紅隊工具，由 CLI 和函式庫兩部分組成。它能讓開發者停止試誤法，改用系統化的方式測試、比較和保護 AI 應用。你可以用宣告式 YAML 配置定義測試案例，比較 GPT、Claude、Gemini、DeepSeek 等多個模型的表現，自動化紅隊測試找出安全漏洞，並在 CI/CD 流程中持續驗證。

Promptfoo 現已成為 OpenAI 的一部分，但仍然維持開源 MIT 授權。它被 OpenAI 和 Anthropic 等團隊用於內部評測，是 LLM 應用品質保證的業界標準工具之一。核心價值是「開發者優先」— CLI 可在本地編排評測，但資料是否外傳取決於模型、評分器與服務設定；使用 OpenAI 等遠端 provider 時會送出推論請求。

## 核心特色

- **多模型比較**：GPT、Claude、Gemini、DeepSeek 等 50+ 提供商，並排比較回答品質
- **紅隊測試**：自動化漏洞掃描，涵蓋 Prompt Injection、資料外洩、有害內容等場景
- **宣告式配置**：YAML 定義測試案例，版本控制友善，團隊協作方便
- **CI/CD 整合**：GitHub Actions、GitLab CI 等無縫整合，每次提交自動評測
- **Code Scanning**：掃描 PR 中的 LLM 相關安全和合規問題
- **本地編排、可控資料流**：CLI 可本地執行；遠端模型與模型式評分器仍會接收輸入。預設基本遙測不含 prompts／輸出，可設 `PROMPTFOO_DISABLE_TELEMETRY=1` 關閉。
- **Web 檢視器**：互動式結果面板，團隊分享和討論
- **Node.js / Python**：同時支援兩種 SDK，彈性整合

## 怎麼用

```bash
# 安裝
npm install -g promptfoo
# 或
brew install promptfoo
# 或
pip install promptfoo

# 快速開始
promptfoo init --example getting-started
cd getting-started
promptfoo eval
promptfoo view

# 定義評測（YAML 配置範例）
# prompts:
#   - "Tell me about {{topic}}"
# providers:
#   - openai:gpt-4
#   - anthropic:claude-3
# tests:
#   - vars:
#       topic: artificial intelligence

# 紅隊測試
promptfoo red-team --target openai:gpt-4

# CI/CD 整合
# 在 GitHub Actions 中：
# - run: npx promptfoo eval --config promptfooconfig.yaml
```

## 跟其他方案的關係

| 方案 | 類型 | 評測 | 紅隊 | 多模型 | CI/CD |
|------|------|------|------|--------|-------|
| [[promptfoo-promptfoo|Promptfoo]] | 評測工具 | ✅ | ✅ | ✅ 50+ | ✅ |
| [[langfuse-langfuse|Langfuse]] | 觀測平台 | ✅ | ❌ | ✅ | ✅ |
| [[NVIDIA-SkillSpector|SkillSpector]] | 安全掃描 | ❌ | ✅ Skills | ❌ | ❌ |
| [[x1xhlol-system-prompts-and-models-of-ai-tools|System Prompts Collection]] | 研究 | ❌ | ✅ 研究 | ✅ 30+ | ❌ |
| [[prompt-security|CL4R1T4S]] | 研究 | ❌ | ✅ 越獄 | ❌ | ❌ |

## 相關概念

← [[Prompt-Engineering]] · [[prompt-security]] · [[NVIDIA-SkillSpector]]

## 來源

- GitHub：https://github.com/promptfoo/promptfoo
- 官網：https://promptfoo.dev
- 文件：https://promptfoo.dev/docs
- Raw 檔案：`knowledge-base/raw/2026-06-15-promptfoo-promptfoo.md`
- [OpenAI provider 官方文件](https://www.promptfoo.dev/docs/providers/openai/)（2026-09-20 核對）。
- [官方遙測說明](https://www.promptfoo.dev/docs/configuration/telemetry/)（2026-09-20 核對）。

**[⚠️ 可能過時] 原文「Prompt 永遠不離開機器」混淆本地評測編排與遠端模型推論；已更正。停用遙測不會停用 provider 的模型請求。**

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/promptfoo/promptfoo |
| Stars | ⭐22198|
| License | MIT |
| 收錄日期 | 2023-04-28 |
