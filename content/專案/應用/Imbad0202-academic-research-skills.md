# Academic Research Skills

> Claude Code 學術研究技能套件，從研究到發表的完整管線 — 13 Agent 研究 + 12 Agent 寫作 + 7 Agent 審查 + 10 階段管線。

## 快速導航

- [[AI-Skills|AI Skills]] — 技能格式與生態系
- [[AI-Agent|AI Agent]] — 自主 AI 系統
- [[Prompt-Engineering|Prompt Engineering]] — 提示工程技術

## 是什麼

Imbad0202/academic-research-skills 是一套 Claude Code 技能組合，涵蓋學術研究全流程：深度研究（13 Agent 團隊）、論文撰寫（12 Agent）、同儕審查（7 Agent）、管線編排（10 階段）。受 PaperOrchestra 和 The AI Scientist 啟發，目標是讓 AI 輔助從研究問題到發表的每個步驟。

## 核心特色

- **Deep Research（13 Agent）** — 13 個 agent 組成研究團隊，蘇格拉底引導模式逐步釐清研究意圖，PRISMA 系統性回顧框架保證文獻搜尋完整性，Semantic Scholar API 驗證引用有效性。支援意圖偵測和對話健康監控，可選跨模型 DA（Devil's Advocate）
- **Academic Paper（12 Agent）** — 12 個 agent 分工寫論文：Style Calibration 先校準寫作風格，Writing Quality Check 檢查品質，LaTeX Hardening 確保編譯通過，VLM Figure Verification 用視覺模型驗證圖表，Citation Conversion 轉換引用格式。Anti-leakage protocol 防止跨 section 資訊洩漏
- **Academic Paper Reviewer（7 Agent）** — 7 個 agent 從不同角度做同儕審查，0-100 品質評分量表。每個 agent 負責不同審查維度（方法論、統計、引用、邏輯等），最終彙整成結構化審查報告
- **Academic Pipeline（10 階段）** — 10 階段管線編排器，從研究問題到終稿。自適應檢查點（通過才往下走）、主張驗證（claim verification 確保每個論點有支撐）、Material Passport 追蹤每個材料的來源。可選 repro_lock 鎖定可重現性

## 怎麼實現的

整個系統建基於 multi-agent 協作 + 結構化管線：

1. **Multi-Agent 分工**：每個 skill 不是單一 agent，而是一個 agent 團隊。例如 Deep Research 有 13 個 agent，各負責意圖偵測、文獻搜尋、引用驗證、DA 挑戰等。Agent 之間透過結構化交接文件傳遞結果
2. **蘇格拉底引導**：Research agent 不是直接開始搜尋，而是先用蘇格拉底式提問釐清研究意圖、範圍和約束，避免方向錯誤浪費 token
3. **PRISMA 框架**：系統性回顧用 PRISMA 流程（identification → screening → eligibility → inclusion），確保文獻搜尋可重現、不遺漏
4. **Anti-leakage Protocol**：論文寫作時，不同 section 的 agent 不能看到彼此的草稿中間狀態，防止結果洩漏到方法 section 等不該出現的地方
5. **自適應檢查點**：管線每個階段有品質閘門，通過才往下。未通過時自動回退並提示修正方向

## 怎麼用

```bash
# 安裝技能
/plugin marketplace add Imbad0202/academic-research-skills

# 深度研究
> /deep-research "What are the latest advances in RLHF?"
# 系統會先用蘇格拉底提問釐清你的研究範圍

# 寫論文
> /academic-paper "Write a survey on RLHF from the research results"
# 12 個 agent 分工寫作，Style Calibration 先校準風格

# 同儕審查
> /academic-paper-reviewer "Review the generated paper"
# 7 個 agent 從不同角度審查，0-100 評分

# 完整管線
> /academic-pipeline "Investigate RLHF and produce a publishable paper"
# 10 階段自動編排：研究 → 大綱 → 寫作 → 審查 → 修訂 → 終稿
```

## 跟其他方案的關係

| 方案 | 定位 | Agent 數 | 管線 | 審查 |
|------|------|---------|------|------|
| **Academic Research Skills** | 學術全流程 | 13+12+7 | ✅ 10 階段 | ✅ 7 角度 |
| **everything-claude-code** | 通用 Agent 優化 | N/A | ❌ | ❌ |
| **Prompt Master** | 提示撰寫 | 7 步管線 | ✅ | ❌ |

- 與 [[affaan-m-everything-claude-code|everything-claude-code]] 互補：後者是通用 Agent 效能優化系統，前者是專精學術場景的技能組。可以先用 ECC 優化 Agent，再用 Academic Research Skills 做研究
- 與 [[nidhinjs-prompt-master|Prompt Master]] 互補：Prompt Master 寫通用提示，Academic Research Skills 執行學術研究流程
- 受 PaperOrchestra（Song et al., 2026）和 The AI Scientist（Lu et al., 2026）啟發，但差異在於：PaperOrchestra 是完整自動化，此技能組保留人類在迴圈的檢查點

## 相關概念

- [[AI-Skills|AI Skills]]
- [[AI-Agent|AI Agent]]
- [[Prompt-Engineering|Prompt Engineering]]
- [[AI-Tutoring|AI Tutoring]]

## 來源

- raw/2026-05-08-Imbad0202-academic-research-skills.md

---

| GitHub | Stars | License | 收錄日期 |
|--------|-------|---------|----------|
| [Imbad0202/academic-research-skills](https://github.com/Imbad0202/academic-research-skills) | ⭐4,927 | — | 2026-05-08 |