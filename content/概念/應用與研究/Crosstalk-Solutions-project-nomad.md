---
title: Project N.O.M.A.D.
slug: Crosstalk-Solutions-project-nomad
created: 2026-05-30
updated: 2026-05-30
stars: 26965
language: TypeScript
---

# Project N.O.M.A.D.

> ⭐27k · 離線優先的全功能知識與 AI 伺服器，打包 Wikipedia、教育平台、地圖、AI 聊天與工具於一體

快速導航：[[self-hosted-AI-platform|自架 AI 平台]] · [[Ollama]] · [[rag|RAG]]

## 是什麼

Project N.O.M.A.D.（Node for Offline Media, Archives, and Data）是一個自給自足的離線優先知識與教育伺服器。它將 Wikipedia、醫學參考資料、Khan Academy 課程、離線地圖、AI 聊天助手、加密工具和筆記系統打包成一個 Docker 化的解決方案，安裝後完全不需要網路連線即可使用。

N.O.M.A.D. 的目標使用者是那些需要在無網路環境下仍能存取關鍵知識和 AI 能力的人——無論是因為災難應變、偏遠地區工作、還是單純追求數位自主。它透過 Docker Compose 管理所有容器化服務，提供一個統一的 Command Center 管理介面，讓使用者一鍵安裝和更新所有工具。

核心架構圍繞「知識永不離線」的理念設計。AI 聊天功能使用 Ollama 在本地運行 LLM，搭配 Qdrant 向量資料庫做 RAG 檢索，支援文件上傳和語意搜尋。對於需要更強 GPU 的使用者，N.O.M.A.D. 也支援連接遠端 Ollama 或 OpenAI 相容 API 伺服器（如 LM Studio），讓 AI 運算可以卸載到更強大的機器上。

## 核心特色

- **完全離線運作**：初始安裝後完全不需要網路，內建 Wikipedia、醫學參考、電子書等離線知識庫，零遙測
- **AI 聊天 + RAG**：本地 Ollama LLM 搭配 Qdrant 向量資料庫，支援文件上傳和語意搜尋，可連接遠端 GPU
- **教育平台**：內建 Kolibri（Khan Academy 課程），支援進度追蹤和多使用者
- **離線地圖**：透過 ProtoMaps 下載區域地圖，支援搜尋和導航
- **一鍵安裝**：單行指令安裝，Docker Compose 管理所有服務，Command Center 統一管理
- **安全工具整合**：內建 CyberChef 加密/編碼工具和 FlatNotes 筆記系統

## 怎麼用

在 Debian-based 系統上快速安裝（需 sudo 權限）：

```bash
sudo apt-get update && \
sudo apt-get install -y curl && \
curl -fsSL https://raw.githubusercontent.com/Crosstalk-Solutions/project-nomad/refs/heads/main/install/install_nomad.sh \
  -o install_nomad.sh && \
sudo bash install_nomad.sh
```

安裝完成後，開啟瀏覽器前往 `http://localhost:8080` 即可使用。

建議硬體規格：
- **最低**：2 GHz 雙核心處理器、4GB RAM、5GB 儲存空間
- **AI 運行**：i7/Ryzen 7 以上、32GB RAM、NVIDIA RTX 3060 以上、250GB SSD

如需使用遠端 AI 伺服器，在 AI Assistant 設定中輸入 Ollama 或 OpenAI 相容 API URL 即可。

## 跟其他方案的關係

| 方案 | Stars | 類型 | 核心特色 | 離線運行 |
|------|-------|------|----------|----------|
| **[[Crosstalk-Solutions-project-nomad\|Project N.O.M.A.D.]]** | ⭐27k | 離線知識伺服器 | 離線 Wikipedia + AI + 教育 + 地圖 | ✅ |
| [[open-webui-open-webui\|Open WebUI]] | ⭐100k+ | 自架 AI 平台 | 完整 LLM Web UI + RAG | ✅ |
| [[Ollama]] | ⭐171k | LLM 運行引擎 | 一鍵本地部署 LLM | ✅ |
| [[jellyfin-jellyfin\|Jellyfin]] | ⭐52k | 媒體伺服器 | 離線媒體串流 | ✅ |
| [[paperless-ngx-paperless-ngx\|Paperless-ngx]] | ⭐41k | 文件管理 | 自架文件管理 + OCR | ✅ |

← [[self-hosted-AI-platform|自架 AI 平台]] · [[Ollama]] · [[rag|RAG]]

## 來源

- GitHub: <https://github.com/Crosstalk-Solutions/project-nomad>
- 原始 README: `raw/2026-05-30-Crosstalk-Solutions-project-nomad.md`

---

| 項目 | 值 |
|------|-----|
| GitHub | [Crosstalk-Solutions/project-nomad](https://github.com/Crosstalk-Solutions/project-nomad) |
| Stars | ⭐26,965 |
| License | Apache-2.0 |
| Language | TypeScript |
| 收錄日期 | 2026-05-30 |