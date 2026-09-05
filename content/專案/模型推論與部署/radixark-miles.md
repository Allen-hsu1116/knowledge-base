---
title: Miles
slug: radixark-miles
created: 2026-09-05
updated: 2026-09-05
stars: 2551
language: zh-TW
topics: [LLM, VLM, 強化學習, 後訓練, 分散式訓練, SGLang, Megatron-LM]
---

# Miles

> ⭐2.6k · 面向企業與大規模模型的強化學習後訓練框架，以 SGLang rollout、Megatron-LM 訓練和非同步管線支援 LLM、VLM 與 Agent。

## 快速導航

- 🧠 [[LLM]] — 從預訓練模型走向可遵循指令、推理與使用工具的後訓練階段
- 🚀 [[模型推論與部署]] — SGLang rollout、權重同步、低精度訓練與大規模 GPU 叢集
- 🤖 [[AI-Agent]] — 為 coding、computer-use 等多輪 Agent 任務產生與驗證 rollout

## 是什麼

Miles 是一套高效能、企業級的強化學習框架，專門處理 LLM 與 VLM 的大規模後訓練。它由 slime 分支而來並持續共同演進，將 SGLang 的高吞吐生成能力與 Megatron-LM 的分散式訓練能力接在同一條 RL 管線中；需要直接訓練 Hugging Face 實作時，也提供 PyTorch FSDP2 後端。

它的重點不只是在單次實驗中跑通演算法，而是處理兆參數等級訓練會遇到的吞吐、權重更新、數值穩定、故障恢復與可觀測性問題。rollout worker 與 training worker 可以解耦運作，讓生成、評估與梯度更新依 on-policy 或 off-policy 排程重疊執行，減少大型叢集等待造成的 pipeline bubbles。

對 Agent 後訓練而言，Miles 能連接 Harbor、HUD、NeMo Gym、OpenEnv、Verifiers 等環境，並透過 AgentENV、Daytona、E2B 或 Modal 提供任務沙箱。這使 coding agent 與 computer-use agent 的多輪互動軌跡，可以直接成為可驗證的訓練資料，而不是只處理單輪文字問答。

## 核心特色

- **完全非同步 RL**：rollout 與訓練 worker 解耦，支援可設定的 on-policy、off-policy、非同步 rollout 與評估模式，降低叢集空轉。
- **高吞吐 Agent rollout**：以 SGLang router 把請求分散到多個 inference engine，保留每筆 request metadata，並持續執行健康檢查。
- **秒級權重更新**：在 disaggregated 架構中可使用 P2P RDMA，把新權重快速送到 rollout engines；官方案例涵蓋兆參數模型。
- **低精度後訓練**：支援 MXFP8、NVFP4、FP8、INT4 QAT、BF16 與 FP16，並提供降低低精度 RL 發散風險的穩定配方。
- **Token-in-token-out**：rollout 與 trainer 之間保留 token，不經過 detokenize／retokenize 往返，避免字串轉換造成軌跡失真。
- **Rollout Routing Replay（R3）**：記錄 MoE rollout 時的 expert routing，並在 trainer forward pass 重播，降低路由不一致導致的訓練不穩定。
- **故障容錯**：SGLang engine 故障時可原地恢復並繼續訓練，不必整個 job 重啟或暫停。
- **多種配方與模型**：涵蓋 GRPO、GSPO、PPO、REINFORCE++、SFT、on-policy distillation，以及 LLM、VLM 和 diffusion model 工作負載。

## 怎麼用

官方建議優先使用 Docker，因為映像已固定 Miles 所需的 patched SGLang、Megatron-LM 與 CUDA kernels：

```bash
# NVIDIA GPU：下載並啟動官方映像
docker pull radixark/miles:latest
docker run --rm \
  --gpus all --ipc=host --shm-size=32g \
  --ulimit memlock=-1 --ulimit stack=67108864 \
  --network=host \
  -it radixark/miles:latest /bin/bash

# 驗證套件與 GPU
python -c "import miles; print('Miles import OK')"
nvidia-smi
```

若已有相容的 PyTorch、SGLang 與 Megatron-LM 環境，也可從原始碼安裝；官方提醒依賴版本若未對齊，是常見的錯誤來源：

```bash
git clone https://github.com/radixark/miles.git
cd miles
pip install -r requirements.txt
pip install -e . --no-deps
```

接著依官方 Quick Start 選擇模型、training backend、RL recipe 與執行腳本。大型多節點訓練另需 InfiniBand、RoCEv2 或 Slingshot 等高速互連；單節點工作可只使用 NVLink。

## 跟其他方案的關係

| 方案 | 主要定位 | Rollout／訓練架構 | 適合情境 |
|---|---|---|---|
| **Miles** | 企業級 LLM／VLM 強化學習後訓練 | SGLang + Megatron-LM，另有 FSDP2 | 大模型、Agent、多節點、非同步 RL |
| [[sgl-project-sglang\|SGLang]] | 高吞吐模型推論與 serving | rollout／inference engine | 為 Miles 提供生成端，不負責完整 RL trainer |
| [[hiyouga-LlamaFactory\|LlamaFactory]] | 通用 LLM 微調工具箱 | Transformers、LoRA、SFT/DPO/PPO | 模型廣度、Web UI 與較容易上手的微調流程 |
| [[unslothai-unsloth\|Unsloth]] | 記憶體效率與單機訓練加速 | 自研 kernels、LoRA／GRPO 等 | 消費級或少量 GPU 的快速微調與 RL |
| [[marin-community-marin\|Marin]] | 開放式基礎模型完整研發平台 | 資料、預訓練、後訓練、評估 DAG | 可重現的端到端研究與 scaling experiments |

Miles 並不是 SGLang 的替代品，而是把 SGLang 放在 rollout 端，再以 Megatron-LM 或 FSDP2 完成訓練。相較偏向易用微調的 LlamaFactory 或單機效率的 Unsloth，Miles 更聚焦大規模 RL 系統工程、Agent environment 連接器、權重快速傳輸與長時間訓練韌性。

## 相關概念

← [[LLM]] · [[模型推論與部署]] · [[AI-Agent]] · [[sandbox]]

## 來源

- [GitHub：radixark/miles](https://github.com/radixark/miles)
- [官方安裝文件](https://miles.radixark.com/docs/getting-started/installation)
- [官方 Quick Start](https://miles.radixark.com/docs/getting-started/quick-start)
- [Miles v0.1 Release](https://github.com/radixark/miles/releases/tag/v0.1.0)
- raw/2026-09-05-radixark-miles.md

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/radixark/miles |
| Stars | ⭐2,551 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-09-05 |
