provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_vpc" "example_vpc" {
  cidr_block = var.CIDR_BLOCK
  tags = {
    Name = var.VPC_NAME
  }
}
