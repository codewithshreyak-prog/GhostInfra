variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs where EC2 instances will be launched"
  type        = list(string)
}

variable "web_security_group_id" {
  description = "Security group ID for web servers"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
