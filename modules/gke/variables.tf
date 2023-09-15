variable "region" {
  description = "REQUIRED: GCP Region to deploy GKE cluster into"
  type = string
}

variable "vpc_name" {
  description = "REQUIRED: VPC name to create the GKE in"
  type = string  
}

variable "subnet_name" {
  description = "REQUIRED: Subnet name to create the GKE in"
  type = string
}

variable "pod_range_name" {
  description = "REQUIRED: Subnet IP range name for pods"
  type = string
}

variable "svc_range_name" {
  description = "REQUIRED: Subnet IP range name for services"
  type = string
}

variable "gke_num_nodes" {
  default     = 2
  description = "REQUIRED: Number of gke nodes"
  type = number
}

variable "project_id" {
  description = "OPTIONAL: Project ID to prefix object names with"
  default = ""
  type = string
}

variable "gcp_project_id" {
  description = "REQUIRED: GCP Project ID"
  type = string
}