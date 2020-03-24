provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}


resource "aws_instance" "example" {
  ami           = var.AWS_AMI_ID
  instance_type = var.AWS_INSTANCE_TYPE
  availability_zone = var.AWS_AZ
  tags = {
    Name = var.AWS_INSTANCE_NAME
  }
}


resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.AWS_AZ
  size              = var.AWS_EBS_VOLUME_SIZE
  type              = var.AWS_EBS_TYPE
}

resource "aws_volume_attachment" "ebs_volume_attachment" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.example.id
}
