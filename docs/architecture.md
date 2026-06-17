# GhostInfra Architecture

GhostInfra follows a modular Infrastructure as Code design using Terraform.

## High-Level Architecture

```text
User
 |
 | HTTP Traffic
 |
Internet
 |
Internet Gateway
 |
Public Route Table
 |
Public Subnet
 |
EC2 Web Server
 |
Security Group Rules
 |
Private Subnet
 |
Future RDS Database
```

## Network Layer

The VPC module defines the core AWS networking layer.

It includes:

* Custom VPC
* Two public subnets
* Two private subnets
* Internet Gateway
* Public route table
* Route table associations

## Security Layer

The security module defines access rules using AWS security groups.

Current security groups:

* Web security group
* Database security group

The database security group only allows database traffic from the web security group, following a safer layered access design.

## Compute Layer

The EC2 module defines the web server layer.

It includes:

* Amazon Linux EC2 instance
* Public subnet placement
* Web security group attachment
* User data script for installing and starting Nginx

## Cost-Safe Design

GhostInfra is maintained in plan-only mode to avoid unnecessary AWS charges.

Recommended safe commands:

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

Avoid running `terraform apply` unless resources are intentionally being created and monitored.
