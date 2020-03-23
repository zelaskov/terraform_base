provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = var.AWS_REGION
}

resource "aws_instance" var.AWS_INSTANCE_NAME {
  ami = var.AWS_AMI_ID
  instance_type = AWS.INSTANCE_TYPE
}
