---
title: Prompt 安全與越獄
slug: prompt-security
created: 2026-06-22
updated: 2026-08-22
language: zh-TW
---

# Prompt 安全與越獄

> 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。Prompt Injection 可以讓 Agent 從「說出壞話」升級到「執行危險操作」。

## 核心內容

Prompt Security（Prompt 安全）是研究如何保護 LLM 和 AI Agent 免受惡意 prompt 攻擊的領域。核心威脅是 Prompt Injection（越獄）——利用精心構造的 prompt 繞過 LLM 的安全限制（guardrails），讓模型產出原本會被拒絕的內容。

隨著 AI Agent 獲得更多工具存取權（瀏覽器、終端機、API），越獄的影響從「說出壞話」升級到「執行危險操作」。一個被越獄的 Agent 不僅會輸出不當內容，還可能被引導去讀取敏感檔案、執行危險命令、或呼叫破壞性 API。這使得安全設計從「可選的防護」變成「部署前的必要步驟」。

攻擊手法不斷進化，從簡單的直接注入（「忽略以上指令」）到複雜的多步驟攻擊和語境注入。單一防禦機制不足以應對所有攻擊向量，需要輸入過濾、System Prompt 加固、輸出監控、沙盒化等多層策略組合。Anthropic 的 steering vector 研究還發現模型有代表情緒的內部向量——被加「絕望向量」的模型更容易作弊，被加「冷靜向量」的模型更少犯錯，這為防禦設計提供了新的研究方向。

## 關鍵要素

- **多樣化攻擊向量** — 直接注入、角色扮演、編碼繞過（base64/ROT13/emoji）、多步驟攻擊、語境注入、格式操縱，每種都需要不同的防禦策略
- **Agent 環境風險放大** — 瀏覽器存取（惡意網站）、終端機存取（危險命令）、API 存取（敏感操作）、檔案存取（讀取重要檔案），越獄後果從文字層面升級到實際操作
- **多層防禦** — 輸入過濾（檢測已知攻擊模式）、System Prompt 加固（強化安全指令）、輸出監控（二次審查模型輸出）、沙盒化（隔離環境執行）
- **Steering Vector 研究** — 模型有代表情緒的內部向量，過度責備 AI 可能有害；防禦設計可從情緒向量切入
- **紅隊測試** — 部署前用 CL4R1T4S 等工具進行安全測試，不了解攻擊就無法設計防禦
- **持續更新** — 攻擊手法不斷進化，防禦必須持續跟進

## 各框架的做法

- **OpenAI Codex CLI** → 以 sandbox、approval 與 execution policy 限制高權限 Coding Agent 的檔案和命令存取
  👉 詳見 [[openai-codex]]
- **CL4R1T4S** → 系統性收集越獄技術，作為紅隊測試的攻擊模式參考
  👉 詳見 [[prompt-security]]
- **ECC** → 含 AgentShield 安全掃描功能，偵測 Skill 中的安全風險
  👉 詳見 [[affaan-m-everything-claude-code]]
- **SkillSpector** → 64 種漏洞模式掃描，涵蓋 Prompt Injection 和資料外洩
  👉 詳見 [[NVIDIA-SkillSpector]]
- **Anthropic Cybersecurity Skills** → 網安領域的 AI Skills，包含安全測試方法
  👉 詳見 [[mukul975-Anthropic-Cybersecurity-Skills]]
- **Promptfoo** → LLM 評測和紅隊測試平台，CI/CD 整合
  👉 詳見 [[promptfoo-promptfoo]]
- **G0DM0D3** → 多模型越獄競賽介面，Parseltongue 33 種輸入擾動技術
  👉 詳見 [[elder-plinius-G0DM0D3|G0DM0D3]]
- **AI-Infra-Guard** → 統一執行 Agent、Skill、MCP、AI Infra 與 LLM 越獄安全評估
  👉 詳見 [[Tencent-AI-Infra-Guard|AI-Infra-Guard]]
- **OBLITERATUS** → 從 activation 與權重層研究、移除拒答方向，用於 alignment robustness 與紅隊基準
  👉 詳見 [[elder-plinius-OBLITERATUS|OBLITERATUS]]

## 相關概念

- [[AI-Agent]] — Agent 有工具存取權時，越獄風險倍增
- [[AI-Skills]] — Skill 中可以包含安全限制定義
- [[Prompt-Engineering]] — 安全設計是 Prompt 工程的一環
- [[harness-engineering]] — Harness Engineering 包含安全邊界設計
- [[prompt-security]] — 越獄技術參考庫，攻擊面研究
- [[MCP]] — MCP 定義了 Agent 的工具存取邊界
- [[Token-Optimization]] — 過度壓縮 token 可能影響指令完整性
- [[self-correction]] — 自我修正可用於偵測攻擊行為
- [[Dicklesworthstone-destructive_command_guard|dcg]] — 命令層安全守衛，攔截危險命令執行
- [[elder-plinius-OBLITERATUS|OBLITERATUS]] — 展示模型護欄可能被 weight-level 介入移除，部署時需外部防禦與隔離

## 來源

- raw/2026-04-28-cl4r1t4s.md（CL4R1T4S 安全研究）
- Anthropic steering vector 研究筆記