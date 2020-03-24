variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "AWS_BUCKET_NAME" {
  description = "Name of your s3 bucket - remember that this name must be unique GLOBALLY."
  type        = string
  default     = "example-s3-bucket"
}

variable "AWS_DYNAMO_TABLE_NAME" {
  description = "Name of table in DynamoDB"
  type        = string
  default     = "example-dynamo-name"
}
