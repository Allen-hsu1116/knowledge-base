# llmfit

> Hundreds of models & providers. One command to find what runs on your hardware. 用 Rust 寫的終端工具，自動偵測硬體、給每個模型打分，告訴你哪個模型跑得動。

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/AlexsJones/llmfit |
| Stars | ⭐25,403 |
| Language | Rust |
| 建立日期 | 2026-02-15 |
| 授權 | MIT |
| 收錄日期 | 2026-05-07 |

## 快速導航

- 🧠 **LLM 本地部署** → [[LLM]]（模型選擇是本地部署的第一步）
- ⚡ **Token 優化** → [[Token-Optimization]]（選對量化 = 省 token 成本）
- 🔌 **MCP 整合** → [[MCP]]（本地推理服務可透過 MCP 對外提供）
- 📄 **文件解析** → [[docling]]（模型跑起來後需要文件輸入管線）

## 是什麼

llmfit 是一個 Rust 寫的終端工具，解決一個很實際的問題：我的機器跑得動哪個 LLM？它自動偵測你的 CPU、RAM、GPU 名稱和 VRAM，然後在數百個模型中為每個模型計算一個綜合分數（品質、速度、適配度、上下文長度四個維度），告訴你哪個模型在你的硬體上能跑、跑多快、最佳量化是什麼。

跟手動查模型參數表比起來，llmfit 把整個評估流程壓縮到一個指令。支援多 GPU、MoE 架構、動態量化選擇、速度估算，以及本地推理後端（Ollama、llama.cpp、MLX、Docker Model Runner、LM Studio）。預設啟動互動式 TUI，也有經典 CLI 模式。

## 核心特色

### 硬體感知評分

llmfit 偵測系統硬體規格後，對每個模型計算四維度分數（品質、速度、適配度、上下文），綜合排序呈現。每行顯示模型分數、預估 tok/s、最佳量化、運行模式、記憶體用量和使用場景分類。

### Community Benchmarks（社群基準）

按 `b` 鍵進入社群基準模式，來自 localmaxxing.com 的真實用戶數據：實測 tok/s、TTFT、VRAM 用量。27+ 硬體預設（從 RTX 5090 到 Apple M1），買卡前就能比較實際數據，不只看理論估算。

### Plan Mode（硬體規劃）

反轉正常分析邏輯：不問「我的硬體跑什麼」，而是問「跑這個模型需要什麼硬體」。輸入目標模型 + 量化 + 期望 TPS，llmfit 估算最低和推薦的 VRAM/RAM/CPU 核心數，以及可行的運行路徑（純 GPU、CPU offload、純 CPU）。

### 硬體模擬

按 `S` 鍵開啟硬體模擬彈窗，覆蓋 RAM、VRAM 和 CPU 核心數，模擬不同硬體環境下的模型表現。買硬體前先試算。

### Download Manager + 原生後端整合

按 `D` 鍵開啟下載管理員：下載模型、查看歷史、刪除已安裝模型、設定下載目錄。`r` 鍵刷新已安裝模型列表（自動偵測 Ollama/llama.cpp/MLX 等本地後端）。

### Vim 風格 TUI 操作

```
j/k 或 ↑/↓  → 導航模型
/           → 搜尋模式（名稱、提供者、參數量、使用場景）
f           → 切換適配篩選：全部 / 可執行 / 完美 / 尚可 / 勉強
s           → 切換排序：分數 / 參數量 / 記憶體% / 上下文 / 日期
m           → 標記模型做比較
c           → 開啟比較視圖
p           → Plan Mode（硬體需求估算）
```

## 安裝方式

```bash
# macOS / Linux（Homebrew）
brew install llmfit

# macOS（MacPorts）
port install llmfit

# 快速安裝腳本
curl -fsSL https://llmfit.axjns.dev/install.sh | sh

# Python（uv）
uv tool install -U llmfit
uvx llmfit  # 免安裝直接跑

# Docker
docker run ghcr.io/alexsjones/llmfit

# 從原始碼編譯
git clone https://github.com/AlexsJones/llmfit.git
cd llmfit && cargo build --release
```

## 技術棧

- **Rust** — 單一二進位檔，零依賴，跨平台
- **ratatui** — TUI 框架
- **Crates.io** — `llmfit` crate
- **CI** — GitHub Actions + SignPath 簽章
- **社群數據** — localmaxxing.com API

## 跟其他方案的關係

llmfit 對應 [[LLM]] 本地部署流程的「模型選擇」階段。[[Token-Optimization]] 關注的是推理階段的 token 節省，而 llmfit 關注的是部署前的模型適配。選對量化等於從源頭決定了 token 成本和速度上限。

跟 [[litellm]] 的定位不同：litellm 是 LLM API gateway（統一多家 API 的呼叫介面），llmfit 是本地部署的模型選擇器（幫你決定跑哪個模型、怎麼跑）。

## 相關概念

← [[LLM]] · [[Token-Optimization]] · [[MCP]] · [[docling]]

## 來源

- GitHub: https://github.com/AlexsJones/llmfit