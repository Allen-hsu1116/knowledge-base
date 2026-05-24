# Fincept Terminal

> 機構級金融智慧平台，整合 37 個 AI Agent、多資產分析與 100+ 數據連接器

## 快速導航
- 🧠 **AI Agent** → [[AI-Agent]]（37 個金融 AI Agent）
- 🛠 **AI 交易** → [[AI-Trader]]（AI 驅動的交易框架）
- 🛠 **金融預測** → [[financial-forecasting]]（量化分析與預測）

## 是什麼

Fincept Terminal 是一個純原生 C++20 桌面應用，使用 Qt6 渲染 UI、嵌入式 Python 執行分析，提供機構級金融分析能力。最獨特的是內建 37 個 AI Agent（涵蓋 Buffett、Graham、Lynch 等投資風格），支援多種 LLM 供應商（OpenAI、Anthropic、Gemini、DeepSeek 等），並整合 100+ 數據來源於一站式中。

## 核心特色

### 37 個 AI Agent 陣容
- **投資大師系列**：Buffett、Graham、Lynch、Munger、Klarman、Marks 等投資哲學 Agent
- **經濟分析 Agent**：宏觀經濟指標追蹤與分析
- **地緣政治 Agent**：國際關係與地緣風險評估
- 支援本地 LLM（Ollama）和雲端供應商（OpenAI、Anthropic、Gemini、Groq、DeepSeek 等）

### 多資產量化分析
- DCF 模型、投資組合最佳化、風險指標（VaR、Sharpe ratio）
- 18 個 QuantLib 模組：定價、風險、隨機過程、波動率、固定收益
- 衍生品定價與風險管理

### 100+ 數據連接器
- DBnomics、Polygon、Kraken、Yahoo Finance、FRED、IMF、World Bank
- 政府數據 API、另類數據覆蓋（Adanos 市場情緒）
- 16 個券商整合（Zerodha、IBKR、Alpaca 等）

### 視覺化工作流
- Node Editor 自動化管線建構
- MCP 工具整合
- AI Quant Lab：ML 模型、因子發現、HFT、強化學習交易

## 怎麼用

### 安裝（推薦：下載安裝包）
從 [GitHub Releases](https://github.com/Fincept-Corporation/FinceptTerminal/releases) 下載對應平台的安裝包。

### 從原始碼建構
```bash
git clone https://github.com/Fincept-Corporation/FinceptTerminal.git
cd FinceptTerminal
chmod +x setup.sh && ./setup.sh
```

### Docker（開發環境用）
```bash
docker build -t fincept-terminal .
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix fincept-terminal
```

## 跟其他方案的關係

| 工具 | 定位 | AI Agent 數 | 主要用途 |
|------|------|-------------|----------|
| **Fincept Terminal** | 全功能金融平台 | 37 | 機構級分析+交易+AI |
| [[AI-Trader]] | AI 交易研究 | — | 學術級 AI 交易框架 |
| [[HKUDS-AI-Trader]] | AI 交易框架 | — | 研究型 AI 交易 |

Fincept Terminal 與 AI-Trader 類似但更全面：後者偏學術研究，前者是生產級桌面應用，整合了交易、分析、AI Agent 和數據連接器於一身。

## 相關概念
← [[AI-Agent]] · [[financial-forecasting]] · [[AI-Trader]] · [[HKUDS-AI-Trader]]

## 來源
- raw/2026-05-23-Fincept-Corporation-FinceptTerminal.md

---

- **GitHub**: https://github.com/Fincept-Corporation/FinceptTerminal
- **Stars**: ⭐22,646
- **License**: AGPL-3.0
- **收錄日期**: 2026-05-23