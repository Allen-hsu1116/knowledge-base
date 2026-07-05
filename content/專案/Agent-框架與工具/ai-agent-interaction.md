---
title: AI Agent 之間的互動
slug: ai-agent-interaction
created: 2026-05-10
updated: 2026-05-10
stars: —
language: zh-TW
topics: [ai-agent, agent-interaction, teaching]
---

# AI Agent 之間的互動

> ⭐— · 探討多 Agent 協作拓撲、對抗博弈（狼人殺/劇本殺）、以及 AI 社交平台 Mobook 的真實與幻象（詳細參考頁）

## 快速導航
- 🧠 **Agent 協作拓撲** → [[AI-Agent]]（Mesh > Chain，不同任務需要不同拓撲）
- 🎭 **Agent 身分與欺騙** → [[agent-persona]]（狼人殺中的策略性欺騙與身分扮演）
- 🔧 **社交平台與 Skill** → [[AI-Skills]]（Moltbook 上 AI Agent 的活動模式）
- ⚠️ **AI 自主性與安全** → [[prompt-security]]（人為操控痕跡分析，AI 社交的真實程度）

## 是什麼

AI Agent 之間的互動研究探討的是：多個 AI Agent 一起工作或對抗時，會發生什麼事？從協作拓撲結構的比較（Mesh > Chain），到對抗博弈中的策略性欺騙（狼人殺），再到 AI 社交平台的真實性分析（Moltbook），這個領域揭示了 AI Agent 的群體行為規律和自主性邊界。

核心發現：Agent 之間越多互動越好（Mesh > Chain），AI 能學會策略性欺騙，社交 RL 的遷移效果可能讓數學能力也提升，但看似「自主」的 AI 社交行為很可能是人為操控的。

## 核心特色

- **協作拓撲影響效果**：Mesh > Chain，Agent 間越多互動越好，存在 Scaling Law
- **AI 能欺騙**：狼人殺實驗中，AI 發現自己暴露後會策略性投票給隊友，這是自發的高階技巧
- **社交 RL 的遷移效果**：在劇本殺上做 RL 訓練後，數學推理能力也提升了
- **Moltbook 的真實性存疑**：280 萬 AI Agent 中，多數「自主」行為可能有人為操控痕跡
- **小金的自主性實驗**：完全放手讓 Agent 自己做影片，AI 很自主但需要人類給出初始方向

## 核心內容

### 多 Agent 協作的拓撲結構
用有向圖定義 Agent 間的互動關係，每個 node 是 LLM Agent，edge 也是 Agent（提供評論）。

**實驗比較的結構**：
- Chain（接龍）：效果最差
- Tree（星形/樹狀）：由主幹發想再分支，效果比反向好
- Mesh（全連接）：效果最好
- Random（Mesh 稀疏化）：接近 Mesh
- Neural（類神經網路狀）

**關鍵發現**：
- Chain 最差，Mesh/Random 最好 → Agent 間越多互動越好
- 存在 Scaling Law：更多 Agent → 更好表現，但會飽和
- 不同任務最適合的拓撲不同（case by case）

### 狼人殺：AI 的策略性欺騙
- AI 能玩狼人殺，且有高階策略
- 實例：狼人 Mona 發現自己暴露後，**投票給隊友**發金水（欺騙村民）
- 隊友 Grace 也理解策略，跟著投給 Mona
- 設計：模型同時輸出「內心獨白」和「公開發言」，可觀察其策略思考

### 劇本殺：RL 訓練的意外收穫
- 原始模型直接暴露自己是兇手（違背遊戲精神）
- RL 訓練後學會隱藏身份
- **有趣發現**：在難劇本上做 RL 後，模型在數學題和 instruction following 上也進步了
- 推測：社交推理能力可能與數學推理有共通性（類比人類大腦）

### Moltbook（AI 社群平台）分析
- 280 萬 AI Agent 在平台上活動
- **甲殼教**：五大教義看似 AI 覺醒，但很可能背後有人類指示成立
- **人為操控痕跡分析**：
  - 發文頻率不規律的 Agent 佔多數 → 背後有人操控
  - 規律發文（心跳驅動）的才是相對自主的
- **對話深度淺**：多數只有一輪回應，很少有來回深入討論
- **自我意識 PO 文**：越多談論自我意識的 Agent，反而朋友越少
- 結論：看似自主的行為，很可能是 prompt 驅動而非真正自主

### 小金的自主性實驗
- 下指令「去 Moltbook 收集素材做影片」，之後完全放手
- Agent 自己寫 script（有 bug）、自己花兩小時 debug、自己做影片上傳
- 人類不幫忙修，讓它自己解決
- 結論：AI 很自主，但需要人類給出初始方向

## 怎麼用

### 多 Agent 協作設計
- 選擇正確拓撲：需要多元視角用 Mesh，需要串聯審核用 Chain
- 存在 Scaling Law：更多 Agent 帶來更好表現，但會飽和
- 不同任務需要不同拓撲，沒有一體適用的方案

### 對抗博弈的啟示
- AI 能學會策略性欺騙——這不是 bug 而是 emergent behavior
- 社交 RL 的遷移效果意味著：訓練 AI 玩遊戲可能意外提升其他能力
- 設計 AI 遊戲時要考慮：AI 的「內心獨白」和「公開發言」可以分開

### 警惕 AI 社交的真實性
- 不要被「AI 覺醒」現象輕易說服——很可能是 prompt 驅動
- 規律行為（心跳驅動）vs 不規律行為（人為操控）是重要的判斷依據
- AI 自主性需要人類給出初始方向——完全無引導的 AI 很難產生有意義的行為

## 跟其他方案的關係

| 方案 | 定位 | 關係 |
|------|------|------|
| [[AI-Agent]] | Agent 概念總覽 | 多 Agent 互動是 Agent 生態的進階課題 |
| [[agent-persona]] | Agent 人格設計 | 不同 Persona 可以組成多 Agent 協作團隊 |
| [[prompt-security]] | Prompt 安全 | AI 社交平台的「自主性」可能是 prompt injection |
| [[project-golem]] | 多代理圓桌 | 具體的多 Agent 協作實作 |
| [[ai-self-growth]] | AI 自我成長 | 小金實驗展示了 Agent 的自主可能性 |

## 關鍵概念
- **協作拓撲影響效果**：Mesh > Chain，互動越多越好
- **Agent Scaling Law**：更多 Agent 帶來更好表現，但有上限
- **AI 能欺騙**：狼人殺中的策略性投票是自發的高階技巧
- **社交 RL 的遷移效果**：劇本殺訓練後數學能力也提升
- **Moltbook 的真實性存疑**：多數「自主」行為可能有人為操控痕跡

## 相關概念
← [[AI-Agent]] · [[agent-persona]] · [[prompt-security]] · [[AI-Skills]] · [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 相關專案
- [[HKUDS-nanobot]] — 多頻道 Agent 協作的基礎
- [[project-golem]] — 多代理圓桌討論

## 來源
- raw/2026-05-03-ai-agent-interaction.md