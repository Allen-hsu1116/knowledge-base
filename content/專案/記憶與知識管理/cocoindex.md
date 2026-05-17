# CocoIndex

> 增量索引引擎，為長期 Agent 提供持續新鮮的上下文。只跑 delta，不重跑全量。Python 宣告式 API + Rust 引擎。

## 快速導航

- 📚 **知識方法論** → [[llm-knowledge-base]]（增量 vs 全量編譯）
- 🔄 **Agent 工作流** → [[AI-Agent]]（增量是 Agent 化的基礎設施需求）
- 📄 **文件解析** → [[docling]]（Docling 解析 → CocoIndex 索引）
- 🔍 **RAG 引擎** → [[ragflow]]（同為 RAG 管線工具）

## 是什麼

CocoIndex 把程式碼庫、會議記錄、PDF、影片等轉換成持續更新的 live context，讓 AI Agent 有效推理。核心差異：增量優先——原始檔改了才重新嵌入，不重跑全量。用宣告式 Python API 定義目標狀態，CocoIndex 永遠保持同步，底層 Rust 引擎確保生產級效能。

## 核心特色

### 增量優先

原始檔改了才重新嵌入，不重跑全量。像 React 管理 UI 狀態一樣管理資料管線——你宣告目標狀態，CocoIndex 保持同步。

### 宣告式 Python API

定義目標狀態而非操作步驟，CocoIndex 自動計算 diff 並更新索引。不需手動管理增量邏輯。

### Rust 引擎

生產級效能，平行處理，零拷貝序列化。Python 73.7% + Rust 25.8%，兼顧易用性和速度。

### 多種連接器

支援 localfs（本地檔案系統）、Postgres、S3 等資料來源，以及 RecursiveSplitter、嵌入模型等處理操作。

### 向量索引自動管理

內建向量索引宣告，一鍵建立 embedding 搜尋功能。

## 怎麼用

```python
import cocoindex as coco
from cocoindex.connectors import localfs, postgres
from cocoindex.ops.text import RecursiveSplitter

@coco.fn(memo=True)  # ← cached by hash(input) + hash(code)
async def index_file(file, table):
    for chunk in RecursiveSplitter().split(await file.read_text()):
        table.declare_row(text=chunk.text, embedding=embed(chunk.text))

@coco.fn
async def main(src):
    table = await postgres.mount_table_target(PG, table_name="docs")
    table.declare_vector_index(column="embedding")
    await coco.mount_each(index_file, localfs.walk_dir(src).items(), table)

coco.App(coco.AppConfig(name="docs"), main, src="./docs").update_blocking()
```

## 跟其他方案的關係

CocoIndex 是 [[llm-knowledge-base]] 的生產級增量索引方案。跟我們知識庫的 raw→wiki→lint 循環概念一致：每次只處理新增的 raw。

跟 [[docling]] 的關係：Docling 負責上游文件解析（PDF→結構化資料），CocoIndex 負責下游增量索引（結構化資料→向量搜尋）。兩者互補，Docling 解析 → CocoIndex 索引。

跟 [[ragflow]] 的差異：RAGFlow 是企業級 RAG+Agent 引擎（端到端方案），CocoIndex 是增量索引引擎（基礎設施層）。CocoIndex 不管檔案解析，只管索引更新。

## 相關概念

← [[llm-knowledge-base]] · [[AI-Agent]] · [[docling]] · [[ragflow]]

## 來源

- raw/2026-05-03-cocoindex.md

---

| 項目 | 值 |
|------|-----|
| GitHub | https://github.com/cocoindex-io/cocoindex |
| Stars | ⭐9,822 |
| Language | Python/Rust |
| 建立日期 | 2025-03-03 |
| 授權 | Apache-2.0 |
| 收錄日期 | 2026-05-03 |