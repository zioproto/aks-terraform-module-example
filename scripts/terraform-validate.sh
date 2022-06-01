#!/usr/bin/env bash
echo "==> Validating module terraform codes..."
error=false
(terraform init -upgrade && terraform validate -json | jq -e .valid) || error=true
terraform validate -json
if ${error}; then
  echo "------------------------------------------------"
  echo ""
  echo "Some Terraform codes contain errors."
  echo ""
  exit 1
fi
exit 0
