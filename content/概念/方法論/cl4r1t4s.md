---
title: CL4R1T4S — Prompt 越獄與安全研究
slug: cl4r1t4s
source: https://github.com/elder-plinius/CL4R1T4S
date: 2026-04-28
stars: 42841
updated: 2026-06-14
language: zh-TW
---

# CL4R1T4S

> ⭐42.8k · Prompt 越獄與安全研究 — Prompt 越獄與安全研究

> AI 安全研究專案，專注於 LLM 的越獄（jailbreak）技術和防禦方法。收集了大量已知的 prompt injection 攻擊模式和繞過安全限制的技術，作為安全研究和紅隊測試的參考。

**GitHub**: https://github.com/elder-plinius/CL4R1T4S
**Stars**: ~2.8k

## 什麼是越獄（Jailbreak）

利用精心構造的 prompt 繞過 LLM 的安全限制（guardrails），讓模型產生原本會被拒絕的輸出。目的：安全研究、紅隊測試、了解模型弱點。

## 主要攻擊分類

| 類型 | 說明 |
|------|------|
| 直接注入 | 在 prompt 中直接要求模型忽略安全規則 |
| 角色扮演 | 讓模型扮演沒有安全限制的角色 |
| 編碼繞過 | 用 base64、ROT13 等編碼隱藏惡意指令 |
| 多步驟攻擊 | 透過多輪對話逐步繞過限制 |
| 語境注入 | 在看似無害的內容中嵌入指令 |
| 格式操縱 | 利用 markdown、JSON 等格式混淆 |

## 防禦策略

- **輸入過濾**：檢測已知的攻擊模式
- **輸出監控**：對模型輸出進行二次審查
- **系統提示加固**：強化 system prompt 的安全指令
- **多層防禦**：不依賴單一防禦機制
- **持續更新**：攻擊手法不斷進化，防禦也要跟上

## 為什麼重要

- LLM 被廣泛部署在生產環境中
- 安全漏洞可能導致資料外洩、錯誤行為
- 紅隊測試是部署前的必要步驟
- 了解攻擊才能設計更好的防禦

## 與其他概念的關係

- [[prompt-security|Prompt 安全]] — Prompt Engineering 的反面
- Agent 安全：當 AI Agent 有工具存取權時，越獄風險更高
- 與 [[ai-agent-interaction|AI Agent 互動]] 的安全性密切相關

## ⚠️ 注意

此專案純粹用於安全研究和教育目的。不應用於惡意攻擊。

## 快速導航

- 🔒 **Prompt 安全** → [[prompt-security|Prompt 安全]]（CL4R1T4S 是越獄攻擊的參考，Prompt 安全是防禦方法）
- 🤖 **AI Agent** → [[AI-Agent]]（Agent 有工具存取權時，越獄風險更高）
- ⚠️ **AI Agent 互動** → [[ai-agent-interaction|AI Agent 互動]]（安全性密切相關）

## 是什麼

CL4R1T4S 是由 elder-plinius（Pliny the Prompter）維護的 AI 安全研究專案，系統性收集了各種 LLM 越獄（jailbreak）技術。名稱「CL4R1T4S」取自拉丁語「claritas」（清晰），反諷地指透過混淆來繞過安全限制的技術。

這不是攻擊工具，而是安全研究者的參考資料庫——了解攻擊手法才能設計更好的防禦。

## 核心特色

- **攻擊分類體系**：將越獄技術分為直接注入、角色扮演、編碼繞過、多步驟攻擊、語境注入、格式操縱等類型
- **持續更新**：隨著新攻擊手法出現而不斷更新
- **防禦指引**：每種攻擊都附帶對應的防禦策略
- **紅隊測試參考**：作為部署前安全測試的攻擊模式參考

## 怎麼用

1. 瀏覽 [CL4R1T4S GitHub](https://github.com/elder-plinius/CL4R1T4S) 了解各種越獄技術
2. 將攻擊模式用於自家 LLM 的紅隊測試
3. 參考防禦策略加固系統提示和輸出過濾

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[prompt-security|Prompt 安全]] | 防禦方法 | CL4R1T4S 是攻擊參考，Prompt 安全是防禦方法 |
| [[affaan-m-everything-claude-code]] | Claude Code 資源大全 | 包含 Prompt 安全相關資源 |
| [[ai-agent-interaction|AI Agent 互動]] | Agent 互動安全 | 越獄風險在 Agent 場景更高 |

## 相關概念

← [[prompt-security|Prompt 安全]] · [[AI-Agent]] · [[ai-agent-interaction|AI Agent 互動]]

## 來源

- GitHub: https://github.com/elder-plinius/CL4R1T4S
- Stars: ~2.8k
- 收錄日期: 2026-04-28

---

**⚠️ 注意**：此專案純粹用於安全研究和教育目的。不應用於惡意攻擊。

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/elder-plinius/CL4R1T4S |
| **Stars** | ⭐42841 |
