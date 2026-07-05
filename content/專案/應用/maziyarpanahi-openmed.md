---
title: OpenMed
slug: maziyarpanahi-openmed
created: 2026-06-13
updated: 2026-06-13
stars: 3193
language: Python
topics: [醫療 AI, 本地裝置, PII 去識別化, 臨床 NER, MLX]
---

# OpenMed

> ⭐3.2k · 本地優先醫療 AI，1,000+ 專科模型全在裝置上跑，病人資料不出網路

## 快速導航
[[embedded-AI|邊緣裝置 AI]] · [[computer-vision]] · [[rag]] · [[self-hosted]]

## 是什麼

OpenMed 是一個本地優先（local-first）的醫療 AI 平台。它把臨床文字轉成結構化洞見——實體抽取、PII 去識別化——而且 1,000+ 個專門的醫學模型全部在你自己的硬體上運行。不需要雲端，不需要 API key，病人資料永遠不會離開你的網路。

從 Python 一行程式到 iPhone 原生 App，OpenMed 都能跑。在 Apple Silicon 上，MLX 加速讓 Privacy Filter 模型比 CPU PyTorch 快 24-33 倍。Swift 版的 OpenMedKit 讓你在 iOS/macOS App 裡直接內建 PII 偵測和臨床抽取，完全離線。支援 12 種語言、247 個 PII 檢查點，涵蓋 HIPAA Safe Harbor 全部 18 項識別碼。

OpenMed 同時提供 Python API、Docker REST 服務和批次管線三種部署方式。Apache-2.0 開源授權，零廠商鎖定。

## 核心特色

- **1,000+ 專科模型**：生醫和臨床領域的精選模型庫，許多超越商業方案表現
- **HIPAA 去識別化**：247 PII 檢查點，涵蓋全部 18 項 Safe Harbor 識別碼，格式保留假名
- **100% 裝置端運行**：CPU、CUDA、Apple MLX 均可，病人資料永不離開設備
- **MLX 24-33x 加速**：Apple Silicon 上 Privacy Filter 延遲大幅降低
- **iOS/macOS 原生**：OpenMedKit（Swift）讓 App 直接內建臨床 NER + PII 偵測
- **12 種語言**：多語言臨床文件處理

## 怎麼用

**安裝：**

```bash
# 核心 + Hugging Face runtime（CPU 或 CUDA）
pip install "openmed[hf]"

# 加 REST 服務
pip install "openmed[hf,service]"

# Apple Silicon MLX 加速
pip install "openmed[mlx]"
```

**Python API：**

```python
from openmed import analyze_text

result = analyze_text(
    "Patient started on imatinib for chronic myeloid leukemia.",
    model_name="disease_detection_superclinical",
)

for entity in result.entities:
    print(f"{entity.label:<12} {entity.text:<28} {entity.confidence:.2f}")
# DISEASE      chronic myeloid leukemia     0.98
# DRUG         imatinib                     0.95
```

**REST 服務：**

```bash
uvicorn openmed.service.app:app --host 0.0.0.0 --port 8080
# GET /health
# POST /analyze
# POST /pii/extract
```

**Swift / iOS（OpenMedKit）：**

```swift
dependencies: [
    .package(url: "https://github.com/maziyarpanahi/openmed.git", from: "1.5.5"),
]
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 裝置端 | 語言數 | PII 去識別 | 醫學模型 |
|------|-------|------|--------|--------|-----------|---------|
| **OpenMed** | ⭐3.2k | 醫療 AI | ✅ 100% | 12 | ✅ 247 檢查點 | 1,000+ |
| [[PaddlePaddle-PaddleOCR|PaddleOCR]] | ⭐80k | OCR | 部分 | 100+ | ❌ | ❌ |
| [[ragflow|RAGFlow]] | ⭐79k | RAG | 部分 | 多語 | ❌ | ❌ |
| [[embedded-AI|邊緣裝置 AI]] | — | 概念 | ✅ | — | — | — |

## 相關概念
← [[embedded-AI|邊緣裝置 AI]] · [[rag]] · [[self-hosted]]

## 來源

- GitHub: <https://github.com/maziyarpanahi/openmed>
- 原始 README: `raw/2026-06-13-maziyarpanahi-openmed.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [maziyarpanahi/openmed](https://github.com/maziyarpanahi/openmed) |
| Stars | ⭐3,193 |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-06-13 |