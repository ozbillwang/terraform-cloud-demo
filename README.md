# Getting Started with Terraform Cloud


### Usage

1)  Make sure you have added terraform cloud token (user or team token) in file ~/.terraformrc
$ cat ~/.terraformrc
credentials "app.terraform.io" {
  token = "OCREXXXXXXXXXX.atlasv1.WT2XKXXXXXXXXXX"
}

2) confirm which terraform version you should run

3) run below commands to dry-run or apply change.
```
$ docker run -ti --rm -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -v $(pwd):/apps -w /apps -v ~/.terraformrc:/root/.terraformrc alpine/terragrunt:0.12.24 bash
bash-5.0# terraform init -backend-config=backend_cloud.hcl
bash-5.0# terraform fmt

# Optional
bash-5.0# terragrunt hclfmt

bash-5.0# terraform plan
bash-5.0# terraform apply
```
