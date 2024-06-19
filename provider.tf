provider "aws" {
    region = "us-east-1"
}

# terraform

terraform {
    backend "s3" {
        bucket = "grzegorz-was-panda-devops-core-18"
        key = "infra/terraform.state"
        region = "us-east-1"
    }
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.53"
        }
    }
    required_version = ">= 1.0.0"
}
