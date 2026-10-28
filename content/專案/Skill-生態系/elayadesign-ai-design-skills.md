---
title: AI Design Skills
slug: elayadesign-ai-design-skills
created: 2026-10-28
updated: 2026-10-28
stars: 9355
language: zh-TW
topics: ["AI-Skills", "frontend-design"]
---

# AI Design Skills

> ⭐9.4k · Landing page 策略、文案與視覺規則，供 Coding Agent 載入。

## 快速導航

- [[AI-Skills]]
- [[frontend-design]]

## 是什麼

AI Design Skills 是供 AI coding 工具讀取的設計規則集合，不是獨立網站產生服務，也不包含模型權重。每個 skill 是獨立資料夾，可按需求選用；README 提供 Claude Code、Cursor、Codex、Windsurf 等工具的載入方式。

本次快照列出 landing-page-design，將需求訪談、頁面結構、轉換文案與視覺系統放在同一套流程。規則先釐清單一受眾、單一 offer 與主要行動，再逐區塊實作頁面，而非一開始就任意挑配色。

作者另有 redesign-skill 處理既有網站翻修。這裡的「高轉換」是設計目標，不是本次驗證過的商業成效；實際仍需分析流量與轉換數據。

## 核心特色

- **策略先行**：整理目的、受眾、證據素材與品牌限制，再選擇頁面布局。
- **完整頁面論述**：涵蓋 hero、利益、運作流程、社會證明、FAQ 與最後 CTA。
- **可調整的視覺系統**：字體、間距、圓角、背景與動態規則集中管理。
- **跨工具文字規則**：透過 SKILL.md 或各工具支援的 rules 檔案載入，不綁特定模型 API。
- **互動與可及性檢查**：要求 focus、loading、empty、error 等狀態，並尊重 reduced-motion。
- **來源脈絡清楚**：部分內容與動態設計想法改寫自 taste-skill，附有授權文字。

## 怎麼用

以下是 README 的 Claude Code 安裝方式，將 placeholder 換為實際 skill 名稱；本次收錄只讀取文件，沒有替使用者安裝。

```bash
mkdir -p .claude/skills
git clone https://github.com/elayadesign/ai-design-skills.git /tmp/ai-design-skills
cp -r /tmp/ai-design-skills/skills/landing-page-design .claude/skills/
```

### 建議使用順序

1. 先閱讀 SKILL.md，確認規則適合品牌與現有技術棧。
2. 提供受眾、主要 CTA、產品 offer 與真實素材。
3. 讓 Agent 先產生頁面大綱與 hero 文案，再逐區塊寫程式。
4. 檢查手機版、鍵盤 focus、表單驗證與動態偏好。
5. 以實際測試和分析工具驗證，不把規則本身當成果保證。

### 採用前注意

README 的 Codex 範例使用 AGENTS.md；合入既有規則前應先備份與檢視衝突，不要直接覆蓋。

Skill 鼓勵寫出逼真的示例內容；編輯建議是明確標示示例，切勿把虛構客戶、證言或數字當成真實社會證明。

MIT 授權仍有保留授權與版權聲明的條件，不能把 README 的簡短宣傳文字理解為無條件移除授權。

## 跟其他方案的關係

以下是功能定位對照，不是跑分或轉換率測試。

| 方案 | 核心定位 | 適合情境 |
|---|---|---|
| AI Design Skills | 從策略到視覺的 landing page 規則 | 建立新行銷頁 |
| redesign-skill | 作者的獨立既有網站翻修專案 | 改造已存在頁面 |
| [[Leonxlnx-taste-skill]] | 本專案部分內容的設計靈感來源 | 比較設計規則與內容品質方法 |
| [[AI-Skills]] | 封裝可重用能力的一般概念 | 理解 skill 如何載入與治理 |

## 相關概念

← [[AI-Skills]] · [[frontend-design]]

## 來源

- [GitHub](https://github.com/elayadesign/ai-design-skills)
- [README](https://github.com/elayadesign/ai-design-skills/blob/main/README.md)
- 原始快照：`raw/2026-10-28-elayadesign-ai-design-skills.md`
- Metadata 快照：`outputs/trending-2026-10-28/elayadesign-ai-design-skills.json`
- [landing-page-design SKILL.md](https://github.com/elayadesign/ai-design-skills/blob/main/skills/landing-page-design/SKILL.md)

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/elayadesign/ai-design-skills |
| Stars | 9,355（2026-10-28 快照） |
| License | MIT |
| Language | GitHub 未標示；內容以 Markdown 文件為主 |
| 收錄日期 | 2026-10-28 |
