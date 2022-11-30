# VPC-Deployment-GCP-Terraform

## Requirements
1. Create GCP account
2. Create Project - in mycase it is `Country`
3. Install terraform 
4. In GCP, create service account under `IAM & Admin`, giving **Compute Admin** role 
5. Once the service account is created, click on it > KEYS > ADD KEY > CREATE NEW KEY > download the json (it'll be like country-xxxxx-xxxxx.json)
5. Enable Cloud Compute Engine API from `APIs & Services`

In yout terminal, export the path of service account key, in my case
    `export GOOGLE_APPLICATION_CREDENTIALS=/home/deamonkiller/country-xxxx-xxxxxxx.json`

## What should be changed
Make changes to **terraform.tfvars** file accordinly

## How to run
`terraform init`
`terraform plan`
`terraform apply -auto-approve` 

Goto VPC and verify the vpc and subnets :+1:
There you go!!! :shipit:
