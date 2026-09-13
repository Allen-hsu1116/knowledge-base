---
title: YuE／YuE2
slug: multimodal-art-projection-YuE
created: '2026-09-13'
updated: '2026-09-13'
stars: 7292
language: zh-TW
topics:
- generative-AI
- 模型推論與部署
- AI-Skills
---

# YuE／YuE2

> ⭐7.3k · 先產生可編輯旋律與和弦計畫，再生成完整歌曲的 YuE2 音樂系統，支援翻唱與 Agent 編輯。

## 快速導航

- [[generative-AI]] — 相關概念與其他實作
- [[模型推論與部署]] — 相關概念與其他實作
- [[AI-Skills]] — 相關概念與其他實作

## 是什麼

YuE repository 的預設分支在本次收錄時介紹 YuE2：輸入歌詞與風格提示後，系統先規劃旋律及和弦，再生成包含人聲與伴奏的完整歌曲。原始 YuE 的程式、文件與授權保存在 YuE-v1 分支，不應把舊版安裝方式與新預設分支混用。

核心設計是 AR–NAR Mixture-of-Transformers：譜面與語意 token 以自回歸方式預測，聲學 latent 由 flow matching 生成，最後透過 VAE 解碼成音訊。API 將 plan、generate_semantic、synthesize、decode 分開，讓人或 Agent 可以檢查並修改中間的音樂計畫。

它的價值不只在自動作曲，也在可檢查的創作介面：ABC 樂譜能被讀取、改寫，再重新渲染。README 明確說明編輯會產生新的完整錄音，不保證編輯範圍以外的原始波形保持不變；這與局部音訊剪接不同。

## 核心特色

- **顯式符號計畫**
  cot=full 生成旋律加和弦，cot=melody 保留旋律條件並釋放伴奏，亦支援直接提供 ABC。

- **零樣本翻唱流程**
  可透過 SheetSage2 轉錄原始錄音，再以旋律譜、新歌詞及風格生成新版本；轉錄環境需另行準備。

- **分階段 API**
  各步驟輸出可保存，便於精確重用樂譜、比較不同生成設定與追蹤模型身份。

- **Agent Skill**
  附 yue2-music 技能，整理作曲、翻唱、ABC 編輯與音樂約束檢查；Python runtime 仍須獨立安裝。

- **高品質立體聲輸出**
  官方 quick start 指出未量化 48 kHz stereo，首次使用從 Hugging Face 下載模型。

## 怎麼用

### 環境與安裝

官方 quick start 要求 Linux、Python 3.12、支援 BF16 的 NVIDIA GPU 與 24 GB VRAM。以下為 README 原生推論安裝流程，不代表一般 Mac 或無 GPU 電腦可直接運行。

```bash
git clone https://github.com/multimodal-art-projection/YuE.git
cd YuE
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install .
python examples/generate.py --output outputs/first-song
```

### 使用流程

1. 先用官方 examples 生成首首歌曲，檢查 outputs/first-song/audio.flac 與保存的譜面、設定。
2. 編輯任務先保存計畫、複製 score.abc 再修改，輸入 --abc-file 與 --cot full 重新生成。
3. 做翻唱前確認錄音、旋律與歌詞的使用權；需要自由改編伴奏時參考 cot=melody 的無和弦譜流程。

### 限制與注意事項

程式碼、當前 skill 與文件採 Apache-2.0，但 YuE2 模型權重另採 CC BY-NC 4.0，不能把開源程式碼授權延伸成權重可商用。README 基準測試為作者自報且涉及候選挑選；不據此宣稱全面優於商業模型。本次未下載權重或進行 GPU 推論。

## 跟其他方案的關係

以下依文件描述做定位比較，不是實測效能排行。

| 方案 | 核心定位 | 選擇重點 |
|---|---|---|
| YuE2 | 顯式 ABC 計畫、語意生成與音訊渲染 | 適合希望檢查／改寫作曲過程的人或 Agent |
| YuE-v1 | 原版專案保存在獨立分支 | 重現舊模型或舊實驗時，連安裝與授權一起固定到該分支 |
| 直接音訊生成 | 由提示直接得到錄音 | 若需要可修改的旋律／和弦中間表示，YuE2 的計畫介面是不同取向 |

音樂理解模型 MERT2 不是基本生成流程必須另外下載的元件；SheetSage2 與 benchmark 用 legacy decoder 也應依用途分開配置。

## 相關概念

← [[generative-AI]] · [[模型推論與部署]] · [[AI-Skills]]

## 來源

- [GitHub repository](https://github.com/multimodal-art-projection/YuE)
- [本次 README 所在分支](https://github.com/multimodal-art-projection/YuE/blob/main/README.md)
- 原始 README 與來源欄位：`raw/2026-09-13-multimodal-art-projection-YuE.md`
- GitHub metadata 快照：`raw/2026-09-13-multimodal-art-projection-YuE.metadata.json`
- https://github.com/multimodal-art-projection/YuE/tree/YuE-v1
- https://github.com/multimodal-art-projection/YuE/blob/main/MODEL_LICENSE

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/multimodal-art-projection/YuE |
| Stars | 7,292（2026-09-13 快照） |
| License | 程式碼 Apache-2.0；YuE2 權重 CC BY-NC 4.0 |
| Language | Python |
| 收錄日期 | 2026-09-13 |
