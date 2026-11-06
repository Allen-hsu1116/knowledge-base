---
title: "Disc Image Studio"
slug: "JiaFeiMiao-K-Cat-DiscImageStudio"
created: "2026-11-06"
updated: "2026-11-06"
stars: 7269
language: "zh-TW"
topics: ["computer-vision", "self-hosted"]
---

# Disc Image Studio

> ⭐7.3k · 將影像轉成 CD／DVD／單層 BD-R 可刻錄資料，讓盤面形成肉眼可見圖案；非 LLM 工具。

## 快速導航

- [[computer-vision]]
- [[self-hosted]]

## 是什麼

Disc Image Studio 是光碟盤面圖像生成與燒錄工具，將圖片轉換成符合媒體物理層限制的資料。名稱中的 image 涉及光碟資料與可見圖案，不是 AI 文生圖服務。

Windows 提供桌面設計、圖層、預覽與匯出；Linux／macOS 目前是實驗性 CLI，可先產生鏡像再交給合適燒錄軟體。實際成像會受光碟、燒錄機、韌體與寫入策略影響，不能把跨平台 CLI 說成跨平台完整 GUI。

## 核心特色

- **多種光碟輸出**：CD 可產生 WAV＋CUE／RAW，DVD 為 ISO，藍光支援單層 BD-R 25 GB。

- **圖層與影調設計**：匯入圖片後調整排版、抖動、伽馬、亮度與灰階設定。

- **隨盤檔案**：可指定資料夾與內／外圈位置，預覽以顏色標示檔案區。

- **照片輔助標定**：粗標定、邊界與精細標定估計半徑及軌距，需實盤複驗。

- **實驗性串流燒錄**：邊生成邊寫入以省去完整鏡像，但中斷或供應不足仍可能報廢光碟。

- **離線工作**：官方聲明不聯網、不上傳檔案、不收集遙測；Release 附 .NET runtime。

## 怎麼用

### 安裝／準備

```bash
git clone https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio.git
cd DiscImageStudio
# 需 .NET 10 SDK；此為 CLI 建置入口
dotnet build src/DiscImageStudio.Cli --configuration Release
```

### 使用入口

```bash
dotnet run --project src/DiscImageStudio.Cli -c Release -- --help
# 已下載符合 CPU 平台的 CLI release 時，可先做極小輸出驗證
./disc-image-studio cd-generate --input picture.png --output sample.wav --sectors 2
```

### 前提與限制

- 也可直接下載官方 Releases；Windows win-x64.exe 是桌面版，macOS 分 osx-arm64／osx-x64，Linux 分 x64／arm64。
- 兩扇區示例只用於驗證輸出流程，不是完整盤面效果測試。
- 只使用空白且可報廢的測試媒體。禁止用有重要資料的光碟測試；BD-R 中斷通常不能續寫。
- 本次只收錄文件，未下載執行檔、未使用燒錄機；不宣稱硬體相容性已驗證。

## 跟其他方案的關係

以下是依用途整理的選型比較，不代表本次執行了跨專案 benchmark。

| 方案 | 定位 | 選型界線 |
|---|---|---|
| Disc Image Studio | 圖像到光碟物理編碼 | 含設計、標定、預覽與實驗性寫盤 |
| 一般燒錄軟體 | 把既有鏡像／音軌寫入媒體 | 可接手燒錄，但不等同產生可見盤面圖案 |
| 生成式影像工具 | 產生或修改圖片內容 | 位於上游；本專案不是 LLM 或擴散模型 |

## 相關概念

← [[computer-vision]] · [[self-hosted]]

## 來源

- [GitHub](https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio)
- [官方 README](https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio/blob/main/README.md)
- README 快照：`raw/2026-11-06-JiaFeiMiao-K-Cat-DiscImageStudio.md`
- Metadata 快照：`raw/2026-11-06-JiaFeiMiao-K-Cat-DiscImageStudio.metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio |
| Stars | 7,269（2026-11-06 快照） |
| License | GPL-3.0-or-later（README 聲明；第三方元件另依其授權） |
| Language | C# |
| 收錄日期 | 2026-11-06 |
