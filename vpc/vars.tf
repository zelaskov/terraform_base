variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "CIDR_BLOCK" {
  description = "IP blocks"
  type = string
  default     = "10.0.0.0/16"
}

variable "VPC_NAME" {
  description = "Name of your VPC"
  type        = string
  default     = "example VPC"
}

