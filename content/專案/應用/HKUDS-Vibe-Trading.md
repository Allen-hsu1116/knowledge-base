# Vibe-Trading

> 你的個人交易 Agent：74 個 Skill + 27 個 Tool + 6 個資料來源，一條指令賦能 Agent 全面交易能力。HKUDS 出品。

## 基本資訊

| 項目 | 內容 |
|------|------|
| GitHub | [HKUDS/Vibe-Trading](https://github.com/HKUDS/Vibe-Trading) |
| Stars | ⭐5,120 |
| Language | Python |
| 建立日期 | 2026-04-01 |
| 收錄日期 | 2026-05-06 |
| 授權 | MIT |

## 快速導航

- 🤖 **Agent 工作流** → [[AI-Agent]]（Vibe-Trading 是垂直領域交易 Agent）
- 🛠 **Agent Skills** → [[AI-Skills]]（74 個內建 Skill，Skill 密度極高）
- 🔌 **MCP 整合** → [[MCP]]（提供 MCP Plugin 讓其他 Agent 調用交易能力）
- 📊 **金融 AI** → [[virattt-dexter]]（Dexter 是另一個 AI 金融研究 Agent）
- 📚 **數據來源** → [[ZhuLinsen-daily_stock_analysis]]（daily_stock_analysis 是另一個 A 股分析工具）

## 是什麼

Vibe-Trading 是香港大學數據科學實驗室（HKUDS）開發的 AI 交易 Agent。它不是一個簡單的選股工具，而是一個完整的交易 Agent 生態系：74 個 Skill、29 個 Swarm Preset、27 個 Tool、6 個數據來源 — 從回測到實盤、從 A 股到港美股、從基本面到技術面，一條指令搞定。

名字「Vibe-Trading」暗示了一種新的交易範式：不用看盤、不用盯 K 線，用自然語言告訴 Agent 你的交易想法，它幫你完成從研究到執行的全流程。這跟 [[virattt-dexter]] 的「自主式 AI 金融研究」方向一致，但 Vibe-Trading 更偏實戰交易、Dexter 更偏研究分析。

## 核心特色

### Skill 密度 — 74 個內建 Skill

Vibe-Trading 的 Skill 覆蓋了交易的全生命週期：

- **研究類**：基本面分析、股息分析、ST 風險篩選
- **策略類**：量化選股、回測、基準比較
- **風控類**：關聯性熱力圖、投資組合分析
- **數據類**：yfinance、AKShare、Futu（港+A 股）、vnpy 匯出
- **執行類**：Docker 部署、Web UI、CLI 互動模式

29 個 Swarm Preset 讓你不用從零配置，直接用預設的 Agent 群組啟動特定交易場景。

### 互動式 CLI

Vibe-Trading 的互動模式有一個即時狀態列：

```
底部狀態列顯示：
- Provider / Model
- Session 時長
- 最近一次調用延遲
- 累計 Tool 調用次數
```

支援 prompt_toolkit 的歷史導航和游標編輯，體驗接近專業交易終端。

### MCP Plugin — 讓其他 Agent 做交易

Vibe-Trading 提供 MCP Plugin，讓任何支援 MCP 的 Agent（Claude Code、OpenClaw 等）可以直接調用交易能力。這意味著你可以在你的 Agent 工作流中無縫插入交易操作。

### 回測 + 基準比較

回測輸出附帶基準比較面板：

```
[策略回測結果] + [基準（SPY / 滬深300 等）]
→ 超額收益 + 資訊比率
→ ECharts 關聯性熱力圖
```

這比單純的「策略賺多少」更有意義：你能看到策略相對基準的表現，以及投資組合內標的的相關性結構。

### 程式碼範例

```bash
# 安裝
pip install -U vibe-trading-ai

# 查看可用 Swarm Preset
vibe-trading --swarm-presets

# 啟動互動式 CLI
vibe-trading

# Web UI（瀏覽器訪問）
vibe-trading --web

# MCP Plugin
vibe-trading --mcp

# A 股 ST 風險篩選
vibe-trading ashare-pre-st-filter

# 股息分析
vibe-trading dividend-analysis

# 回測驗證
python -m backtest.validation <backtest_dir>
```

Docker 部署（非 root 用戶、localhost-only port）：
```bash
docker run -p 8000:8000 hkuds/vibe-trading
```

### 安全設計

Vibe-Trading 在近期版本做了大量安全加固：

- **API_AUTH_KEY**：非本地部署必須設定
- **CORS 驗證**：限制允許的來源
- **路徑限制**：safe_path 防止路徑穿越
- **上傳安全**：1 MB 分塊串流 + MAX_UPLOAD_SIZE 上限
- **Shell 工具門控**：按入口點限制 shell 能力
- **策略載入驗證**：生成的策略碼在 import 前驗證
- **Docker 非 root**：預設非 root 用戶 + localhost-only port

## 與其他方案的關係

[[virattt-dexter]] 是另一個 AI 金融 Agent，偏研究分析。[[ZhuLinsen-daily_stock_analysis]] 偏 A 股每日分析。[[anthropics-financial-services|Anthropic FS]] 是 Anthropic 官方的金融服務 Agent 庫，做分析師工作產出（模型、備忘錄、簡報）。Vibe-Trading 偏實戰交易 — 從研究到回測到執行的全管線。

四者的定位差異：
- **daily_stock_analysis**：每日行情 + 新聞 + LLM 決策儀表盤
- **Dexter**：自主式金融研究 Agent
- **Vibe-Trading**：完整交易 Agent（研究 + 回測 + 風控 + 執行）
- **Anthropic FS**：分析師團隊（10 個專業 Agent + 11 個 MCP 連接器）

[[HKUDS-nanobot]] 和 [[HKUDS-DeepTutor]] 都是 HKUDS 的作品，Vibe-Trading 延續了該實驗室「極致精簡但功能完整」的風格。

## 技術棧

- **核心語言**：Python 3.11+
- **後端**：FastAPI
- **前端**：React 19
- **圖表**：ECharts（關聯性熱力圖）
- **數據來源**：yfinance、AKShare、Futu
- **CLI**：Rich + prompt_toolkit
- **MCP**：MCP Plugin
- **部署**：Docker（非 root）
- **套件**：PyPI `vibe-trading-ai`

## 相關連結

- [GitHub](https://github.com/HKUDS/Vibe-Trading)
- [PyPI](https://pypi.org/project/vibe-trading-ai/)
- [Discord](https://discord.gg/2vDYc2w5)

← [[AI-Agent]] · [[AI-Skills]] · [[MCP]] · [[virattt-dexter]] · [[anthropics-financial-services|Anthropic FS]]