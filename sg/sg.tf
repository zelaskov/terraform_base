provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_security_group" "example_sg" {
  name   = var.AWS_SECURITY_GROUP_NAME
  vpc_id = var.AWS_VPC_ID
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = var.AWS_SECURITY_GROUP_INGRESS_PROTOCOL
    cidr_blocks = var.AWS_SECURITY_GROUP_INGRESS_CIDR
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.AWS_SECURITY_GROUP_EGRESS_PROTOCOL
    cidr_blocks = var.AWS_SECURITY_GROUP_EGRESS_CIDR
  }
  tags = {
    Name = var.AWS_SUBNET_TAG_NAME
  }
}
