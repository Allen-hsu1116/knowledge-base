---
title: Terraform
slug: hashicorp-terraform
created: 2026-07-11
updated: 2026-07-11
stars: 49167
language: Go
topics: ["cloud", "cloud-management", "graph", "infrastructure-as-code", "terraform"]
---

# Terraform

> ⭐49167 · HashiCorp 出品的基礎設施即程式碼工具，用高階語言定義、變更和版本化管理雲端資源

## 快速導航


- 🏗 **[[workflow-automation|工作流自動化]]** — Terraform 是 DevOps 自動化流程的關鍵工具
- 🔗 **[[grpc-grpc|gRPC]]** — 微服務架構中 Terraform 管理基礎設施、gRPC 處理服務通訊

## 是什麼

Terraform 是 HashiCorp 開發的基礎設施即程式碼（Infrastructure as Code, IaC）工具。它讓你用高階宣告式語言（HCL, HashiCorp Configuration Language）來描述基礎設施的目標狀態，然後自動計算出差異並執行變更。Terraform 可以管理現有的主流雲服務供應商（AWS、GCP、Azure 等）以及自建的內部解決方案。

Terraform 的核心工作流程是：寫（Write）→ 計畫（Plan）→ 應用（Apply）。先寫好 HCL 配置檔，然後用 `terraform plan` 預覽將要做什麼變更，確認後再用 `terraform apply` 執行。這個「先預覽再執行」的設計大幅降低了基礎設施變更的風險。

Terraform 以 Plugin 架構支援數百個 Provider（雲端供應商的介面卡），這些 Provider 可以從 Terraform Registry 自動下載。HashiCorp 開發部分 Provider，其他由各組織自行維護。

## 核心特色

- **基礎設施即程式碼**：用 HCL 高階語言描述基礎設施，可版本控制和複用
- **執行計畫**：`terraform plan` 預覽所有變更，避免意外操作
- **資源圖譜**：自動建立資源依賴圖，平行處理無依賴的資源
- **變更自動化**：複雜的變更集可在最少人工介入下安全應用
- **多雲支援**：數百個 Provider 支援主流雲服務和自建方案
- **狀態管理**：透過 state file 追蹤基礎設施的真實狀態
- **Module 複用**：可封裝基礎設施為 Module 供團隊共用

## 怎麼用

```bash
# macOS 安裝
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Linux 安裝
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

基本使用：

```bash
# 初始化（下載 Provider）
terraform init

# 預覽變更
terraform plan

# 執行變更
terraform apply

# 銷毀資源
terraform destroy
```

HCL 範例：

```hcl
resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t3.micro"
  tags = {
    Name = "WebServer"
  }
}
```

## 跟其他方案的關係

| 工具 | 類型 | 語言 | 多雲 | 狀態管理 | 適合場景 |
|------|------|------|------|----------|----------|
| Terraform | 宣告式 IaC | HCL | ✅ | state file | 多雲基礎設施 |
| Pulumi | 宣告式 IaC | TS/Python/Go | ✅ | state file | 程式碼原生 IaC |
| Ansible | 程序式 | YAML | ✅ | 無 | 配置管理 |
| CloudFormation | 宣告式 | JSON/YAML | AWS only | AWS 管理 | AWS 專屬 |
| Chef | 程序式 | Ruby | ✅ | server | 配置管理 |

Terraform 管理基礎設施層，[[grpc-grpc|gRPC]] 處理微服務間的通訊，兩者在雲端架構中互補。

## 相關概念


← [[workflow-automation]] · [[grpc-grpc]]

## 來源

- [GitHub: hashicorp/terraform](https://github.com/hashicorp/terraform)
- raw/2026-07-11-hashicorp-terraform.md
- [Terraform 官網](https://developer.hashicorp.com/terraform)

---

| 欄位 | 資訊 |
|------|------|
| GitHub | https://github.com/hashicorp/terraform |
| Stars | ⭐49167|
| License | Business Source License 1.1 |
| 收錄日期 | 2026-07-11 |
