# aks-terraform-module-example

Download the module:
```
git submodule init
```

Customize necessary variables:
```
cp tfvars .tfvars
```

Run Terraform:
```
terraform init -upgrade
terraform plan -var-file=.tfvars
```
