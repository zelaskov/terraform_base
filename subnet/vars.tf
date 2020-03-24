variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "AWS_VPC_ID" {
  description = "ID of VPC"
  type        = string
  default     = "example_vpc"
}

variable "AWS_SUBNET_CIDR" {
  description = "CIDR block of subnet"
  default     = "10.0.0.0/16"
}

variable "AWS_SUBNET_TAG_NAME" {
  description = "Name of your subnet - tag"
  type        = string
  default     = "example_subnet"
}
