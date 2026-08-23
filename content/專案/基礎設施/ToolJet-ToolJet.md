---
title: ToolJet
slug: ToolJet-ToolJet
created: 2026-08-17
updated: 2026-08-17
stars: 40033
language: JavaScript
topics: [ai-app-builder, low-code, no-code, self-hosted, workflow-automation, internal-tools, reactjs, typescript, kubernetes, docker]
---

# ToolJet

> ⭐40033 · 開源低代碼平台，AI 驅動的企業內部工具與應用生成器，支援 80+ 資料來源與視覺化拖拽建構

## 快速導航


- 🤖 **AI Agent** → [[AI-Agent]] · [[workflow-automation]]
- 🏗 **自架平台** → [[self-hosted]] · [[langgenius-dify]]
- 🔧 **低代碼/工作流** → [[n8n-io-n8n]] · [[FlowiseAI-Flowise]]

## 是什麼

ToolJet 是一個開源的低代碼/無代碼平台，專為快速建構企業內部工具、儀表板和業務應用而設計。它的社群版（CE）提供視覺化拖拽建構器、60+ 響應式元件和 80+ 資料來源連接器，讓非技術人員也能快速組裝出功能完整的內部工具。企業版（ToolJet AI）在此基礎上加入 AI 應用生成——用自然語言描述需求即可生成完整應用、AI 輔助查詢建構、AI 除錯，以及智慧 Agent 建構器來自動化工作流。

ToolJet 的定位介於傳統低代碼平台（如 Retool、Appsmith）和新世代 AI 應用生成器之間。它既保留了低代碼的精細控制力，又透過 AI 層讓建構過程加速數倍。社群版以 AGPL-3.0 開源，可完全自架於 Docker、Kubernetes 或各種雲端平台，適合對資料主權有要求的企業。

## 核心特色

- **AI 應用生成**：自然語言 prompt 即可生成完整內部工具，從 UI 到查詢一鍵完成
- **60+ 視覺化元件**：表格、圖表、表單、列表、進度條等，拖拽即可組裝響應式介面
- **80+ 資料來源**：連接 PostgreSQL、MySQL、MongoDB、REST API、GraphQL、SaaS 工具（Slack、GitHub 等）、雲端儲存
- **內建無代碼資料庫**：ToolJet Database，不需額外設定即可在應用內使用
- **多頁面與多人協作**：支援複雜多頁應用，即時多人編輯、行內留言和細粒度權限
- **AI Agent 建構器**：企業版可建立智慧 Agent 自動化工作流和流程編排
- **安全設計**：AES-256-GCM 加密、代理資料流（不直接暴露憑證）、SSO 支援
- **完整自架**：Docker、Kubernetes、AWS、GCP、Azure 均可部署，資料不離開基礎設施
- **可擴展性**：透過 ToolJet CLI 建立自訂插件和連接器
- **GitSync 與 CI/CD**：企業版支援 GitHub/GitLab 版本控制和自動化部署

## 怎麼用

```bash
# Docker 快速啟動
docker run \
  --name tooljet \
  --restart unless-stopped \
  -p 80:80 \
  --platform linux/amd64 \
  -v tooljet_data:/var/lib/postgresql/13/main \
  tooljet/try:ee-lts-latest
```

```bash
# Kubernetes 部署
helm repo add tooljet https://tooljet.github.io/helm-charts
helm install tooljet tooljet/tooljet --namespace tooljet --create-namespace
```

```bash
# 開發模式
git clone https://github.com/ToolJet/ToolJet.git
cd ToolJet
docker-compose up -d
```

啟動後訪問 `http://localhost`，使用拖拽建構器建立第一個應用：
1. 選擇資料來源（如 PostgreSQL 或內建資料庫）
2. 拖拽元件到畫布（表格、表單、圖表等）
3. 綁定查詢到元件
4. 預覽並發佈

## 跟其他方案的關係

ToolJet 處於低代碼內部工具和 AI 應用生成器的交叉地帶：

- **Retool**：最知名的商業低代碼內部工具平台；ToolJet 是開源替代品，功能相近但可自架
- **Appsmith**：另一個開源低代碼平台；ToolJet 的 AI 生成能力是差異化優勢
- **Dify** → [[langgenius-dify]]：LLM 應用平台，偏重 AI Agent 和 RAG 工作流；ToolJet 偏重通用內部工具
- **n8n** → [[n8n-io-n8n]]：工作流自動化平台，偏重後端流程；ToolJet 偏重前端 UI + 後端查詢的完整應用
- **Flowise** → [[FlowiseAI-Flowise]]：視覺化 LangChain Agent 建構；ToolJet 的 Agent Builder 更面向業務流程自動化

| 能力 | ToolJet | Retool | Appsmith | Dify | n8n |
|---|:---:|:---:|:---:|:---:|:---:|
| 開源 | ✓ | — | ✓ | ✓ | ✓ |
| AI 應用生成 | ✓ | — | — | ✓ | — |
| 視覺化 UI 建構 | ✓ | ✓ | ✓ | — | — |
| 低代碼/無代碼 | ✓ | ✓ | ✓ | 部分 | 部分 |
| 自架 | ✓ | — | ✓ | ✓ | ✓ |
| 內建資料庫 | ✓ | — | — | — | — |
| Agent 建構器 | ✓ | — | — | ✓ | ✓ |
| 工作流自動化 | ✓ | — | — | ✓ | ✓ |

## 相關概念


← [[AI-Agent]] · [[workflow-automation]] · [[self-hosted]]

## 來源

- GitHub: <https://github.com/ToolJet/ToolJet>
- 官網: <https://tooljet.com>
- 文件: <https://docs.tooljet.com>
- 原始 README: `raw/2026-08-17-ToolJet-ToolJet.md`

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/ToolJet/ToolJet |
| Stars | ⭐40033|
| License | AGPL-3.0 |
| 收錄日期 | 2026-08-17 |
