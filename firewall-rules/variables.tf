variable "project_id" {
  description = "The project ID to host the network in"
}

variable "network_name" {
  description = "The name of the VPC network being created"
}

variable "fw_rule_deny_all_egress" {
  description = "Deny all egress traffic out of VPC"
}

variable "fw_rule_allow_hc_ingress" {
  description = "Allow ingress for health checks"
}

variable "fw_rule_allow_hc_egress" {
  description = "Allow egress to health checks"
}

variable "fw_rule_allow_google_apis_egress" {
  description = "Allow egress to Google APIs"
}

variable "fw_rule_allow_master_node_egress" {
  description = "Allow egress to master node subnet"
}
