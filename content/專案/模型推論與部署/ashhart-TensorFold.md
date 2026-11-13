---
title: "TensorFold"
slug: "ashhart-TensorFold"
created: "2026-11-13"
updated: "2026-11-13"
stars: 1939
language: "Zig"
topics: ["ai", "ai-tools", "llm", "llm-inference", "llm-tools"]
---

# TensorFold

> ⭐1.9k · 以 Zig binary 在 Apple Silicon／NVIDIA GPU 執行原生語言模型推論與 API serving。

## 快速導航

- [[模型推論與部署]] — 推論引擎、服務介面與硬體相容性。
- [[LLM]] — 語言模型與本地運行需求。

## 是什麼

TensorFold 是以 Zig 實作的語言模型推論引擎，直接載入 checkpoint、進行 tokenization 並執行 Metal 或 CUDA kernels。README 的主要快速開始路線是 Apple Silicon 與 NVIDIA GPU；原生 serving 不要求安裝 Python 或 MLX。

它提供可被聊天客戶端或 Agent 使用的 HTTP API，將模型下載、快取與服務管理集中到原生工具。它不是通用模型訓練平台，也不是完整 Coding Agent；Agent 的工具執行、核准與工作區管理仍屬上層應用的責任。

GitHub 簡介列出 Metal、CUDA 與 Vulkan，但本頁僅依 README 的可操作快速開始整理 Metal／CUDA。不能把簡介中的後端名稱當成所有 release、模型或硬體都經過驗證的保證；應查詢實際二進位的 capabilities。

## 核心特色

- **原生 serving**：以 Zig binary 讀取模型與執行 kernels，與 Python 開發或參考路線分開。
- **多 API 入口**：README 列出 chat completions、completions、Responses、Anthropic Messages，以及模型清單端點。
- **模型快取與校驗**：`pull` 使用 Hugging Face cache，對下載內容進行雜湊校驗並支援中斷續傳。
- **併發與記憶體控制**：`--parallel` 控制活躍請求；自動值仍受記憶體與引擎能力約束。
- **能力可查詢**：`capabilities --json` 與 serve help 用來確認當前 build 支援的旗標與平台值。
- **可選上下文壓縮**：預設關閉；啟用後保留系統提示與近期回合，將較舊內容整理成記憶摘要。

## 怎麼用

### Apple Silicon 快速開始

以下採官方固定 revision 的小型 checkpoint 範例。模型權重有獨立授權；本次只整理指令，沒有下載模型或啟動推論服務。

```bash
brew install ashhart/tensorfold/tensorfold
tensorfold pull mlx-community/Qwen3.5-2B-MLX-4bit@93760be4f1f69842a46bc13dbdc0f19e291392a3
tensorfold serve mlx-community/Qwen3.5-2B-MLX-4bit --name local-model --context 8192 --no-thinking
```

### 在另一個終端送出請求

```bash
curl -fsS http://127.0.0.1:8080/v1/chat/completions \
  -H 'Content-Type: application/json' \
  -d '{"model":"local-model","messages":[{"role":"user","content":"Say hello in one sentence."}],"max_tokens":128,"temperature":0}'
```

部署前可先確認能力，不必猜測 GPU、模型與旗標是否受支援。

```bash
tensorfold capabilities --json
tensorfold serve --help
```

Linux NVIDIA release 的 README 要求 glibc 2.28 以上與 R580 以上驅動（CUDA 13.0），且必須保留封裝中的目錄結構。
原生引擎不需要 Python，不代表可選的 TensorFold Web 安裝也沒有 Python 工具依賴；README 說明其可透過 uv 安裝對應版本。
對外部署應另配置 API key 與網路保護，不要將本地 quick start 視為正式環境安全設定。

## 跟其他方案的關係

以下比較用途與整合邊界，不宣稱速度排名。

| 方案 | 主要角色 | 選擇時應確認 |
| --- | --- | --- |
| TensorFold | Zig 原生模型 serving | 模型 family、實際後端、release 與記憶體容量 |
| MLX | Apple Silicon 機器學習框架 | TensorFold 原生 serving 不要求安裝 MLX；checkpoint 名稱不等於執行依賴 |
| OpenAI 相容客戶端 | 呼叫服務的應用層 | 可使用相容端點，但各協議欄位仍須實測 |
| Coding Agent | 模型上層的工具與任務工作流 | 推論引擎只提供模型服務，不能取代檔案權限與操作核准 |

README 對快取與草稿解碼的正確性比較固定 checkpoint、後端與設定。
不同量化或硬體後端的輸出不保證相同；本次未執行效能或輸出一致性測試。

## 相關概念

← [[模型推論與部署]] · [[LLM]]

## 來源

- GitHub：<https://github.com/ashhart/TensorFold>
- README：<https://github.com/ashhart/TensorFold/blob/main/README.md>
- 原始快照：`raw/2026-11-13-ashhart-TensorFold.md`
- Metadata 快照：`raw/2026-11-13-ashhart-TensorFold-metadata.json`

---

| 項目 | 值 |
| --- | --- |
| GitHub | [ashhart/TensorFold](https://github.com/ashhart/TensorFold) |
| Stars | ⭐1,939 |
| License | Apache-2.0 |
| Language | Zig |
| 收錄日期 | 2026-11-13 |
