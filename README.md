# Terraform basic templates

Repo that contains basic setup of terraform templates that can be used to create/destroy resources.

## Things you need

1. AWS Access Key, Secret Key and name of aws region
2. That's basically it

## REMINDER - if u cant do something via awscli then u can't do it via terraform either - it means that you don't have the necessary access to the resources.

## First Time run

1. prepare your AWS keys
2. run ./setup.sh --> it will make file with your keys as variables in each resource dir (still working on global config solution so we dont have to make those files in every subdir). **YOU DONT NEED TO RUN IT AGAIN NEXT TIME, THOSE SECRETS WILL BE IN EVERY RESOURCE DIR. IF U REMOVE THOSE FILES THEN U NEED TO RUN SCRIPT AGAIN**

## Creating a resource on AWS

1. You need permissions, ask your AWS admin to check them (e.g permissions to create RDS database)
2. You can edit `vars.tf` in each dir to customize your resource.
3. Then you can run `run_terraform.sh` with resource flag, for example `run_terraform.sh ec2`.
4. Terraform will inform you about planned actions and create resources.
5. Terraform saves config of created resources in `tfstate` files. If you ever wanna check again what you created, run `terraform show` in said directory.
6. If you want to destroy created resources, go into directory and type `terraform destroy`. Terraform will ask for confirmation and your resources will be deleted, based on `tfstate` file.


### IAM template

1. This template is an example of how to make group and attach users to it.
2. It's kinda tricky to make it 100 % customizable because of different dependencies between the resources.

### RDS template

1. We are creating RDS Postgres instance along with VPC, SG and Subnet. If we dont want to create new ones we just need to specify those resources in `rds/vars.tf`
