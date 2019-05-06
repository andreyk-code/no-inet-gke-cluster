locals {
  cluster_type = "simple-regional-private"
}

provider "google" {
  version = "2.3.0"
  project = "${var.project_id}"
  region  = "${var.cluster_region}"
}

provider "google-beta" {
  version = "2.3.0"
  project = "${var.project_id}"
  region  = "${var.cluster_region}"
}

module "private_gke_cluster" {
  source                  = "github.com/terraform-google-modules/terraform-google-kubernetes-engine//modules/private-cluster"
  project_id              = "${var.project_id}"
  name                    = "${var.gke_cluster}"
  regional                = false
  region                  = "${var.cluster_region}"
  zones                   = "${var.cluster_zones}"
  network                 = "${var.network_name}"
  subnetwork              = "${var.gke_subnet_01}"
  ip_range_pods           = "${var.gke_subnet_01_pods}"
  ip_range_services       = "${var.gke_subnet_01_services}"
  service_account         = "create"
  enable_private_endpoint = true
  enable_private_nodes    = true
  master_ipv4_cidr_block  = "${var.gke_master_node_range}"
}

data "google_client_config" "default" {}
