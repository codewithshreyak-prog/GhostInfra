output "vpc_id" {
  description = "GhostInfra VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "GhostInfra public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "GhostInfra private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "web_security_group_id" {
  description = "GhostInfra web security group ID"
  value       = module.security.web_security_group_id
}

output "db_security_group_id" {
  description = "GhostInfra database security group ID"
  value       = module.security.db_security_group_id
}

output "ec2_instance_id" {
  description = "GhostInfra EC2 instance ID"
  value       = module.ec2.instance_id
}

output "ec2_public_ip" {
  description = "GhostInfra EC2 public IP"
  value       = module.ec2.public_ip
}

output "ec2_public_dns" {
  description = "GhostInfra EC2 public DNS"
  value       = module.ec2.public_dns
}
