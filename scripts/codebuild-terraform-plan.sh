#!/bin/bash

set -x

BASE_DIR=$1
ENVIRONMENT=$2
cd ${BASE_DIR}/application/terraform/src/${ENVIRONMENT}


echo "#"
echo "# tflint"
echo "#"
tflint

echo "#"
echo "# terraform plan"
echo "#"
terraform plan -input=false -var-file="../configs/${ENVIRONMENT}.tfvars" -var-file="../configs/shared.tfvars" -out=plan.out

