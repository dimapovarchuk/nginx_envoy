terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "___________________"
  secret_key = "___________________"
}
