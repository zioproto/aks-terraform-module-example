#!/usr/bin/env bash
# Check gofmt
echo "==> Checking that code complies with tflint requirements..."
tflint --init
files=$(find * -maxdepth 1 -type f -name "*.tf" | grep -v ".terraform")
error=false
for f in $files; do
  tflint "$f" || error=true
done
if ${error}; then
  echo "------------------------------------------------"
  echo ""
  echo "The preceding files contain terraform blocks that does not complies with tflint requirements."
  echo ""
  exit 1
fi
exit 0
