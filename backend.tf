provider "aws" {
  shared_credentials_file = "/Users/jim/.aws/credentials"
  profile = "personal"
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