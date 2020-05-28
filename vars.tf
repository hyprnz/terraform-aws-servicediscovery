variable "name" {
  description = "The name of the namespace"
  type        = string
}

variable "vpc_id" {
  description = "The ID of VPC that you want to associate the namespace with"
  type        = string
}

variable "description" {
  description = "The description that you specify for the namespace when you create it"
}