variable "aws_region" {
  description = "AWS region for GhostInfra resources"
  type        = string
  default     = "us-east-2"
}

variable "project_name" {
  description = "Project name used for tagging AWS resources"
  type        = string
  default     = "GhostInfra"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the GhostInfra VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

variable "instance_type" {
  description = "EC2 instance type for GhostInfra web server"
  type        = string
  default     = "t2.micro"
}
