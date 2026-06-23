---
title: CL4R1T4S — Prompt 越獄與安全研究
slug: cl4r1t4s
language: zh-TW
---

# CL4R1T4S — Prompt 越獄與安全研究

> AI 安全研究專案，系統性收集 LLM 的越獄技術和防禦方法，作為安全研究和紅隊測試的參考資料庫。

## 核心內容

CL4R1T4S 是由 elder-plinius（Pliny the Prompter）維護的 AI 安全研究專案，系統性收集了各種 LLM 越獄（jailbreak）技術。名稱「CL4R1T4S」取自拉丁語「claritas」（清晰），反諷地指透過混淆來繞過安全限制的技術。

越獄（Jailbreak）是利用精心構造的 prompt 繞過 LLM 的安全限制（guardrails），讓模型產生原本會被拒絕的輸出。CL4R1T4S 將越獄技術分為六大類：直接注入、角色扮演、編碼繞過、多步驟攻擊、語境注入、格式操縱，每種都附帶對應的防禦策略。

這不是攻擊工具，而是安全研究者的參考資料庫——了解攻擊手法才能設計更好的防禦。隨著 LLM 被廣泛部署在生產環境，安全漏洞可能導致資料外洩和錯誤行為，紅隊測試已成為部署前的必要步驟。CL4R1T4S 提供了系統性的攻擊模式參考，讓防禦者能預先測試自家系統的抵抗力。

## 關鍵要素

- **攻擊分類體系** — 直接注入、角色扮演、編碼繞過（base64/ROT13/emoji）、多步驟攻擊、語境注入、格式操縱六大類型
- **持續更新** — 隨著新攻擊手法出現而不斷更新，反映 LLM 安全領域的快速演進
- **防禦指引** — 每種攻擊都附帶對應的防禦策略：輸入過濾、輸出監控、系統提示加固、多層防禦
- **紅隊測試參考** — 作為部署前安全測試的攻擊模式參考，純粹用於教育和研究目的
- **Agent 場景風險放大** — 當 Agent 有工具存取權時，越獄風險從文字層面升級到實際操作

## 各框架的做法

- **CL4R1T4S** → 攻擊模式參考庫，收集越獄技術供紅隊測試
  👉 詳見 [[cl4r1t4s]]
- **ECC** → AgentShield 安全掃描，偵測 Skill 中的 Prompt Injection 風險
  👉 詳見 [[affaan-m-everything-claude-code]]
- **SkillSpector** → 64 種漏洞模式掃描，涵蓋 Prompt Injection 和資料外洩
  👉 詳見 [[NVIDIA-SkillSpector]]
- **Promptfoo** → LLM 評測和紅隊測試平台，CI/CD 整合
  👉 詳見 [[promptfoo-promptfoo]]

## 相關概念

- [[prompt-security]] — CL4R1T4S 是攻擊參考，Prompt 安全是防禦方法，兩者互為表裡
- [[AI-Agent]] — Agent 有工具存取權時，越獄風險更高
- [[ai-agent-interaction]] — AI Agent 互動的安全性密切相關
- [[harness-engineering]] — Harness Engineering 包含安全邊界設計
- [[Prompt-Engineering]] — 安全設計是 Prompt 工程的一環

## 來源

- CL4R1T4S 安全研究專案
- 越獄技術分類與防禦策略研究筆記