variable "AWS_ACCESS_KEY_ID" {
  description = "aws access key id"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_KEY" {
  description = "aws secret key"
  type        = string
  sensitive   = true
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "eu-central-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_KEY
}

// our vpc
resource "aws_vpc" "custom" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "vpc_terraform"
    Description = "vpc with private & public subet and nat gateway"
  }

}
