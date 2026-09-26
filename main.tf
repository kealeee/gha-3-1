terraform {
  backend "s3" {
    bucket = "kean-infra-tfstate"
    key    = "kean/terraform.tfstate"
    region = "us-east-1" # Update if your state bucket is in a different region
  }
}

provider "aws" {
  region = "us-east-1" # Update this to your assigned deployment region
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "kean-workshop-bucket-"
  tags = {
    Purpose = "github-actions-workshop"
  }
}
