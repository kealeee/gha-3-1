terraform {
  backend "s3" {
    bucket = "kean-gha-3-1-tfstate"
    key    = "kean/gha-3-1/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "kean-gha-3-1-"

  tags = {
    Purpose = "github-actions-workshop"
  }
}