# GhostInfra Project Notes

## What this project demonstrates

GhostInfra demonstrates Infrastructure as Code skills using Terraform and AWS.  
The project focuses on modular design, clean cloud architecture, and safe infrastructure planning.

## Main skills shown

- Terraform module design
- AWS VPC networking
- Public and private subnet planning
- Security group configuration
- EC2 infrastructure definition
- Terraform validation and planning
- Git/GitHub project organization
- Cost-conscious cloud development

## Why plan-only mode?

Some AWS services such as EC2, Load Balancers, RDS, and S3 can create charges depending on account eligibility and usage.

To avoid unnecessary costs, this project is maintained as a validated Terraform architecture project without keeping live AWS resources running.

## Current infrastructure modules

- VPC module
- Security module
- EC2 module

## Future improvements

- Add S3 storage module- Add Application Load Balancer module
- Add RDS database module
- Add architecture diagram
- Add CI workflow for Terraform validation
