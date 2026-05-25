# AWS Terraform Lab

Terraformを使ってAWS環境を構築する学習用リポジトリです。

This repository is for learning AWS infrastructure provisioning using Terraform.

---

## Services（作成対象）

- EC2（仮想サーバー）
- S3（オブジェクトストレージ）

---

## Tools（使用技術）

- Terraform（IaCツール）
- AWS（クラウド環境）

---

## Usage（使い方）

```bash
terraform init
terraform plan
terraform apply
```  

---

## Learned

- TerraformはAWSなどのインフラをコードで管理するツール  
  Terraform is an Infrastructure as Code (IaC) tool for managing AWS infrastructure.

- AWSアクセスキーを使ってTerraformとAWSを連携する  
  Terraform connects to AWS using access keys.

- providerで使用するクラウドを決める  
  The provider defines which cloud is used.

- resourceで作成するリソースの種類（S3、EC2など）を決める  
  Resources define what is created (e.g., S3, EC2).

- bucketパラメータで実際のS3バケット名を決める  
  The bucket parameter defines the actual S3 bucket name in AWS.

- S3バケット名は世界で一意である必要がある  
  S3 bucket names must be globally unique.
