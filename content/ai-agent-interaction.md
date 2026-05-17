# AI Agent 之間的互動

> 探討多 Agent 協作拓撲、對抗博弈（狼人殺/劇本殺）、以及 AI 社交平台 Mobook 的真實與幻象（詳細參考頁）

## 快速導航
- 🧠 **Agent 協作拓撲** → [[AI-Agent]]（Mesh > Chain，不同任務需要不同拓撲）
- 🎭 **Agent 身分與欺騙** → [[agent-persona]]（狼人殺中的策略性欺騙與身分扮演）
- 🔧 **社交平台與 Skill** → [[agent-skills-ecosystem]]（Moltbook 上 AI Agent 的活動模式）
- ⚠️ **AI 自主性與安全** → [[prompt-security]]（人為操控痕跡分析，AI 社交的真實程度）

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

## 關鍵概念
- **協作拓撲影響效果**：Mesh > Chain，互動越多越好
- **Agent Scaling Law**：更多 Agent 帶來更好表現，但有上限
- **AI 能欺騙**：狼人殺中的策略性投票是自發的高階技巧
- **社交 RL 的遷移效果**：劇本殺訓練後數學能力也提升
- **Moltbook 的真實性存疑**：多數「自主」行為可能有人為操控痕跡

## 相關概念
← [[AI-Agent]] · [[agent-persona]] · [[prompt-security]] · [[agent-skills-ecosystem]] · [[AI-Agent]] · [[MCP]] · [[AI-Skills]]

## 相關專案
- [[HKUDS-nanobot]] — 多頻道 Agent 協作的基礎
- [[project-golem]] — 多代理圓桌討論

## 來源
- raw/2026-05-03-ai-agent-interaction.md