---
source: https://www.bnext.com.tw/article/90638/persona-skill-colleague
date: 2026-04-28
tags: [persona, agent, skill, colleague, ai-identity, prompt-engineering]
---

# 用 Persona + Skill 打造 AI 同事

> AI 工具正在從「助理」進化成「同事」，關鍵在於 Persona（人格）和 Skill（技能）的搭配。不只告訴 AI 做什麼，而是定義它是誰、擅長什麼，讓它在特定領域像真正的專業同事一樣工作。

**來源**: 數位時代 BusinessNext
**日期**: 2026.04.11
**作者**: 李先泰

## Persona：AI 是誰？

Persona 是 AI 的身分設定，包含：
- **角色定位**：它的工作是什麼？（如：資深前端工程師、產品經理）
- **溝通風格**：它怎麼說話？（如：直接、用代碼說話、不廢話）
- **決策偏好**：面對取捨時怎麼選？（如：偏好簡單方案勝過完美方案）
- **經驗背景**：它「經歷」過什麼？（如：10 年大型系統經驗、踩過效能地雷）

為什麼重要：
- 沒有 Persona 的 AI = 通才 = 什麼都行但什麼都不精
- 有 Persona 的 AI = 專才 = 在特定領域表現更好、回覆更一致
- Persona 讓 AI 的回答有立場、有深度

### 常見 Persona 範例

| Persona | 注重面向 |
|---------|----------|
| 資深工程師 | 效能、可維護性 |
| 產品經理 | 用戶體驗、商業價值 |
| 安全審計員 | 風險、合規 |
| 技術寫作者 | 清晰、結構 |

## Skill：AI 會什麼？

Skill 是 AI 的能力清單和操作手冊：
- **工具使用**：它會用哪些工具？（瀏覽器、終端機、API）
- **流程步驟**：遇到某類任務時的標準作業流程
- **品質標準**：產出的最低品質門檻
- **限制範圍**：哪些事不做、哪些要確認

### Skill 與 Persona 的關係

- **Persona 決定「為什麼這樣做」**
- **Skill 決定「怎麼做」**
- 兩者搭配 = 有方向又有方法的 AI 同事

## 從助理到同事：三個層次

| 層次 | 特點 | 問題 |
|------|------|------|
| **工具（Tool）** | 你下指令，AI 執行 | 每次都要從頭說明背景 |
| **助理（Assistant）** | AI 有基本角色，能主動追問 | 角色太泛，專業度不夠 |
| **同事（Colleague）** | AI 有明確 Persona + 多個 Skill，能主動判斷情境 | 需要好的 onboarding |

## 實作方式

### OpenClaw 的做法

- **SOUL.md**：AI 的身分、個性、價值觀（= Persona）
- **SKILL.md**：特定任務的操作手冊（= Skill）
- **AGENTS.md**：工作規範和流程
- **MEMORY.md**：跨會話的長期記憶

### Agent Skills 生態系

GitHub 上的 Agent Skills 專案：
- [[addyosmani-agent-skills|addyosmani/agent-skills]]：通用 Agent Skills 集合
- [[google-skills|google/skills]]：Google 產品和技術的 Agent Skills
- [[karpathy-skills|Karpathy 風格知識庫 Skill]]：知識庫 Skill

## 關鍵洞見

1. **Persona 是方向，Skill 是方法**——兩者缺一不可
2. **好的 Persona 讓 AI 有立場**——不只是回答問題，而是像專業人士一樣給建議
3. **好的 Skill 讓 AI 有流程**——不只是隨機回答，而是按步驟產出一致品質
4. **從助理到同事的關鍵**：讓 AI 有足夠的上下文和流程，減少重複說明

## 相關主題

- [[agent-skills-ecosystem|Agent Skills 生態系]]
- [[agency-agents-144-personas|Agency Agents 144 人格]]
- [[agent-persona|Agent Persona]]

## 參考資料

- [數位時代報導](https://www.bnext.com.tw/article/90638/persona-skill-colleague)