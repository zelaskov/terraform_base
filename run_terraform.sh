#!/bin/bash

RESOURCE=${1}

cd $RESOURCE && terraform init && terraform plan -out terraform.output
terraform apply "terraform.output"
terraform show
