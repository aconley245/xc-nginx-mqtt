variable "f5xc_api_url" {
  description = "REQUIRED: URL for XC Console API"
  type        = string
}

variable "f5xc_api_cert" {
  description = "REQUIRED: Certificate to use to authenticate to XC"
  type        = string
}

variable "f5xc_api_key" {
  default = "REQUIRED: Certificate key to use to authenticate to XC"
  type    = string
}

variable "vk8sname" {
  description = "REQUIRED: Name for vK8s deployment"
  type        = string
}

variable "namespace" {
  description = "REQUIRED: Namesapce to create vK8s deployment in"
  type        = string
}

variable "gcp_project_name" {
  description = "REQUIRED: GCP Project name"
  type = string
}

variable "gcp_region" {
  description = "REQUIRED: GCP Region to deploy into"
  type = string
}

variable "gcp_vpcs" {
  description = "REQUIRED: GCP VPCs to create"
  type = map(any)
}

variable "gke_vpc_name" {
  description = "REQUIRED: VPC name to create the GKE in"
  type = string  
}

variable "gke_subnet_name" {
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