#!/bin/bash

RESOURCE_NAMES=(
  "ec2"
)

echo Please, provide your AWS Access Key
read aws_access_key
echo Please, provide your AWS Secret Key
read aws_secret_key
echo Plase, provide your AWS Region
read aws_region

for i in "${RESOURCE_NAMES[@]}"
do
  cd $i
  echo "AWS_ACCESS_KEY = "\"$aws_access_key\""
AWS_SECRET_KEY = "\"$aws_secret_key\""
AWS_REGION     = "\"$aws_region\""" >> terraform.tfvars
cd ..
done



