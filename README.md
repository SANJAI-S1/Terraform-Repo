AWS EKS Cluster with Terraform

This repository contains Terraform code to provision an Amazon EKS (Elastic Kubernetes Service) cluster on AWS.

Project Structure
.
├── backend/
│   └── Terraform backend configuration
├── modules/
│   └── Reusable Terraform modules
├── main.tf
├── variable.tf
├── output.tf
├── .gitignore
└── .terraform.lock.hcl

Prerequisites

Before using this project, make sure you have:

AWS account

AWS CLI installed

Terraform installed

kubectl installed

AWS credentials configured

Verify the installations:

terraform version
aws --version
kubectl version --client

AWS Configuration

Configure your AWS credentials before running Terraform:

aws configure


Verify your AWS account:

aws sts get-caller-identity

Terraform Setup

Initialize Terraform:

terraform init


Review the infrastructure changes:

terraform plan


Apply the configuration:

terraform apply


Type yes when prompted.

Connect to the EKS Cluster

After the EKS cluster is created, configure kubectl:

aws eks update-kubeconfig --region <AWS_REGION> --name <EKS_CLUSTER_NAME>


Verify the connection:

kubectl get nodes

Destroy Infrastructure

To remove the infrastructure created by Terraform:

terraform destroy


Type yes when prompted.

Important Notes

Do not commit AWS access keys, passwords, .env files, or other secrets to GitHub.

Terraform state files (*.tfstate) are excluded from the repository.

The .terraform/ directory is generated locally and is excluded from Git.

Review the Terraform configuration carefully before running terraform apply.
