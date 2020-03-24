provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_iam_group" "group_name" {
  name = var.AWS_IAM_GROUP_NAME
}

resource "aws_iam_policy_attachment" "administrators_attach" {
  name       = var.AWS_IAM_GROUP_ATTACHMENT
  groups     = [aws_iam_group.group_name.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user" "user" {
  name = var.AWS_USERNAME
}

resource "aws_iam_group_membership" "example_name" {
  name = var.AWS_GROUP_MEMBERSHIP_NAME
  users = [
    aws_iam_user.user.name,
  ]
  group = aws_iam_group.group_name.name
}
