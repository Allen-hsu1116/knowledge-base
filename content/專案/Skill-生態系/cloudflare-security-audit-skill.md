---
title: "Cloudflare Security Audit Skill"
slug: "cloudflare-security-audit-skill"
created: "2026-09-17"
updated: "2026-09-17"
stars: 7247
language: "JavaScript"
topics: ["AI-Skills", "pentesting"]
---

# Cloudflare Security Audit Skill

> ⭐7.2k · JavaScript · 以覆蓋帳本、獨立驗證與結構化紀錄組織多階段程式碼安全稽核。

## 快速導航

- [[AI-Skills]]
- [[pentesting]]

## 是什麼

security-audit-skill 是供 coding agent 載入的安全稽核技能，不是獨立掃描服務。它透過多個隔離子 Agent 分配檢查工作，從架構偵察、候選發現到最終報告建立可追蹤的證據鏈。

README 描述六階段流程：偵察、coverage-led hunting、候選驗證、結構化輸出、獨立紀錄驗證與中立報告。發現者不負責驗證自己的發現；後续來源主張還會交給新的驗證者，降低同一推論反覆自我肯定的風險。

此 repo 是 Cloudflare 更大 vulnerability harness 的單一 repo 起點，不等同完整 fleet-wide 系統。它的學習價值在於把不確定性寫進資料結構，而非把所有懷疑都包裝成已確認漏洞。

## 核心特色

- **覆蓋帳本**：以 coverage-ledger.json 記錄範圍、已檢查項目和缺口，支援後續補查。

- **獨立反證**：新的 verifier 嘗試推翻候選；發現者與驗證者分工。

- **三態 findings**：明確區分 confirmed、needs_validation、rejected；未決項目不直接標嚴重性。

- **機器可驗證輸出**：JSON schema 與無依賴 Node.js validator 檢查 findings 和 coverage ledger。

- **多輪累積證據**：利用既有結果補足缺口，但不把過期或未解決事項當作已覆蓋。

## 怎麼用

需要支援工具和並行子 Agent 的 coding agent，以及 Node.js。執行目標程式碼還必須具備 OS 層強制沙箱、禁外網、乾淨環境、資源上限及限定寫入路徑。

```bash
npx skills add https://github.com/cloudflare/security-audit-skill \
  --skill security-audit
```

### 建議操作流程

1. 只針對自己擁有或獲明確授權的程式碼啟動稽核，先界定範圍。
2. 在 coding agent 中提出 security audit this codebase，並指定獨立的報告輸出位置。
3. 檢查 architecture.md、coverage-ledger.json 和 findings.json，再閱讀衍生的 REPORT.md 等報告。

### 使用限制與驗證邊界

沒有符合條件的 OS 沙箱時，流程應保留 needs_validation，不執行目標建置或測試。Agent 的核准提示不等於 OS 強制隔離；沒有發現問題也不代表程式碼安全。

本次僅完成來源擷取與文件整理，未安裝、啟動或評測此專案。

## 跟其他方案的關係

| 方案 | 主要定位 | 適用與限制 |
|---|---|---|
| 此 Skill | 多階段調度、反證與可追蹤結果 | 需要宿主 Agent、模型及隔離環境 |
| 單次 LLM code review | 直接閱讀與指出疑點 | 容易缺少覆蓋紀錄和獨立驗證 |
| 規則式靜態分析 | 以固定規則找程式模式 | 可互補提供候選，不能直接替代影響驗證 |

以上比較針對工作流程，不是漏洞檢出率測試。上游多輪實驗的敘述不能泛化為任何 repo 的固定準確度。

## 相關概念

← [[AI-Skills]] · [[pentesting]]

## 來源

- GitHub：https://github.com/cloudflare/security-audit-skill
- README 快照：`raw/2026-09-17-cloudflare-security-audit-skill.md`
- Metadata 快照：`raw/2026-09-17-cloudflare-security-audit-skill-metadata.json`
- https://blog.cloudflare.com/build-your-own-vulnerability-harness
- https://github.com/cloudflare/security-audit-skill/blob/main/SKILL.md

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/cloudflare/security-audit-skill |
| Stars | ⭐7,247（2026-09-17 擷取） |
| License | MIT |
| Language | JavaScript |
| 收錄日期 | 2026-09-17 |
