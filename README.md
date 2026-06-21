# AWS Terraform Lab

Terraformを使ってAWS上にインフラを構築した学習用リポジトリです。  
AWSの基本的なリソース作成から、実務で利用されるネットワーク構成までを段階的に学習しています。

---

## ■ 01_basic（AWSリソース構築）

AWSの基本的なリソースを作成するTerraformコードです。

### 構成
- EC2
- S3
- Security Group

### 役割
- EC2インスタンスの作成
- S3バケットの作成
- Security Groupによる通信制御

### 目的
- Terraformの基本操作を学習する
- AWSリソースの作成方法を理解する
- Security Groupの基本的な考え方を理解する

---

## ■ 02_network-core（ネットワーク基盤）

AWS上の基本的なネットワーク環境を構築するTerraformコードです。

### 構成
- VPC
- Public Subnet
- Route Table
- Internet Gateway
- Security Group

### 役割
- インターネット接続可能なネットワークの構築
- EC2配置用の基盤作成

### 目的
- VPCの役割を理解する
- Public Subnetの仕組みを理解する
- Internet GatewayとRoute Tableの関係を理解する
-  AWSにおけるネットワーク設計と公開手順の一連の流れを学習する

---

## ■ 03_network-private（Public / Privateネットワーク構成）

Public SubnetとPrivate Subnetを分離したAWSネットワーク構成です。

### 構成
- VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- NAT Gateway
- Route Table（Public / Private）
- EC2（Public / Bastion）
- EC2（Private）
- Security Group

### 役割
- Public / Private Subnetの分離
- Bastion Server（踏み台サーバー）経由でのPrivate EC2へのアクセス
- NAT Gatewayを利用したPrivate Subnetからのアウトバウンド通信
- セキュアなネットワーク構成の実現

### 目的
- Public / Privateネットワーク設計を理解する
- Bastion Serverの役割を理解する
- NAT Gatewayの役割を理解する
- Route Tableによる通信制御を学習する
- AWSで一般的なネットワーク構成を理解する

---

## ■ 04_alb（Application Load Balancer構成）

Application Load Balancer（ALB）を利用したWebシステム構成をTerraformで構築したコードです。

### 構成

- VPC
- Public Subnet × 2
- Private Subnet × 2
- Internet Gateway
- NAT Gateway
- Route Table
- Application Load Balancer（ALB）
- Listener
- Target Group
- EC2 × 2
- Security Group

### 役割

- インターネットからの通信をALBで受信
- Listenerによる受信トラフィックの制御
- Target Groupによるバックエンドサーバー管理
- EC2への負荷分散
- Health Checkによるサーバー稼働監視
- Public / Private Subnetを利用したWebシステム基盤の構築

### 目的

- Application Load Balancer（ALB）の役割を理解する
- ListenerとTarget Groupの関係を理解する
- Target Groupによるバックエンドサーバー管理
- Health Checkの仕組みを理解する
- 複数EC2への負荷分散を学習する
- Public / Private Subnetを利用した実践的なAWS構成を学習する
- TerraformによるALB構築手順を理解する

---

## ディレクトリ構成

```text
.
├── 01_basic/
├── 02_network-core/
├── 03_network-private/
├── 04_alb/
├── README.md
└── .gitignore
```

---

## 使用技術

- Terraform
- AWS (VPC, EC2, S3, ALB, Route Table, IGW, NAT Gateway, Security Group)
- GitHub

---

## 実行方法

```bash
terraform init
terraform plan
terraform apply
```

---

## 学習内容

- TerraformによるInfrastructure as Code（IaC）
- VPCの作成とネットワーク設計
- Public Subnetの理解
- Private Subnetの理解
- Route Tableによる通信経路制御
- Internet Gatewayの役割
- NAT Gatewayの役割
- Bastion Server（踏み台サーバー）の構築
- Security Groupによる通信制御
- EC2インスタンスの作成
- S3バケットの作成
- Public / Privateネットワーク分離設計
- Application Load Balancer（ALB）の構築
- Listenerの設定
- Target Groupの作成
- Health Checkの設定
- 複数EC2への負荷分散
