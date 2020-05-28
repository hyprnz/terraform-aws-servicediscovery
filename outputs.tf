output "id" {
  description = "The ID of a namespace"
  value       = aws_service_discovery_private_dns_namespace.this.id
}

output "arn" {
  description = "The ARN that Amazon Route 53 assigns to the namespace when you create it"
  value       = aws_service_discovery_private_dns_namespace.this.arn
}

output "hosted_zone" {
  description = "The ID for the hosted zone that Amazon Route 53 creates when you create a namespace"
  value       = aws_service_discovery_private_dns_namespace.this.hosted_zone
}