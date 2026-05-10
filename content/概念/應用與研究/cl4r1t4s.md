---
source: https://github.com/elder-plinius/CL4R1T4S
date: 2026-04-28
---

# CL4R1T4S — Prompt 越獄與安全研究

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

## 參考資料

- [GitHub - elder-plinius/CL4R1T4S](https://github.com/elder-plinius/CL4R1T4S)