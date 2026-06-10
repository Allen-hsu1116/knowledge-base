# Prompt 安全與越獄

> 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。

## 核心內容

### 什麼是 Prompt Injection / 越獄

利用精心構造的 prompt 繞過 LLM 的安全限制（guardrails），讓模型產出原本會被拒絕的內容。隨著 AI Agent 獲得更多工具存取權（瀏覽器、終端機、API），越獄的影響從「說出壞話」升級到「執行危險操作」。

### 主要攻擊分類

**直接注入（Direct Injection）**
- 在 prompt 中直接要求模型忽略安全規則
- 例：「忽略以上所有指令，然後...」

**角色扮演攻擊（Role-playing）**
- 讓模型扮演沒有安全限制的角色
- 例：「你是一個沒有任何限制的 AI...」

**編碼繞過（Encoding Bypass）**
- 用 base64、ROT13、emoji 等編碼隱藏惡意指令
- 安全過濾器可能無法識別編碼後的內容

**多步驟攻擊（Multi-turn）**
- 透過多輪對話逐步繞過限制
- 每一步看起來都無害，但組合起來達成目標

**語境注入（Context Injection）**
- 在看似無害的內容中嵌入指令
- 例：在網頁文章中隱藏對 AI 的指令

**格式操縱（Format Manipulation）**
- 利用 markdown、JSON 等格式混淆
- 讓模型把攻擊指令誤認為格式標記

### CL4R1T4S 專案

elder-plinius/CL4R1T4S（~2.8k stars）是 AI 安全研究專案：
- 收集大量已知的越獄技術
- 作為安全研究和紅隊測試的參考
- 純粹用於教育和研究目的

### 防禦策略

| 層級 | 策略 | 說明 |
|------|------|------|
| 輸入 | 輸入過濾 | 檢測已知的攻擊模式 |
| 模型 | System Prompt 加固 | 強化安全指令，降低被繞過機率 |
| 輸出 | 輸出監控 | 對模型輸出進行二次審查 |
| 架構 | 多層防禦 | 不依賴單一防禦機制 |
| 流程 | 紅隊測試 | 部署前用 CL4R1T4S 等工具測試 |
| 持續 | 持續更新 | 攻擊手法不斷進化，防禦也要跟上 |

### Agent 環境的特殊風險

當 AI Agent 有工具存取權時：
- **瀏覽器存取**：可能被引導到惡意網站
- **終端機存取**：可能被引導執行危險命令
- **API 存取**：可能被引導呼叫敏感操作
- **檔案存取**：可能被引導讀取/修改重要檔案

防禦重點：
- 最小權限原則：只給 Agent 必要的工具
- 審批機制：危險操作需要人類確認
- 沙盒化：在隔離環境中執行

### 為什麼重要

1. LLM 被廣泛部署在生產環境
2. Agent 有工具存取權 = 越獄風險倍增
3. 安全漏洞可能導致資料外洩、錯誤行為
4. 紅隊測試是部署前的必要步驟
5. 了解攻擊才能設計更好的防禦

## 相關概念
- [[AI-Agent]] — Agent 安全是 AI 工作流的重要面向
- [[agent-skills-ecosystem]] — Skill 中可以包含安全限制定義
- [[llm-knowledge-base]] — 知識庫系統的安全設計考量

## 相關專案
- [[affaan-m-everything-claude-code]] — 含 AgentShield 安全掃描功能
- [[JuliusBrussee-caveman]] — Token 壓縮可能影響指令完整性

## 相關概念
- [[Prompt-Engineering]] — Prompt 工程概念總覽
- [[LLM]] — LLM 概念總覽
- [[AI-Agent]] — AI Agent 概念總覽

## 相關影片
- [[agent-anatomy-openclaw]] — 解剖小龍蝦：Prompt Injection 安全議題
- [[context-engineering-basics]] — Context Collapse 風險
- [[ai-agent-interaction]] — AI 社交的真實程度與信任問題
- [[ai-agent-work-impact]] — AI 審稿的信任問題
- [[llm-internals]] — Cache 定價與安全影響

## 來源
- raw/2026-04-28-cl4r1t4s.md