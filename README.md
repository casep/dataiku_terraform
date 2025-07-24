# dataiku_terraform

This code will deploy an AWS Amplify application.

## AWS 
Follow the steps to connect to AWS
```
aws configure
```

## Format and validate terraform

```
export TF_VAR_github_token="the_token"
terraform fmt --recursive && terraform validate
```

## Plan deployment

```
export TF_VAR_github_token="the_token"
terraform plan -out=deployment.plan && terraform show -no-color deployment.plan > plan.txt
```

## Apply the changes
```
terraform apply "deployment.plan"
```

## Destroy the infra
```
terraform destroy
```

## Deploy Amplify

Once the infrastructure is deployed run a job to perform the Amplify deployment


