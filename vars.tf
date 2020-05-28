variable "create_private_dns_namespace" {
  description = "Whether to create a private DNS namespace"
  type        = number
  default     = 0
}

variable "create_service_discovery_service" {
  description = "Whether to create a service discovery service"
  type        = number
  default     = 0
}

variable "namespace_name" {
  description = "The name of the namespace"
  type        = string
  default     = ""
}

variable "namespace_vpc_id" {
  description = "The ID of VPC that you want to associate the namespace with"
  type        = string
  default     = ""
}

variable "namespace_description" {
  description = "The description that you specify for the namespace when you create it"
  default     = ""
}

variable "service_name" {
  description = "The name of the service"
  type        = string
  default     = ""
}

variable "service_description" {
  description = "The description of the service"
  type        = string
  default     = ""
}

variable "dns_namespace_id" {
  description = "The ID of the namespace to use for DNS configuration."
  type        = string
  default     = ""
}

variable "dns_resolve_ttl" {
  description = "The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  type        = number
  default     = 300
}

variable "dns_type" {
  description = "The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME"
  type        = string
  default     = "A"
}

variable "service_failure_threshold" {
  description = "The number of consecutive health checks. Maximum value of 10"
  type        = number
  default     = 3
}