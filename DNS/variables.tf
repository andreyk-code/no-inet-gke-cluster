variable "project_id" {
  description = "The project ID to host the network in"
}

variable "network_name" {
  description = "The name of the VPC network being created"
}

variable "google_apis_zone" {
  description = "Name for google apis zone"
}

variable "gcr_io_zone" {
  description = "Name for GCR.io zone"
}
