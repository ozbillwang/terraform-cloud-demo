# Getting Started with Terraform Cloud


### Usage

1) register https://app.terraform.io/app with your mailbox

2) [create user token](https://www.terraform.io/docs/cloud/users-teams-organizations/users.html#api-tokens)

3)  add token in file  `$HOME/.terraformrc`

```
$ cat ~/.terraformrc
credentials "app.terraform.io" {
  token = "OCREXXXXXXXXXX.atlasv1.WT2XKXXXXXXXXXX"
}
```

4) confirm which terraform version you should run

5) run below commands to dry-run or apply change.
```
$ docker run -ti --rm -v ~/.aws:/root/.aws -v ~/.ssh:/root/.ssh -v $(pwd):/apps -w /apps -v ~/.terraformrc:/root/.terraformrc alpine/terragrunt:0.12.24 bash
bash-5.0# terraform init -backend-config=backend_cloud.hcl
bash-5.0# terraform fmt

# Optional
bash-5.0# terragrunt hclfmt

bash-5.0# terraform plan
bash-5.0# terraform apply
```
