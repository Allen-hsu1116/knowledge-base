---
title: "PaperOrchestra"
slug: google-research-paper-orchestra
created: 2026-11-17
updated: 2026-11-17
stars: 1522
language: zh-TW
topics: ["ai-research-assistant", "multi-agent-systems"]
---

# PaperOrchestra

> ⭐1.5k · 將研究想法與實驗紀錄轉成 LaTeX 論文稿的多 Agent 寫作流程。

## 快速導航

- [[AI-Agent]]
- [[generative-AI]]

## 是什麼

PaperOrchestra 以不同專職 Agent 處理大綱、文獻、章節撰寫、內容修訂與繪圖。輸入是研究想法和實驗紀錄等前置材料，輸出目標是符合目標會議模板的 LaTeX 稿件。

README 將成果描述為 submission-ready，但這是專案目標，不代表生成內容已通過科學查核。作者仍需核實實驗、引用、圖表及投稿規範；此研究程式也明確聲明不是 Google 官方支援產品。

## 核心特色

### 1. 分工式寫作管線

不同 Agent 處理 outline、literature、writing、refinement 與 plotting。

### 2. 文獻整合

搜尋與整合相關文獻進稿件，引用正確性仍需人工驗證。

### 3. 圖表與 LaTeX

可啟用 plotting，並使用提供或自行加入的會議模板。

### 4. 模型角色配置

CLI 可分別指定 writer_model_name 與 reflection_model_name。

## 怎麼用

### 安裝與起步

以下為來源文件的操作入口，並非本次已在主機安裝或執行的紀錄。

```bash
git clone https://github.com/google-research/paper-orchestra.git
cd paper-orchestra
conda create -n paper_orchestra python=3.11
conda activate paper_orchestra
pip install -r requirements.txt
```

### 操作順序

1. 依模型選擇設定 .env；Gemini 可使用 API key 或 Vertex AI 專案及區域，OpenAI 使用其 API key。

2. 執行 python paper_writing_cli.py --raw_materials_dir ./materials --latex_template_dir ./templates/cvpr2025 --output_dir ./output；先準備相應輸入目錄。

3. 要啟用繪圖可加 --use_plotting true；本次未呼叫模型或生成論文。

### 使用邊界

- README 指出資料集未包含在程式庫，計畫另行發布，不能把 clone 當成完整實驗重現。
- 材料可能送往外部模型；研究機密、API 成本及學術倫理需先審查。

## 跟其他方案的關係

以下是依專案定位整理的比較，非效能測試或排名。

| 方案 | 定位 | 選用差異 |
| --- | --- | --- |
| PaperOrchestra | 論文寫作編排 | 從已有研究材料組織稿件，不等於完成研究實驗。 |
| 一般聊天模型 | 互動式文字輔助 | 使用者需自行管理文獻、模板及各輪修訂。 |
| 人工 LaTeX 工作流 | 作者直接撰寫 | 控制力高，仍可在局部採用生成工具輔助。 |

## 相關概念

← [[AI-Agent]] · [[generative-AI]]

## 來源

- GitHub：https://github.com/google-research/paper-orchestra
- README 快照：`raw/2026-11-17-google-research-paper-orchestra.md`
- Metadata 快照：`raw/2026-11-17-google-research-paper-orchestra.metadata.json`


---

| 欄位 | 資料 |
| --- | --- |
| GitHub | https://github.com/google-research/paper-orchestra |
| Stars | 1,522（2026-11-17 擷取） |
| License | Apache-2.0 |
| Language | Python |
| 收錄日期 | 2026-11-17 |
