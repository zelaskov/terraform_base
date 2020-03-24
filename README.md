# Terraform basic templates

Repo that contains basic setup of terraform templates that can be used to creating/destroying resources.

## Things u need

1. AWS Access Key, Secret Key and name of aws region
2. That's basically it

## REMINDER - if u cant do something via awscli then u can't do it via terraform as well - it means that you dont have neccessary access to resources.

## First Time run

1. prepare your AWS keys
2. run ./setup.sh --> it will make in each resource dir file with your keys as variables (still working on global config solution so we dont have to make those files in every subdir). **YOU DONT NEED TO RUN IT AGAIN NEXT TIME, THOSE SECRETS WILL BE IN EVERY RESOURCE DIR. IF U REMOVE THOSE FILES THEN U NEED TO RUN SCRIPT AGAIN**

## Creating a resource on AWS

1. You need permissions, ask your AWS admin to check them (e.g permissions to create RDS database)
2. You can edit `vars.tf` in each dir to customize your resource.
3. Then you can run `run_terraform.sh` with resource flag, for example `run_terraform.sh ec2`.
4. Terraform will inform you about planned actions and create resources.
5. Terraform saves config of created resources in `tfstate` files. If you ever wanna check again what did you create, run `terraform show` in said directory.
6. If you wanna to destroy created resources, go into directory and type `terraform destroy`. Terraform will ask for confirmation and your resources will be deleted, based on `tfstate` file.


### IAM template

1. This template is example of how making group and attach users to it.
2. It's kinda tricky to make it 100 % customizable because of different dependencies between the resources.
