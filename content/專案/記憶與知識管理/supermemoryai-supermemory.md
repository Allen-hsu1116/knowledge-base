---
title: Supermemory
slug: supermemoryai-supermemory
created: 2026-06-01
updated: 2026-06-01
stars: 23340
language: TypeScript
topics: [AI 記憶引擎, 使用者畫像, RAG, MCP]
---

# Supermemory

> ⭐23.3k · AI 時代的記憶引擎，讓 AI 跨對話記住你

## 快速導航
[[MCP]] · [[rag]] · [[rohitg00-agentmemory]]

## 是什麼

Supermemory 是一個 AI 記憶引擎和應用，解決了「AI 每次對話都忘記一切」的核心問題。它在 LongMemEval、LoCoMo、ConvoMem 三大 AI 記憶基準測試中排名第一，提供完整的記憶解決方案。

它的運作方式是自動從對話中提取事實、建立使用者畫像、處理知識更新和矛盾、遺忘過期資訊，並在對話開始時自動注入正確的上下文。不只是記憶儲存，而是涵蓋 RAG、連接器、多模態文件處理的完整上下文堆疊。

Supermemory 同時提供消費者端（app + 瀏覽器擴充功能 + MCP）和開發者端（API + SDK），讓所有 AI 工具都能無縫獲得持久記憶能力。

## 核心特色

- **🧠 事記憶提取**：自動從對話中提取事實，處理時間變化、矛盾資訊和自動遺忘過期內容
- **👤 使用者畫像**：自動維護使用者上下文（穩定事實 + 近期活動），單次呼叫約 50ms
- **🔍 混合搜尋**：RAG + Memory 在單一查詢中完成，知識庫文件和個人化上下文一起返回
- **🔌 連接器生態**：Google Drive、Gmail、Notion、OneDrive、GitHub 自動同步，支援即時 webhook
- **📄 多模態提取**：PDF、圖片（OCR）、影片（轉錄）、程式碼（AST 感知分塊），上傳即用

## 怎麼用

MCP 安裝（最簡單的方式）：

```bash
npx -y install-mcp@latest https://mcp.supermemory.ai/mcp --client claude --oauth=yes
```

或手動加入 MCP 設定：

```json
{
  "mcpServers": {
    "supermemory": {
      "url": "https://mcp.supermemory.ai/mcp"
    }
  }
}
```

API 使用（TypeScript）：

```bash
npm install supermemory
```

```typescript
import Supermemory from "supermemory";
const client = new Supermemory();

// 儲存記憶
await client.add({
  content: "User loves TypeScript and prefers functional patterns",
  containerTag: "user_123",
});

// 取得使用者畫像 + 相關記憶
const { profile, searchResults } = await client.profile({
  containerTag: "user_123",
});
```

Python SDK 也提供：

```bash
pip install supermemory
```

## 跟其他方案的關係

| 方案 | Stars | 類型 | 記憶提取 | 使用者畫像 | RAG 整合 | MCP |
|------|-------|------|---------|-----------|---------|-----|
| **Supermemory** | ⭐23.3k | 記憶平台 | ✅ 自動 | ✅ 50ms | ✅ 混合搜尋 | ✅ |
| [[thedotmack-claude-mem]] | ⭐73.8k | Claude 記憶 | ✅ | ❌ | ❌ | ✅ |
| [[rohitg00-agentmemory]] | ⭐15.1k | Agent 記憶 | ✅ | ❌ | ✅ | ✅ |
| [[MemPalace-mempalace]] | ⭐50.8k | 知識圖譜記憶 | ✅ | ❌ | ✅ | ✅ |

Supermemory 和其他記憶方案相比，最大差異是同時提供記憶提取、使用者畫像和 RAG 三合一的解決方案。claude-mem 專注 Claude 生態，agentmemory 偏通用 Agent 記憶，MemPalace 走知識圖譜路線。

## 相關概念
← [[MCP]] · [[rag]] · [[rohitg00-agentmemory]]

## 來源

- GitHub: <https://github.com/supermemoryai/supermemory>
- 原始 README: `raw/2026-06-01-supermemoryai-supermemory.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [supermemoryai/supermemory](https://github.com/supermemoryai/supermemory) |
| Stars | ⭐23,342 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-01 |