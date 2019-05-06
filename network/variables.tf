variable "project_id" {
  description = "The project ID to host the network in"
}

variable "cluster_region" {
  description = "The region to host the cluster in"
}

variable "network_name" {
  description = "The name of the VPC network being created"
}

variable "gke_subnet_01" {
  description = "The subnetwork to host the cluster in"
}

variable "gke_subnet_01_pods" {
  description = "The secondary ip range to use for pods"
}

variable "gke_subnet_01_services" {
  description = "The secondary ip range to use for pods"
}

variable "google_apis_route" {
  description = "Route to restricted Google APIs"
}
