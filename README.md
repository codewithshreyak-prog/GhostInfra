# GhostInfra

GhostInfra is a modular AWS Infrastructure as Code project built with Terraform.
It defines cloud networking, security, and compute infrastructure using reusable Terraform modules.

> Deployment note: This project is maintained in **plan-only mode** to avoid unnecessary AWS charges. The infrastructure was validated using Terraform, and any created resources were destroyed after testing.

## Project Objective

The goal of GhostInfra is to design a production-style AWS infrastructure layout using Terraform modules.

Instead of manually creating resources from the AWS Console, this project defines infrastructure as code for repeatability, version control, and safer cloud provisioning.

## Tech Stack

* Terraform
* AWS
* VPC
* Public and Private Subnets
* Internet Gateway
* Route Tables
* Security Groups
* EC2
* Modular Infrastructure as Code

## Architecture

```text
terraform/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── modules/
    ├── vpc/
    ├── security/
    ├── ec2/
    ├── s3/
    ├── alb/
    └── rds/
```

## Completed Modules

### VPC Module

Creates the core AWS network layer:

* Custom VPC
* Public subnets
* Private subnets
* Internet Gateway
* Public route table
* Route table associations

### Security Module

Creates reusable security groups:

* Web security group for HTTP access
* Database security group allowing database traffic only from the web security group

### EC2 Module

Defines a web server layer:

* Amazon Linux EC2 instance
* Public subnet placement
* Web security group attachment
* Nginx startup script using user data

## Planned Modules

The following modules are included in the project structure for future expansion:

* S3 module for object storage
* ALB module for load balancing
* RDS module for managed database infrastructure

## Cost Safety

Some AWS services such as EC2, Load Balancers, RDS, and S3 can create charges depending on account eligibility and usage.

For safety, this project is currently intended to be reviewed using:

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

Do not run:

```bash
terraform apply
```

unless you are ready to create AWS resources and monitor possible costs.

## Terraform Commands

```bash
cd terraform
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```
## Documentation

- [Project Notes](docs/project-notes.md)
- [Architecture Documentation](docs/architecture.md)
- [Project Dashboard](docs/dashboard.html)

## Current Status

* Terraform configuration validated successfully
* Modular AWS architecture completed
* VPC, Security, and EC2 modules implemented
* Cost-risk resources are kept in code/plan mode only
* No active Terraform-managed AWS resources are currently running

## What I Learned

Through this project, I practiced:

* Writing reusable Terraform modules
* Designing AWS VPC networking
* Creating public and private subnet architecture
* Managing security group rules
* Defining EC2 infrastructure with user data
* Using Terraform validate and plan workflows
* Organizing an Infrastructure as Code project for GitHub
* Building cloud projects with cost-conscious practices
