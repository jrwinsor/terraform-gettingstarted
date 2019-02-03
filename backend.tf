provider "aws" {
  access_key = "AKIAJ2DTZQDSNGQJE62Q"
  secret_key = "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"
  region     = "us-west-2"
}

terraform {
  backend "s3" {
    bucket  = "jwinsor-terraform-state"
    key     = "terraform-state"
    encrypt = true
    region = "us-west-2"
  }
}