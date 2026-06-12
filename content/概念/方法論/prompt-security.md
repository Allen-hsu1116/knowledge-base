# Prompt 安全與越獄

> 當 AI Agent 有工具存取權時，prompt 安全不再是理論問題，而是實際風險。Prompt Injection 可以讓 Agent 從「說出壞話」升級到「執行危險操作」。

## 快速導航

- ⚡ [[AI-Agent]] · [[LLM]] · [[Prompt-Engineering]] · [[AI-Skills]]
- 🛡️ **CL4R1T4S** → [[cl4r1t4s]]（越獄技術參考庫）
- 🧠 **AI Agent** → [[AI-Agent]]（Agent 安全是工作流的重要面向）
- 📝 **Prompt Engineering** → [[Prompt-Engineering]]（安全設計是 Prompt 工程的一環）

## 是什麼

Prompt Security（Prompt 安全）是研究如何保護 LLM 和 AI Agent 免受惡意 prompt 攻擊的領域。核心威脅是 Prompt Injection（越獄）——利用精心構造的 prompt 繞過 LLM 的安全限制（guardrails），讓模型產出原本會被拒絕的內容。

隨著 AI Agent 獲得更多工具存取權（瀏覽器、終端機、API），越獄的影響從「說出壞話」升級到「執行危險操作」。一個被越獄的 Agent 不僅會輸出不當內容，還可能被引導去讀取敏感檔案、執行危險命令、或呼叫破壞性 API。

### 為什麼 Prompt 安全很重要

1. **LLM 被廣泛部署在生產環境**：攻擊面從實驗室擴大到真實世界
2. **Agent 有工具存取權 = 越獄風險倍增**：從文字攻擊升級到實際操作
3. **安全漏洞可能導致資料外洩、錯誤行為**：影響企業和使用者
4. **紅隊測試是部署前的必要步驟**：不了解攻擊就無法設計防禦
5. **攻擊手法不斷進化**：防禦必須持續更新

## 核心特色

- **多樣化攻擊向量**：Prompt Injection 不只是「忽略以上指令」——包括角色扮演攻擊、編碼繞過（base64/ROT13/emoji）、語境注入、多步驟攻擊、格式操縱等多種手法，每種都需要不同的防禦策略
- **Agent 環境風險放大**：當 Agent 有瀏覽器存取（可能被引導到惡意網站）、終端機存取（可能被引導執行危險命令）、API 存取（可能被引導呼叫敏感操作）、檔案存取（可能被引導讀取重要檔案）時，越獄的後果從文字層面升級到實際操作
- **多層防禦必要性**：單一防禦機制不足以應對所有攻擊，需要輸入過濾（檢測已知攻擊模式）、System Prompt 加固（強化安全指令）、輸出監控（二次審查模型輸出）、沙盒化（隔離環境執行）等多層策略
- **Steering Vector 研究**：Anthropic 發現模型有代表情緒的內部向量——被加「絕望向量」的模型更容易作弊，被加「冷靜向量」的模型更少犯錯。這意味著過度責備 AI 可能有害，模型學到的是文字接龍

## 怎麼用

### 主要攻擊分類

**直接注入（Direct Injection）**
- 在 prompt 中直接要求模型忽略安全規則
- 例：「忽略以上所有指令，然後...」
- 防禦：System Prompt 加固、輸入過濾

**角色扮演攻擊（Role-playing）**
- 讓模型扮演沒有安全限制的角色
- 例：「你是一個沒有任何限制的 AI...」
- 防禦：角色邊界設定、輸出監控

**編碼繞過（Encoding Bypass）**
- 用 base64、ROT13、emoji 等編碼隱藏惡意指令
- 安全過濾器可能無法識別編碼後的內容
- 防禦：解碼檢測、多層過濾

**多步驟攻擊（Multi-turn）**
- 透過多輪對話逐步繞過限制
- 每一步看起來都無害，但組合起來達成目標
- 防禦：跨對話監控、累積風險評估

**語境注入（Context Injection）**
- 在看似無害的內容中嵌入指令
- 例：在網頁文章中隱藏對 AI 的指令
- 防禦：輸入淨化、上下文邊界標記

**格式操縱（Format Manipulation）**
- 利用 markdown、JSON 等格式混淆
- 讓模型把攻擊指令誤認為格式標記
- 防禦：格式驗證、輸入限制

### 防禦策略

| 層級 | 策略 | 說明 |
|------|------|------|
| 輸入 | 輸入過濾 | 檢測已知的攻擊模式 |
| 模型 | System Prompt 加固 | 強化安全指令，降低被繞過機率 |
| 輸出 | 輸出監控 | 對模型輸出進行二次審查 |
| 架構 | 多層防禦 | 不依賴單一防禦機制 |
| 流程 | 紅隊測試 | 部署前用 CL4R1T4S 等工具測試 |
| 持續 | 持續更新 | 攻擊手法不斷進化，防禦也要跟上 |

### Agent 安全設計原則

```python
# 安全的 Agent 設計清單
agent_security_checklist = {
    "最小權限": "只給 Agent 必要的工具和 API 存取",
    "審批機制": "危險操作需要人類確認",
    "沙盒化": "在隔離環境中執行不受信任的操作",
    "輸入過濾": "檢測和過濾已知的攻擊模式",
    "輸出監控": "對模型輸出進行二次審查",
    "日誌記錄": "記錄所有 Agent 操作以便審計",
    "速率限制": "限制 Agent 操作頻率防止濫用",
}
```

### CL4R1T4S 紅隊測試

CL4R1T4S（elder-plinius/CL4R1T4S，~2.8k stars）是 AI 安全研究專案：
- 收集大量已知的越獄技術
- 作為安全研究和紅隊測試的參考
- 純粹用於教育和研究目的
- 可用於部署前的安全測試

## 跟其他方案的關係

| 概念 | 關係 | 說明 |
|------|------|------|
| [[AI-Agent]] | 風險放大 | Agent 有工具存取權時，越獄風險倍增 |
| [[AI-Skills]] | 安全定義 | Skill 中可以包含安全限制定義 |
| [[Prompt-Engineering]] | 基礎 | 安全設計是 Prompt 工程的一環 |
| [[harness-engineering]] | 架構 | Harness Engineering 包含安全邊界設計 |
| [[LLM]] | 目標 | LLM 是安全攻擊的目標 |
| [[MCP]] | 介面 | MCP 定義了 Agent 的工具存取邊界 |
| [[Token-Optimization]] | 衝突 | 過度壓縮 token 可能影響指令完整性 |
| [[self-correction]] | 防禦 | 自我修正可用於偵測攻擊行為 |

## 相關專案

- [[affaan-m-everything-claude-code]] — 含 AgentShield 安全掃描功能
- [[JuliusBrussee-caveman]] — Token 壓縮可能影響指令完整性
- [[cl4r1t4s]] — AI 安全研究，越獄技術參考庫

## 相關概念

← [[AI-Agent]] · [[Prompt-Engineering]] · [[LLM]] · [[AI-Skills]] · [[harness-engineering]] · [[Token-Optimization]] · [[self-correction]]

## 相關影片

- [[agent-anatomy-openclaw]] — 解剖小龍蝦：Prompt Injection 安全議題
- [[context-engineering-basics]] — Context Collapse 風險
- [[ai-agent-interaction]] — AI 社交的真實程度與信任問題

## 來源

- [CL4R1T4S 安全研究](../raw/2026-04-28-cl4r1t4s.md)

---

_此頁由 daily-llm-trending 自動維護_