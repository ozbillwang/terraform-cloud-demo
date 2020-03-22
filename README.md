# Getting Started with Terraform Cloud


### Usage

```
# Make sure you have add terraform cloud token in file ~/.terraformrc
$ cat ~/.terraformrc
credentials "app.terraform.io" {
  token = "OCREXXXXXXXXXX.atlasv1.WT2XKXXXXXXXXXX"
}

# confirm which terraform version you should run

$ docker run -ti --rm -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -v $(pwd):/apps -w /apps -v ~/.terraformrc:/root/.terraformrc alpine/terragrunt:0.12.24 bash
bash-5.0# terraform init -backend-config=backend_cloud.hcl
bash-5.0# terraform fmt

# Optional
bash-5.0# terragrunt hclfmt

bash-5.0# terraform plan
bash-5.0# terraform apply
```