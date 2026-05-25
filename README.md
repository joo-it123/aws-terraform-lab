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

## Learned

- TerraformはAWSなどのインフラをコードで管理するツール
- AWSアクセスキーを使ってTerraformとAWSを連携する
- providerで使用するクラウド（AWSなど）を決める
- resourceで作成するリソースの種類（S3、EC2など）を決める
- resourceの2つ目の名前はTerraform内部での識別名
- bucketパラメータで実際のS3バケット名（AWS上の名前）を決める
- S3バケット名は世界で一意である必要がある
