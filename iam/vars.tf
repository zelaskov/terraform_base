variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "AWS_IAM_GROUP_NAME" {
  description = "Name of group"
  type        = string
  default     = "example_group"
}

variable "AWS_POLICY_ARN" {
  description = "AWS Policy Resource Name"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "AWS_IAM_GROUP_ATTACHMENT" {
  description = "Name of your group attachment"
  type        = string
  default     = "example_attachment"
}

variable "AWS_USERNAME" {
  description = "Name of your user"
  type        = string
  default     = "user"
}

variable "AWS_GROUP_MEMBERSHIP_NAME" {
  description = "Name of group membership"
  type        = string
  default     = "user"
}
