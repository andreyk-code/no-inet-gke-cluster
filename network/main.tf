module "gke-no-internet-network" {
  version = "~> 0.8.0"
  source = "terraform-google-modules/network/google"

  project_id                             = "${var.project_id}"
  network_name                           = "${var.network_name}"
  delete_default_internet_gateway_routes = "true"

  subnets = [
    {
      subnet_name           = "${var.gke_subnet_01}"
      subnet_ip             = "10.240.0.0/24"
      subnet_region         = "${var.cluster_region}"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    },
  ]

  secondary_ranges = {
    "${var.gke_subnet_01}" = [
      {
        range_name    = "${var.gke_subnet_01_pods}"
        ip_cidr_range = "10.1.0.0/16"
      },
      {
        range_name    = "${var.gke_subnet_01_services}"
        ip_cidr_range = "10.10.11.0/24"
      },
    ]
  }

  routes = [
    {
      name              = "${var.google_apis_route}"
      destination_range = "199.36.153.4/30"
      next_hop_internet = "true"
    },
  ]
}
