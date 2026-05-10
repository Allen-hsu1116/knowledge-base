---
source: https://github.com/google/skills
date: 2026-04-28
tags: [google, agent-skills, gcp, cloud, skill-framework]
---

# google/skills — Google 產品與技術的 Agent Skills

> Google 官方維護的 Agent Skills 專案，提供 Google 產品和技術（尤其是 Google Cloud）的標準化 Skill 定義。使用與 addyosmani/agent-skills 相同的 SKILL.md 格式和 skills.sh 分發標準。

**GitHub**: https://github.com/google/skills
**Stars**: 4.8k | **Forks**: 291
**授權**: Apache 2.0

## 什麼是 Google Skills

Google 官方出品的 Agent Skills 庫，每個 Skill 對應一項 Google 產品/技術，幫助 AI Agent 正確使用 Google Cloud 服務。

### 收錄的 Skills

| Skill | 說明 |
|-------|------|
| Gemini API in Agent Platform | 使用 Gemini API |
| AlloyDB Basics | AlloyDB 資料庫基礎 |
| BigQuery Basics | BigQuery 資料分析 |
| Cloud Run Basics | Cloud Run 部署 |
| Cloud SQL Basics | Cloud SQL 關聯式資料庫 |
| Firebase Basics | Firebase 開發平台 |
| Kubernetes Engine (GKE) Basics | GKE 容器編排 |
| Well-Architected: Security | 安全架構 |
| Well-Architected: Reliability | 可靠度架構 |
| Well-Architected: Cost Optimization | 成本優化架構 |
| Recipe: Onboarding to GCP | GCP 入門 |
| Recipe: Authenticating to GCP | GCP 認證 |
| Recipe: Network Observability | 網路可觀測性 |

## 安裝方式

```bash
npx skills add google/skills
```

安裝時可選擇特定 Skill。

## 為什麼重要

1. **官方出品**：Google 自己維護，品質有保證
2. **實用導向**：每個 Skill 對應真實的雲端服務
3. **Recipe 模式**：不只教概念，還提供操作食譜
4. **Well-Architected Framework**：涵蓋安全、可靠度、成本三大架構面向

## 與其他專案的關係

- 使用相同的 skills.sh 生態標準
- 與 [[addyosmani-agent-skills|addyosmani/agent-skills]] 和 [[karpathy-skills|karpathy-skills]] 格式相容
- 展示了大型科技公司也擁抱 Agent Skills 標準
- 屬於 [[agent-skills-ecosystem|Agent Skills 生態系]] 的一環

## 參考資料

- [GitHub - google/skills](https://github.com/google/skills)