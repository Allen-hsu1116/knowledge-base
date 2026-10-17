---
title: Indra OCR
slug: datalab-to-indra
created: 2026-10-17
updated: 2026-10-17
stars: 450
language: Python
topics: [ai, cpu, document-parsing, ocr, onnx, pdf]
---

# Indra OCR

> ⭐450 · CPU 優先的輕量 OCR，將 PDF 與圖片轉為 Markdown、文字或帶座標的 JSON。

## 快速導航

- [[document-parsing]] — OCR、版面與閱讀順序是文件輸入品質的基礎。
- [[rag]] — 可作為檢索管線的前處理，但不是完整 RAG 系統。

## 是什麼

Indra 是 Datalab 發布的 CPU OCR 專案，主辨識器約一百萬參數，搭配 ONNX Runtime 執行約 18 MB 的模型。它把行偵測、文字辨識、版面標籤及閱讀順序整合為文件轉換流程，不需要 PyTorch 或 GPU。

數位 PDF 可先讀取既有文字層，缺少內容時才使用 OCR；掃描文件與圖片則走辨識流程。輸出包括 Markdown、純文字與附 bounding boxes 的 JSON，適合把文件送進索引、知識庫或 RAG 前處理。

它優先處理清晰印刷文字，不是通吃所有版面的文件理解模型。README 的效能數字是作者測試結果，不能直接當成本機實測；程式碼與模型權重也使用不同授權，部署前須分別審核。

## 核心特色

- **CPU 與輕量依賴**：ONNX Runtime、OpenCV、pypdfium2，不依賴 PyTorch。
- **混合文字層路徑**：`auto` 依文字層檢查結果選擇抽取或 OCR，並能處理頁面圖片內文字。
- **可追溯的版面輸出**：行與區塊座標、標籤、信心分數、閱讀順序與各階段耗時。
- **多核心批次處理**：CLI 與 `convert_many` 以每核心單執行緒 worker 分配頁面。
- **本地檢視器**：可視化比較原頁、文字行、區塊及 Markdown，協助人工檢查解析品質。
- **選配數學辨識**：`--math` 輸出行內 LaTeX，但會增加耗時，也可能將表格數字誤判為數學。

## 怎麼用

需要 Python 3.10 以上。以下是官方安裝與使用方式，收錄時未在本機安裝或跑模型。

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install indra-ocr
indra-ocr paper.pdf
indra-ocr scan.png --format json
indra-ocr *.pdf --out results/ --cores 8
indra-ocr-viewer --port 8765
```

首次執行會從 Hugging Face 下載模型；離線環境可預先準備模型並使用 `--model-dir` 或 `INDRA_OCR_MODEL_DIR`。

### 模式與輸出選擇

- `--mode auto`：預設，按文字層品質選擇抽取或辨識。
- `--mode ocr`：強制 OCR，適合檢查文字層是否造成偏差。
- `--mode text`：直接使用文字層，即使檢查不通過。
- `--format json`：每頁一個 JSON 物件；批次輸出檔案採 `.jsonl`。
- Python 多程序用法應加 `if __name__ == "__main__":`，尤其是 macOS／Windows。

### 選型限制

OCR 支援拉丁、西里爾、希臘、天城、孟加拉及簡繁中文；其他文字可能僅能透過數位 PDF 文字層取得，不能把「任意文字層」誤解為「任意語言 OCR」。

手寫、劣化掃描、複雜合併儲存格及直排文字不是強項。作者的 49.4 頁／秒是 32 核心 x86、固定測試頁面的吞吐量，不代表一般筆電或冷啟動工作量。

## 跟其他方案的關係

| 方案 | 定位 | 選型重點 |
|---|---|---|
| Indra OCR | CPU 優先的文字層＋OCR 文件管線 | 清晰印刷文件、版面座標與批次處理 |
| Tesseract | 傳統 OCR 引擎 | README 比較的是特定 Latin 模型設定，不能泛化全部語言 |
| PaddleOCR PP-StructureV3 | 含版面、表格與公式的完整管線 | 與純文字 PP-OCR 不是同一比較對象 |
| Chandra | Datalab 的較高精度文件理解路線 | 作者建議用於手寫、數學、複雜表格及劣化掃描 |

上述比較依 README 的功能與測試條件整理，沒有獨立複測。Indra 負責解析，後續切塊、embedding、檢索與回答生成仍需另外建置。

## 相關概念

← [[document-parsing]] · [[rag]]

## 來源

- [GitHub：datalab-to/indra](https://github.com/datalab-to/indra)
- [模型權重授權](https://huggingface.co/datalab-to/indra-ocr/blob/main/LICENSE)
- 原始快照：`raw/2026-10-17-datalab-to-indra.md`
- Metadata：`outputs/2026-10-17-datalab-to-indra-metadata.json`

---

| 欄位 | 資訊 |
|---|---|
| GitHub | https://github.com/datalab-to/indra |
| Stars | 450（2026-10-17 快照） |
| License | 程式碼 Apache-2.0；權重 modified OpenRAIL-M |
| Language | Python |
| 收錄日期 | 2026-10-17 |

權重授權另有營收／募資及競爭用途限制；README 稱研究、個人及低於 2,000 萬美元門檻的新創可免費使用，實際法律條件以權重 LICENSE 為準，不可僅依程式碼 Apache-2.0 判斷。
