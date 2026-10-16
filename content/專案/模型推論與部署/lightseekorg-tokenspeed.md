---
title: TokenSpeed
slug: lightseekorg-tokenspeed
created: 2026-10-16
updated: 2026-10-16
stars: 2490
language: zh-TW
topics: [模型推論與部署, LLM, agentic-inference]
---

# TokenSpeed

> ⭐2.5k · 面向 Agent 工作負載的 LLM 推論引擎，以 C++ 排程控制面搭配 Python 執行面。

## 快速導航

- [[模型推論與部署]] — 理解排程、硬體與服務化的選擇。
- [[LLM]] — 生成模型與推論引擎的角色區分。

## 是什麼

TokenSpeed 是 LightSeek Foundation 維護的開源 LLM inference engine，服務目標是 agentic workloads。它不是 Agent 編排器，也不是模型權重；工作是載入相容模型、管理請求與 GPU 資源，再對外提供生成服務。

核心架構將 C++ 控制面和 Python 執行面分開。官方說明以有限狀態機表達請求生命週期、KV cache ownership 與 overlap timing，並利用型別系統約束資源重用；Python 端則保留模型與執行邏輯的迭代彈性。

README 以「TensorRT-LLM 等級效能、vLLM 等級易用性」描述目標，這是專案定位，不是本次驗證的結論。特定 GPU 與模型的 benchmark 不能外推到所有硬體、上下文長度及併發量。

## 核心特色

- **分離控制面與執行面**：C++ 負責排程資源狀態，Python 負責執行層。
- **有限狀態機排程**：明確描述 request、KV cache 與重疊執行時序，官方強調編譯期資源管理檢查。
- **模組化 kernels**：提供公開 API、集中 registry 與可擴充 plugin 機制。
- **MLA 最佳化**：README 特別強調 Blackwell 上面向 Agent 工作的 Multi-head Latent Attention kernels。
- **低 CPU 開銷入口**：官方以整合 SMG 的 AsyncLLM 處理請求入口。
- **OpenAI 相容服務**：`tokenspeed serve` 提供 HTTP API，可接入相容 client。
- **不同 GPU 後端**：官方提供 CUDA 與 ROCm 安裝路線，但 kernel、模型及硬體支援必須逐一核對。

## 怎麼用

### 先確認環境

以下 CUDA nightly 路線依官方 Getting Started，需要 CUDA 13 GPU 主機與啟用中的 Python 3.11–3.13 環境。macOS 筆電不能因為 Python 套件可見，就視為具備這條 GPU 執行路線。

模型權重下載權限、顯示記憶體及 checkpoint 支援也必須確認。本次沒有安裝候選套件、下載權重或執行 GPU benchmark。

### 安裝及檢查

```sh
python -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade tokenspeed \
  --extra-index-url https://lightseek.org/whl/nightly
tokenspeed env
tokenspeed serve --help
```

nightly 套件會依賴同日期的 `tokenspeed-kernel`；正式環境應固定版本並驗證依賴，而非持續追蹤最新 wheel。

### 啟動本機端點

以下改用 loopback 綁定位址，避免照抄公開監聽設定；這是文件示例，不是已驗證的硬體部署結果。

```sh
tokenspeed serve openai/gpt-oss-20b \
  --host 127.0.0.1 \
  --port 8000 \
  --tensor-parallel-size 1
```

OpenAI 相容 client 可指向 `http://localhost:8000/v1`。若要對外服務，需另外設計驗證、TLS 與網路存取限制，不能把示例的 `api_key="EMPTY"` 當成安全機制。

ROCm 7.2 路線要求先安裝對應 PyTorch，再使用獨立 ROCm nightly index；不要同時設定 CUDA 與 ROCm indexes，因為相同版本的 kernel wheels 有不同後端依賴。

官方 Docker runner 範例使用 privileged、host network 等高權限選項，不宜不經審查直接套用到共用主機。此處刻意不複製高權限啟動命令。

## 跟其他方案的關係

比較重點是層次與選型問題，不是速度排名。

| 方案 | 角色 | 與 TokenSpeed 的關係 |
|---|---|---|
| TokenSpeed | 模型 serving 引擎 | 聚焦 Agent 工作的排程、kernels 與請求入口 |
| [[vLLM]] | LLM serving 引擎 | 同層候選，應以模型支援、硬體、延遲與吞吐需求實測 |
| TensorRT-LLM | NVIDIA 推論軟體方案 | README 的比較對象；圖表結果受指定 GPU 與模型條件限制 |
| [[deepseek-ai-DeepGEMM]] | 底層 GEMM／MoE kernels | 與完整 serving 的角色不同，不能直接替代 API 或請求生命週期 |

評估時至少固定模型、精度、輸入／輸出長度、併發數、GPU 與 kernel backend，再測量首 token 延遲、單使用者生成速度與總吞吐。

## 相關概念

← [[模型推論與部署]] · [[LLM]]

## 來源

- [GitHub：lightseekorg/tokenspeed](https://github.com/lightseekorg/tokenspeed)
- [Getting Started](https://github.com/lightseekorg/tokenspeed/blob/main/docs/guides/getting-started.md)
- [Launching a Server](https://github.com/lightseekorg/tokenspeed/blob/main/docs/guides/launching.md)
- 原始 README：`raw/2026-10-16-lightseekorg-tokenspeed.md`
- 官方安裝／啟動快照：`raw/2026-10-16-lightseekorg-tokenspeed-guides.md`
- Metadata：`raw/2026-10-16-lightseekorg-tokenspeed.metadata.json`

---

| 欄位 | 資料 |
|---|---|
| GitHub | https://github.com/lightseekorg/tokenspeed |
| Stars | 2,490（2026-10-16 快照） |
| License | MIT（已核對 LICENSE） |
| Language | Python（排程控制面使用 C++） |
| 收錄日期 | 2026-10-16 |
