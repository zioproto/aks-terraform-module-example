go install github.com/client9/misspell/cmd/misspell@latest
go install github.com/katbyte/terrafmt@latest
go install golang.org/x/tools/cmd/goimports@latest
go install mvdan.cc/gofumpt@latest
go install github.com/yngveh/sprig-cli@latest
go install github.com/terraform-docs/terraform-docs@v0.16.0
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH || $GOPATH)/bin v1.45.2
export TFLINT_VERSION=v0.34.1 && curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash  
