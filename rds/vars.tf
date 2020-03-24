variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}

variable "AWS_RDS_STORAGE" {
  description = "Storage of RDS"
  type        = number
  default     = 20
}

variable "AWS_RDS_ENGINE" {
  description = "Engine of RDS"
  type        = string
  default     = "postgres"
}

variable "AWS_RDS_ENGINE_VERSION" {
  description = "Version of RDS engine (portgres in this example)"
  type        = string
  default     = "9.6"
}

variable "AWS_RDS_INSTANCE_CLASS" {
  description = "Type of RDS instance that is gonna be launched"
  type        = string
  default     = "db.t2.micro"
}

variable "AWS_RDS_ID" {
  description = "ID of RDS"
  type        = string
  default     = "postgresdb"
}

variable "AWS_RDS_NAME" {
  description = "Name of RDS"
  type        = string
  default     = "postgresdb"
}

variable "AWS_RDS_USERNAME" {
  description = "Username for RDS"
  type        = string
  default     = "root"
}

variable "AWS_RDS_PASSWORD" {
  description = "Password for RDS"
  type        = string
  default     = "examplepassword"
}

variable "AWS_RDS_AZ" {
  description = "AZ of RDS"
  type        = string
  default     = "false"
}

variable "CIDR_BLOCK" {
  description = "IP blocks"
  type = string
  default     = "10.0.0.0/16"
}

variable "AWS_VPC_NAME" {
  description = "Name of your VPC"
  type        = string
  default     = "example VPC"
}

variable "AWS_VPC_ID" {
  description = "ID of your VPC"
  type        = string
  default     = "example VPC"
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

variable "AWS_SUBNET_GROUP_NAME" {
  description = "Name of your subnet group"
  type        = string
  default     = "example_subnet_group"
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
  default     = ["10.0.0.0/16"]
}

variable "AWS_SECURITY_GROUP_EGRESS_CIDR" {
  description = "CIDR block of SG"
  default     = ["0.0.0.0/0"]
}

variable "AWS_SECURITY_GROUP_NAME" {
  description = "Name of your security group"
  type        = string
  default     = "example_security_group"
}

variable "AWS_RDS_STORAGE_TYPE" {
  description = "Storage type of RDS"
  type        = string
  default     = "gp2"
}

variable "AWS_RDS_BACKUP_PERIOD" {
  description = "How long u want to keep your backups"
  type        = number
  default     = 30
}

variable "AWS_RDS_TAG_NAME" {
  description = "Tag name of RDS"
  type        = string
  default     = "postgresdb"
}
