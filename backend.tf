provider "aws" {
  access_key = "<AWS_ACCESS_KEY>"
  secret_key = "<AWS_SECRET_KEY>"
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