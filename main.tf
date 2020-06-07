resource "aws_service_discovery_private_dns_namespace" "this" {
  count       = var.create_private_dns_namespace
  name        = var.namespace_name
  description = var.namespace_description
  vpc         = var.namespace_vpc_id
}

resource "aws_service_discovery_service" "this" {
  count = var.create_service_discovery_service
  
  name        = var.service_name
  description = var.service_description

  dns_config {
    namespace_id = var.dns_namespace_id

    dns_records {
      ttl  = var.dns_resolve_ttl
      type = var.dns_type
    }
  }

  health_check_custom_config {
    failure_threshold = var.service_failure_threshold
  }
}