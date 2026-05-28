# AWS Terraform Lab

Terraformを使ってAWS上にインフラを構築した学習用リポジトリです。  
AWSの基本的なネットワーク構築と、単体のリソース作成を学習目的としています。

---

### ■ network-core（ネットワーク基盤）

AWS上のネットワーク環境を構築するTerraformコードです。

構成：
- VPC
- Public Subnet
- Route Table
- Internet Gateway
- Security Group

役割：
- インターネット接続可能なネットワークの構築
- EC2配置用の基盤作成

目的：
- VPC + Public Subnetで外部公開を前提とした基本的なネットワーク構成を理解する
- AWSにおけるネットワーク設計と公開手順の一連の流れを学習する

---

### ■ bassic（リソース構築）

AWSリソースを作成するTerraformコードです。

構成：
- EC2（Webサーバー）
- S3（ストレージ）
- Security Group

役割：
- EC2インスタンスの作成
- nginxなどWebサーバーの構築
- S3バケットの作成

目的：
- EC2とS3を使った基本的なAWSリソース操作を理解する
- セキュリティグループによる通信制御の基本を学習する
- Webサーバー公開までの構築フローを体験する

---

## ディレクトリ構成

```text
.
├── network-core/
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── routetable.tf
│   ├── igw.tf
│   └── sg.tf
│
├── bassic/
│   ├── ec2.tf
│   ├── s3.tf
│   └── sg.tf
│
├── README.md
└── .gitignore
```

---

## 使用技術

- Terraform（Infrastructure as Code）
- AWS（Cloud Infrastructure）
- Git / GitHub（バージョン管理）

---

## 使い方

```bash
terraform init
terraform plan
terraform apply
```

---


## 学習内容

- VPCの作成とネットワーク設計
- Public Subnetの理解
- Route TableとInternet Gatewayの役割
- EC2インスタンスの作成
- Security Groupによる通信制御
- S3バケットの作成
- Terraformによるインフラ管理（IaC）
