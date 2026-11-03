---
title: Kornia
slug: kornia-kornia
created: 2026-11-03
updated: 2026-11-03
stars: 12131
language: zh-TW
topics: ["computer-vision", "llm-internals"]
---

# Kornia

> ⭐12.1k · 以 PyTorch 張量實作可微影像處理、資料增強與幾何視覺的函式庫，非聊天 LLM。

## 快速導航
- [[computer-vision]] — 理解主要概念與應用背景。
- [[llm-internals]] — 對照實作機制與技術邊界。

## 是什麼

Kornia 是建立在 PyTorch 上的電腦視覺函式庫，讓影像濾波、幾何轉換、特徵匹配及資料增強能接入張量運算管線。它主要服務視覺研究與模型開發，不是聊天模型、Agent 規劃器或 RAG 系統。

與把影像轉成 NumPy 後逐張處理相比，Kornia 的重點是批次張量、輸入裝置上的運算，以及多數算子的自動微分能力。相機參數、深度與姿態可在合適算子中保留梯度，支援幾何與學習共同最佳化。

可微與 GPU 加速並非對所有功能無條件成立：README 特別指出 RANSAC、部分學習式特徵擷取不保留梯度；半精度與後端支援也有已知失敗案例。選型應依實際算子與資料形狀驗證。

## 核心特色

- **批次與個別參數**：部分算子可在一次 batched call 對每張影像套用不同角度、sigma 或轉換矩陣。

- **幾何視覺元件**：包含相機模型、深度投影、epipolar geometry、最小解算器與 robust estimation。

- **一致的標註增強**：2D AugmentationSequential 可同步轉換影像、mask、box 與 keypoint；3D 支援範圍不同。

- **局部特徵與匹配**：提供 SIFT、HardNet、LoFTR、LightGlue 等相關工具與模型介面。

- **編譯與匯出**：專案提供 torch.compile 與 ONNX 支援資訊，但仍需逐項核對配置與精度。

## 怎麼用

### 安裝

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install kornia
```

GPU 使用者應先依 PyTorch 官方方式選擇符合 CUDA 的安裝組合。ONNX 等額外功能可能需要 optional extras。

### 入門流程

```bash
python -c "import kornia; print(kornia.__version__)"
```

先以小批次 float32 張量核對 shape、device、梯度與輸出，再評估 GPU batching、compile 或半精度。本文只示範安裝與版本確認，未在本次收錄環境安裝套件。

### 使用限制

README 的 GPU 相對 CPU 效能數據取決於批次、硬體與算子，不可解讀成全面加速；CPU 半精度測試結果也不能代替 CUDA／MPS 支援證明。

## 跟其他方案的關係

以下為依官方定位整理的用途比較，不是本次實測排名。

| 方案 | 定位 | 選用情境 |
|---|---|---|
| Kornia | 張量化、可微與批次幾何視覺 | 需要接入 PyTorch 訓練或 GPU 批次流程 |
| torchvision | 常見視覺轉換與模型生態 | 簡單 resize、crop 等操作不一定需額外依賴 |
| OpenCV | 傳統影像與幾何處理 | README 指出單張 uint8 CPU 工作通常更有優勢 |
| [[pytorch-pytorch]] | 通用張量與自動微分基礎 | Kornia 建立於其上，並非取代 PyTorch |

## 相關概念

← [[computer-vision]] · [[llm-internals]]

## 來源

- [GitHub：kornia/kornia](https://github.com/kornia/kornia)
- [README](https://github.com/kornia/kornia/blob/main/README.md)
- 原始快照：`raw/2026-11-03-kornia-kornia.md`
- Metadata：`raw/2026-11-03-kornia-kornia.metadata.json`

資料擷取日：2026-11-03。Stars 為收錄時快照；安裝指令依官方文件整理，並非本次執行記錄。

---

| 欄位 | 內容 |
|---|---|
| GitHub | [kornia/kornia](https://github.com/kornia/kornia) |
| Stars | 12,131 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-11-03 |
