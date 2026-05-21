# Prompt Engineering

> Prompt Engineering 是設計和優化 LLM 提示詞的技術，涵蓋系統提示、結構化指令、上下文工程、token 優化等面向。從「寫好問題」進化到「設計 agent 的操作手冊」。

## 快速導航

- 🛠️ **AI Skills** → [[AI-Skills]]（Prompt Engineering 的結構化終極形態）
- 🦞 **OpenClaw** → [[openclaw]]（SOUL.md + SKILL.md 就是 Prompt Engineering 的實作）
- ⚡ **Token Optimization** → [[Token-Optimization]]（好 prompt 也省 token）
- 🔒 **Prompt Security** → [[prompt-security]]（Prompt 也可以被攻擊）

## 核心概念

### 1. 系統提示（System Prompt）

LLM 的「角色設定」和「行為規範」。告訴模型你是誰、你該怎麼回答、你不該做什麼。

- **角色定義**：你是資深工程師、你是翻譯專家、你是安全審計員
- **輸出格式**：JSON、Markdown、表格、程式碼
- **約束條件**：不超過 200 字、只用繁體中文、必須引用來源

### 2. 結構化指令

從自然語言走向結構化格式：

| 格式 | 特色 | 範例 |
|------|------|------|
| **自然語言** | 靈活但模糊 | 「幫我寫一個 Python 函數」 |
| **Few-shot** | 給範例引導 | 「以下是 3 個範例，照格式回答」 |
| **Chain-of-Thought** | 要求推理步驟 | 「請一步步思考」 |
| **SKILL.md** | 結構化操作手冊 | 觸發條件+指令+約束+輸出規範 |

### 3. 上下文工程（Context Engineering）

Prompt Engineering 的進階版 — 不只是寫好提示詞，而是設計整個 context 的結構：

- **記憶管理**（[[Context-Database]]）：哪些資訊放 L0/L1/L2
- **知識編譯**（[[llm-knowledge-base]]）：raw→wiki，只載入精煉後的知識
- **技能定義**（[[AI-Skills]]）：結構化操作手冊取代零散 prompt

### 4. Prompt 安全

Prompt 不只是輸入，也可能是攻擊向量：

- **Prompt Injection**：惡意指令嵌入使用者輸入
- **越獄**（[[prompt-security]]）：繞過系統約束
- **防禦策略**：輸入淨化、角色分離、結構化邊界

## 為什麼重要

- **成本**：好 prompt 省 token（[[Token-Optimization]]）
- **品質**：結構化 prompt 讓輸出更穩定、更可預測
- **可維護**：SKILL.md 格式讓 prompt 可以版本控制、分享、重用
- **安全**：理解攻擊向量才能防禦

## 相關專案

- [[affaan-m-everything-claude-code]] — Agent harness 效能優化，含 prompt 最佳化
- [[JuliusBrussee-caveman]] — 穴居人語 prompt，省 75% output token
- [[rtk]] — CLI proxy 壓縮輸入，省 46% input token
- [[sickn33-antigravity-awesome-skills]] — 1,443+ 結構化 SKILL.md

## 相關概念

← [[CLAUDE-md]] · [[AI-Skills]] · [[Token-Optimization]] · [[prompt-security]] · [[llm-knowledge-base]]

---

_此頁由 daily-llm-trending 自動維護_