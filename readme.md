# Comparison of Possibilities to automate Infrastructure 

This repository contains some very basic examples and comparison about how to manage infrastructure in terms of automation and convenience. We will use Azure as a cloud provider and a simple dotnet application to run on the infrastructure

## Comparison 

We have different possibilities to manage infrastructure 

## Manual 

* Either through the portal 
* Or using the Azure CLI 
  * `az login`
  * `az account set --subscription <sub-id>`
  * `az group create -n dotnet-app -l westus`
  * `az appservice plan create -n dotnet-app-plan -g dotnet-app --sku FREE`
  * `az webapp create -n noi-example-app -g dotnet-app --plan dotnet-app-plan --runtime "DOTNET|6.0"`
  * `cd app`
  * `dotnet publish`
  * Deploy via Visual Studio 
  * Destroy Stack with `az group delete -n dotnet-app -l westus`

### Pros 
### Cons

## Scripting

* `cd infra`
* `./script.sh dotnet-app dotnet-app-plan noi-example-app`
* `cd app`
* `dotnet publish`
* Deploy via Visual Studio 
* Destroy Stack with `az group delete -n dotnet-app -l westus`

### Pros 
### Cons

## Terraform

* `cd infra`
* `terraform init`
* `terraform apply`
* Deploy via Visual Studio 
* Destroy Stack with `az group delete -n dotnet-app -l westus`

### Pros 
### Cons