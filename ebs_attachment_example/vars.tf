variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "AWS_INSTANCE_NAME" {
  description = "Name of your ec2 instance"
  type        = string
  default     = "example_ec2_instance"
}

variable "AWS_AMI_ID" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-04d5cc9b88f9d1d39"
}

variable "AWS_AZ" {
  description = "AWS Availability Zone"
  type        = string
  default     = "eu-west-1a"
}

variable "AWS_INSTANCE_TYPE" {
  description = "Type of ec2 instance that is gonna be launched"
  type        = string
  default     = "t2.micro"
}

variable "AWS_EBS_VOLUME_SIZE" {
  description = "Volume size"
  type        = number
  default     = 20
}

variable "AWS_EBS_TYPE" {
  description = "Volume type"
  type        = string
  default     = "gp2"
}

