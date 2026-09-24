---
title: Spirula Studio
slug: harry7557558-spirula-studio
created: 2026-09-24
updated: 2026-09-24
stars: 739
language: zh-TW
topics: ["360-camera", "3d-gaussian-splatting", "3d-reconstruction", "3dgs", "3dgs-acceleration", "computer-vision", "cross-vendor", "cuda", "gaussian-splatting", "mesh-generation", "quantized-training", "structure-from-motion", "vram-optimization", "vulkan"]
---

# Spirula Studio

> ⭐0.74k · 跨 GPU 廠商的 3D Gaussian Splatting 訓練與網格重建工具；不是 LLM 專案。

## 快速導航

- 🧠 [[computer-vision]] — 主要技術脈絡
- 🛠 [[self-hosted]] — 設計或部署背景

## 是什麼

Spirula Studio 是將照片或影片轉成 3D Gaussian Splatting，再輸出帶材質網格的桌面與 CLI 工具。它整合影片抽幀、SfM、AI 遮罩、訓練與網格化，主打單一二進位，不要求另裝 Python、PyTorch 或 COLMAP。

這次來自一般 GitHub Trending 候選，屬電腦視覺與多媒體重建，而非大型語言模型、對話 Agent 或文字生成服務。Vulkan 是官方推薦後端，覆蓋 NVIDIA、AMD、Intel 與 Apple GPU；CUDA 則是面向 NVIDIA 的舊後端選項。

## 核心特色

- **跨廠商 GPU**：Vulkan 支援 Windows、Linux 與 macOS；Apple 平台透過 MoltenVK。

- **整合重建管線**：Vulkan 後端內建影片抽幀、SfM 與 AI masking，減少外部腳本串接。

- **量化訓練**：作者宣稱 8GB VRAM 可訓練一千萬個 SH3 高斯；實際容量依資料與配置驗證。

- **特殊相機支援**：原生魚眼、360 度與等距柱狀投影資料，不要求先做去畸變。

- **曝光與介面**：提供曝光／白平衡修正、GUI／CLI、繁中介面與訓練時 Web viewer。

## 怎麼用

### 安裝入口

以下為文件整理，未在本次收錄中安裝或執行候選軟體。

```bash
git clone https://github.com/harry7557558/spirula-studio.git
cd spirula-studio
bash build_develop.bash -DSS_BACKEND=vulkan -DSS_ENABLE_PATENTED=ON
```

### 基本操作

1. 一般使用者可先從官方 Releases 下載對應平台檔案，解壓啟動 GUI。
2. 匯入照片或影片，建立資料集，完成相機重建與需要的遮罩處理。
3. 訓練 splat 後檢視結果，再依需求產生材質網格。
4. 遠端環境可先執行 spirula --help；spirula train 預設提供 HTTP viewer，可透過 SSH 轉送。

### 限制與注意

- 上面的原始碼建置範例來自官方 Linux／macOS 說明，需要 CMake 等建置工具；Linux 需準備 Vulkan SDK。
- SS_ENABLE_PATENTED=ON 啟用 GPU 影片解碼，涉及 AVC／HEVC 專利責任；採用前需評估，亦可不啟用此選項。
- macOS 由 CMake 取得 MoltenVK，輸出在 build/；Linux Vulkan 輸出在 build_vulkan/。
- AI 遮罩需要另外下載 SAM checkpoint；SAM 2.1 與 SAM 3 的授權不同，不可把程式 GPL 授權直接套用到模型。

## 跟其他方案的關係

下表依官方 README 的定位整理，不是效能評測。

| 方案 | 定位差異 | 適合情境 |
| --- | --- | --- |
| Vulkan 後端 | 跨廠商、跨平台，含 SfM／抽幀／遮罩 | 官方推薦的一體化路徑 |
| CUDA 後端 | NVIDIA、Windows／Linux，保留訓練與網格功能 | 既有 CUDA 環境 |
| 分離式重建管線 | 分別操作相機重建、訓練、轉網格工具 | 需要逐步替換演算法與工具 |

## 相關概念

← [[computer-vision]] · [[self-hosted]]

## 來源

- [GitHub：harry7557558/spirula-studio](https://github.com/harry7557558/spirula-studio)
- README 快照：`raw/2026-09-24-harry7557558-spirula-studio.md`
- GitHub metadata：`raw/2026-09-24-harry7557558-spirula-studio.metadata.json`
- 資料查閱日：2026-09-24；功能敘述依當日 README，非本站實測。

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | [harry7557558/spirula-studio](https://github.com/harry7557558/spirula-studio) |
| Stars | 739（2026-09-24 快照） |
| License | GPL-3.0 |
| Language | C++ |
| 收錄日期 | 2026-09-24 |
