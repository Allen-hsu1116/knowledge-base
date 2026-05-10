# CocoIndex

> 增量索引引擎，為長期 Agent 提供持續新鮮的上下文。只跑 delta，不重跑全量。Python 宣告式 API + Rust 引擎。（詳細參考頁）

## 快速導航
- 📚 **知識方法論** → [[llm-knowledge-base]]（增量 vs 全量編譯）
- 🔄 **Agent 工作流** → [[AI-Agent]]（增量是 Agent 化的基礎設施需求）
- 📄 **文件解析** → [[docling]]（Docling 解析 → CocoIndex 索引）
- 🔍 **RAG 引擎** → [[ragflow]]（同為 RAG 管線工具）

## 核心內容

### 定位
CocoIndex 把程式碼庫、會議記錄、PDF、影片等轉換成**持續更新**的 live context，讓 AI Agent 有效推理。

### 核心概念
- **增量優先**：原始檔改了才重新嵌入，不重跑全量
- **宣告式 Python API**：定義目標狀態，CocoIndex 永遠保持同步
- **Rust 引擎**：生產級，平行處理，零拷貝
- **React 心智模型**：像 React 管理 UI 狀態一樣管理資料管線

### 程式碼範例
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

### 使用場景
- Code embedding（程式碼索引和搜尋）
- PDF 嵌入和搜尋
- 對話轉知識
- 多程式碼庫摘要
- 病歷提取
- CSV 到 Kafka

### 與我們知識庫的關係

| 方法 | 策略 | 適合場景 |
|------|------|----------|
| 我們的知識庫 | LLM 編譯式 | 個人知識管理 |
| CocoIndex | 增量索引式 | 生產級 RAG 管線 |
| [[ragflow]] | RAG+Agent 引擎 | 企業級 RAG |

CocoIndex 的增量設計跟我們的 raw→wiki→lint 循環概念一致：每次只處理新增的 raw。

### 技術
- Python 73.7% + Rust 25.8%
- Apache-2.0 授權
- 7.5k stars

## 相關概念
← [[llm-knowledge-base]] · [[AI-Agent]] · [[docling]] · [[ragflow]]

## 來源
- raw/2026-05-03-cocoindex.md