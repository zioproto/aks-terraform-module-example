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
terraform init
terraform plan -var-file=.tfvars
```
