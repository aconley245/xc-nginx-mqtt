module "xc_vk8s" {
  source        = "./modules/f5xc-vk8s/"
  f5xc_api_url  = var.f5xc_api_url
  f5xc_api_cert = var.f5xc_api_cert
  f5xc_api_key  = var.f5xc_api_key
  vk8sname      = var.vk8sname
  namespace     = var.namespace
}

module "gcp_vpc" {
  for_each = var.gcp_vpcs
  source = "./modules/gcp-network/"
  gcp_project_name = var.gcp_project_name
  gcp_region = var.gcp_region
  gcp_compute_network_auto_create_subnetworks = each.value.gcp_compute_network_auto_create_subnetworks
  gcp_compute_network_mtu = each.value.gcp_compute_network_mtu
  gcp_compute_network_routing_mode = each.value.gcp_compute_network_routing_mode
  gcp_compute_network_delete_default_routes_on_create = each.value.gcp_compute_network_delete_default_routes_on_create
  gcp_compute_network_name = each.value.gcp_compute_network_name
  cidr = each.value.cidr
  subnet_name = each.value.gcp_compute_network_name
  secondary_subnet_map = each.value.secondary_subnet_map
}

module "gke" {
  source = "./modules/gke"
  region = var.gcp_region
  vpc_name = var.gke_vpc_name
  subnet_name = var.gke_subnet_name
  pod_range_name = var.pod_range_name
  svc_range_name = var.svc_range_name
  gke_num_nodes = var.gke_num_nodes
  project_id = var.project_id
  gcp_project_id = var.gcp_project_name
  depends_on = [ module.gcp_vpc ]
}