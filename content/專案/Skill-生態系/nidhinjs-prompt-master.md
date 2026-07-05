---
title: Prompt Master
slug: nidhinjs-prompt-master
created: 2026-05-10
updated: 2026-05-10
stars: 7,257
language: zh-TW
topics: [Prompt Engineering, Token Optimization]
---

# Prompt Master

> ⭐7,257 · Claude Code 技能：為任何 AI 工具寫出精準提示，零浪費 — 7 步管線、9 維度意圖、20+ 工具設定檔。

## 快速導航

- [[Prompt-Engineering|Prompt Engineering]] — 提示工程技術
- [[Token-Optimization|Token Optimization]] — Token 節省技術
- [[AI-Skills|AI Skills]] — 技能格式與生態系

## 是什麼

nidhinjs/prompt-master 是一個 Claude Code skill，自動為任何 AI 工具撰寫精準提示。核心解決的問題：使用者寫模糊提示 → 反覆重試 → 浪費 token 和額度。Prompt Master 跑 7 步結構化管線，從偵測目標工具到交付精準提示，整個過程最多問 3 個澄清問題。

## 核心特色

- **7 步結構化管線** — 偵測工具 → 提取 9 維度意圖 → 澄清問題（最多 3 個）→ 框架路由 → 安全技術 → Token 效率審計 → 交付。每一步都有明確的輸入輸出，確保最終提示精準且不浪費
- **9 維度意圖提取** — task（做什麼）、input（輸入什麼）、output（期望輸出）、constraints（約束）、context（背景）、audience（受眾）、memory（記憶偏好）、success criteria（成功標準）、examples（範例）。9 個維度完整定義意圖，避免模糊
- **20+ 工具設定檔** — Claude、ChatGPT、Gemini、o1/o3、Cursor、GitHub Copilot、Windsurf、Bolt、v0、Lovable、Devin、Perplexity、Midjourney、DALL-E、Stable Diffusion、ComfyUI、Sora、Runway、ElevenLabs、Zapier、Make 等。每個工具的提示策略不同
- **Universal Fingerprint** — 遇到未知工具時，自動分析工具特性（對話型 vs 生成型 vs 程式碼型等），適配最接近的框架
- **Token 效率審計** — 產出的提示本身經過 token 效率檢查，確保沒有冗餘。跟 [[Token-Optimization|Token Optimization]] 目標一致
- **安全技術** — role assignment（角色設定）、few-shot（範例引導）、XML structure（結構化標記）、grounding anchors（錨定基準）、memory block（記憶區塊），5 種技術確保提示穩定可靠

## 怎麼實現的

Prompt Master 的核心是意圖提取 + 框架路由：

1. **工具偵測**：分析使用者描述中提到的工具名稱或特性，匹配 20+ 設定檔。匹配到就直接用對應設定檔的提示策略；匹配不到就進 Universal Fingerprint 路徑
2. **9 維度意圖提取**：用結構化 prompt 從使用者的模糊描述中提取 9 個維度的意圖。缺的維度會在澄清步驟補齊（最多 3 個問題）
3. **框架路由**：根據工具類型選擇提示框架。例如 Midjourney 用描述性 prompt、Claude 用 XML 結構、Copilot 用 inline comment 風格。每個工具有最佳化的框架
4. **安全技術堆疊**：按需組合 5 種安全技術。例如程式碼生成用 role assignment + few-shot，創意生成用 grounding anchors + memory block
5. **Token 審計**：最後一步檢查產出的提示是否有冗餘（重複的指令、過長的範例等），自動精簡

## 怎麼用

```bash
# 作為 Claude Code skill 安裝
# 複製 SKILL.md 到 .claude/skills/ 目錄

# 基本使用 — 告訴 Prompt Master 你想做什麼
> ⭐7,257 · Claude Code 技能：為任何 AI 工具寫出精準提示，零浪費 — 7 步管線、9 維度意圖、20+ 工具設定檔。
# → 自動偵測 Midjourney，提取意圖，產出精確提示

> ⭐7,257 · Claude Code 技能：為任何 AI 工具寫出精準提示，零浪費 — 7 步管線、9 維度意圖、20+ 工具設定檔。
# → 偵測 ChatGPT，提取 9 維度意圖，問最多 3 個澄清問題

> ⭐7,257 · Claude Code 技能：為任何 AI 工具寫出精準提示，零浪費 — 7 步管線、9 維度意圖、20+ 工具設定檔。
# → 偵測 GitHub Copilot，用 inline comment 風格框架

# 澄清問題範例（最多 3 個）
# 1. What specific metrics should the analysis focus on?
# 2. What format do you want the output in?
# 3. Any specific authentication library preference?

# 輸出包含
# - 精準提示（可直接複製使用）
# - Strategy note（解釋為什麼這樣寫）
# - Token 效率評估
```

## 跟其他方案的關係

| 方案 | 定位 | 工具支援 | 意圖提取 | Token 審計 |
|------|------|---------|---------|-----------|
| **Prompt Master** | 通用提示生成 | 20+ | ✅ 9 維度 | ✅ |
| **Academic Research Skills** | 學術流程 | 學術工具 | ✅ 蘇格拉底 | ❌ |
| **手寫提示** | — | — | ❌ | ❌ |

- 與 [[Imbad0202-academic-research-skills|Academic Research Skills]] 互補：Prompt Master 寫通用提示（任何工具），後者執行學術研究流程（研究 → 寫作 → 審查）。可以先讓 Prompt Master 寫研究用的提示，再用 Academic Research Skills 執行
- 與 [[Prompt-Engineering|Prompt Engineering]] 概念直接相關：Prompt Master 把提示工程方法論自動化成可執行的管線
- 與 [[Token-Optimization|Token Optimization]] 相關：提示本身就經過 token 效率審計，避免寫出浪費 token 的提示

## 相關概念

- [[Prompt-Engineering|Prompt Engineering]]
- [[Token-Optimization|Token Optimization]]
- [[AI-Skills|AI Skills]]

## 來源

- raw/2026-05-08-nidhinjs-prompt-master.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [nidhinjs/prompt-master](https://github.com/nidhinjs/prompt-master) | ⭐7,257 | — | 2026-05-08 |