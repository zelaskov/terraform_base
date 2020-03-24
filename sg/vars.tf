variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "AWS_SECURITY_GROUP_NAME" {
  description = "Name of your security group"
  type        = string
  default     = "example_security_group"
}

variable "AWS_VPC_ID" {
  description = "ID of VPC"
  type        = string
  default     = "example_vpc"
}

variable "AWS_SECURITY_GROUP_INGRESS_PROTOCOL" {
  description = "Ingress protocol of SG"
  type        = string
  default     = "tcp"
}

variable "AWS_SECURITY_GROUP_EGRESS_PROTOCOL" {
  description = "Egress protocol of SG"
  type        = string
  default     = "tcp"
}

variable "AWS_SECURITY_GROUP_INGRESS_CIDR" {
  description = "CIDR block of SG"
  type        = string
  default     = "10.0.0.0/16"
}

variable "AWS_SECURITY_GROUP_EGRESS_CIDR" {
  description = "CIDR block of SG"
  type        = string
  default     = "0.0.0.0./0"
}
