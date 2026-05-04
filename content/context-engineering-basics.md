# Context Engineering 基本概念

> 系統化介紹 AI Agent 的核心技術——如何管理語言模型看到的內容，讓輸入長度合適（詳細參考頁）

## 快速導航
- 🧠 **Context Engineering 定義** → [[AI-Agent]]（Agent 的核心就是大 F 函數，決定 LLM 看到什麼）
- 🛠 **壓縮與記憶** → [[AI-Agent]]（LLM Summary、Observation Masking、外部記憶儲存）
- 🔧 **Agent Skills 與按需載入** → [[agent-skills-ecosystem]]（Skill、MCP-Zero 工具動態加載）
- ⚠️ **Context Collapse 風險** → [[prompt-security]]（壓縮可能丟失關鍵指令，如 AI 刪郵件事件）

## 核心內容

### Context Engineering 的形式化定義
- **沒有 CE**：C_{t+1} = C_t + I_t + O_t（直接累積所有歷史）
- **有 CE**：C_{t+1} = F(C_t, I_t, O_t)（用函數 F 決定新的 context）
- **更精確**：C 分為 P（進 LLM 的 prompt）和 M（存在硬碟的記憶），F 分別更新兩者

### Context vs Prompt 的區別
- **Context**：Agent 經歷的一切（包含存在硬碟中不進 LLM 的部分）
- **Prompt**：Context 中真正被丟進 LLM 的部分（P）
- 兩者常被混用，但概念上應區分

### 壓縮方法比較（SWE-bench 實驗）
| 方法 | 效果 | 成本 |
|------|------|------|
| Raw Agent（不壓縮） | 好 | 最高 |
| LLM Summary | 接近 Raw | 較低 |
| Observation Masking | 接近 LLM Summary | 更低 |
| 前期 Masking + 後期 Summary | **最好** | 最低 |

**軌跡延長問題**：壓縮後 LLM 重複已做過的事，步驟反而增加

### 外部記憶：壓縮的進化版
- 工具輸出存成 log1.txt，context 只留「詳見 log1.txt」
- 需要時用 Read 工具重新讀取（就像 Rick & Morty 地下室的記憶管子）
- 記憶可建 graph、標時間戳，方便之後檢索

### ACON：教 LLM 做更好的壓縮
- 問題：普通壓縮會造成 context collapse（如 AI 刪郵件事件）
- 解法：拿另一個 LLM 分析壓縮前後差異，產生 feedback 文字，下次壓縮時給 LLM 看
- **不訓練模型**，只用 prompt engineering 提升壓縮品質
- 也可以用 RL 訓練專門做壓縮的 LLM

### 語言模型不喜歡壓縮
- 給模型 erase 工具，它拒絕使用（壓縮 = 抹除記憶）
- OpenDevin 用強制 memory flush
- AgentFold 用 RL 訓練模型使用 fold 工具（Prompt 不夠，必須微調）

### Subagent 作為自主壓縮
- Subagent 結束時執行 return，整段對話紀錄被替換成回傳內容
- Context 長度呈鋸齒狀升降
- 訓練 Subagent 能力需要額外 reward（懲罰主幹過長、懲罰 subagent 越界）

### 過濾：治本之道
- 84% 的 context 是 observation（工具輸出），action 和 reasoning 只佔 16%
- **聰明的 Read 工具**：讀檔時附帶意圖（如「讀 log 中跟 bug 有關的內容」）
- **Memory Get**：只讀取檔案的指定行數，避免一次讀入全部
- **MCP-Zero**：工具說明也佔 context，應按需加載（讓 LLM 自己決定需要什麼工具）

### Agentic Context Engineering
- 把 Context Engineering 也交給 LLM（用 LLM 來做 F 函數）
- **Dynamic Cheatsheet**：用 prompt engineering 讓 LLM 自己更新 context
- **Playbook**：三個 LLM 模組協作修改員工守則
- **Recursive Language Model**：context 全放硬碟，LLM 自主做 RAG 讀取需要部分

## 關鍵概念
- **Context = P + M**：P 進 LLM，M 存硬碟
- **壓縮是治標，過濾是治本**：84% context 來自 observation
- **語言模型不喜歡壓縮**：必須強制執行或 RL 訓練
- **Subagent = 自主壓縮**：return 後繁瑣過程從 context 消失
- **Agentic CE**：讓 LLM 自己做 Context Engineering

## 相關概念
← [[AI-Agent]] · [[agent-skills-ecosystem]] · [[prompt-security]] · [[llm-knowledge-base]] · [[Context-Database]] · [[Token-Optimization]] · [[volcengine-OpenViking]]

## 相關專案
- [[volcengine-OpenViking]] — Context Database 的開源實作，L0/L1/L2 分層載入
- [[mempalace]] — 宮殿索引式記憶系統
- [[rtk]] — CLI proxy 壓縮 observation context
- [[affaan-m-everything-claude-code]] — 含 Memory Optimization 功能

## 來源
- raw/2026-05-03-urwDLyNa9FU.md