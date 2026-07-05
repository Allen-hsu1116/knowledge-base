---
title: AutoGPT
slug: AutoGPT
created: 2026-05-10
updated: 2026-05-10
stars: 184,119
language: zh-TW
topics: [AI Agent, 自主規劃]
---

# AutoGPT

> ⭐184,119 · 2023 年引爆 AI Agent 浪潮的自主 Agent 框架，讓 LLM 能自主規劃和執行任務。184K ⭐。

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（AutoGPT 是 Agent 自主規劃的里程碑）
- 🧠 **LLM** → [[LLM]]（AutoGPT 以 LLM 為大腦驅動自主行為）

## 是什麼

AutoGPT 是 2023 年出現的自主 AI Agent 框架，證明了 LLM 不只能對話，還能自主規劃、分解任務、使用工具、記住結果，持續迭代直到目標完成。它引爆了整個 AI Agent 生態系——184K+ stars，是 GitHub 上最多星的 AI 專案之一。

## 核心特色

- **自主任務規劃**：給定目標後，Agent 自行分解任務、排序執行，無需人類逐步指示
- **工具使用**：搜尋引擎、瀏覽器、程式碼執行、檔案讀寫等，Agent 自主決定用哪個工具
- **記憶系統**：短期記憶（當前 context）+ 長期記憶（向量資料庫持久化），跨對話保持上下文
- **模組化架構**：可替換 LLM 後端、自定義工具、擴展能力
- **開源社群驅動**：184K+ stars，最大的 Agent 開源專案之一
- **自動除錯**：Agent 能自主修正錯誤、調整策略
- **多種操作模式**：互動模式、自主模式、乾跑模式（不執行只規劃）

## 怎麼用

```bash
# 克隆專案
git clone https://github.com/Significant-Gravitas/AutoGPT.git
cd AutoGPT

# 安裝依賴
pip install -r requirements.txt

# 設定 API Key
cp .env.template .env
# 編輯 .env 填入 OPENAI_API_KEY

# 啟動（互動模式）
python -m autogpt

# 或使用 Docker
docker compose run autogpt
```

使用流程：
1. 設定 Agent 名稱和角色
2. 給定目標（最多 5 個）
3. Agent 自主規劃任務步驟
4. 逐步執行，使用工具完成任務
5. 隨時可以人工介入或調整方向

## 跟其他方案的關係

| 專案 | 定位 | Agent 數量 | 流程控制 | 記憶 | 特色 |
|------|------|-----------|---------|------|------|
| AutoGPT | 自主 Agent | 單 | 自主規劃 | 向量DB | 先驅者，自主性最強 |
| [[LangChain]] | LLM 應用框架 | 單/多 | Chain 編排 | 多種 | AutoGPT 更強調自主，LangChain 更強調串接 |
| [[CrewAI]] | 多 Agent 協作 | 多 | 角色分工 | ✅ | AutoGPT 單 Agent 自主，CrewAI 多 Agent 協作 |
| [[openclaw|OpenClaw]] | 個人助手 | 單+子Agent | SKILL.md | MEMORY.md | 更偏日常助手場景 |
| [[AI-Agent]] | 概念頁 | — | — | — | AutoGPT 是 Agent 自主規劃的代表實作 |

AutoGPT 之後，Agent 框架從「讓 LLM 自己跑」演進到「讓 LLM 在架構內跑」——如 CrewAI 的角色分工、LangChain 的 Chain 編排、OpenClaw 的 SKILL 定義。AutoGPT 的貢獻在於證明了 LLM 可以不只是對話工具，而是能自主完成複雜任務的系統。

## 相關概念
← [[AI-Agent]] · [[LLM]]

## 來源
- raw/2026-05-10-autogpt.md

---

- **GitHub**: https://github.com/Significant-Gravitas/AutoGPT
- **Stars**: ⭐184,119
- **License**: MIT
- **收錄日期**: 2026-05-10

---

| 項目 | 值 |
|------|------|
| **GitHub** | https://github.com/Significant-Gravitas/AutoGPT.git |
| **Stars** | ⭐184,119 |
| **收錄日期** | 2026-05-10 |
