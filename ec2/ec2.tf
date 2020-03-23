provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_instance" "example" {
  ami           = var.AWS_AMI_ID
  instance_type = var.AWS_INSTANCE_TYPE
  tags = {
    Name = var.AWS_INSTANCE_NAME
  }
}
