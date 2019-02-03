data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

variable "env" {
  type = "string"
}

variable "projectName" {
  type = "string"
}

variable "cluster-name" {
  type = "string"
  default = "terraform-eks-demo"
}
variable "azs" {
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}