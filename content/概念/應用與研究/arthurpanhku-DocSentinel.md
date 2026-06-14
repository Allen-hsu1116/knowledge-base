---
title: DocSentinel — SSDLC 安全評估平台
slug: arthurpanhku-DocSentinel
created: 2026-05-29
updated: 2026-05-29
stars: 88
language: Python
---

# DocSentinel — SSDLC 安全評估平台

> ⭐88 · AI 驅動的 SSDLC 平台，用 LangGraph 編排六個安全 Agent，自動化軟體開發全生命週期的安全評估。

快速導航：[[MCP]] · [[rag|RAG]] · [[pentesting|滲透測試]]

## 是什麼

DocSentinel 是一個 AI 驅動的安全軟體開發生命週期（SSDLC）平台，專為安全團隊設計。它用 LangGraph 編排六個階段特定的 AI agent，將安全評估從「只在上線前做一次」變成「每個階段都有對應的安全守門員」。六個 agent 分別對應需求、設計、開發、測試、部署、維運六個 SSDLC 階段，每個都有自己的技能清單和知識庫集合。

核心工作流是：使用者上傳文件（PDF、Word、Excel、PPT、SAST 報告等），Parser 統一解析成文字/Markdown，LangGraph Router 根據 SSDLC 階段路由到對應的 Phase Agent，Agent 查詢 RAG 知識庫、套用技能、產生結構化報告——包含風險項目、合規差距和修補建議。整個過程可以透過 REST API 或 MCP 協議整合到 CI/CD 管線或 AI agent（Claude Desktop、Cursor、OpenClaw）中。

雖然目前星數不多（88 顆），但該專案展示了一個完整的 SSDLC 自動化架構，從需求分析和合規映射、STRIDE/DREAD 威脅建模、到 SAST/DAST 報告分流和漏洞優先排序都有涵蓋。對於需要跨多個專案和階段擴展安全評估、但不想等比例增加人手的企業來說，是值得關注的方向。

## 核心特色

- **六階段 SSDLC 全覆蓋**：需求（安全需求和合規映射）、設計（STRIDE/DREAD 威脅建模和架構審查）、開發（安全編碼評估和 SAST 分流）、測試（SAST/DAST 報告分析和滲透測試審查）、部署（配置安全審查和上線簽核）、維運（漏洞監控和事件回應），每個階段有獨立的 agent、技能和知識庫。
- **LangGraph 有狀態編排**：用 LangGraph 狀態機維護跨階段上下文，支援條件路由、Human-in-the-loop 中斷點和長時間評估的檢查點恢復。Policy 和 Evidence agent 平行執行，再由 Drafter 和 Reviewer agent 彙整。
- **RAG 知識庫**：上傳組織的安全政策、標準和過去審計報告，每個 SSDLC 階段使用獨立的知識庫集合（需求→合規框架、設計→威脅目錄、開發→OWASP 安全編碼標準等），確保 agent 取得最相關的上下文。
- **MCP 協議整合**：同時支援 REST API 和 MCP 協議，可以直接作為 Claude Desktop、Cursor、OpenClaw 的超級工具使用。對 AI agent 來說，DocSentinel 就是一個安全評估的超級技能。
- **多 LLM 後端**：支援 OpenAI、Claude、Qwen 和 Ollama（本地推論），同一介面切換模型。對隱私敏感的安全評估場景，可以用 Ollama 完全本地運行。

## 怎麼用

### 安裝

```bash
# 複製倉庫
git clone https://github.com/arthurpanhku/DocSentinel.git
cd DocSentinel

# 建立虛擬環境
python -m venv .venv
source .venv/bin/activate

# 安裝依賴
pip install -r requirements.txt

# 複製環境變數
cp .env.example .env
# 編輯 .env 填入你的 API keys
```

### 啟動服務

```bash
# 啟動 API 伺服器
uvicorn app.main:app --host 0.0.0.0 --port 8000

# 或啟動 MCP 伺服器（供 Claude Desktop / Cursor 使用）
python app/mcp_server.py
```

### Claude Desktop MCP 設定

```json
{
  "mcpServers": {
    "docsentinel": {
      "command": "/path/to/DocSentinel/.venv/bin/python",
      "args": ["/path/to/DocSentinel/app/mcp_server.py"],
      "env": {
        "OPENAI_API_KEY": "sk-..."
      }
    }
  }
}
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心場景 | Agent 數量 |
|------|-------|------|----------|-----------|
| **DocSentinel** | ⭐88 | SSDLC 安全平台 | 六階段安全評估自動化 | 6 個階段 Agent |
| [[ChromeDevTools-chrome-devtools-mcp\|Chrome DevTools MCP]] | ⭐40k | MCP 工具 | 瀏覽器除錯自動化 | 1 |
| [[KeygraphHQ-shannon\|Shannon]] | ⭐42.7k | 滲透測試 | 白箱安全測試 | — |
| GitHub Advanced Security | — | SAST/DAST | 程式碼安全掃描 | — |
| Semgrep | ⭐10k+ | SAST | 靜態分析 | — |

← [[MCP]] · [[rag|RAG]] · [[pentesting|滲透測試]]

## 來源

- GitHub: <https://github.com/arthurpanhku/DocSentinel>
- 原始 README: `raw/2026-05-29-arthurpanhku-DocSentinel.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [arthurpanhku/DocSentinel](https://github.com/arthurpanhku/DocSentinel) |
| Stars | ⭐88 |
| License | MIT |
| Language | Python |
| 收錄日期 | 2026-05-29 |