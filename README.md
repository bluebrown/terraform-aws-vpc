# AWS Canonical VPC

A canonical VPC setup with private and public subnet, created with Terraform.

![graphic of vpc setup](https://docs.aws.amazon.com/es_es/vpc/latest/userguide/images/nat-instance-diagram.png)

## Prerequisites

You need an AWS account and either root user access key and secret key or IAM user access key and secret key. It is advised to create a dedicated IAM user with limited access.

You also need to install Terraform locally.

## Create VPC

```bash
terraform apply
```
