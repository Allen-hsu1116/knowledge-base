---
title: CopilotKit
slug: CopilotKit-CopilotKit
created: 2026-06-06
updated: 2026-06-06
stars: 32684
language: TypeScript
topics:
  - agent
  - agentic-ai
  - ai-agent
  - generative-ui
  - llm
  - react
  - typescript
  - copilot
  - ag-ui
---

# CopilotKit

> ⭐32.7k · AI Agent 前端全棧框架，AG-UI Protocol 發起者——讓同一個 Agent 驅動 Web、Mobile、Slack 三端

快速導航：[[AI-Agent|AI Agent]] · [[MCP|MCP]] · [[CopilotKit-CopilotKit|CopilotKit]]

## 是什麼

CopilotKit 是一個開源的 AI Agent 應用前端框架，讓開發者能在 React、Angular、Vue、React Native 等任何前端框架上快速構建「Agent-Native」應用。它不只是聊天介面——而是提供 Generative UI（AI 動態生成 UI 元件）、共享狀態（Agent 和 UI 即時同步）、Human-in-the-Loop（Agent 暫停等人確認）等能力，把 Agent 從純文字對話拉到全互動的應用層級。

更關鍵的是，CopilotKit 團隊發起了 **AG-UI Protocol**——一個標準化的 Agent-User 互動協議，已被 Google、LangChain、AWS、Microsoft、Mastra、PydanticAI 等主流框架採用。這意味著 CopilotKit 不只是一個 UI 框架，而是 Agent 與人互動的標準化層。

從技術架構看，CopilotKit 把前端元件（useAgent hook、CopilotChat、Generative UI）和後端 Agent 邏輯（LangGraph、CrewAI 等框架整合）串成單一互動迴圈：Agent 可以渲染 UI、讀取狀態、暫停等人確認、跨 session 持續學習。一個 Agent 定義，部署到 Web + Mobile + Slack + Teams 四端。

## 核心特色

- **Generative UI**：Agent 可以在執行過程中動態生成和更新 UI 元件，不是只輸出文字，而是根據使用者意圖和 Agent 狀態即時渲染互動元件，涵蓋靜態（AG-UI Protocol）、聲明式（A2UI）、開放式（MCP Apps）三種模式
- **AG-UI Protocol 標準化**：自創的 Agent-User 互動協議，已被 Google、LangChain、AWS、Microsoft、Mastra、PydanticAI 採用，定義了 Agent 如何向 UI 推送事件、渲染元件、同步狀態的標準介面
- **useAgent Hook**：程式化控制 Agent 連線的核心 hook，直接讀寫 Agent 狀態、觸發動作，把 Agent 整合到 React 元件树中就像用 useState 一樣自然
- **多平台一致性**：一個 Agent 邏輯部署到 React/Next.js、Angular、Vue、React Native、Slack、Microsoft Teams 六端，Agent 後端不變、UI 層各端適配
- **Self-Learning (CLHF)**：透過 Continuous Learning from Human Feedback，Agent 從每次互動自動改進行為，不需微調模型，支援 per-user 自適應和自動 prompt 增強

## 怎麼用

```bash
# 新專案快速啟動
npx copilotkit@latest create -f nextjs

# 現有專案整合
npx copilotkit@latest init

# Python 安裝（後端 Agent 整合）
pip install copilotkit
```

```tsx
// React 前端：useAgent hook 程式化控制 Agent
import { useAgent } from '@copilotkit/react-core';

function MyComponent() {
  const { agent } = useAgent({ agentId: 'my_agent' });

  return (
    <div>
      <h1>{agent.state.city}</h1>
      <button onClick={() => agent.setState({ city: 'NYC' })}>
        Set City
      </button>
    </div>
  );
}
```

```python
# Python 後端：定義 Agent 工具
from copilotkit import CopilotKitSDK, LangGraphAgent

sdk = CopilotKitSDK(
    agents=[
        LangGraphAgent(
            name='my_agent',
            agent=graph,
        )
    ]
)
```

詳細文件請參考 [CopilotKit Docs](https://docs.copilotkit.ai/) 和 [AG-UI Protocol](https://github.com/ag-ui-protocol/ag-ui)。

## 跟其他方案的關係

| 方案 | Stars | 類型 | Generative UI | 多平台 | Agent 協議 | Human-in-Loop |
|------|-------|------|--------------|--------|-----------|---------------|
| **CopilotKit** | ⭐32.7k | Agent 前端框架 | ✅ 三種模式 | React/Angular/Vue/RN/Slack/Teams | ✅ AG-UI Protocol | ✅ |
| [[open-webui-open-webui\|Open WebUI]] | ⭐100k+ | LLM 聊天介面 | ❌ | Web | ❌ | ❌ |
| [[LangChain]] | ⭐136.8k | Agent 編排框架 | ❌ | Python/JS | ❌ | ✅ |
| [[anthropics-claude-code\|Claude Code]] | ⭐128k | Coding Agent CLI | ❌ | CLI | ❌ | ✅ |
| [[github-copilot-sdk\|GitHub Copilot SDK]] | ⭐9.2k | Agent SDK | ❌ | Python/TS/Go/.NET/Java/Rust | ✅ Copilot CLI | ✅ |

CopilotKit 的差異化在於它是唯一把「Agent 和 UI 的互動」標準化的框架——AG-UI Protocol 讓 Agent 推送的不只是文字，而是完整的 UI 事件流；而 Generative UI 讓 Agent 能動態渲染元件，這是其他 Agent 框架（如 LangChain、CrewAI）在前端層做不到的。

← [[AI-Agent|AI Agent]] · [[MCP|MCP]]

## 來源

- GitHub: <https://github.com/CopilotKit/CopilotKit>
- 原始 README: `raw/2026-06-06-CopilotKit-CopilotKit.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [CopilotKit/CopilotKit](https://github.com/CopilotKit/CopilotKit) |
| Stars | ⭐32,684 |
| License | MIT |
| Language | TypeScript |
| 收錄日期 | 2026-06-06 |