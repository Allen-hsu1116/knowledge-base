---
title: "Codex Security"
slug: openai-codex-security
created: 2026-11-12
updated: 2026-11-12
stars: 11735
language: zh-TW
topics: ["AI-Agent", "Coding-Agent-CLI", "pentesting"]
---

# Codex Security

> ⭐11.7k · OpenAI 的安全掃描 CLI 與 TypeScript SDK，串接發現、驗證及修補流程。

## 快速導航

- [[AI-Agent]] — 延伸概念與相關工具。
- [[Coding-Agent-CLI]] — 延伸概念與相關工具。
- [[pentesting]] — 延伸概念與相關工具。

## 是什麼

Codex Security 是 OpenAI 提供的程式碼安全工作流，可在 Codex 中使用，也能透過 @openai/codex-security CLI、TypeScript SDK 與 GitHub Action 自動化。它除了找出候選漏洞，也支援驗證 findings、產生補丁與檢查既有修正。

掃描可以針對整個 repository、選定路徑或 Git 差異。完成後會保存報告與 findings，使用者應檢查來源證據、排除項目及覆蓋限制；Deep 模式是重複 Standard 掃描後彙整去重，不等於證明程式沒有漏洞。

Cloud findings 是可選連線，本地掃描不依賴該 Cloud 功能，但模型驗證、帳戶權限與供應商費用仍需另外確認。這是針對程式碼的安全分析流程，不應直接等同完整動態滲透測試。

## 核心特色

- **多種掃描範圍**：支援 repository、指定路徑及基準 revision 到 HEAD 的差異。

- **發現到驗證**：可以驗證候選問題、生成修補並驗證既有修正。

- **政策與威脅模型**：使用根目錄及元件 SECURITY.md，並保存可匯出的 threat model。

- **結果整合**：可輸出 SARIF、JSON、CSV，並串接 GitHub、Jira 或 Linear。

- **自動化介面**：提供 TypeScript SDK、GitHub Action 與容器化批次掃描。

## 怎麼用

### 前置條件

官方要求 Node.js 22.13.0+（22.x）、24.x 或 26.x，以及 Python 3.10+；Python 3.10 另需 tomli。僅在自己擁有或已獲授權的程式庫執行。

### 安裝與基本使用

```bash
npm install --global @openai/codex-security
cs login
# 在已授權的 repository 目錄執行
cs scan . --path src
cs scans show
```

### 建議流程

1. 先限制掃描路徑，再閱讀 REPORT 指向的 Markdown，核對來源證據與 exclusions。
2. 要比較分支差異可使用 cs scan . --diff origin/main。
3. 修補前審閱 finding；套用後重跑專案測試及安全驗證。

### 使用界線

- 部分請求與受保護 findings 可能需要 Trusted Access for Cyber 等帳戶權限。
- 時間及成本上限可能是建議或估計值，不能當成嚴格的費用封頂。
- 本次僅收錄文件，沒有安裝 CLI、登入或對任何專案執行掃描。

## 跟其他方案的關係

以下為依專案定位整理的比較，不是效能排行榜。

| 方案 | 重點 | 與本專案的關係 |
|---|---|---|
| 通用 Codex | 一般 Coding Agent | Security 提供專門的掃描、finding 保存與驗證流程 |
| 傳統靜態分析器 | 規則或資料流分析 | 可匯入第三方結果，但仍需核對格式與證據 |
| 動態滲透測試 | 在運行環境驗證可利用性 | 程式碼掃描不取代授權的完整動態測試 |

## 相關概念

← [[AI-Agent]] · [[Coding-Agent-CLI]] · [[pentesting]]

## 來源

- [GitHub repository](https://github.com/openai/codex-security)
- [官方 README](https://github.com/openai/codex-security/blob/main/README.md)
- 原始快照：`raw/2026-11-12-openai-codex-security.md`
- GitHub metadata：`raw/2026-11-12-openai-codex-security.metadata.json`

---

| Metadata | 值 |
|---|---|
| GitHub | https://github.com/openai/codex-security |
| Stars | 11,735（2026-11-12 快照） |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-11-12 |
