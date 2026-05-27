# AWS Terraform Lab

Terraformを使ってAWS環境を構築する学習用リポジトリです。

This repository is for learning AWS infrastructure provisioning using Terraform.

---

## Services（作成対象）

- EC2（仮想サーバー）
- S3（オブジェクトストレージ）
- Security Group（ファイアウォール設定）

---

## Tools（使用技術）

- Terraform（IaCツール）
- AWS（クラウド環境）
- Git / GitHub

---

## Usage（使い方）

```bash
terraform init
terraform plan
terraform apply
```

---

## File Structure

```text
.
├── README.md
├── S3.tf
├── sg.tf
└── .gitignore
```

---

## Learned（学んだこと）

- TerraformはAWSなどのインフラをコードで管理するツール  
  Terraform is an Infrastructure as Code (IaC) tool for managing AWS infrastructure.

- AWSアクセスキーを使ってTerraformとAWSを連携する  
  Terraform connects to AWS using access keys.

- providerで使用するクラウドを決める  
  The provider defines which cloud is used.

- resourceで作成するリソースの種類（S3、EC2、Security Groupなど）を決める  
  Resources define what is created (e.g., S3, EC2, Security Groups).

- bucketパラメータで実際のS3バケット名を決める  
  The bucket parameter defines the actual S3 bucket name in AWS.

- S3バケット名は世界で一意である必要がある  
  S3 bucket names must be globally unique.

- Security GroupでSSH(22)通信を制御できる  
  Security Groups can control SSH (port 22) access.

- Terraform applyでAWSへ実際にリソースを作成できる  
  Terraform apply provisions resources on AWS.

- GitとGitHubを使用してTerraformコードを管理できる  
  Terraform code can be managed using Git and GitHub.

- EC2インスタンスをTerraformで作成できる  
  EC2 instances can be provisioned using Terraform.

- Security GroupをEC2へ関連付けできる  
  Security Groups can be attached to EC2 instances.

- EC2上にnginx（エンジンエックス）をインストールしWebサーバーを構築できる  
  nginx (Engine X) can be installed on EC2 to serve web content.

- Security Groupの80番ポートを開放することでHTTP通信を許可できる  
  Opening port 80 in a Security Group allows HTTP access from the internet.

- EC2のPublic IPにアクセスすることでWebページを公開できる  
  Web pages can be served via the EC2 public IP address.

- HTMLファイルを作成し、nginxを通じてWebページとして公開できる  
  HTML files can be created and served as web pages through nginx on EC2.
