output "vpc_network" {
  value = {
    "id"           = google_compute_network.vpc_network.id
    "name"         = google_compute_network.vpc_network.name
    "gateway_ipv4" = google_compute_network.vpc_network.gateway_ipv4
  }
}

 output "subnetwork" {
  value = {
    "id"                       = google_compute_subnetwork.subnetwork.id
    "name"                     = google_compute_subnetwork.subnetwork.name
    "gateway_address"          = google_compute_subnetwork.subnetwork.gateway_address
    "network"                  = google_compute_subnetwork.subnetwork.network
    "ip_cidr_range"            = google_compute_subnetwork.subnetwork.ip_cidr_range
    "private_ip_google_access" = google_compute_subnetwork.subnetwork.private_ip_google_access
  }
}