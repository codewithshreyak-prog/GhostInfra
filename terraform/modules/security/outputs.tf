output "web_security_group_id" {
  description = "Security group ID for web servers"
  value       = aws_security_group.web_sg.id
}

output "db_security_group_id" {
  description = "Security group ID for database"
  value       = aws_security_group.db_sg.id
}
