---
title: CLAUDE.md
slug: CLAUDE-md
created: 2026-05-22
updated: 2026-05-22
language: zh-TW
---

# CLAUDE.md

> ⭐— · Claude Code 的行為設定檔，放在專案根目錄，用自然語言告訴 Claude 該怎麼做、不該怎麼做。

## 快速導航
|
- ⚡ [[Prompt-Engineering]] · [[AI-Skills]] · [[Coding-Agent-CLI]]

## 是什麼

CLAUDE.md 是 Anthropic Claude Code 的專案級設定檔，類似 `.cursorrules` 之於 Cursor。它是一個 Markdown 檔案，放在專案根目錄，用自然語言描述 Claude 的行為規範、專案慣例、和開發偏好。

Anthropic 官方文件將 CLAUDE.md 定義為「advisory」（建議性）檔案 — Claude 大約 80% 機率遵守；超過 200 行後合規率急降，重要規則會被噪音淹沒。

## 核心特色

- **Advisory 性質** — 不是強制約束，是行為建議；合規率約 80%
- **行數上限** — 200 行為實質上限，超過後合規率急降
- **規則型 > 範例型** — 抽象指令（「Be careful」）合規率僅 30%；具體規則合規率 76%
- **Identity prompt 無效** — 叫 Claude「當資深工程師」不改變行為，規則型指令才有效
- **Token budget** — 每條規則消耗 token，3 個範例 = 10 條規則的成本
- **多層級** — 全域 `~/.claude/CLAUDE.md` + 專案級 `./CLAUDE.md` + 子目錄級

## Karpathy 4 條 + 社群 8 條

### 原始 4 條（Forrest Chang 整理自 Karpathy）
1. **Think Before Coding** — 不做隱性假設，明說假設什麼；攤開 trade-off 討論；不確定就問
2. **Simplicity First** — 寫能解決問題的最小程式碼；不寫推測性功能
3. **Surgical Changes** — 只動該動的，不「順手改善」相鄰程式碼
4. **Goal-Driven Execution** — 告訴 Claude「成功長什麼樣子」，不要告訴它步驟

### 社群加 8 條（Mnilax，2026-05）
5. 只把 Claude 用於需要判斷的任務 — 分類、起草、摘要交 Claude；確定性用一般程式碼
6. Token budget 不是建議 — 單任務 4K、單 session 30K；接近 budget 要主動摘要重啟
7. 衝突模式要點明選一個 — 取較新、較有測試的；混合是最差選擇
8. 寫程式碼前先讀懂 — 讀 exports、caller、utility；「看起來無關」最危險
9. 測試要驗證意圖不只行為 — 能在業務邏輯改變時失敗的測試才合格
10. 多步驟任務要 checkpoint — 每步總結「做了什麼、驗證了什麼、剩什麼」
11. 配合既有 codebase 慣例 — snake_case 就 snake_case；不認同當另一場討論
12. 失敗要大聲 — 預設主動揭露不確定，不要藏起來

### 不該做的事
- 超過 14 條規則：合規率掉到 52%
- 用範例代替規則：3 個範例 token 成本 = 10 條規則
- 「Be careful / think hard」等抽象指令：合規率僅 30%
- 叫 Claude「當資深工程師」：identity prompt 對行為改變無效
- 依賴特定工具：「永遠用 eslint」在 eslint 未安裝時會靜默失敗

## 怎麼用

```bash
# 建立專案級 CLAUDE.md
touch CLAUDE.md

# 常見寫法：規則型（合規率高）
echo "- 不要重構沒壞的東西" >> CLAUDE.md
echo "- 只動你必須動的程式碼" >> CLAUDE.md

# 避免：抽象指令（合規率低）
# ❌ "Be careful when writing code"
# ❌ "Think hard before making changes"

# 使用社群規則集（推薦）
/plugin marketplace add forrestchang/andrej-karpathy-skills
/plugin install andrej-karpathy-skills@karpathy-skills
```

## 跟其他方案的關係

| 檔案 | 工具 | 性質 | 合規機制 |
|------|------|------|----------|
| **CLAUDE.md** | Claude Code | Advisory 行為契約 | ~80%（<200行） |
| **.cursorrules** | Cursor | 強制規則檔 | 系統級注入 |
| **AGENTS.md** | 多 Agent | 工作空間指引 | 依 Agent 實作 |
| **COPILOT_INSTRUCTIONS.md** | Copilot | 建議性指引 | 插入 context |
| **SKILL.md** | Hermes/OpenClaw | 技能定義檔 | Agent 載入 |

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[Coding-Agent-CLI]]

---

| 類型 | 數量 | 代表專案 |
|------|------|----------|
| 社群規則集 | 10+ | [[multica-ai-andrej-karpathy-skills]] |
| 官方插件 | 1 | [[anthropics-claude-plugins-official]] |
| 進階技巧 | 1 | [[claude-code-boris-cherny-advanced-techniques]] |
| 百科全書 | 1 | [[affaan-m-everything-claude-code]] |

## 來源
- raw/2026-05-22-abmedia-claude-md-12-rules.md