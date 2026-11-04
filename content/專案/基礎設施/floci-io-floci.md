---
title: "Floci"
slug: "floci-io-floci"
created: "2026-11-04"
updated: "2026-11-04"
stars: 28783
language: "Java"
topics: ["aws", "aws-emulation", "devops", "docker", "ec2", "ecs", "localstack", "s3", "sqs", "testcontainers"]
---

# Floci

> ⭐28.8k · Java · 本地 AWS 模擬器，為開發、測試與 CI 提供雲端服務相容端點。

## 快速導航

- [[self-hosted]]
- [[workflow-automation]]

## 是什麼

Floci 是免費開源的本地 AWS 模擬器，讓開發者不必建立雲端帳號，就能在本機測試依賴 AWS 的應用。它不是 LLM 框架，而是可支援 AI 應用與一般軟體測試的周邊基礎設施。

專案將 AWS SDK、CLI、Terraform、CDK 與 OpenTofu 等工具導向 localhost:4566，保留既有工具使用方式。官方稱其可替換 LocalStack，但實際相容性仍應以專案所需服務及 API 的整合測試確認。

## 核心特色

- 本地端點：以單一 AWS 風格服務入口支援開發與 CI 工作流。

- 不需雲端帳號：README 明確標示無帳號、授權 token 或付費功能閘門。

- 多種執行方式：提供 Docker 映像、CLI，以及 Linux／macOS／Windows 獨立執行檔。

- 沿用既有工具：透過 endpoint 設定接入 AWS SDK、CLI 與基礎設施即程式碼工具。

- 瀏覽器控制台：可在 /_floci/ui 檢視資源；控制台 sidecar 需要 Docker socket。

## 怎麼用

先安裝 Docker，再建立 compose.yaml；下列 port 綁定刻意限制於本機。

```yaml
services:
  floci:
    image: floci/floci:latest
    ports:
      - "127.0.0.1:4566:4566"
```

```bash
docker compose up -d
export AWS_ENDPOINT_URL=http://localhost:4566
export AWS_DEFAULT_REGION=us-east-1
export AWS_ACCESS_KEY_ID=test
export AWS_SECRET_ACCESS_KEY=test
aws s3 mb s3://my-bucket
```

### 使用與驗證注意事項

- 以上為文件用安裝／操作範例，本次收錄未實際啟動服務。

- 使用 test 憑證，避免將正式 AWS 金鑰放進測試環境。

- 最小範例未掛載 Docker socket，因此不包含需啟動 sidecar 的完整控制台配置。

- 模擬器不等於正式雲端；權限、網路及服務邊界仍需另行驗證。

## 跟其他方案的關係

以下是依官方定位整理的選型對照，不是效能實測結果。

| 方案 | 定位 | 關係與取捨 |
|---|---|---|
| Floci | 本地 AWS 模擬 | 適合快速開發與 CI 回饋；非雲端正式環境。 |
| LocalStack | 同類本地模擬方案 | 官方提供遷移說明，仍需核對使用中的 API。 |
| 正式 AWS | 實際託管服務 | 用於正式服務與最終相容性驗證，有獨立成本與權限需求。 |

## 相關概念

← [[self-hosted]] · [[workflow-automation]]

## 來源

- GitHub：https://github.com/floci-io/floci
- 官方 README：https://github.com/floci-io/floci/blob/main/README.md
- 原始快照：`raw/2026-11-04-floci-io-floci.md`
- API metadata：`raw/2026-11-04-floci-io-floci-metadata.json`

---

| 欄位 | 內容 |
|---|---|
| GitHub | https://github.com/floci-io/floci |
| Stars | 28,783（2026-11-04 快照） |
| License | MIT |
| Language | Java |
| 收錄日期 | 2026-11-04 |
