variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "cluster_region" {
  description = "The region to host the cluster in"
}

variable "cluster_zones" {
  type        = "list"
  description = "The zones to host the cluster in"
}

variable "network_name" {
  description = "The VPC network to host the cluster in"
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

variable "gke_cluster" {
  description = "Name of the GKE cluster"
}

variable "gke_master_node_range" {
  description = "GKE cluster master node range"
}
