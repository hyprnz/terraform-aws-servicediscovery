resource "aws_service_discovery_private_dns_namespace" "this" {
  name        = var.name
  description = var.description
  vpc         = var.vpc_id
}