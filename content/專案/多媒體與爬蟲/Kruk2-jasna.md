---
title: Jasna 影片修復工具
slug: Kruk2-jasna
created: 2026-10-19
updated: 2026-10-19
stars: 2406
language: zh-TW
topics: [computer-vision, Generative-AI, video-restoration]
---

# Jasna 影片修復工具

> ⭐2.4k · 以 GPU 偵測與修復影片局部馬賽克的桌面／CLI 工具；屬電腦視覺應用，非聊天 LLM。

## 快速導航

- [[computer-vision]] — 偵測、追蹤與區域修復。
- [[generative-AI]] — 生成式修復與輸出可信度邊界。

## 是什麼

Jasna 是以 Python 開發的影片與影像修復工具，提供圖形介面和命令列。它先找出馬賽克區域，再追蹤跨影格片段、執行修復並混回原始畫面；官方說明強調只改動偵測區域，而不是重新生成整部影片。

免費路徑採 BasicVSR++，支持者版本另提供 LTX 擴散模型，以及 UNet 4x、靜態圖片 SD 1.5 等選項。公開程式碼與付費模型不是相同授權範圍：從原始碼可執行免費模型，但啟用加密模型需要官方 release 與授權碼。

此專案來自 GitHub Trending 候選，不是 LLM 框架。修復輸出是模型估計，不代表可驗證地還原被遮蔽的原始內容；應限於有權處理的素材，不應當作身份、事件或原始細節的證據。

## 核心特色

- **GPU 媒體管線**：NVIDIA 採 NVDEC／NVENC；AMD 路徑採 AMF，支援狀態與功能依平台不同。
- **跨影格追蹤**：預設以 `rfdetr-v6` 偵測，依場景切換分段，利用重疊片段減少接縫。
- **局部控制**：Segment Editor 可選擇處理區域並預覽，不必整段套用相同設定。
- **雙修復路徑**：BasicVSR++ 偏速度；LTX 為較慢的支持者擴散模型，限 NVIDIA。
- **互動播放**：Video Player 可即時觀看處理結果，不必先產生完整輸出檔。
- **多種輸入**：支援影片、資料夾、VR180；靜態影像 SD 1.5 為支持者功能。

## 怎麼用

### 一般使用者

從 GitHub Releases 下載符合作業系統與 GPU 的套件，解壓縮到本機、純英文路徑。Windows 啟動 `jasna.exe`；Linux NVIDIA 啟動 `jasna`，AMD 使用 `run_jasna_amd.sh`。套件已附 Python/Tk、ffmpeg 與 ffprobe。

README 列出 NVIDIA GTX 16／RTX 20 系列以上及指定驅動；AMD RX 7000／9000 為實驗性支援。官方文件沒有提供 macOS 安裝路徑，不能假定 Apple Silicon 可用。

### 原始碼安裝示例（Linux NVIDIA）

以下依官方開發文件，假設已具備系統 Python 3.13、uv、FFmpeg 8 和相容 NVIDIA 驅動；本次僅收錄文件，未安裝或執行模型。

```bash
git clone https://github.com/Kruk2/jasna.git
cd jasna
uv venv --python /usr/bin/python3.13 --no-managed-python --no-python-downloads .venv
source .venv/bin/activate
uv pip install -e ".[nvidia,dev]" --extra-index-url https://download.pytorch.org/whl/cu130
python -m jasna --help
python -m jasna --input input.mp4 --output output.mkv
```

### 資源與功能限制

- NVIDIA 首次準備模型，官方估計約 15–60 分鐘；依實際硬體而異。
- 顯存不足可降低 Max Clip Size；此設定會改變可同時處理的片段長度。
- LTX 官方列出至少 8 GB VRAM 與 16 GB RAM，並要求 NVIDIA RTX。
- LTX Trial 僅測速，不會修復影片；不能把試用輸出當作品質測試。
- CLI 不含 Video Player、互動式圖片操作及部分預覽功能。

## 跟其他方案的關係

| 方案 | 關係與定位 | 選用注意 |
| --- | --- | --- |
| Jasna | 偵測、追蹤、修復與編解碼整合的桌面／CLI 工具 | 免費 BasicVSR++ 與支持者模型分開 |
| Lada | Jasna 的靈感及部分程式基礎；免費修復模型源自 ladaapp | 官方比較指出 Lada 較省顯存 |
| BasicVSR++ 路徑 | Jasna 內建的免費修復流程 | 不等於另一個聊天模型或 Agent |
| LTX 路徑 | Jasna 內的支持者擴散修復流程 | NVIDIA 限定、較慢；新增細節非原始真相保證 |

README 的效能表採 RTX 5090、特定影片及舊版 Jasna／Lada；只能視為作者提供的測試條件結果，不能推廣為所有硬體的速度保證。本次沒有獨立重跑 benchmark。

## 相關概念

← [[computer-vision]] · [[generative-AI]]

## 來源

- [GitHub：Kruk2/jasna](https://github.com/Kruk2/jasna)
- [官方 README](https://github.com/Kruk2/jasna/blob/main/README.md)
- [原始碼執行文件](https://github.com/Kruk2/jasna/blob/main/docs/en/development.md)
- 原始快照：`raw/2026-10-19-Kruk2-jasna.md`
- Metadata 快照：`raw/2026-10-19-Kruk2-jasna.metadata.json`
- 開發文件快照：`raw/2026-10-19-Kruk2-jasna-development.md`

---

| 欄位 | 內容 |
| --- | --- |
| GitHub | https://github.com/Kruk2/jasna |
| Stars | 2,406（2026-10-19 metadata 快照） |
| License | 公開應用原始碼 AGPL-3.0；模型、相依套件與私有模組另有條款 |
| Language | Python（專案）；zh-TW（本頁） |
| 收錄日期 | 2026-10-19 |
