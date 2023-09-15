variable "gcp_project_name" {
  description = "REQUIRED: GCP Project name"
  type = string
}

variable "gcp_region" {
  description = "REQUIRED: GCP Region to deploy into"
  type = string
}

variable "gcp_compute_network_auto_create_subnetworks" {
  description = "OPTIONAL: Set to true to auto creat subnets, set to false to specify subnets "
  type    = bool
  default = true
}

variable "gcp_compute_network_mtu" {
  type    = number
  description = "OPTIONAL: Specify the MTU for the VPC"
  default = 1460

  validation {
    condition     = var.gcp_compute_network_mtu >= 1460 && var.gcp_compute_network_mtu <= 1500
    error_message = format("The minimum value for this field is 1460 and the maximum value is 1500 bytes")
  }
}

variable "gcp_compute_network_routing_mode" {
  description = "OPTIONAL: The network-wide routing mode to use"
  type    = string
  default = ""

  validation {
    condition = contains([
      "REGIONAL", "GLOBAL", ""
    ], var.gcp_compute_network_routing_mode)
    error_message = format("Valid values for gcp_compute_network_routing_mode: REGIONAL, GLOBAL")
  }
}

variable "gcp_compute_network_delete_default_routes_on_create" {
  description = "OPTIONAL: If set to true, default routes (0.0.0.0/0) will be deleted immediately after network creation"
  type    = bool
  default = false
}

variable "gcp_compute_network_name" {
  description = "REQUIRED: Name of the VPC"
  type = string
}

variable "cidr" {
  description = "REQUIRED: CIDR for Subnet"
  type = string
}

variable "subnet_name" {
  description = "REQUIRED: Subnet name"
  type = string
}

variable "secondary_subnet_map" {
  description = "OPTIONAL: Map of secondary subnets"
  type = map(any)
  default = {
  }
}