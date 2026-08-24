---
title: ComfyUI
slug: Comfy-Org-ComfyUI
created: 2026-08-24
updated: 2026-08-24
stars: 129390
language: Python
topics:
  - ai
  - comfyui
  - pytorch
  - stable-diffusion
  - generative-ai
---

# ComfyUI

> ⭐129.4k · 以節點圖組裝圖片、影片、音訊、3D 與文字生成流程的模組化 AI 創作引擎。

## 快速導航

- 🎨 **生成式內容** → [[generative-AI]]（理解跨模態內容生成的全貌）
- 🌫️ **模型架構** → [[diffusion-model]]（理解多數影像工作流的模型基礎）
- 🎬 **影片生成** → [[AI-video-generation]]（延伸到 Wan、LTX 等影片模型）

## 是什麼

ComfyUI 是一套以視覺化節點圖為核心的 AI 創作引擎，同時提供 GUI、API 與後端執行能力。使用者把模型載入、提示詞、取樣器、ControlNet、LoRA、VAE、後處理等步驟接成可重用的有向圖，而不是受限於固定表單。

它的定位不只是 Stable Diffusion 前端。官方 README 顯示它已覆蓋圖片生成與編輯、影片、音訊、3D、視覺理解和文字模型，並能把複雜 workflow 透過 App Mode 包成簡單介面，或經 API 嵌入正式生產管線。

ComfyUI 可在 Windows、Linux、macOS 本機執行，也提供 Desktop、Windows portable 與官方雲端版本。核心可離線運作，只有使用者主動要求時才下載內容；若停用 API nodes，工作流可維持完整本機處理。

## 核心特色

- **節點圖工作流**：用可視化 graph 組合模型、條件、取樣與媒體處理，流程可儲存成 JSON、複製、分享與版本化。
- **局部重算**：只重新執行發生變更及其下游的節點，避免每次都重跑完整生成圖，適合反覆調參。
- **跨模態模型支援**：原生支援 Stable Diffusion、FLUX、Qwen Image、Wan、LTX、Hunyuan、Gemma 等多類模型與工作流。
- **資源管理**：包含非同步佇列、智慧 VRAM/RAM 管理、模型卸載與量化模型支援，能適配不同硬體條件。
- **可擴充節點生態**：custom nodes 可加入新模型、控制器與外部服務，ComfyUI-Manager 可管理節點安裝與更新。
- **生產整合能力**：提供本地 API、workflow template、subgraph 與 App Mode，可把視覺流程轉成應用程式能力。
- **工作流可溯源**：支援從生成媒體恢復完整 workflow 與 seed，降低重現輸出的成本。

## 怎麼用

最簡單方式是下載官方 Desktop App；若偏好 CLI，可先安裝 `comfy-cli`：

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install comfy-cli
comfy install
```

手動安裝則依硬體安裝 PyTorch，再執行：

```bash
git clone https://github.com/Comfy-Org/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt
python main.py
```

模型 checkpoint 放進 `models/checkpoints/`，VAE 放進 `models/vae/`。若要啟用新版 Manager，可安裝管理依賴後以 `python main.py --enable-manager` 啟動；自訂節點可能有獨立相依套件，部署前應逐一審核。

## 跟其他方案的關係

ComfyUI 偏向「可組裝的生成執行圖」，而不是只提供單一模型或簡化聊天介面。它經常作為模型專案的參考前端，也可成為 Agent 或內容自動化管線背後的媒體生成 runtime。

| 方案 | 核心定位 | 適合情境 | 與 ComfyUI 的關係 |
|------|----------|----------|-------------------|
| ComfyUI | 節點式跨模態工作流引擎 | 精細控制、批次生成、可重現流程 | 本頁主體 |
| [[Lightricks-LTX-2\|LTX-2]] | 音影片生成模型與管線 | 影片模型研究與生成 | 可透過 ComfyUI workflow 使用 |
| [[NVlabs-Sana\|Sana]] | 高效率圖片擴散模型 | 模型推論與研究 | ComfyUI 可作為視覺化操作層 |
| [[OpenCut-app-OpenCut\|OpenCut]] | 非線性影片編輯器 | 時間軸剪輯與成片處理 | 可接收 ComfyUI 生成素材 |
| [[Anil-matcha-Open-Generative-AI\|Open Generative AI]] | 多模型生成式 AI 工作室 | 快速瀏覽與使用多模型 | ComfyUI 更偏底層圖形編排與控制 |

## 相關概念

← [[generative-AI]] · [[diffusion-model]] · [[AI-video-generation]] · [[content-automation]]

## 來源

- [GitHub：Comfy-Org/ComfyUI](https://github.com/Comfy-Org/ComfyUI)
- [官方網站](https://www.comfy.org/)
- [Raw README + metadata](../raw/2026-08-24-Comfy-Org-ComfyUI.md)

---

| 欄位 | 內容 |
|------|------|
| GitHub | https://github.com/Comfy-Org/ComfyUI |
| Stars | ⭐129,390 |
| License | GPL-3.0 |
| Language | Python |
| 收錄日期 | 2026-08-24 |
