*Workspaces

terraform workspace list
terraform workspace show
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev

terraform plan --var-file dev.tfvars
terraform apply --var-file dev.tfvars
terraform plan --var-file prod.tfvars
terraform apply --var-file prod.tfvars

dev.tfvars:
region="some-region"
zone="some-zone"