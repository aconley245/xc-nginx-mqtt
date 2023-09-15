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
  type = string
}

variable "namespace" {
  description = "REQUIRED: Namesapce to create vK8s deployment in"
  type = string
}