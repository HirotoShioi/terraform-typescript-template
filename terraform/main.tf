terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # S3バックエンドの設定
  #   backend "s3" {
  #     bucket  = ""
  #     key     = "terraform.tfstate"
  #     region  = "ap-northeast-1"
  #     profile = vars.profile
  #     encrypt = true
  #   }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = var.profile
}

locals {
  prefix = "project-prefix"
  lambda = {
    nodejs_runtime = "nodejs20.x"
    memory_size    = 256
    timeout        = 600
  }
}
