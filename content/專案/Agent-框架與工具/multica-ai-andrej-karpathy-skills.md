---
title: Karpathy CLAUDE.md 規則（4+8 條完整版）
slug: multica-ai-andrej-karpathy-skills
created: 2026-05-20
updated: 2026-05-22
stars: 141652
language: Markdown
repo: https://github.com/multica-ai/andrej-karpathy-skills
---

# Karpathy CLAUDE.md 規則（4+8 條完整版）

> ⭐141.7k · 從 Karpathy 對 LLM coding 的抱怨出發，先有 4 條基礎規則（Forrest Chang），後由 Mnilax 擴充 8 條成為 12 條完整版，是 Claude Code 社群最具影響力的行為契約。

## 快速導航

- 🧠 **Prompt 工程** → [[Prompt-Engineering]]（規則 = 結構化 prompt）
- 🤖 **Agent 技能** → [[AI-Skills]]（CLAUDE.md 是 Agent 行為契約）
- 💻 **Coding CLI** → [[Coding-Agent-CLI]]（Claude Code 的設定檔）
- 📝 **相關專案** → [[affaan-m-everything-claude-code]]（Claude Code 百科）、[[anthropics-claude-plugins-official]]（官方插件）
- 📜 **Karpathy 觀點** → [[andrej-karpathy-ai-how]]、[[llm-knowledge-base]]

## 是什麼

這是一份從 Andrej Karpathy 2025 年 1 月在 X 上的抱怨文出發、由社群演化而成的 Claude Code 行為規則。Forrest Chang 先將 Karpathy 的抱怨濃縮成 4 條可執行規則（65 行 CLAUDE.md）；2026 年 5 月工程師 Mnilax（@Mnimiy）再加 8 條，補上 agent 時代的新失敗模式，形成 12 條完整版。

Anthropic 官方文件說明 CLAUDE.md 是「advisory」檔案，Claude 大約 80% 機率遵守；超過 200 行後合規率急降，重要規則會被噪音淹沒。Forrest Chang 把規則壓縮到 65 行 4 條，Mnilax 擴充到 12 條仍保持在合理行數內。

## 核心特色

- **原始 4 條基礎規則（Forrest Chang）** — Think Before Coding（不做隱性假設、面對 trade-off 攤開討論）、Simplicity First（寫最小程式碼、不寫推測性功能）、Surgical Changes（只動該動的、不順手改善）、Goal-Driven Execution（定義成功標準、迭代到驗證為止）
- **擴充 8 條進階規則（Mnilax）** — 只用 Claude 處理需要判斷的任務、Token budget 限制、衝突模式要點明選一個、寫程式碼前先讀懂、測試要驗證意圖不只行為、多步驟任務要 checkpoint、配合既有 codebase 慣例、失敗要大聲
- **合規率導向設計** — 規則壓縮到 65 行 4 條（Forrest Chang），擴充到 12 條仍保持在合理行數內。超過 14 條合規率掉到 52%，超過 200 行後合規率急降
- **反模式指引** — 明確列出不該做的事：超過 14 條規則、用範例代替規則、抽象指令如「Be careful / think hard」、叫 Claude「當資深工程師」、依賴特定工具

## 怎麼用

```bash
# Claude Code Plugin（推薦）
/plugin marketplace add forrestchang/andrej-karpathy-skills
/plugin install andrej-karpathy-skills@karpathy-skills

# 或者直接加到專案的 CLAUDE.md
curl -o CLAUDE.md https://raw.githubusercontent.com/forrestchang/andrej-karpathy-skills/main/CLAUDE.md

# Cursor 也有支援
# 看 .cursor/rules/karpathy-guidelines.mdc
```

**使用原則**：CLAUDE.md 是「行為契約」不是願望清單 — 每條規則都要回答「這條規則避免哪個具體錯誤」。讀 12 條後保留「對應到你實際踩過的坑」的版本，其餘可刪。

## 跟其他方案的關係

| 方案 | 性質 | 規則數 | 合規率 | 適用 |
|------|------|--------|--------|------|
| **Karpathy 4+8 規則** | 行為契約 | 12 | ~76% | Claude Code, Cursor |
| **CLAUDE.md 官方預設** | Advisory | 無限制 | ~80%（<200行） | Claude Code |
| **affaan-m/everything-claude-code** | 百科全書型 | N/A | 依段落 | Claude Code 參考 |
| **.cursorrules** | 規則檔 | 專案自訂 | 依品質 | Cursor |

- 12 條規則是 [[Prompt-Engineering]] 在 coding agent 領域的最佳實踐 — 每條直接對應一個 LLM 失敗模式
- 與 [[AI-Skills]] 互補 — CLAUDE.md 管「Agent 不要做什麼」，Skills 管「Agent 能做什麼」
- Mnilax 自稱在 30 個 codebase、6 週內測試，錯誤率從 41% 降至 3%（未經獨立驗證）

## 相關概念

← [[AI-Skills]] · [[Prompt-Engineering]] · [[Coding-Agent-CLI]] · [[AI-Skills]] · [[andrej-karpathy-ai-how]]

## 來源

- [原始資料](../raw/2026-05-20-multica-ai-andrej-karpathy-skills.md)
- https://github.com/multica-ai/andrej-karpathy-skills
- https://abmedia.io/claude-md-12-rules-karpathy-mnilax-extended-may-2026（Mnilax 12 條擴充版報導）

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills) | ⭐141,652 | MIT | 2026-05-20 |