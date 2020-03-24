provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_db_instance" "postgres_example" {
  allocated_storage = var.AWS_RDS_STORAGE
  engine = var.AWS_RDS_ENGINE
  engine_version = var.AWS_RDS_ENGINE_VERSION
  instance_class = var.AWS_RDS_INSTANCE_CLASS
  identifier = var.AWS_RDS_ID
  name = var.AWS_RDS_NAME
  username = var.AWS_RDS_USERNAME
  password = var.AWS_RDS_PASSWORD
  db_subnet_group_name = aws_db_subnet_group.postgres_subnet.name
  multi_az = var.AWS_RDS_AZ
  vpc_security_group_ids = ["aws_security_group.rds_sg.id"]
  storage_type = var.AWS_RDS_STORAGE_TYPE
  backup_retention_period = var.AWS_RDS_BACKUP_PERIOD
    tags = {
    Name = var.AWS_RDS_TAG_NAME
  }
}

resource "aws_vpc" "rds_vpc" {
  cidr_block = var.CIDR_BLOCK
  tags = {
    Name = var.AWS_VPC_NAME
  }
}

resource "aws_subnet" "rds_subnet" {
  vpc_id     = var.AWS_VPC_ID
  cidr_block = var.AWS_SUBNET_CIDR
  tags = {
    Name = var.AWS_SUBNET_TAG_NAME
  }
}

resource "aws_db_subnet_group" "postgres_subnet" {
  name = var.AWS_SUBNET_GROUP_NAME
  subnet_ids = ["aws_subnet.rds_subnet.id"]
}

resource "aws_security_group" "rds_sg" {
  name   = var.AWS_SECURITY_GROUP_NAME
  vpc_id = var.AWS_VPC_ID
  ingress {
    from_port   = 5632
    to_port     = 5632
    protocol    = var.AWS_SECURITY_GROUP_INGRESS_PROTOCOL
    cidr_blocks = var.AWS_SECURITY_GROUP_INGRESS_CIDR
  }
  egress {
    from_port   = 5632
    to_port     = 5632
    protocol    = var.AWS_SECURITY_GROUP_EGRESS_PROTOCOL
    cidr_blocks = var.AWS_SECURITY_GROUP_EGRESS_CIDR
  }
  tags = {
    Name = var.AWS_SUBNET_TAG_NAME
  }
}
