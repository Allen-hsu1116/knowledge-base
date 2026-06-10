# AutoGPT

> 2023 年引爆 AI Agent 浪潮的自主 Agent 框架，讓 LLM 能自主規劃和執行任務。

## 快速導航
- 🤖 **AI Agent** → [[AI-Agent]]（AutoGPT 是 Agent 自主規劃的里程碑）
- 🧠 **LLM** → [[LLM]]（AutoGPT 以 LLM 為大腦驅動自主行為）

## 是什麼

AutoGPT 是 2023 年出現的自主 AI Agent 框架，證明了 LLM 不只能對話，還能自主規劃、分解任務、使用工具、記住結果，持續迭代直到目標完成。它引爆了整個 AI Agent 生態系。

## 核心特色

- **自主任務規劃**：給定目標後，Agent 自行分解任務、排序執行
- **工具使用**：搜尋引擎、瀏覽器、程式碼執行、檔案讀寫等
- **記憶系統**：短期記憶（當前 context）+ 長期記憶（向量資料庫持久化）
- **模組化架構**：可替換 LLM 後端、自定義工具、擴展能力
- **開源社群驅動**：184K+ stars，最大的 Agent 開源專案之一

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

# 啟動
python -m autogpt
```

## 跟其他方案的關係

| 專案 | 定位 | 關係 |
|------|------|------|
| [[LangChain]] | LLM 應用框架 | AutoGPT 更強調自主規劃，LangChain 更強調工具串接 |
| [[CrewAI]] | 多 Agent 協作 | AutoGPT 是單 Agent 自主，CrewAI 是多 Agent 角色分工 |
| [[AI-Agent]] | 概念頁 | AutoGPT 是 Agent 自主規劃的代表實作 |

AutoGPT 之後，Agent 框架從「讓 LLM 自己跑」演進到「讓 LLM 在架構內跑」——如 CrewAI 的角色分工、LangChain 的 Chain 編排。

## 相關概念
← [[AI-Agent]] · [[LLM]]

## 來源
- raw/2026-05-10-autogpt.md

---

- **GitHub**: https://github.com/Significant-Gravitas/AutoGPT
- **Stars**: ⭐184,119
- **License**: MIT
- **收錄日期**: 2026-05-10