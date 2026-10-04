---
title: OpenMed
slug: maziyarpanahi-openmed
created: 2026-06-13
updated: 2026-10-04
stars: 3193
language: Python
topics: [醫療 AI, 本地裝置, PII 去識別化, 臨床 NER, MLX]
---

# OpenMed

> ⭐3193 · 本地優先醫療 AI，支援臨床實體抽取與 PII 去識別化；資料是否外傳取決於所選執行路徑與整合設定。

## 快速導航

[[embedded-AI|邊緣裝置 AI]] · [[computer-vision]] · [[rag]] · [[self-hosted]]

## 是什麼

OpenMed 是本地優先（local-first）的醫療 AI 平台，將臨床文字轉成結構化洞見，包括實體抽取與 PII 去識別化。核心本地 runtime 在所需模型檔案備妥後可於裝置上處理資料；模型下載、遠端 provider、啟用遙測的路徑及使用者整合則可能連網。**[⚠️ 可能過時] 舊頁宣稱「病人資料永遠不會離開網路」，與 2026-10-04 官方 README 明列的網路邊界不符；local-first 不是所有配置的隱私保證。**

從 Python 一行程式到 iPhone 原生 App，OpenMed 都能跑。在 Apple Silicon 上，MLX 加速讓 Privacy Filter 模型比 CPU PyTorch 快 24-33 倍。Swift 版的 OpenMedKit 讓你在 iOS/macOS App 裡直接內建 PII 偵測和臨床抽取，完全離線。支援 12 種語言、247 個 PII 檢查點，涵蓋 HIPAA Safe Harbor 全部 18 項識別碼。

OpenMed 提供 Python API、容器／REST 服務與批次管線等部署介面。平台程式碼採 Apache-2.0；模型與資料集須個別核對授權。上述模型數量、速度和涵蓋率來自歷史來源快照，不是所有版本的保證，亦不代表自動符合 HIPAA 或臨床使用要求；部署者仍須驗證隱私行為、去識別效果與用途適合性。

## 核心特色

- **1,000+ 專科模型**：生醫和臨床領域的精選模型庫，許多超越商業方案表現
- **HIPAA 去識別化**：247 PII 檢查點，涵蓋全部 18 項 Safe Harbor 識別碼，格式保留假名
- **本地 runtime**：支援依環境選用 CPU、CUDA、Apple MLX；模型備妥後可本地推論，但需排除遠端 adapter、遙測及其他外傳整合
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
| **OpenMed** | ⭐3.2k | 醫療 AI | 可本地推論，依配置 | 12（歷史快照） | 247 檢查點（歷史快照） | 1,000+（歷史快照） |
| [[PaddlePaddle-PaddleOCR|PaddleOCR]] | ⭐80k | OCR | 部分 | 100+ | ❌ | ❌ |
| [[ragflow|RAGFlow]] | ⭐79k | RAG | 部分 | 多語 | ❌ | ❌ |
| [[embedded-AI|邊緣裝置 AI]] | — | 概念 | ✅ | — | — | — |

## 相關概念

← [[embedded-AI]] · [[rag]] · [[self-hosted]]

## 來源

- GitHub: <https://github.com/maziyarpanahi/openmed>
- [官方 README：執行與網路邊界](https://github.com/maziyarpanahi/openmed/blob/main/README.md) — 2026-10-04 核對本地 runtime、remote adapters、telemetry 及模型授權限制。
- 原始 README: `raw/2026-06-13-maziyarpanahi-openmed.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/maziyarpanahi/openmed |
| Stars | ⭐3193|
| License | Apache-2.0 |
| 收錄日期 | 2026-06-13 |
