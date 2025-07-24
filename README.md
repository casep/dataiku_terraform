# dataiku_terraform

This code will deploy EKS and the corresponding Amplify application.

## AWS 
Follow the steps to connect to AWS
```
aws configure
```

## Format and validate terraform
github_token is needed to allow access from Amplify to Github (not really as the repo is public, but it's needed by terraform)
```
export TF_VAR_github_token="the_token"
terraform fmt --recursive && terraform validate
```

## Plan deployment
plan.txt contains the plain-text documentation of the change, handy to attach and document the change.
```
export TF_VAR_github_token="the_token"
terraform plan -out=deployment.plan && terraform show -no-color deployment.plan > plan.txt
```

## Apply the changes
If you're okay with the plan, apply it.
```
terraform apply "deployment.plan"
```
Once the infrastructure is deployed run a job to perform the Amplify deployment


## Update the kubectl config
This allows to do deployments directly to the cluster, another alternative would be to use ArgoCD or similar.
```
aws eks update-kubeconfig --name dataiku_api
```

## Deploy the pods
Deploy everything to EKS (namespace, pod, loadbalancer)
```
kubectl apply -f deployment.yaml
```

## Destroy the infra
```
terraform destroy
```
