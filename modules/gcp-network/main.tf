resource "google_compute_network" "vpc_network" {
  mtu                             = var.gcp_compute_network_mtu
  name                            = var.gcp_compute_network_name
  project                         = var.gcp_project_name
  routing_mode                    = var.gcp_compute_network_routing_mode
  auto_create_subnetworks         = var.gcp_compute_network_auto_create_subnetworks
  delete_default_routes_on_create = var.gcp_compute_network_delete_default_routes_on_create
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr
  region        = var.gcp_region
  network       = google_compute_network.vpc_network.id
  
  dynamic "secondary_ip_range" {
    for_each = var.secondary_subnet_map
    content {
      range_name = secondary_ip_range.value.name
      ip_cidr_range = secondary_ip_range.value.cidr
    }
    
  }
}