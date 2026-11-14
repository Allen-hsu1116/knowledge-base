---
title: Veyra
slug: Likely7-Veyra-NRVideo
created: 2026-11-14
updated: 2026-11-14
stars: 1617
language: zh-TW
topics: ["computer-vision", "media-streaming"]
---

# Veyra

> ⭐1.6k · Windows 即時 GPU 影片增強工具，整合超解析、降噪、HDR 與補幀。

## 快速導航

- [[computer-vision]]
- [[media-streaming]]

## 是什麼

Veyra 把本地影片、擷取卡、螢幕擷取及遊戲串流接入同一套 GPU 影像增強流程。介面提供播放、專業列表、節點、色彩與匯出工作區，主要面向 Windows 上的即時觀賞與影像處理。

它與 AI 的交集在影像增強與推論後端，而不是大型語言模型。專案描述中的遊戲 FPS 宣傳不能當成主機原生渲染效能提升；README 也明確區分提交 FPS、實際顯示 FPS 與端對端延遲。

## 核心特色

- 多來源輸入：本地媒體、擷取卡、PS5、PC 串流與實驗性 Xbox 支援。

- GPU 效果：依硬體後端提供 SR、NR、HDR 與 frame generation 選項。

- 分層與節點控制：NR、色彩參數及列表／節點設定可分開保存。

- 輸出與記錄：提供匯出佇列、裁切、MP4／MKV 與處理後畫面錄製。

- 跨 GPU 套件：NVIDIA 與 AMD 可攜套件分開，能力須逐一核對。

## 怎麼用

### 安裝與啟動

以下指令是文件示範，本次收錄沒有執行安裝。

```powershell
# Windows PowerShell：先從官方 Releases 下載對應 GPU 的 ZIP
Expand-Archive -Path .\Veyra-2.1.5-NVIDIA-win64-portable.zip -DestinationPath .\Veyra-2.1.5
# 在解壓後的程式目錄執行 veyra_qml_ui.exe
```

### 初次使用檢查

1. 需要 Windows 11 x64、DirectX 12 與適當 GPU／擷取驅動；範例固定為 README 所列版本。

2. AMD 使用者應選 AMD 套件，解壓到新的可寫入目錄，不要混用 DLL 或整份舊 runtime。

3. 先停用特效確認畫面與聲音，再逐項開啟效果並觀察顯存、延遲與畫面瑕疵。

### 適用邊界

- 高解析度、多層 NR 與補幀會增加 GPU／VRAM 成本，不能泛化作者硬體上的速度。

- 部分 AMD NR 與 Xbox 路徑屬實驗性；本次未執行 Windows 二進位或驗證效能。

## 跟其他方案的關係

以下為功能定位比較，並非效能測試。

| 方案 | 主要用途 | 關係與差異 |
|---|---|---|
| 一般影片播放器 | 解碼與播放 | Veyra 著重即時增強及擷取／串流來源整合。 |
| 文字生成影片模型 | 由提示詞生成新片段 | Veyra 主要處理既有畫面，並非文字到影片模型。 |

## 相關概念

← [[computer-vision]] · [[media-streaming]]

## 來源

- [GitHub repository](https://github.com/Likely7/Veyra-NRVideo)
- [README](https://github.com/Likely7/Veyra-NRVideo/blob/main/README.md)
- 原始快照：`raw/2026-11-14-Likely7-Veyra-NRVideo.md`
- Metadata：`raw/2026-11-14-Likely7-Veyra-NRVideo.metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/Likely7/Veyra-NRVideo |
| Stars | 1,617（2026-11-14 快照） |
| License | GPL-3.0 |
| Language | C++ |
| 收錄日期 | 2026-11-14 |
