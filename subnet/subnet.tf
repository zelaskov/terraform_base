provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_subnet" "example subnet" {
  vpc_id     = var.AWS_VPC_ID
  cidr_block = var.AWS_SUBNET_CIDR
  tags = {
    Name = var.AWS_SUBNET_TAG_NAME
  }
}
