# AI Agent 對工作的衝擊（學術研究篇）

> AI Agent 已能獨立寫論文、做實驗、甚至審稿，但人類在問題發想與實驗設計上仍不可取代（詳細參考頁）

## 快速導航
- 🧠 **Agent 自主性** → [[agent-persona]]（AI 從工具到自主完成任務的演進）
- 🛠 **Agent 能力生態** → [[agent-skills-ecosystem]]（Agent 寫作、研究、審稿的能力邊界）
- 🔐 **AI 審稿的信任問題** → [[prompt-security]]（AI reviewer 背後的品質與誠信問題）

## 核心內容

### AI 角色的三階段演進
1. **工具階段**：一個口令一個動作，被動執行人類指令
2. **協作階段**：AI 與人類共同完成任務，能力逐漸增強
3. **自主階段**：AI Agent 能獨立完成整個任務，幾乎不需人類介入

### AI 寫論文的實證
- **Andrew Hall（Stanford 政治經濟學教授）**用 Claude Code 一小時寫完一篇論文；博士生做同樣工作需 16 小時、成本 1000 美金 vs 10 美金——便宜 100 倍
- Claude 有犯一筆數據貼錯的錯，但整體品質接近人類
- 核心洞見：**最有生產力的研究機構可能是「一個資深教授 + 一群 LLM」**

### AI 產生研究 Idea
- 2024 年研究：LLM 產生的研究 idea 在 novelty 上**超越人類**，但 feasibility 較差
- 2025 續作：AI 的 idea 實際做成論文後，novelty 大幅下降——**AI 擅長堆砌新穎詞彙，但實作性不足**
- 關鍵結論：AI 點子表面好看，執行時才發現做不起來

### AI 審查論文
- AAAI 2026 正式引入 AI reviewer（只給意見不打分），但人類背後可能也在用 AI
- 李宏毅親身經歷：reviewer 第一句話是 "Sure I can help you write this review"——直接舉報
- 精彩洞見：**反對的不是用 AI review，而是用不夠好的 AI review**

### AI 完成研究閉環
- **AI Agent for Science 會議**：AI 寫論文 + AI 審稿，接受率 < 20%（247 投稿 → 48 接受）
- 關鍵發現：**被接受的論文在人類「點子發想」和「實驗設計」的介入度明顯較高**
- 資料分析和論文寫作可以由 AI 獨立完成，但初期人類介入仍必要

### Autoresearch（Karpathy）
- LLM 自主訓練模型：每 5 分鐘做一次實驗，自動修改 training script，結果持續進步
- 全程無人類介入

## 關鍵概念
- **研究閉環**：AI 寫論文 → AI 審稿 → AI 接受 → 技術自動進步，不需人類介入
- **100 倍 Research Assistant**：AI 在成本上壓倒性勝出，但品質仍有微小差距
- **Idea 的表面新穎性**：AI 善於組合已有概念產生看似新穎的 idea，但可行性往往不足
- **人類的不可取代性**：在問題發想和實驗設計的早期介入，目前仍是產出高品質研究的關鍵

## 相關概念
← [[agent-persona]]

## 來源
- raw/2026-05-03-VqB8zMujdjM.md