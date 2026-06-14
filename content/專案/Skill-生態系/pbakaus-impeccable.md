---
title: Impeccable
slug: pbakaus-impeccable
created: 2026-06-02
updated: 2026-06-02
stars: 32698
language: JavaScript
---

# Impeccable

> ⭐32.7k · 讓 AI coding agent 做出更好前端設計的設計語言，7 個領域參考 + 23 個指令 + 反模式檢查。

快速導航：[[AI-Skills|AI Skills]] · [[frontend-design|前端設計]] · [[open-design|Open Design]] · [[anthropics-claude-code|Claude Code]]

## 是什麼

Impeccable 是一個專為 AI coding agent 打造的設計技能（Skill）。每個 AI 模型都在差不多的 SaaS 模板上訓練過，結果就是——如果你不特別引導，出來的設計全長一樣：Inter 字體、紫藍漸層、卡片套卡片、彩色背景上灰字、圓角方塊 icon。Impeccable 就是要解決這個「AI 設計同質化」的問題。

它從 Anthropic 的 frontend-design skill 出發，大幅擴展成一套完整的設計系統。核心包含 7 個領域參考檔（字體、色彩、動態、空間、互動、響應式、UX 文案）、23 個設計指令（audit、critique、polish、bolder、quieter 等）、以及 27 條確定性反模式規則。CLI 和瀏覽器擴充功能跑確定性規則時不需要 LLM、不需要 API key。

Impeccable 不只是告訴 Agent 要怎麼做，更明確告訴它不要怎麼做。透過反模式規則和 LLM 評審流程，雙重把關避免常見 AI 設計缺陷。

## 核心特色

- **7 個領域參考檔**：Typography、Color & Contrast、Spatial Design、Motion Design、Interaction Design、Responsive Design、UX Writing，每次指令都會載入
- **23 個設計指令**：從 craft（完整流程）到 polish（收尾打磨）、bolder（加大力度）、quieter（降低調性）等，建立你跟 AI 的設計共通語彙
- **27 條確定性反模式規則**：不用 LLM、不用 API key 就能跑。每條規則對應一個 skill 教你要避開的設計問題
- **12 條 LLM 評審規則**：確定性規則之外，用 LLM 做更深層的設計品質審查
- **跨 Agent 平台**：支援 Claude Code、Cursor、Gemini CLI、Codex CLI、Pi、OpenCode 等
- **品牌 vs 產品調性**：內建 brand-vs-product register，自動調整預設設計風格

## 怎麼用

### 安裝（CLI 推薦）

```bash
npx impeccable skills install
```

自動偵測你的 AI 工具並寫入正確位置（`.claude/skills/`、`.cursor/skills/` 等）。

### Claude Code 外掛方式

```
/plugin marketplace add pbakaus/impeccable
```

### 通用安裝

```bash
npx skills add pbakaus/impeccable
```

### 指令範例

```
/impeccable audit blog           # 對 blog 頁面做品質審計
/impeccable critique landing     # UX 設計評審
/impeccable polish settings      # 上市前最後打磨
/impeccable bolder hero          # 讓 hero 更有力度
/impeccable animate dashboard    # 加入有意義的動態
```

## 跟其他方案的關係

| 方案 | 類型 | 反模式檢查 | 指令數 | 跨平台 | 適合場景 |
|------|------|-----------|--------|--------|---------|
| **Impeccable** | 設計 Skill | ✅ 27+12 | 23 | ✅ 多工具 | 前端設計品質提升 |
| [[open-design\|Open Design]] | 設計 Skill | ❌ | 少 | 限 Claude Code | 基本設計引導 |
| [[Leonxlnx-taste-skill\|Taste Skill]] | 設計 Skill | ❌ | 少 | 限 Claude Code | 前端品味引導 |
| Anthropic frontend-design | 原始 Skill | ❌ | 少 | 限 Claude Code | 基礎設計規範 |
| [[hardikpandya-stop-slop\|stop-slop]] | 寫作品質 | ❌ | 少 | 通用 | AI 寫作去模板化 |

← [[open-design|Open Design]] · [[AI-Skills|AI Skills]] 相關概念

## 來源

- raw/2026-06-02-pbakaus-impeccable.md
- GitHub: [pbakaus/impeccable](https://github.com/pbakaus/impeccable)
- 官網: [impeccable.style](https://impeccable.style)
- Raw 檔案: [[raw/2026-06-02-pbakaus-impeccable|原始資料]]

---

| 項目 | 值 |
|------|-----|
| GitHub | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| Stars | ⭐32,698 |
| License | Apache-2.0 |
| Language | JavaScript |
| 收錄日期 | 2026-06-02 |