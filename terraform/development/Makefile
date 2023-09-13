init:
	terraform init -backend-config="../configs/development.tfbackend"

plan:
	terraform plan -input=false -var-file="../configs/development.tfvars" -var-file="../configs/shared.tfvars"

apply:
	terraform apply -input=false -var-file="../configs/development.tfvars" -var-file="../configs/shared.tfvars"

