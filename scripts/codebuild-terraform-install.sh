#!/bin/bash

set -x

TF_VERSION=$1

# install terraform
curl -s -qL -o terraform.zip https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_arm64.zip
unzip -o terraform.zip
mv terraform /bin
rm terraform.zip

# install tflint
curl https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
